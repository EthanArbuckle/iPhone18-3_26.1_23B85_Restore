@interface NEUtilConfigurationClient
+ (id)allClients;
+ (id)clientWithName:(id)a3;
+ (void)removeClientWithName:(id)a3;
- (BOOL)addOnDemandRuleWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)addRelayWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)createConfigurationWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)disconnectOnDemandEnabled;
- (BOOL)enabled;
- (BOOL)onDemandEnabled;
- (BOOL)onDemandUserOverrideDisabled;
- (BOOL)removeOnDemandRuleWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)removeRelayWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setAppPushParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setCommonParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setDNSParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setDNSProxyWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setFilterPluginWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setHotspotProviderParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setIPSecParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setPasswordWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setProtocolWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setProviderTypeWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setProxyParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setProxyServer:(id)a3 errorStr:(id *)a4;
- (BOOL)setRelayConditionsWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setSharedSecretWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetAppPushParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetCommonParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetDNSParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetDNSProxyWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetFilterPluginParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetHotspotProviderParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetIPSecParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetPasswordWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetProxyParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetProxyServer:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetRelayConditionsWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetSharedSecretWithParameters:(id)a3 errorStr:(id *)a4;
- (NEAppPush)appPush;
- (NEDNSProxyProviderProtocol)dnsProxyConfiguration;
- (NEDNSSettingsBundle)dnsSettingsBundle;
- (NEFilterProviderConfiguration)filterConfiguration;
- (NEUtilConfigurationClient)initWithClientName:(id)a3;
- (NSArray)onDemandRules;
- (id)hotspot;
- (id)initInternalWithClientName:(id)a3;
- (id)protocolForParameters:(id)a3;
- (id)relayConfiguration;
- (id)urlFilterConfiguration;
- (uint64_t)setPPPParameters:(void *)a3 errorStr:;
- (uint64_t)unsetPPPParameters:(void *)a3 errorStr:;
- (void)addAppRuleWithParameters:(void *)a3 errorStr:;
- (void)addPathRuleWithParameters:(__CFString *)a3 errorStr:;
- (void)dealloc;
- (void)handleCommand:(int)a3 forConfigWithName:(id)a4 withParameters:(id)a5 completionHandler:(id)a6;
- (void)loadConfigurationsForceRefresh:(void *)a3 completionHandler:;
- (void)removeAppRuleWithParameters:(void *)a3 errorStr:;
- (void)removePathRuleWithParameters:(void *)a3 errorStr:;
- (void)setAlwaysOnParameters:(__CFString *)a3 errorStr:;
- (void)setOnDemandRules:(id)a3;
- (void)setPathControllerWithParameters:(void *)a3 errorStr:;
- (void)setURLFilterPluginWithParameters:(void *)a3 errorStr:;
- (void)swapConfigurationTypeWithParameters:(void *)a3 errorStr:;
- (void)unsetAlwaysOnParameters:(__CFString *)a3 errorStr:;
- (void)unsetURLFilterPluginParameters:(void *)a3 errorStr:;
@end

@implementation NEUtilConfigurationClient

- (void)handleCommand:(int)a3 forConfigWithName:(id)a4 withParameters:(id)a5 completionHandler:(id)a6
{
  v105 = *MEMORY[0x1E69E9840];
  v76 = a4;
  v77 = a5;
  v10 = a6;
  v11 = v10;
  if (a3 == 37)
  {
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke;
    v90[3] = &unk_1E7F0B588;
    v90[4] = self;
    v13 = v10;
    v91 = v10;
    v15 = v90;
    if (self)
    {
      objc_setProperty_atomic(self, v14, 0, 48);
      Property = objc_getProperty(self, v16, 24, 1);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __69__NEUtilConfigurationClient_reloadIdentityListWithCompletionHandler___block_invoke;
      v99 = &unk_1E7F0AC30;
      v100 = self;
      v101 = v15;
      [Property copyIdentities:0 fromDomain:0 withCompletionQueue:MEMORY[0x1E69E96A0] handler:buf];
    }

    goto LABEL_32;
  }

  if (a3 != 36)
  {
    if ((a3 & 0xFFFFFFFE) == 0x1E)
    {
      v74 = v10;
      v18 = [v77 objectForKeyedSubscript:@"configuration-file-path"];
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
        v89 = a3;
        v20 = v76;
        v86 = v20;
        v87 = self;
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
        v21 = [MEMORY[0x1E696AC08] defaultManager];
        v22 = [v21 isReadableFileAtPath:v71];

        if (!v22)
        {
          v42 = [MEMORY[0x1E696AC08] defaultManager];
          v43 = [v42 fileExistsAtPath:v71];

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
                  v60 = [v57 UUIDString];
                  v51 = [v58 decodeObjectOfClass:v59 forKey:v60];

                  if (v51)
                  {
                    if (!v75 || ![v75 length] || (objc_msgSend(v51, "name"), v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v75, "isEqualToString:", v61), v61, v62))
                    {
                      v63 = [v51 identifier];
                      [v72 setObject:v51 forKeyedSubscript:v63];

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

              v37 = [v32 allKeys];
              if (!v33)
              {
                v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }

              [v33 setObject:v37 forKeyedSubscript:v36];
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
    v82 = a3;
    v79 = v77;
    v80 = v76;
    v38 = v80;
    v39 = v78;
    if (self)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __73__NEUtilConfigurationClient_loadConfigurationWithName_completionHandler___block_invoke;
      v99 = &unk_1E7F0AC08;
      v100 = self;
      v101 = v38;
      v102 = v39;
      [(NEUtilConfigurationClient *)self loadConfigurationsForceRefresh:buf completionHandler:?];
    }

LABEL_32:
    v11 = v13;
    goto LABEL_33;
  }

  v12 = [(NEUtilConfigurationClient *)self clientName];
  [NEUtilConfigurationClient removeClientWithName:v12];

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

- (void)loadConfigurationsForceRefresh:(void *)a3 completionHandler:
{
  v6 = a3;
  if (a1)
  {
    if (!objc_getProperty(a1, v5, 40, 1) || a2)
    {
      Property = objc_getProperty(a1, v7, 24, 1);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __78__NEUtilConfigurationClient_loadConfigurationsForceRefresh_completionHandler___block_invoke;
      v12[3] = &unk_1E7F0B5B0;
      v12[4] = a1;
      v13 = v6;
      [Property loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v12];
      v8 = v13;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__NEUtilConfigurationClient_loadConfigurationsForceRefresh_completionHandler___block_invoke_2;
      block[3] = &unk_1E7F0B600;
      v11 = v6;
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

- (void)swapConfigurationTypeWithParameters:(void *)a3 errorStr:
{
  if (!a1)
  {
    return;
  }

  v20 = [a2 objectForKeyedSubscript:@"type"];
  if (![v20 isEqualToString:@"vpn"])
  {
    if ([v20 isEqualToString:@"appvpn"])
    {
      v14 = [objc_getProperty(a1 v13];
      if (v14)
      {
        v7 = v14;
        v8 = objc_alloc_init(NEVPNApp);
        -[NEVPN setEnabled:](v8, "setEnabled:", [v7 isEnabled]);
        -[NEVPN setOnDemandEnabled:](v8, "setOnDemandEnabled:", [v7 isOnDemandEnabled]);
        -[NEVPN setDisconnectOnDemandEnabled:](v8, "setDisconnectOnDemandEnabled:", [v7 isDisconnectOnDemandEnabled]);
        v15 = [v7 onDemandRules];
        [(NEVPN *)v8 setOnDemandRules:v15];

        v16 = [v7 protocol];
        [(NEVPN *)v8 setProtocol:v16];

        [(NEVPN *)v8 setTunnelType:1];
        [objc_getProperty(a1 v17];
        [objc_getProperty(a1 v18];
        goto LABEL_8;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"No configuration found for swapping %@ -> %@", @"vpn", v20];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid configuration type for swapping: %@", v20, v19];
    }

    *a3 = LABEL_12:;
    goto LABEL_13;
  }

  v6 = [objc_getProperty(a1 v5];
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
  v9 = [v7 onDemandRules];
  [(NEVPN *)v8 setOnDemandRules:v9];

  v10 = [v7 protocol];
  [(NEVPN *)v8 setProtocol:v10];

  [objc_getProperty(a1 v11];
  [objc_getProperty(a1 v12];
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

- (void)setURLFilterPluginWithParameters:(void *)a3 errorStr:
{
  v35 = a2;
  if (a1)
  {
    v6 = [(NEUtilConfigurationClient *)a1 urlFilterConfiguration];
    if (v6)
    {
      v7 = [v35 objectForKeyedSubscript:@"enabled"];

      if (v7)
      {
        v8 = [v35 objectForKeyedSubscript:@"enabled"];
        [v6 setEnabled:{objc_msgSend(v8, "BOOLValue")}];
      }

      v9 = [v35 objectForKeyedSubscript:@"failClosed"];

      if (v9)
      {
        v10 = [v35 objectForKeyedSubscript:@"failClosed"];
        [v6 setShouldFailClosed:{objc_msgSend(v10, "BOOLValue")}];
      }

      v11 = [v35 objectForKeyedSubscript:@"bundle-identifier"];

      if (v11)
      {
        v12 = [v35 objectForKeyedSubscript:@"bundle-identifier"];
        [v6 setAppBundleIdentifier:v12];
      }

      v13 = [v35 objectForKeyedSubscript:@"pre-filter-provider-bundle-identifier"];

      if (v13)
      {
        v14 = [v35 objectForKeyedSubscript:@"pre-filter-provider-bundle-identifier"];
        [v6 setControlProviderBundleIdentifier:v14];
      }

      v15 = [v35 objectForKeyedSubscript:@"pre-filter-provider-designated-requirement"];

      if (v15)
      {
        v16 = [v35 objectForKeyedSubscript:@"pre-filter-provider-designated-requirement"];
        v17 = [v16 stringByRemovingPercentEncoding];
        [v6 setControlProviderDesignatedRequirement:v17];
      }

      v18 = [v35 objectForKeyedSubscript:@"prefilter-fetch-frequency"];

      if (v18)
      {
        v19 = [v35 objectForKeyedSubscript:@"prefilter-fetch-frequency"];
        [v6 setPrefilterFetchInterval:{objc_msgSend(v19, "BOOLValue")}];
      }

      v20 = [v35 objectForKeyedSubscript:@"pir-server"];

      if (v20)
      {
        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        v22 = [v35 objectForKeyedSubscript:@"pir-server"];
        v23 = [v21 initWithFormat:@"https://%@", v22];

        v24 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v23];
        [v6 setPirServerURL:v24];
      }

      v25 = [v35 objectForKeyedSubscript:@"pir-authen-token"];

      if (v25)
      {
        v26 = [v35 objectForKeyedSubscript:@"pir-authen-token"];
        [v6 setPirAuthenticationToken:v26];
      }

      v27 = [v35 objectForKeyedSubscript:@"test-group-name"];

      if (v27)
      {
        v28 = [v35 objectForKeyedSubscript:@"test-group-name"];
        [v6 setPirGroupName:v28];
      }

      v29 = [v35 objectForKeyedSubscript:@"test-use-case"];

      if (v29)
      {
        v30 = [v35 objectForKeyedSubscript:@"test-use-case"];
        [v6 setPirUseCase:v30];
      }

      v31 = [v35 objectForKeyedSubscript:@"test-privacy-proxy-fail-open"];

      if (v31)
      {
        v32 = [v35 objectForKeyedSubscript:@"test-privacy-proxy-fail-open"];
        [v6 setPirPrivacyProxyFailOpen:{objc_msgSend(v32, "BOOLValue")}];
      }

      v33 = [v35 objectForKeyedSubscript:@"test-pir-skip-registration"];

      if (v33)
      {
        v34 = [v35 objectForKeyedSubscript:@"test-pir-skip-registration"];
        [v6 setPirSkipRegistration:{objc_msgSend(v34, "BOOLValue")}];
      }
    }

    else
    {
      *a3 = @"URL Filter configuration has not been created yet";
    }
  }
}

- (void)unsetURLFilterPluginParameters:(void *)a3 errorStr:
{
  v19 = a2;
  if (a1)
  {
    v6 = [(NEUtilConfigurationClient *)a1 urlFilterConfiguration];
    if (v6)
    {
      v7 = [v19 objectForKeyedSubscript:@"enabled"];

      if (v7)
      {
        [v6 setEnabled:0];
      }

      v8 = [v19 objectForKeyedSubscript:@"failClosed"];

      if (v8)
      {
        [v6 setShouldFailClosed:0];
      }

      v9 = [v19 objectForKeyedSubscript:@"bundle-identifier"];

      if (v9)
      {
        [v6 setAppBundleIdentifier:0];
      }

      v10 = [v19 objectForKeyedSubscript:@"pre-filter-provider-bundle-identifier"];

      if (v10)
      {
        [v6 setControlProviderBundleIdentifier:0];
      }

      v11 = [v19 objectForKeyedSubscript:@"pre-filter-provider-designated-requirement"];

      if (v11)
      {
        [v6 setControlProviderDesignatedRequirement:0];
      }

      v12 = [v19 objectForKeyedSubscript:@"prefilter-fetch-frequency"];

      if (v12)
      {
        [v6 setPrefilterFetchInterval:0.0];
      }

      v13 = [v19 objectForKeyedSubscript:@"pir-server"];

      if (v13)
      {
        [v6 setPirServerURL:0];
      }

      v14 = [v19 objectForKeyedSubscript:@"pir-authen-token"];

      if (v14)
      {
        [v6 setPirAuthenticationToken:0];
      }

      v15 = [v19 objectForKeyedSubscript:@"test-group-name"];

      if (v15)
      {
        [v6 setPirGroupName:0];
      }

      v16 = [v19 objectForKeyedSubscript:@"test-use-case"];

      if (v16)
      {
        [v6 setPirUseCase:0];
      }

      v17 = [v19 objectForKeyedSubscript:@"test-privacy-proxy-fail-open"];

      if (v17)
      {
        [v6 setPirPrivacyProxyFailOpen:0];
      }

      v18 = [v19 objectForKeyedSubscript:@"test-pir-skip-registration"];

      if (v18)
      {
        [v6 setPirSkipRegistration:0];
      }
    }

    else
    {
      *a3 = @"URL Filter configuration has not been created yet";
    }
  }
}

- (uint64_t)setPPPParameters:(void *)a3 errorStr:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v109 = v5;
    v7 = [a1 protocolForParameters:v5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *a3 = @"Configuration VPN type is not L2TP";
LABEL_109:

      v6 = v109;
      goto LABEL_110;
    }

    v106 = a3;
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
          *v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are password, securID, certificate, kerberos, and cryptocard", @"authentication-method"];

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

      v35 = [v7 IPv4Settings];
      if (!v35)
      {
        goto LABEL_43;
      }

      v36 = v35;
      v37 = [v7 IPv4Settings];
      v38 = v16;
      v39 = [v37 configMethod];

      v40 = v39 == 3;
      v16 = v38;
      if (v40)
      {
        v41 = [[NEIPv4Settings alloc] initWithAddresses:v107 subnetMasks:v38];
        [v7 setIPv4Settings:v41];

        v42 = [v7 IPv4Settings];
        [v42 setConfigMethod:3];

        v15 = v108;
        if (v108)
        {
          v43 = [v109 objectForKeyedSubscript:@"ipv4-router"];
          v44 = [v7 IPv4Settings];
          [v44 setRouter:v43];

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
        v46 = [v7 IPv4Settings];

        if (!v46)
        {
          v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be specified, %@ is not manual or ppp", @"send-all-traffic", @"ipv4-config-method"];
          v12 = 0;
          v13 = 0;
          v14 = 0;
LABEL_107:
          *v106 = v57;
          goto LABEL_108;
        }

        v47 = [v109 objectForKeyedSubscript:@"send-all-traffic"];
        v48 = [v47 BOOLValue];
        v49 = [v7 IPv4Settings];
        [v49 setOverridePrimary:v48];
      }

      v50 = [v109 objectForKeyedSubscript:@"ipv6-config-method"];

      v51 = v109;
      if (v50)
      {
        v52 = [v109 objectForKeyedSubscript:@"ipv6-config-method"];
        v53 = [v7 IPv6Settings];

        if (!v53)
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
            *v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are automatic, manual, and link-local", @"ipv6-config-method"];

            v12 = 0;
            v13 = 0;
            v14 = 0;
            goto LABEL_108;
          }

          v55 = 3;
        }

        v58 = [v7 IPv6Settings];
        [v58 setConfigMethod:v55];

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

      v66 = [v7 IPv6Settings];
      if (v66 && (v67 = v66, [v7 IPv6Settings], v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "configMethod"), v68, v67, v69 == 2))
      {
        v70 = [[NEIPv6Settings alloc] initWithAddresses:v14 networkPrefixLengths:v13];
        [v7 setIPv6Settings:v70];

        v71 = [v7 IPv6Settings];
        [v71 setConfigMethod:2];

        v72 = [v7 IPv6Settings];

        if (v72)
        {
          v73 = [v109 objectForKeyedSubscript:@"ipv6-router"];
          v74 = [v7 IPv6Settings];
          [v74 setRouter:v73];
        }
      }

      else if (v14 || v13 || v12)
      {
        v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@ cannot be specified, %@ is not manual", @"ipv6-address", @"ipv6-prefix-length", @"ipv6-router", @"ipv6-config-method"];
        v79 = v106;
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
            v93 = [v92 integerValue];

            v95 = objc_getProperty(a1, v94, 48, 1);
            if (v95)
            {
              v97 = v95;
              v98 = [objc_getProperty(a1 v96];

              if (v93 < v98)
              {
                v100 = [objc_getProperty(a1 v99];
                v101 = [v100 objectForKeyedSubscript:@"domain"];
                v102 = [v101 integerValue];

                if (v102)
                {
                  *v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, an identity in the system keychain is required", @"machine-identity"];
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
            v79 = v106;
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
            *v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are shared-secret and certificate", @"machine-authentication-method"];

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
      *v106 = v56;
      goto LABEL_109;
    }

    v22 = [v109 objectForKeyedSubscript:@"ipv4-config-method"];
    v23 = [v7 IPv4Settings];

    if (!v23)
    {
      v24 = [[NEIPv4Settings alloc] initWithConfigMethod:2];
      [v7 setIPv4Settings:v24];
    }

    if ([v22 isEqualToString:@"ppp"])
    {
      v25 = [v7 IPv4Settings];
      v26 = v25;
      v27 = 2;
LABEL_27:
      [v25 setConfigMethod:v27];

LABEL_28:
      v21 = v109;
      goto LABEL_29;
    }

    if ([v22 isEqualToString:@"manual"])
    {
      v25 = [v7 IPv4Settings];
      v26 = v25;
      v27 = 3;
      goto LABEL_27;
    }

    if ([v22 isEqualToString:@"automatic"])
    {
      v25 = [v7 IPv4Settings];
      v26 = v25;
      v27 = 1;
      goto LABEL_27;
    }

    if ([v22 isEqualToString:@"off"])
    {
      [v7 setIPv4Settings:0];
      goto LABEL_28;
    }

    *v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are ppp, manual, automatic, and off", @"ipv4-config-method"];

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

- (uint64_t)unsetPPPParameters:(void *)a3 errorStr:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v45 = v5;
    v7 = [a1 protocolForParameters:v5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      *a3 = @"Configuration VPN type is not L2TP";
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
      v10 = [v7 IPv4Settings];

      if (v10)
      {
        v11 = [v7 IPv4Settings];
        [v11 setOverridePrimary:0];
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
      v14 = [v7 IPv4Settings];

      if (v14)
      {
        v15 = [v7 IPv4Settings];
        [v15 setConfigMethod:2];
      }
    }

    v16 = [v45 objectForKeyedSubscript:@"ipv4-address"];

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = [v7 IPv4Settings];

      if (v17)
      {
        v21 = [v7 IPv4Settings];
        v17 = [v21 addresses];
      }
    }

    v22 = [v45 objectForKeyedSubscript:@"ipv4-subnet-mask"];

    if (v22)
    {
      v18 = 0;
    }

    else
    {
      v18 = [v7 IPv4Settings];

      if (v18)
      {
        v23 = [v7 IPv4Settings];
        v18 = [v23 subnetMasks];
      }

      if (!v16)
      {
LABEL_24:
        v25 = [v45 objectForKeyedSubscript:@"ipv4-router"];

        if (v25)
        {
          v26 = [v7 IPv4Settings];

          if (v26)
          {
            v27 = [v7 IPv4Settings];
            [v27 setRouter:0];
          }
        }

        v28 = [v45 objectForKeyedSubscript:@"ipv6-config-method"];

        if (v28)
        {
          v29 = [v7 IPv6Settings];

          if (v29)
          {
            v30 = [v7 IPv6Settings];
            [v30 setConfigMethod:1];
          }
        }

        v31 = [v45 objectForKeyedSubscript:@"ipv6-address"];

        if (v31)
        {
          v19 = 0;
        }

        else
        {
          v19 = [v7 IPv6Settings];

          if (v19)
          {
            v32 = [v7 IPv6Settings];
            v19 = [v32 addresses];
          }
        }

        v33 = [v45 objectForKeyedSubscript:@"ipv6-prefix-length"];

        if (v33)
        {
          v20 = 0;
        }

        else
        {
          v20 = [v7 IPv6Settings];

          if (v20)
          {
            v34 = [v7 IPv6Settings];
            v20 = [v34 networkPrefixLengths];
          }

          if (!v31)
          {
            goto LABEL_40;
          }
        }

        v35 = [[NEIPv6Settings alloc] initWithAddresses:v19 networkPrefixLengths:v20];
        [v7 setIPv6Settings:v35];

LABEL_40:
        v36 = [v45 objectForKeyedSubscript:@"ipv6-router"];

        if (v36)
        {
          v37 = [v7 IPv6Settings];

          if (v37)
          {
            v38 = [v7 IPv6Settings];
            [v38 setRouter:0];
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
            *a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, VPN type is not L2TP", @"machine-authentication-method"];
          }
        }

        v40 = [v45 objectForKeyedSubscript:@"shared-secret"];

        if (v40)
        {
          if ([v7 type] == 2)
          {
            v41 = [v7 sharedSecretKeychainItem];
            [v41 setIdentifier:0];
          }

          else
          {
            *a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, VPN type is not L2TP", @"shared-secret"];
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
            *a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, VPN type is not L2TP", @"shared-secret"];
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
            *a3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, VPN type is not L2TP", @"machine-identity"];
          }
        }

        goto LABEL_59;
      }
    }

    v24 = [[NEIPv4Settings alloc] initWithAddresses:v17 subnetMasks:v18];
    [v7 setIPv4Settings:v24];

    goto LABEL_24;
  }

LABEL_60:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)addAppRuleWithParameters:(void *)a3 errorStr:
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a2;
    v6 = [v5 objectForKeyedSubscript:@"match-signing-identifier"];
    v7 = [v5 objectForKeyedSubscript:@"match-path"];
    v8 = [v5 objectForKeyedSubscript:@"match-domains"];
    v9 = [v5 objectForKeyedSubscript:@"match-account-identifiers"];

    v11 = [objc_getProperty(a1 v10];

    if (v11)
    {
      v11 = [objc_getProperty(a1 v12];
    }

    v13 = [objc_getProperty(a1 v12];

    Property = objc_getProperty(a1, v14, 56, 1);
    if (v13)
    {
      v16 = [Property contentFilter];
      v17 = [v16 perApp];

      if (!v17)
      {
        v19 = objc_alloc_init(NEPerApp);
        v21 = [objc_getProperty(a1 v20];
        [v21 setPerApp:v19];
      }

      v22 = [objc_getProperty(a1 v18];
    }

    else
    {
      v23 = [Property dnsProxy];

      v25 = objc_getProperty(a1, v24, 56, 1);
      if (v23)
      {
        v26 = [v25 dnsProxy];
        v27 = [v26 perApp];

        if (!v27)
        {
          v29 = objc_alloc_init(NEPerApp);
          v31 = [objc_getProperty(a1 v30];
          [v31 setPerApp:v29];
        }

        v22 = [objc_getProperty(a1 v28];
      }

      else
      {
        v32 = [v25 relay];

        if (!v32)
        {
          goto LABEL_17;
        }

        v34 = [objc_getProperty(a1 v33];
        v35 = [v34 perApp];

        if (!v35)
        {
          v37 = objc_alloc_init(NEPerApp);
          v39 = [objc_getProperty(a1 v38];
          [v39 setPerApp:v37];
        }

        v22 = [objc_getProperty(a1 v36];
      }
    }

    v40 = v22;
    v32 = [v22 perApp];

LABEL_17:
    if (!(v11 | v32))
    {
      *a3 = @"No perApp configuration present to apply app rules to";
LABEL_41:

      goto LABEL_42;
    }

    if (v11)
    {
      v41 = v11;
    }

    else
    {
      v41 = v32;
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
          v47 = [v11 appRules];
          v48 = [v46 initWithArray:v47];

          [v48 addObject:v42];
          v49 = v11;
        }

        else
        {
          v50 = [v32 appRules];
          v48 = [v46 initWithArray:v50];

          [v48 addObject:v42];
          v49 = v32;
        }

        [v49 setAppRules:v48];
        v52 = [objc_getProperty(a1 v51];

        if (!v52)
        {
          [objc_getProperty(a1 v53];
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

    v43 = v32;
    goto LABEL_27;
  }

LABEL_42:
  v54 = *MEMORY[0x1E69E9840];
}

- (void)removeAppRuleWithParameters:(void *)a3 errorStr:
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 objectForKeyedSubscript:@"match-signing-identifier"];
    v9 = [objc_getProperty(a1 v8];

    if (v9)
    {
      v9 = [objc_getProperty(a1 v10];
    }

    v11 = [objc_getProperty(a1 v10];

    Property = objc_getProperty(a1, v12, 56, 1);
    if (v11)
    {
      v14 = [Property contentFilter];
    }

    else
    {
      v15 = [Property dnsProxy];

      v17 = objc_getProperty(a1, v16, 56, 1);
      if (v15)
      {
        v14 = [v17 dnsProxy];
      }

      else
      {
        v18 = [v17 relay];

        if (!v18)
        {
          goto LABEL_11;
        }

        v14 = [objc_getProperty(a1 v19];
      }
    }

    v20 = v14;
    v18 = [v14 perApp];

LABEL_11:
    if (!(v9 | v18))
    {
      *a3 = @"No perApp configuration present to apply app rules to";
LABEL_39:

      goto LABEL_40;
    }

    v44 = a3;
    v45 = v6;
    v21 = objc_alloc(MEMORY[0x1E695DF70]);
    if (v9)
    {
      v22 = v9;
    }

    else
    {
      v22 = v18;
    }

    v23 = [v22 appRules];
    v24 = [v21 initWithArray:v23];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v42 = v18;
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
          v32 = [v31 matchSigningIdentifier];
          v33 = [v32 isEqualToString:v7];

          if (v33)
          {
            v34 = v31;

            v28 = v34;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v27);

      v18 = v42;
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
          v38 = [objc_getProperty(a1 v37];
          v39 = [v38 isEqualToString:@"NEUTIL-PERAPP-UUID"];

          if (v39)
          {
            [objc_getProperty(a1 v40];
          }
        }

        goto LABEL_38;
      }
    }

    else
    {
    }

    v28 = 0;
    *v44 = @"No matched rule";
LABEL_38:

    v6 = v45;
    goto LABEL_39;
  }

LABEL_40:

  v41 = *MEMORY[0x1E69E9840];
}

- (void)setPathControllerWithParameters:(void *)a3 errorStr:
{
  v5 = a2;
  if (a1)
  {
    v17 = v5;
    v7 = [objc_getProperty(a1 v6];

    if (!v7)
    {
      *a3 = @"No Path Controller configuration present";
LABEL_18:
      v5 = v17;
      goto LABEL_19;
    }

    v8 = [v17 objectForKeyedSubscript:@"enabled"];

    if (v8)
    {
      v9 = [v17 objectForKeyedSubscript:@"enabled"];
      v10 = [v9 BOOLValue];
      v12 = [objc_getProperty(a1 v11];
      [v12 setEnabled:v10];
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

    v16 = [objc_getProperty(a1 v14];
    [v16 setCellularFallbackFlags:v15];

    goto LABEL_17;
  }

LABEL_19:
}

- (void)addPathRuleWithParameters:(__CFString *)a3 errorStr:
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a2;
    v6 = [v5 objectForKeyedSubscript:@"match-signing-identifier"];
    v7 = [v5 objectForKeyedSubscript:@"match-path"];
    v8 = [v5 objectForKeyedSubscript:@"match-domains"];
    v9 = [v5 objectForKeyedSubscript:@"match-account-identifiers"];
    v10 = [v5 objectForKeyedSubscript:@"cellular-behavior"];
    v11 = [v5 objectForKeyedSubscript:@"wifi-behavior"];

    v13 = [objc_getProperty(a1 v12];
    v14 = [v13 copyPathRuleBySigningIdentifier:v6];

    if (!v14)
    {
      v14 = [(NEAppRule *)[NEPathRule alloc] initWithSigningIdentifier:v6];
    }

    v16 = [objc_getProperty(a1 v15];
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

    v22 = [objc_getProperty(a1 v18];

    if (v22)
    {
      v23 = objc_alloc(MEMORY[0x1E695DF70]);
      v25 = [objc_getProperty(a1 v24];
      [v25 pathRules];
      v37 = v9;
      v26 = v10;
      v27 = v11;
      v28 = v8;
      v29 = v6;
      v31 = v30 = v7;
      v32 = [v23 initWithArray:v31];

      [v32 addObject:v14];
      v34 = [objc_getProperty(a1 v33];
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
    *a3 = v35;
    goto LABEL_32;
  }

LABEL_33:
  v36 = *MEMORY[0x1E69E9840];
}

- (void)removePathRuleWithParameters:(void *)a3 errorStr:
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = [a2 objectForKeyedSubscript:@"match-signing-identifier"];
    v7 = [objc_getProperty(a1 v6];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E695DF70]);
      v10 = [objc_getProperty(a1 v9];
      v11 = [v10 pathRules];
      v12 = [v8 initWithArray:v11];

      if ([v12 count])
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = [objc_getProperty(a1 v13];
        v15 = [v14 pathRules];

        v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v29 + 1) + 8 * i);
              v21 = [v20 matchSigningIdentifier];
              v22 = [v21 isEqualToString:v5];

              if (v22)
              {
                [v12 removeObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v17);
        }

        v23 = [v12 count];
        v25 = [objc_getProperty(a1 v24];
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
        *a3 = @"No rules present";
      }
    }

    else
    {
      *a3 = @"No Path Controller configuration present to apply app rules to";
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

- (void)setAlwaysOnParameters:(__CFString *)a3 errorStr:
{
  v42 = a2;
  if (a1)
  {
    v6 = [objc_getProperty(a1 v5];
    if (!v6)
    {
      *a3 = @"Requires AlwaysOn configuraton";
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
      *a3 = v19;
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

    v22 = [v6 serviceExceptions];

    if (v22)
    {
      v23 = [v6 serviceExceptions];
      v9 = [v23 mutableCopy];
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

    v31 = [v6 allowedCaptiveNetworkPlugins];

    if (v31)
    {
      v32 = [v6 allowedCaptiveNetworkPlugins];
      v33 = [v42 objectForKeyedSubscript:@"cn-plugin-bundle-id"];
      v34 = [v32 objectForKeyedSubscript:v33];

      if (v34)
      {
        v19 = @"BundleId already exists";
        goto LABEL_40;
      }

      v36 = [v6 allowedCaptiveNetworkPlugins];
      v35 = [v36 mutableCopy];

      v9 = v36;
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

- (void)unsetAlwaysOnParameters:(__CFString *)a3 errorStr:
{
  v28 = a2;
  if (a1)
  {
    v6 = [objc_getProperty(a1 v5];
    if (!v6)
    {
      *a3 = @"Requires AlwaysOn configuraton";
    }

    v7 = [v28 objectForKeyedSubscript:@"ui-toggle-enabled"];

    if (v7)
    {
      [v6 setToggleEnabled:0];
    }

    v8 = [v28 objectForKeyedSubscript:@"service-exception-name"];

    if (v8)
    {
      v8 = [v6 serviceExceptions];

      if (!v8)
      {
        v27 = @"No existing service to be removed";
        goto LABEL_26;
      }

      v9 = [v6 serviceExceptions];
      v10 = [v28 objectForKeyedSubscript:@"service-exception-name"];
      v11 = [v9 objectForKeyedSubscript:v10];

      if (!v11)
      {
        v8 = 0;
        v27 = @"Service does not exist";
        goto LABEL_26;
      }

      v12 = [v6 serviceExceptions];
      v8 = [v12 mutableCopy];

      v13 = [v28 objectForKeyedSubscript:@"service-exception-name"];
      [v8 removeObjectForKey:v13];

      if ([v8 count])
      {
        v14 = v8;
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

    v18 = [v6 allowedCaptiveNetworkPlugins];

    if (v18)
    {
      v19 = [v6 allowedCaptiveNetworkPlugins];
      v20 = [v28 objectForKeyedSubscript:@"cn-plugin-bundle-id"];
      v21 = [v19 objectForKeyedSubscript:v20];

      if (v21)
      {
        v22 = [v6 allowedCaptiveNetworkPlugins];
        v23 = [v22 mutableCopy];

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
        v8 = v23;
        goto LABEL_27;
      }

      v27 = @"BundleId does not exist";
    }

    else
    {
      v27 = @"No existing CaptoveNetworkPlugin to be removed";
    }

LABEL_26:
    *a3 = v27;
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
  v2 = [objc_getProperty(a1 a2];

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

- (BOOL)unsetHotspotProviderParameters:(id)a3 errorStr:(id *)a4
{
  v6 = [(NEUtilConfigurationClient *)self hotspot];

  if (v6)
  {
    v8 = [(NEUtilConfigurationClient *)self hotspot];
    [v8 setEnabled:0];
  }

  else
  {
    *a4 = @"Missing hotspot provider configuration";
  }

  return v6 != 0;
}

- (id)hotspot
{
  if (a1)
  {
    a1 = [objc_getProperty(a1 a2];
    v2 = vars8;
  }

  return a1;
}

- (BOOL)setHotspotProviderParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v8 = [(NEUtilConfigurationClient *)self hotspot];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"hotspot-provider-enabled"];
    v10 = [v6 objectForKeyedSubscript:@"hotspot-provider-evaluation-id"];
    v11 = [v6 objectForKeyedSubscript:@"hotspot-provider-auth-id"];
    v12 = [v6 objectForKeyedSubscript:@"hotspot-provider-plugin-type"];
    [v8 setEnabled:{objc_msgSend(v9, "BOOLValue")}];
    [v8 setEvaluationProviderBundleIdentifier:v10];
    [v8 setAuthenticationProviderBundleIdentifier:v11];
    if (v12)
    {
      [v8 setPluginType:v12];
    }
  }

  else
  {
    *a4 = @"Missing hotspot provider configuration";
  }

  return v8 != 0;
}

- (BOOL)unsetProxyServer:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
  v8 = [(NEUtilConfigurationClient *)self protocolForParameters:v6];

  if (v8)
  {
    v9 = [v8 proxySettings];
    if (v9)
    {
      v10 = v9;
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
          *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid proxy type: %@, valid values are http, https, ftp, rtsp, gopher, and socks", v7];

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
    *a4 = @"Missing protocol";
  }

LABEL_18:

  return v11;
}

- (BOOL)setProxyServer:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
  v8 = [(NEUtilConfigurationClient *)self protocolForParameters:v6];
  v9 = v8;
  if (!v8)
  {
    v12 = 0;
    *a4 = @"Missing protocol";
    goto LABEL_39;
  }

  v10 = [v8 proxySettings];
  if (!v10)
  {
    v10 = objc_alloc_init(NEProxySettings);
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
      *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid proxy type: %@, valid values are http, https, ftp, rtsp, gopher, and socks", v7];

      goto LABEL_33;
    }

    v11 = 5;
  }

  v13 = [NEProxyServer alloc];
  v14 = [v6 objectForKeyedSubscript:@"address"];
  v15 = [v6 objectForKeyedSubscript:@"port"];
  v16 = -[NEProxyServer initWithType:address:port:](v13, "initWithType:address:port:", v11, v14, [v15 intValue]);

  v17 = [v6 objectForKeyedSubscript:@"authentication-required"];

  if (v17)
  {
    v18 = [v6 objectForKeyedSubscript:@"authentication-required"];
    -[NEProxyServer setAuthenticationRequired:](v16, "setAuthenticationRequired:", [v18 BOOLValue]);
  }

  if (![(NEProxyServer *)v16 authenticationRequired])
  {
    goto LABEL_23;
  }

  v19 = [v6 objectForKeyedSubscript:@"username"];

  if (!v19)
  {
    v23 = @"Authentication is required, but username is missing";
LABEL_32:
    *a4 = v23;

LABEL_33:
    v12 = 0;
    goto LABEL_39;
  }

  v20 = [v6 objectForKeyedSubscript:@"username"];
  [(NEProxyServer *)v16 setUsername:v20];

  v21 = [v6 objectForKeyedSubscript:@"password"];

  if (!v21)
  {
    v23 = @"Authentication is required, but password is missing";
    goto LABEL_32;
  }

  v22 = [v6 objectForKeyedSubscript:@"password"];
  [(NEProxyServer *)v16 setPassword:v22];

LABEL_23:
  if (v11 > 3)
  {
    if (v11 == 4)
    {
      [(NEProxySettings *)v10 setRTSPServer:v16];
      [(NEProxySettings *)v10 setRTSPEnabled:1];
    }

    else if (v11 == 5)
    {
      [(NEProxySettings *)v10 setSOCKSServer:v16];
      [(NEProxySettings *)v10 setSOCKSEnabled:1];
    }

    else
    {
      [(NEProxySettings *)v10 setGopherServer:v16];
      [(NEProxySettings *)v10 setGopherEnabled:1];
    }
  }

  else if (v11 == 1)
  {
    [(NEProxySettings *)v10 setHTTPServer:v16];
    [(NEProxySettings *)v10 setHTTPEnabled:1];
  }

  else if (v11 == 2)
  {
    [(NEProxySettings *)v10 setHTTPSServer:v16];
    [(NEProxySettings *)v10 setHTTPSEnabled:1];
  }

  else
  {
    [(NEProxySettings *)v10 setFTPServer:v16];
    [(NEProxySettings *)v10 setFTPEnabled:1];
  }

  [v9 setProxySettings:v10];

  v12 = 1;
LABEL_39:

  return v12;
}

- (BOOL)unsetProxyParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 proxySettings];
    if (v9)
    {
      v10 = [v6 objectForKeyedSubscript:@"auto-proxy-discovery"];

      if (v10)
      {
        [v9 setAutoProxyDiscovery:0];
      }

      v11 = [v6 objectForKeyedSubscript:@"auto-config-url"];

      if (v11)
      {
        [v9 setAutoProxyConfigurationEnabled:0];
        [v9 setProxyAutoConfigURL:0];
      }

      v12 = [v6 objectForKeyedSubscript:@"exclude-simple-hostnames"];

      if (v12)
      {
        [v9 setExcludeSimpleHostnames:0];
      }

      v13 = [v6 objectForKeyedSubscript:@"exception-list"];

      if (v13)
      {
        [v9 setExceptionList:0];
      }

      v14 = [v6 objectForKeyedSubscript:@"use-passive-ftp"];

      if (v14)
      {
        [v9 setUsePassiveFTP:0];
      }

      v15 = [v6 objectForKeyedSubscript:@"match-domains"];

      if (v15)
      {
        [v9 setMatchDomains:0];
      }
    }
  }

  else
  {
    v9 = 0;
    *a4 = @"Missing protocol";
  }

  return v8 != 0;
}

- (BOOL)setProxyParameters:(id)a3 errorStr:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:v6];
  v8 = v7;
  if (!v7)
  {
    *a4 = @"Missing protocol";
    goto LABEL_24;
  }

  v9 = [v7 proxySettings];
  if (!v9)
  {
    v9 = objc_alloc_init(NEProxySettings);
  }

  v10 = [v6 objectForKeyedSubscript:@"auto-proxy-discovery"];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"auto-proxy-discovery"];
    -[NEProxySettings setAutoProxyDiscovery:](v9, "setAutoProxyDiscovery:", [v11 BOOLValue]);
  }

  v12 = [v6 objectForKeyedSubscript:@"auto-config-url"];

  if (v12)
  {
    [(NEProxySettings *)v9 setAutoProxyConfigurationEnabled:1];
    v13 = MEMORY[0x1E695DFF8];
    v14 = [v6 objectForKeyedSubscript:@"auto-config-url"];
    v15 = [v13 URLWithString:v14];
    [(NEProxySettings *)v9 setProxyAutoConfigurationURL:v15];
  }

  v16 = [v6 objectForKeyedSubscript:@"exclude-simple-hostnames"];

  if (v16)
  {
    v17 = [v6 objectForKeyedSubscript:@"exclude-simple-hostnames"];
    -[NEProxySettings setExcludeSimpleHostnames:](v9, "setExcludeSimpleHostnames:", [v17 BOOLValue]);
  }

  v18 = [v6 objectForKeyedSubscript:@"exception-list"];

  if (v18)
  {
    v19 = [v6 objectForKeyedSubscript:@"exception-list"];
    v20 = isa_nsstring(v19);

    v21 = [v6 objectForKeyedSubscript:@"exception-list"];
    v22 = v21;
    if (v20)
    {
      v32[0] = v21;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      [(NEProxySettings *)v9 setExceptionList:v23];

LABEL_16:
      goto LABEL_17;
    }

    v24 = isa_nsarray(v21);

    if (v24)
    {
      v22 = [v6 objectForKeyedSubscript:@"exception-list"];
      [(NEProxySettings *)v9 setExceptionList:v22];
      goto LABEL_16;
    }
  }

LABEL_17:
  v25 = [v6 objectForKeyedSubscript:@"use-passive-ftp"];

  if (v25)
  {
    v26 = [v6 objectForKeyedSubscript:@"use-passive-ftp"];
    -[NEProxySettings setUsePassiveFTP:](v9, "setUsePassiveFTP:", [v26 BOOLValue]);
  }

  v27 = [v6 objectForKeyedSubscript:@"match-domains"];
  if (isa_nsarray(v27))
  {
    [(NEProxySettings *)v9 setMatchDomains:v27];
  }

  else if (isa_nsstring(v27))
  {
    v31 = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [(NEProxySettings *)v9 setMatchDomains:v28];
  }

  [v8 setProxySettings:v9];

LABEL_24:
  v29 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

- (BOOL)unsetRelayConditionsWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v8 = [(NEUtilConfigurationClient *)self relayConfiguration];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"match-domains"];

    if (v9)
    {
      [v8 setMatchDomains:0];
    }

    v10 = [v6 objectForKeyedSubscript:@"excluded-domains"];

    if (v10)
    {
      [v8 setExcludedDomains:0];
    }
  }

  else
  {
    *a4 = @"Missing relay configuration";
  }

  return v8 != 0;
}

- (id)relayConfiguration
{
  if (a1)
  {
    a1 = [objc_getProperty(a1 a2];
    v2 = vars8;
  }

  return a1;
}

- (BOOL)setRelayConditionsWithParameters:(id)a3 errorStr:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = [(NEUtilConfigurationClient *)self relayConfiguration];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"match-domains"];
    if (isa_nsarray(v9))
    {
      [v8 setMatchDomains:v9];
    }

    else if (isa_nsstring(v9))
    {
      v16[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [v8 setMatchDomains:v10];
    }

    v11 = [v6 objectForKeyedSubscript:@"excluded-domains"];
    if (isa_nsarray(v11))
    {
      [v8 setExcludedDomains:v11];
    }

    else if (isa_nsstring(v11))
    {
      v15 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      [v8 setExcludedDomains:v12];
    }
  }

  else
  {
    *a4 = @"Missing relay configuration";
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

- (BOOL)removeRelayWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = [a3 objectForKeyedSubscript:@"index"];
  v7 = [v6 integerValue];
  v9 = [(NEUtilConfigurationClient *)self relayConfiguration];
  v10 = v9;
  if (!v9)
  {
    v16 = 0;
    v17 = @"Missing relay configuration";
LABEL_6:
    *a4 = v17;
    goto LABEL_7;
  }

  v11 = [v9 relays];
  v12 = [v11 count];

  if (v7 >= v12)
  {
    v16 = 0;
    v17 = @"No relay configuration present with given index";
    goto LABEL_6;
  }

  v13 = objc_alloc(MEMORY[0x1E695DF70]);
  v14 = [v10 relays];
  v15 = [v13 initWithArray:v14];

  [v15 removeObjectAtIndex:v7];
  [v10 setRelays:v15];

  v16 = 1;
LABEL_7:

  return v16;
}

- (BOOL)addRelayWithParameters:(id)a3 errorStr:(id *)a4
{
  v49[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = [(NEUtilConfigurationClient *)self relayConfiguration];
  if (v8)
  {
    v46 = a4;
    v9 = objc_alloc_init(NERelay);
    v10 = [v6 objectForKeyedSubscript:@"http3-url"];
    v11 = [v10 stringByRemovingPercentEncoding];

    if (v11)
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
      [(NERelay *)v9 setHTTP3RelayURL:v12];
    }

    v48 = v11;
    v13 = [v6 objectForKeyedSubscript:@"http2-url"];
    v14 = [v13 stringByRemovingPercentEncoding];

    if (v14)
    {
      v15 = [MEMORY[0x1E695DFF8] URLWithString:v14];
      [(NERelay *)v9 setHTTP2RelayURL:v15];
    }

    v47 = v14;
    v16 = [v6 objectForKeyedSubscript:@"doh-url"];
    v17 = [v16 stringByRemovingPercentEncoding];

    if (v17)
    {
      v18 = [MEMORY[0x1E695DFF8] URLWithString:v17];
      [(NERelay *)v9 setDnsOverHTTPSURL:v18];
    }

    v19 = [v6 objectForKeyedSubscript:@"raw-public-key"];
    v20 = [v19 stringByRemovingPercentEncoding];

    if (v20)
    {
      v21 = dispatch_data_create([v20 UTF8String], objc_msgSend(v20, "length"), 0, 0);
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

    v25 = [v6 objectForKeyedSubscript:@"identity"];

    if (v25)
    {
      v26 = [v6 objectForKeyedSubscript:@"identity"];
      v27 = [v26 integerValue];

      if (!self || (v29 = objc_getProperty(self, v28, 48, 1)) == 0 || (v31 = v29, v32 = [objc_getProperty(self v30], v31, v27 >= v32))
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@ index, use the list-identities command to obtain a list of available identities and their indicies", @"identity"];
        *v46 = v24 = 0;
        goto LABEL_27;
      }

      v34 = [objc_getProperty(self v33];
      v35 = [v34 objectForKeyedSubscript:@"domain"];
      v36 = [v35 integerValue];

      if (v36)
      {
        *v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, an identity in the %s keychain is required", @"identity", "system"];

        v24 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v37 = [v34 objectForKeyedSubscript:@"persistent-reference"];
      [(NERelay *)v9 setIdentityReference:v37];
    }

    v38 = objc_alloc(MEMORY[0x1E695DF70]);
    v39 = [v8 relays];
    v40 = [v38 initWithArray:v39];

    v41 = [v6 objectForKeyedSubscript:@"index"];
    v42 = [v40 count];
    if (v41)
    {
      v42 = [v41 integerValue];
    }

    v43 = v42;
    if (v42 >= [v40 count])
    {
      [v40 addObject:v9];
    }

    else
    {
      [v40 insertObject:v9 atIndex:v43];
    }

    [v8 setRelays:v40];

    v24 = 1;
    goto LABEL_27;
  }

  v24 = 0;
  *a4 = @"Missing relay configuration";
LABEL_28:

  v44 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)unsetAppPushParameters:(id)a3 errorStr:(id *)a4
{
  v6 = [(NEUtilConfigurationClient *)self appPush];

  if (v6)
  {
    v7 = [(NEUtilConfigurationClient *)self appPush];
    [v7 setMatchSSIDs:0];

    v8 = [(NEUtilConfigurationClient *)self appPush];
    [v8 setProviderConfiguration:0];

    v9 = [(NEUtilConfigurationClient *)self appPush];
    [v9 setPluginType:0];
  }

  else
  {
    *a4 = @"Missing app push provider configuration";
  }

  return v6 != 0;
}

- (BOOL)setAppPushParameters:(id)a3 errorStr:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self appPush];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"match-ssids"];
    v9 = v8;
    if (v8)
    {
      if (isa_nsarray(v8))
      {
        [v7 setMatchSSIDs:v9];
      }

      else if (isa_nsstring(v9))
      {
        v18[0] = v9;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        [v7 setMatchSSIDs:v11];
      }

      v12 = [v6 objectForKeyedSubscript:@"vendor-config"];
      v13 = v12;
      if (v12 && isa_nsdictionary(v12))
      {
        v14 = [v6 objectForKeyedSubscript:@"vendor-config"];
        [v7 setProviderConfiguration:v14];

        v15 = [v6 objectForKeyedSubscript:@"plugin-type"];
        if (v15)
        {
          [v7 setPluginType:v15];
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
        *a4 = @"Missing app push provider configuration dictionary";
      }
    }

    else
    {
      v10 = 0;
      *a4 = @"Missing matching SSIDs in the input parameters";
    }
  }

  else
  {
    v10 = 0;
    *a4 = @"Missing app push provider configuration";
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)unsetDNSParameters:(id)a3 errorStr:(id *)a4
{
  v6 = [(NEUtilConfigurationClient *)self protocolForParameters:a3];
  v7 = [(NEUtilConfigurationClient *)self dnsSettingsBundle];
  v8 = v7;
  if (v7)
  {
    [v7 setSettings:0];
  }

  else
  {
    if (!v6)
    {
      v9 = 0;
      *a4 = @"Missing DNS settings or VPN protocol";
      goto LABEL_6;
    }

    [v6 setDNSSettings:0];
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (BOOL)setDNSParameters:(id)a3 errorStr:(id *)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:v6];
  v8 = [(NEUtilConfigurationClient *)self dnsSettingsBundle];
  v9 = (v8 | v7) != 0;
  if (v8 | v7)
  {
    v10 = [v6 objectForKeyedSubscript:@"protocol"];
    v11 = [v6 objectForKeyedSubscript:@"servers"];
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

    v17 = [v6 objectForKeyedSubscript:@"search-domains"];
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

    v20 = [v6 objectForKeyedSubscript:@"match-domains"];
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

    v23 = [v6 objectForKeyedSubscript:@"domain-name"];
    if (isa_nsstring(v23))
    {
      [v16 setDomainName:v23];
    }

    v24 = [v6 objectForKeyedSubscript:@"server-name"];
    if (isa_nsstring(v24))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v16 setServerName:v24];
      }
    }

    v25 = [v6 objectForKeyedSubscript:@"url-path"];
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

    if (v8)
    {
      [v8 setSettings:v16];
    }

    else if (v7)
    {
      [v7 setDNSSettings:v16];
    }

    v9 = (v8 | v7) != 0;
  }

  else
  {
    *a4 = @"Missing DNS settings or VPN protocol";
  }

  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)removeOnDemandRuleWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = [a3 objectForKeyedSubscript:@"index"];
  v7 = [v6 integerValue];
  v8 = [(NEUtilConfigurationClient *)self onDemandRules];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    *a4 = @"No rule present with given index";
  }

  else
  {
    v10 = [(NEUtilConfigurationClient *)self onDemandRules];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E695DF70]);
      v12 = [(NEUtilConfigurationClient *)self onDemandRules];
      v13 = [v11 initWithArray:v12];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v13 removeObjectAtIndex:v7];
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

  return v7 < v9;
}

- (BOOL)addOnDemandRuleWithParameters:(id)a3 errorStr:(id *)a4
{
  v43[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"action"];
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
      *a4 = @"Invalid action";
      goto LABEL_36;
    }

    v8 = off_1E7F04D00;
  }

  v9 = objc_alloc_init(*v8);
  v10 = [v6 objectForKeyedSubscript:@"dns-search-domain-match"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = [v6 objectForKeyedSubscript:@"dns-search-domain-match"];
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

  v15 = [v6 objectForKeyedSubscript:@"dns-server-match"];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  v17 = [v6 objectForKeyedSubscript:@"dns-server-match"];
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

  v20 = [v6 objectForKeyedSubscript:@"interface-type"];
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
  v23 = [v6 objectForKeyedSubscript:@"ssid-match"];
  objc_opt_class();
  v24 = objc_opt_isKindOfClass();

  v25 = [v6 objectForKeyedSubscript:@"ssid-match"];
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

  v28 = [v6 objectForKeyedSubscript:@"probe-url"];
  v29 = [v28 stringByRemovingPercentEncoding];

  if (v29)
  {
    v30 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v29];
    [v9 setProbeURL:v30];
  }

  v31 = [(NEUtilConfigurationClient *)self onDemandRules];

  if (v31)
  {
    v32 = objc_alloc(MEMORY[0x1E695DF70]);
    v33 = [(NEUtilConfigurationClient *)self onDemandRules];
    v34 = [v32 initWithArray:v33];
  }

  else
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v35 = [v6 objectForKeyedSubscript:@"index"];
  v36 = [v34 count];
  if (v35)
  {
    v36 = [v35 integerValue];
  }

  v37 = v36;
  if (v36 >= [v34 count])
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

- (BOOL)unsetSharedSecretWithParameters:(id)a3 errorStr:(id *)a4
{
  v5 = a3;
  v6 = [(NEUtilConfigurationClient *)self protocolForParameters:v5];
  v7 = [v5 objectForKeyedSubscript:@"shared-secret"];

  if (v7)
  {
    v8 = [v6 sharedSecretKeychainItem];

    if (v8)
    {
      v9 = [v6 sharedSecretKeychainItem];
      [v9 setIdentifier:0];
    }
  }

  return 1;
}

- (BOOL)unsetIPSecParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:v6];
  if ([(NEUtilConfigurationClient *)self isAlwaysOn])
  {
    v8 = [v6 objectForKeyedSubscript:@"interface-name"];
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
    *a4 = v18;
    goto LABEL_28;
  }

  v10 = [v6 objectForKeyedSubscript:@"authentication-method"];

  if (v10)
  {
    [v7 setAuthenticationMethod:0];
  }

  v11 = [v6 objectForKeyedSubscript:@"certificate-type"];

  if (v11 && [v7 type] == 5)
  {
    [v7 setCertificateType:1];
  }

  v12 = [v6 objectForKeyedSubscript:@"use-internal-ip-subnet"];

  if (v12 && [v7 type] == 5)
  {
    [v7 setUseConfigurationAttributeInternalIPSubnet:0];
  }

  v13 = [v6 objectForKeyedSubscript:@"disable-mobike"];

  if (v13 && [v7 type] == 5)
  {
    [v7 setDisableMOBIKE:0];
  }

  v14 = [v6 objectForKeyedSubscript:@"disable-redirect"];

  if (v14 && [v7 type] == 5)
  {
    [v7 setDisableRedirect:0];
  }

  v15 = [v6 objectForKeyedSubscript:@"enable-pfs"];

  if (v15 && [v7 type] == 5)
  {
    [v7 setEnablePFS:0];
  }

  v16 = [v6 objectForKeyedSubscript:@"enable-revocation-check"];

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
    v20 = [v6 objectForKeyedSubscript:@"strict-revocation-check"];

    if (v20 && [v7 type] == 5)
    {
      goto LABEL_31;
    }
  }

  v21 = [v6 objectForKeyedSubscript:@"tls-minimum-version"];

  if (v21 && [v7 type] == 5)
  {
    [v7 setMinimumTLSVersion:0];
  }

  v22 = [v6 objectForKeyedSubscript:@"tls-maximum-version"];

  if (v22 && [v7 type] == 5)
  {
    [v7 setMaximumTLSVersion:0];
  }

  if (![(NEUtilConfigurationClient *)self unsetSharedSecretWithParameters:v6 errorStr:a4])
  {
    v17 = 0;
    goto LABEL_28;
  }

  v23 = [v6 objectForKeyedSubscript:@"local-identifier"];

  if (v23)
  {
    [v7 setLocalIdentifier:0];
  }

  v24 = [v6 objectForKeyedSubscript:@"remote-identifier"];

  if (v24)
  {
    [v7 setRemoteIdentifier:0];
  }

  v25 = [v6 objectForKeyedSubscript:@"use-extended-authentication"];

  if (v25)
  {
    [v7 setUseExtendedAuthentication:0];
  }

  v26 = @"dead-peer-detection-rate";
  v27 = [v6 objectForKeyedSubscript:@"dead-peer-detection-rate"];

  if (v27)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    [v7 setDeadPeerDetectionRate:0];
  }

  v28 = [v6 objectForKeyedSubscript:@"server-CA-name"];

  if (v28 && [v7 type] == 5)
  {
    [v7 setServerCertificateIssuerCommonName:0];
  }

  v29 = [v6 objectForKeyedSubscript:@"server-cert-name"];

  if (v29 && [v7 type] == 5)
  {
    [v7 setServerCertificateCommonName:0];
  }

  v26 = @"encryption-algorithm";
  v30 = [v6 objectForKeyedSubscript:@"encryption-algorithm"];

  if (v30)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    v31 = [v7 IKESecurityAssociationParameters];
    [v31 setEncryptionAlgorithm:4];
  }

  v26 = @"integrity-algorithm";
  v32 = [v6 objectForKeyedSubscript:@"integrity-algorithm"];

  if (v32)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    v33 = [v7 IKESecurityAssociationParameters];
    [v33 setIntegrityAlgorithm:3];
  }

  v26 = @"diffie-hellman-group";
  v34 = [v6 objectForKeyedSubscript:@"diffie-hellman-group"];

  if (v34)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    v35 = [v7 IKESecurityAssociationParameters];
    [v35 setDiffieHellmanGroup:14];
  }

  v26 = @"life-time";
  v36 = [v6 objectForKeyedSubscript:@"life-time"];

  if (v36)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    v37 = [v7 IKESecurityAssociationParameters];
    [v37 setLifetimeMinutes:10];
  }

  v26 = @"child-encryption-algorithm";
  v38 = [v6 objectForKeyedSubscript:@"child-encryption-algorithm"];

  if (v38)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    v39 = [v7 childSecurityAssociationParameters];
    [v39 setEncryptionAlgorithm:4];
  }

  v26 = @"child-integrity-algorithm";
  v40 = [v6 objectForKeyedSubscript:@"child-integrity-algorithm"];

  if (v40)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    v41 = [v7 childSecurityAssociationParameters];
    [v41 setIntegrityAlgorithm:3];
  }

  v26 = @"child-diffie-hellman-group";
  v42 = [v6 objectForKeyedSubscript:@"child-diffie-hellman-group"];

  if (v42)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    v43 = [v7 childSecurityAssociationParameters];
    [v43 setDiffieHellmanGroup:14];
  }

  v26 = @"child-life-time";
  v44 = [v6 objectForKeyedSubscript:@"child-life-time"];

  if (!v44)
  {
    goto LABEL_78;
  }

  if ([v7 type] != 5)
  {
LABEL_83:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is only available for the IKEv2 protocol", v26];
    *a4 = v17 = 0;
    goto LABEL_28;
  }

  v45 = [v7 childSecurityAssociationParameters];
  [v45 setLifetimeMinutes:10];

LABEL_78:
  v46 = [v6 objectForKeyedSubscript:@"enable-fallback"];

  if (v46 && [v7 type] == 5)
  {
    [v7 setEnableFallback:0];
  }

  v17 = 1;
LABEL_28:

  return v17;
}

- (BOOL)setSharedSecretWithParameters:(id)a3 errorStr:(id *)a4
{
  v5 = a3;
  v6 = [(NEUtilConfigurationClient *)self protocolForParameters:v5];
  v7 = [v5 objectForKeyedSubscript:@"shared-secret"];

  if (v7)
  {
    v8 = [v6 sharedSecretKeychainItem];

    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:@"shared-secret"];
      v10 = [v6 sharedSecretKeychainItem];
      [v10 setPassword:v9];
    }

    else
    {
      v11 = [NEKeychainItem alloc];
      v9 = [v5 objectForKeyedSubscript:@"shared-secret"];
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

      v10 = Property;
      v15 = [(NEKeychainItem *)v11 initWithPassword:v9 domain:v13 accessGroup:v10];
      [v6 setSharedSecretKeychainItem:v15];
    }
  }

  return 1;
}

- (BOOL)setIPSecParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:v6];
  if ([(NEUtilConfigurationClient *)self isAlwaysOn])
  {
    v8 = [v6 objectForKeyedSubscript:@"interface-name"];
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
    *a4 = v14;
    goto LABEL_11;
  }

  v10 = [v6 objectForKeyedSubscript:@"authentication-method"];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"authentication-method"];
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
        *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are none, certificate, and shared-secret", @"authentication-method"];

        goto LABEL_84;
      }

      v12 = 2;
    }

    [v7 setAuthenticationMethod:v12];
  }

  if (![(NEUtilConfigurationClient *)self setSharedSecretWithParameters:v6 errorStr:a4])
  {
LABEL_84:
    v13 = 0;
    goto LABEL_11;
  }

  v16 = [v6 objectForKeyedSubscript:@"certificate-type"];

  if (v16 && [v7 type] == 5)
  {
    v17 = [v6 objectForKeyedSubscript:@"certificate-type"];
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

  v19 = [v6 objectForKeyedSubscript:@"use-internal-ip-subnet"];

  if (v19 && [v7 type] == 5)
  {
    v20 = [v6 objectForKeyedSubscript:@"use-internal-ip-subnet"];
    [v7 setUseConfigurationAttributeInternalIPSubnet:{objc_msgSend(v20, "BOOLValue")}];
  }

  v21 = [v6 objectForKeyedSubscript:@"disable-mobike"];

  if (v21 && [v7 type] == 5)
  {
    v22 = [v6 objectForKeyedSubscript:@"disable-mobike"];
    [v7 setDisableMOBIKE:{objc_msgSend(v22, "BOOLValue")}];
  }

  v23 = [v6 objectForKeyedSubscript:@"disable-redirect"];

  if (v23 && [v7 type] == 5)
  {
    v24 = [v6 objectForKeyedSubscript:@"disable-redirect"];
    [v7 setDisableRedirect:{objc_msgSend(v24, "BOOLValue")}];
  }

  v25 = [v6 objectForKeyedSubscript:@"enable-pfs"];

  if (v25 && [v7 type] == 5)
  {
    v26 = [v6 objectForKeyedSubscript:@"enable-pfs"];
    [v7 setEnablePFS:{objc_msgSend(v26, "BOOLValue")}];
  }

  v27 = [v6 objectForKeyedSubscript:@"enable-revocation-check"];

  if (v27)
  {
    if ([v7 type] == 5)
    {
      v28 = [v6 objectForKeyedSubscript:@"enable-revocation-check"];
      [v7 setEnableRevocationCheck:{objc_msgSend(v28, "BOOLValue")}];

      if (([v7 enableRevocationCheck] & 1) == 0)
      {
        [v7 setStrictRevocationCheck:0];
      }
    }
  }

  v29 = [v6 objectForKeyedSubscript:@"strict-revocation-check"];

  if (v29 && [v7 type] == 5 && objc_msgSend(v7, "enableRevocationCheck"))
  {
    v30 = [v6 objectForKeyedSubscript:@"strict-revocation-check"];
    [v7 setStrictRevocationCheck:{objc_msgSend(v30, "BOOLValue")}];
  }

  v31 = [v6 objectForKeyedSubscript:@"tls-minimum-version"];

  if (v31 && [v7 type] == 5)
  {
    v32 = @"tls-minimum-version";
    v17 = [v6 objectForKeyedSubscript:@"tls-minimum-version"];
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

  v34 = [v6 objectForKeyedSubscript:@"tls-maximum-version"];

  if (v34 && [v7 type] == 5)
  {
    v32 = @"tls-maximum-version";
    v17 = [v6 objectForKeyedSubscript:@"tls-maximum-version"];
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
  v36 = [v6 objectForKeyedSubscript:@"local-identifier"];

  if (v36)
  {
    v37 = [v6 objectForKeyedSubscript:@"local-identifier"];
    [v7 setLocalIdentifier:v37];
  }

  v38 = [v6 objectForKeyedSubscript:@"remote-identifier"];

  if (v38)
  {
    v39 = [v6 objectForKeyedSubscript:@"remote-identifier"];
    [v7 setRemoteIdentifier:v39];
  }

  v40 = [v6 objectForKeyedSubscript:@"use-extended-authentication"];

  if (v40)
  {
    v41 = [v6 objectForKeyedSubscript:@"use-extended-authentication"];
    [v7 setUseExtendedAuthentication:{objc_msgSend(v41, "BOOLValue")}];
  }

  v42 = @"dead-peer-detection-rate";
  v43 = [v6 objectForKeyedSubscript:@"dead-peer-detection-rate"];

  if (v43)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_170;
    }

    v17 = [v6 objectForKeyedSubscript:@"dead-peer-detection-rate"];
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
    *a4 = LABEL_83:;

    goto LABEL_84;
  }

LABEL_90:
  v45 = [v6 objectForKeyedSubscript:@"server-CA-name"];

  if (v45 && [v7 type] == 5)
  {
    v46 = [v6 objectForKeyedSubscript:@"server-CA-name"];
    [v7 setServerCertificateIssuerCommonName:v46];
  }

  v47 = [v6 objectForKeyedSubscript:@"server-cert-name"];

  if (v47 && [v7 type] == 5)
  {
    v48 = [v6 objectForKeyedSubscript:@"server-cert-name"];
    [v7 setServerCertificateCommonName:v48];
  }

  v42 = @"encryption-algorithm";
  v49 = [v6 objectForKeyedSubscript:@"encryption-algorithm"];

  if (v49)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_170;
    }

    v50 = @"encryption-algorithm";
    v17 = [v6 objectForKeyedSubscript:@"encryption-algorithm"];
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

    v52 = [v7 IKESecurityAssociationParameters];
    [v52 setEncryptionAlgorithm:v51];
  }

  v42 = @"integrity-algorithm";
  v53 = [v6 objectForKeyedSubscript:@"integrity-algorithm"];

  if (v53)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_170;
    }

    v54 = @"integrity-algorithm";
    v17 = [v6 objectForKeyedSubscript:@"integrity-algorithm"];
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

    v56 = [v7 IKESecurityAssociationParameters];
    [v56 setIntegrityAlgorithm:v55];
  }

  v42 = @"diffie-hellman-group";
  v57 = [v6 objectForKeyedSubscript:@"diffie-hellman-group"];

  if (v57)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_170;
    }

    v58 = [v6 objectForKeyedSubscript:@"diffie-hellman-group"];
    v59 = [v58 intValue];

    if (v59 - 14 >= 8 && v59 - 31 >= 2)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are 14-21, 31, 32", @"diffie-hellman-group", v84, v85];
      goto LABEL_171;
    }

    v60 = v59;
    v61 = [v7 IKESecurityAssociationParameters];
    [v61 setDiffieHellmanGroup:v60];
  }

  v42 = @"life-time";
  v62 = [v6 objectForKeyedSubscript:@"life-time"];

  if (!v62)
  {
    goto LABEL_128;
  }

  if ([v7 type] != 5)
  {
    goto LABEL_170;
  }

  v63 = [v6 objectForKeyedSubscript:@"life-time"];
  v64 = [v63 intValue];

  if ((v64 - 10) > 0x596)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are in the range %d - %d minutes (24 hours)", @"life-time", 10, 1440];
LABEL_171:
    *a4 = v13 = 0;
    goto LABEL_11;
  }

  v65 = [v7 IKESecurityAssociationParameters];
  [v65 setLifetimeMinutes:v64];

LABEL_128:
  v42 = @"child-encryption-algorithm";
  v66 = [v6 objectForKeyedSubscript:@"child-encryption-algorithm"];

  if (!v66)
  {
    goto LABEL_144;
  }

  if ([v7 type] != 5)
  {
    goto LABEL_170;
  }

  v50 = @"child-encryption-algorithm";
  v17 = [v6 objectForKeyedSubscript:@"child-encryption-algorithm"];
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
  v68 = [v7 childSecurityAssociationParameters];
  [v68 setEncryptionAlgorithm:v67];

LABEL_144:
  v42 = @"child-integrity-algorithm";
  v69 = [v6 objectForKeyedSubscript:@"child-integrity-algorithm"];

  if (!v69)
  {
    goto LABEL_154;
  }

  if ([v7 type] != 5)
  {
    goto LABEL_170;
  }

  v54 = @"child-integrity-algorithm";
  v17 = [v6 objectForKeyedSubscript:@"child-integrity-algorithm"];
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
  v71 = [v7 childSecurityAssociationParameters];
  [v71 setIntegrityAlgorithm:v70];

LABEL_154:
  v42 = @"child-diffie-hellman-group";
  v72 = [v6 objectForKeyedSubscript:@"child-diffie-hellman-group"];

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

  v73 = [v6 objectForKeyedSubscript:@"child-diffie-hellman-group"];
  v74 = [v73 intValue];

  if ((v74 > 0x20 || ((1 << v74) & 0x180000026) == 0) && v74 - 22 <= 0xFFFFFFF7)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are 1, 2, 5, 14-21, 31, 32", @"child-diffie-hellman-group", v84, v85];
    goto LABEL_171;
  }

  v75 = [v7 childSecurityAssociationParameters];
  [v75 setDiffieHellmanGroup:v74];

LABEL_159:
  v42 = @"child-life-time";
  v76 = [v6 objectForKeyedSubscript:@"child-life-time"];

  if (!v76)
  {
    goto LABEL_163;
  }

  if ([v7 type] != 5)
  {
    goto LABEL_170;
  }

  v77 = [v6 objectForKeyedSubscript:@"child-life-time"];
  v78 = [v77 intValue];

  if ((v78 - 10) > 0x596)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are in the range 10 - 1440 minutes (24 hours)", @"child-life-time", v84, v85];
    goto LABEL_171;
  }

  v79 = [v7 childSecurityAssociationParameters];
  [v79 setLifetimeMinutes:v78];

LABEL_163:
  v80 = [v6 objectForKeyedSubscript:@"enable-fallback"];

  if (v80 && [v7 type] == 5)
  {
    v81 = [v6 objectForKeyedSubscript:@"enable-fallback"];
    [v7 setEnableFallback:{objc_msgSend(v81, "BOOLValue")}];
  }

  v82 = [v6 objectForKeyedSubscript:@"mtu"];

  if (v82 && [v7 type] == 5)
  {
    v83 = [v6 objectForKeyedSubscript:@"mtu"];
    [v7 setMtu:{objc_msgSend(v83, "intValue")}];
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (BOOL)unsetPasswordWithParameters:(id)a3 errorStr:(id *)a4
{
  v5 = a3;
  v6 = [(NEUtilConfigurationClient *)self protocolForParameters:v5];
  v7 = [v5 objectForKeyedSubscript:@"password"];

  if (v7)
  {
    v8 = [v6 passwordKeychainItem];

    if (v8)
    {
      v9 = [v6 passwordKeychainItem];
      [v9 setIdentifier:0];
    }
  }

  return 1;
}

- (BOOL)unsetCommonParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:v6];
  if ([(NEUtilConfigurationClient *)self isAlwaysOn])
  {
    v8 = [v6 objectForKeyedSubscript:@"enabled"];
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

  v10 = [v6 objectForKeyedSubscript:@"enabled"];

  if (v10)
  {
    [(NEUtilConfigurationClient *)self setEnabled:0];
  }

  v11 = [v6 objectForKeyedSubscript:@"server-address"];

  if (v11)
  {
    [v7 setServerAddress:0];
  }

  v12 = [v6 objectForKeyedSubscript:@"username"];

  if (v12)
  {
    [v7 setUsername:0];
  }

  if (![(NEUtilConfigurationClient *)self unsetPasswordWithParameters:v6 errorStr:a4])
  {
    v26 = 0;
    goto LABEL_47;
  }

  v13 = [v6 objectForKeyedSubscript:@"disconnect-on-idle-timeout"];

  if (v13)
  {
    [v7 setDisconnectOnIdleTimeout:0];
  }

  v14 = [v6 objectForKeyedSubscript:@"disconnect-on-sleep"];

  if (v14)
  {
    [v7 setDisconnectOnSleep:0];
  }

  v15 = [v6 objectForKeyedSubscript:@"identity"];

  if (v15)
  {
    [v7 setIdentityReferenceInternal:0];
  }

  v16 = [v6 objectForKeyedSubscript:@"provider-bundle-identifier"];

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

  v17 = [v6 objectForKeyedSubscript:@"designated-requirement"];

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
    *a4 = v27;
    goto LABEL_47;
  }

LABEL_24:
  v18 = [v6 objectForKeyedSubscript:@"extensible-sso-provider"];

  if (v18)
  {
    [v7 setExtensibleSSOProvider:0];
  }

  v19 = [v6 objectForKeyedSubscript:@"include-all-networks"];

  if (v19)
  {
    [v7 setIncludeAllNetworks:0];
  }

  v20 = [v6 objectForKeyedSubscript:@"exclude-local-networks"];

  if (v20)
  {
    [v7 setExcludeLocalNetworks:0];
  }

  v21 = [v6 objectForKeyedSubscript:@"exclude-cellular-services"];

  if (v21)
  {
    [v7 setExcludeCellularServices:0];
  }

  v22 = [v6 objectForKeyedSubscript:@"exclude-apns"];

  if (v22)
  {
    [v7 setExcludeAPNs:0];
  }

  v23 = [v6 objectForKeyedSubscript:@"exclude-device-communication"];

  if (v23)
  {
    [v7 setExcludeDeviceCommunication:0];
  }

  v24 = [v6 objectForKeyedSubscript:@"enforce-routes"];

  if (v24)
  {
    [v7 setEnforceRoutes:0];
  }

  v25 = [v6 objectForKeyedSubscript:@"cellular-slice-UUID"];

  if (v25)
  {
    [v7 setSliceUUID:0];
  }

  v26 = 1;
LABEL_47:

  return v26;
}

- (BOOL)setProviderTypeWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:v6];
  v8 = [v6 objectForKeyedSubscript:@"provider-type"];

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

  v11 = [Property appVPN];
  if (!v11 || (v12 = v11, v13 = [v7 type], v12, v13 != 4))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Provider type can only be set for plugin-based per-app VPN configurations"];
    *a4 = v19 = 0;
    goto LABEL_12;
  }

  v14 = [v6 objectForKeyedSubscript:@"provider-type"];
  if (![v14 isEqualToString:@"app-proxy"])
  {
    if (![v14 isEqualToString:@"packet-tunnel"])
    {
      *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, must be either app-proxy or packet-tunnel", @"provider-type"];

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
  v18 = [v17 appVPN];
  [v18 setTunnelType:v16];

LABEL_10:
  v19 = 1;
LABEL_12:

  return v19;
}

- (BOOL)setPasswordWithParameters:(id)a3 errorStr:(id *)a4
{
  v5 = a3;
  v6 = [(NEUtilConfigurationClient *)self protocolForParameters:v5];
  v7 = [v5 objectForKeyedSubscript:@"password"];

  if (v7)
  {
    v8 = [v6 passwordKeychainItem];

    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:@"password"];
      v10 = [v6 passwordKeychainItem];
      [v10 setPassword:v9];
    }

    else
    {
      v11 = [NEKeychainItem alloc];
      v9 = [v5 objectForKeyedSubscript:@"password"];
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

      v10 = Property;
      v15 = [(NEKeychainItem *)v11 initWithPassword:v9 domain:v13 accessGroup:v10];
      [v6 setPasswordKeychainItem:v15];
    }
  }

  return 1;
}

- (BOOL)setCommonParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:v6];
  v8 = [(NEUtilConfigurationClient *)self filterConfiguration];
  if ([(NEUtilConfigurationClient *)self isAlwaysOn])
  {
    v9 = [v6 objectForKeyedSubscript:@"interface-name"];
    v10 = isa_nsstring(v9);

    if ((v10 & 1) == 0)
    {
      v22 = 0;
      v23 = @"Missing interface name";
      goto LABEL_17;
    }
  }

  v11 = [v6 objectForKeyedSubscript:@"enabled"];

  if (v11)
  {
    v12 = [v6 objectForKeyedSubscript:@"enabled"];
    -[NEUtilConfigurationClient setEnabled:](self, "setEnabled:", [v12 BOOLValue]);
  }

  v13 = [v6 objectForKeyedSubscript:@"server-address"];

  if (v13)
  {
    v14 = v7;
    if (v7 || (v14 = v8) != 0)
    {
      v15 = [v6 objectForKeyedSubscript:@"server-address"];
      v16 = [v15 stringByRemovingPercentEncoding];
      [v14 setServerAddress:v16];
    }
  }

  v17 = [v6 objectForKeyedSubscript:@"username"];

  if (v17)
  {
    if (v7)
    {
      v18 = [v6 objectForKeyedSubscript:@"username"];
      [v7 setUsername:v18];

      goto LABEL_13;
    }

    if (v8)
    {
      v24 = [v6 objectForKeyedSubscript:@"username"];
      [v8 setUsername:v24];
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
  if (![(NEUtilConfigurationClient *)self setPasswordWithParameters:v6 errorStr:a4])
  {
LABEL_74:
    v22 = 0;
    goto LABEL_75;
  }

  v19 = [v6 objectForKeyedSubscript:@"on-demand-enabled"];

  if (v19)
  {
    v20 = [v6 objectForKeyedSubscript:@"on-demand-enabled"];
    v21 = [v20 BOOLValue];
  }

  else
  {
    v21 = 0;
  }

  v25 = [v6 objectForKeyedSubscript:@"disconnect-on-demand-enabled"];

  if (!v25)
  {
    v27 = 0;
    if (!v19)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v26 = [v6 objectForKeyedSubscript:@"disconnect-on-demand-enabled"];
  v27 = [v26 BOOLValue];

  if (v19)
  {
LABEL_25:
    [(NEUtilConfigurationClient *)self setOnDemandEnabled:v21];
  }

LABEL_26:
  if (v25)
  {
    [(NEUtilConfigurationClient *)self setDisconnectOnDemandEnabled:v27];
  }

  v28 = [v6 objectForKeyedSubscript:@"on-demand-user-override-disabled"];

  if (v28)
  {
    v29 = [v6 objectForKeyedSubscript:@"on-demand-user-override-disabled"];
    -[NEUtilConfigurationClient setOnDemandUserOverrideDisabled:](self, "setOnDemandUserOverrideDisabled:", [v29 BOOLValue]);
  }

  v30 = [v6 objectForKeyedSubscript:@"disconnect-on-idle-timeout"];

  if (v30)
  {
    v31 = [v6 objectForKeyedSubscript:@"disconnect-on-idle-timeout"];
    [v7 setDisconnectOnIdleTimeout:{objc_msgSend(v31, "intValue")}];
  }

  v32 = [v6 objectForKeyedSubscript:@"disconnect-on-sleep"];

  if (v32)
  {
    v33 = [v6 objectForKeyedSubscript:@"disconnect-on-sleep"];
    [v7 setDisconnectOnSleep:{objc_msgSend(v33, "BOOLValue")}];
  }

  v34 = [v6 objectForKeyedSubscript:@"identity"];

  if (v34)
  {
    v35 = [v6 objectForKeyedSubscript:@"identity"];
    v36 = [v35 integerValue];

    if (!self || (v38 = objc_getProperty(self, v37, 48, 1)) == 0 || (v40 = v38, v41 = [objc_getProperty(self v39], v40, v36 >= v41))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@ index, use the list-identities command to obtain a list of available identities and their indicies", @"identity"];
      *a4 = v22 = 0;
      goto LABEL_75;
    }

    v43 = [objc_getProperty(self v42];
    v44 = [v43 objectForKeyedSubscript:@"domain"];
    v45 = [v44 integerValue];

    if (v45)
    {
      *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, an identity in the %s keychain is required", @"identity", "system"];

      goto LABEL_74;
    }

    v46 = [v43 objectForKeyedSubscript:@"persistent-reference"];
    [v7 setIdentityReferenceInternal:v46];
  }

  if (![(NEUtilConfigurationClient *)self setProviderTypeWithParameters:v6 errorStr:a4])
  {
    goto LABEL_74;
  }

  v47 = [v6 objectForKeyedSubscript:@"provider-bundle-identifier"];

  if (v47)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = 0;
      v23 = @"provider-bundle-identifier can only be specified for provider-based configurations";
      goto LABEL_17;
    }

    v48 = [v6 objectForKeyedSubscript:@"provider-bundle-identifier"];
    [v7 setProviderBundleIdentifier:v48];
  }

  v49 = [v6 objectForKeyedSubscript:@"designated-requirement"];

  if (!v49)
  {
LABEL_52:
    v52 = [v6 objectForKeyedSubscript:@"extensible-sso-provider"];

    if (v52)
    {
      v53 = [v6 objectForKeyedSubscript:@"extensible-sso-provider"];
      v54 = [v53 stringByRemovingPercentEncoding];
      [v7 setExtensibleSSOProvider:v54];
    }

    v55 = [v6 objectForKeyedSubscript:@"access-group"];

    if (v55)
    {
      v56 = [v7 passwordKeychainItem];

      if (v56)
      {
        v58 = [v6 objectForKeyedSubscript:@"access-group"];
        v59 = [v7 passwordKeychainItem];
        [v59 setAccessGroup:v58];
      }

      v60 = objc_getProperty(v7, v57, 96, 1);

      if (v60)
      {
        v61 = [v6 objectForKeyedSubscript:@"access-group"];
        v63 = objc_getProperty(v7, v62, 96, 1);
        [v63 setAccessGroup:v61];
      }
    }

    v64 = [v6 objectForKeyedSubscript:@"include-all-networks"];

    if (v64)
    {
      v65 = [v6 objectForKeyedSubscript:@"include-all-networks"];
      [v7 setIncludeAllNetworks:{objc_msgSend(v65, "BOOLValue")}];
    }

    v66 = [v6 objectForKeyedSubscript:@"exclude-local-networks"];

    if (v66)
    {
      v67 = [v6 objectForKeyedSubscript:@"exclude-local-networks"];
      [v7 setExcludeLocalNetworks:{objc_msgSend(v67, "BOOLValue")}];
    }

    v68 = [v6 objectForKeyedSubscript:@"exclude-cellular-services"];

    if (v68)
    {
      v69 = [v6 objectForKeyedSubscript:@"exclude-cellular-services"];
      [v7 setExcludeCellularServices:{objc_msgSend(v69, "BOOLValue")}];
    }

    v70 = [v6 objectForKeyedSubscript:@"exclude-apns"];

    if (v70)
    {
      v71 = [v6 objectForKeyedSubscript:@"exclude-apns"];
      [v7 setExcludeAPNs:{objc_msgSend(v71, "BOOLValue")}];
    }

    v72 = [v6 objectForKeyedSubscript:@"exclude-device-communication"];

    if (v72)
    {
      v73 = [v6 objectForKeyedSubscript:@"exclude-device-communication"];
      [v7 setExcludeDeviceCommunication:{objc_msgSend(v73, "BOOLValue")}];
    }

    v74 = [v6 objectForKeyedSubscript:@"enforce-routes"];

    if (v74)
    {
      v75 = [v6 objectForKeyedSubscript:@"enforce-routes"];
      [v7 setEnforceRoutes:{objc_msgSend(v75, "BOOLValue")}];
    }

    v76 = [v6 objectForKeyedSubscript:@"cellular-slice-UUID"];

    if (!v76)
    {
      goto LABEL_21;
    }

    v77 = [v6 objectForKeyedSubscript:@"cellular-slice-UUID"];
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
    v50 = [v6 objectForKeyedSubscript:@"designated-requirement"];
    v51 = [v50 stringByRemovingPercentEncoding];
    [v7 setDesignatedRequirement:v51];

    goto LABEL_52;
  }

  v22 = 0;
  v23 = @"designated-requirement can only be specified for provider-based configurations";
LABEL_17:
  *a4 = v23;
LABEL_75:

  return v22;
}

- (BOOL)unsetDNSProxyWithParameters:(id)a3 errorStr:(id *)a4
{
  v5 = a3;
  v6 = [(NEUtilConfigurationClient *)self dnsProxyConfiguration];
  v7 = [v5 objectForKeyedSubscript:@"vendor-config"];
  v8 = isa_nsdictionary(v7);

  if (v8)
  {
    [v6 setProviderConfiguration:0];
  }

  v9 = [v5 objectForKeyedSubscript:@"designated-requirement"];

  if (v9)
  {
    [v6 setDesignatedRequirement:0];
  }

  return 1;
}

- (BOOL)setDNSProxyWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self dnsProxyConfiguration];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"vendor-config"];
    v9 = isa_nsdictionary(v8);

    if (v9)
    {
      v10 = [v6 objectForKeyedSubscript:@"vendor-config"];
      [v7 setProviderConfiguration:v10];
    }

    v11 = [v6 objectForKeyedSubscript:@"designated-requirement"];

    if (v11)
    {
      v12 = [v6 objectForKeyedSubscript:@"designated-requirement"];
      v13 = [v12 stringByRemovingPercentEncoding];
      [v7 setDesignatedRequirement:v13];
    }
  }

  else
  {
    *a4 = @"DNS Proxy plugin type has not been set yet";
  }

  return v7 != 0;
}

- (BOOL)unsetFilterPluginParameters:(id)a3 errorStr:(id *)a4
{
  v5 = a3;
  v6 = [(NEUtilConfigurationClient *)self filterConfiguration];
  v7 = [v5 objectForKeyedSubscript:@"organization"];

  if (v7)
  {
    [v6 setOrganization:0];
  }

  v8 = [v5 objectForKeyedSubscript:@"vendor-config"];

  if (v8)
  {
    [v6 setVendorConfiguration:0];
  }

  v9 = [v5 objectForKeyedSubscript:@"designated-requirement"];

  if (v9)
  {
    [v6 setDataProviderDesignatedRequirement:0];
  }

  return 1;
}

- (BOOL)setFilterPluginWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEUtilConfigurationClient *)self filterConfiguration];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"organization"];

    if (v8)
    {
      v9 = [v6 objectForKeyedSubscript:@"organization"];
      [v7 setOrganization:v9];
    }

    v10 = [v6 objectForKeyedSubscript:@"filter-browsers"];

    if (v10)
    {
      v11 = [v6 objectForKeyedSubscript:@"filter-browsers"];
      [v7 setFilterBrowsers:{objc_msgSend(v11, "BOOLValue")}];
    }

    v12 = [v6 objectForKeyedSubscript:@"filter-sockets"];

    if (v12)
    {
      v13 = [v6 objectForKeyedSubscript:@"filter-sockets"];
      [v7 setFilterSockets:{objc_msgSend(v13, "BOOLValue")}];
    }

    v14 = [v6 objectForKeyedSubscript:@"filter-packets"];

    if (v14)
    {
      v15 = [v6 objectForKeyedSubscript:@"filter-packets"];
      [v7 setFilterPackets:{objc_msgSend(v15, "BOOLValue")}];
    }

    v16 = [v6 objectForKeyedSubscript:@"disable-default-drop"];

    if (v16)
    {
      v17 = [v6 objectForKeyedSubscript:@"disable-default-drop"];
      [v7 setDisableDefaultDrop:{objc_msgSend(v17, "BOOLValue")}];
    }

    v18 = [v6 objectForKeyedSubscript:@"preserve-existing-connections"];

    if (v18)
    {
      v19 = [v6 objectForKeyedSubscript:@"preserve-existing-connections"];
      [v7 setPreserveExistingConnections:{objc_msgSend(v19, "BOOLValue")}];
    }

    v20 = [v6 objectForKeyedSubscript:@"vendor-config"];
    v21 = isa_nsdictionary(v20);

    if (v21)
    {
      v22 = [v6 objectForKeyedSubscript:@"vendor-config"];
      [v7 setVendorConfiguration:v22];
    }

    v23 = [v6 objectForKeyedSubscript:@"provider-bundle-identifier"];

    if (v23)
    {
      v24 = [v6 objectForKeyedSubscript:@"provider-bundle-identifier"];
      [v7 setFilterDataProviderBundleIdentifier:v24];
    }

    v25 = [v6 objectForKeyedSubscript:@"designated-requirement"];

    if (v25)
    {
      v26 = [v6 objectForKeyedSubscript:@"designated-requirement"];
      v27 = [v26 stringByRemovingPercentEncoding];
      [v7 setDataProviderDesignatedRequirement:v27];
    }

    v28 = [v6 objectForKeyedSubscript:@"packet-provider-bundle-identifier"];

    if (v28)
    {
      v29 = [v6 objectForKeyedSubscript:@"packet-provider-bundle-identifier"];
      [v7 setFilterPacketProviderBundleIdentifier:v29];
    }

    v30 = [v6 objectForKeyedSubscript:@"packet-provider-designated-requirement"];

    if (v30)
    {
      v31 = [v6 objectForKeyedSubscript:@"packet-provider-designated-requirement"];
      v32 = [v31 stringByRemovingPercentEncoding];
      [v7 setPacketProviderDesignatedRequirement:v32];
    }
  }

  else
  {
    *a4 = @"Filter plugin type has not been set yet";
  }

  return v7 != 0;
}

- (BOOL)setProtocolWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
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
        v44 = [v6 objectForKeyedSubscript:@"plugin-type"];
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

      *a4 = v66;
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
  v12 = [Property alwaysOnVPN];

  if (!v12)
  {
    if (self)
    {
      v25 = objc_getProperty(self, v13, 56, 1);
    }

    else
    {
      v25 = 0;
    }

    v26 = [v25 appVPN];

    if (v26)
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
        v67 = [0 appVPN];
        [v67 setTunnelType:v29];

        v32 = 0;
      }

      v33 = [v32 appVPN];
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

        v50 = [v49 contentFilter];
        if (v50 && (v52 = v50, objc_opt_class(), v53 = objc_opt_isKindOfClass(), v52, (v53 & 1) != 0))
        {
          v54 = objc_alloc_init(NEFilterProviderConfiguration);
          v55 = [(NETunnelProviderProtocol *)v10 pluginType];
          [(NEFilterProviderConfiguration *)v54 setPluginType:v55];

          if (self)
          {
            v57 = objc_getProperty(self, v56, 56, 1);
          }

          else
          {
            v57 = 0;
          }

          v58 = [v57 contentFilter];
          [v58 setProvider:v54];
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

          v60 = [v59 dnsProxy];
          if (!v60 || (v61 = v60, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v61, (isKindOfClass & 1) == 0))
          {
            v34 = @"Configuration does not have a VPN type";
            goto LABEL_30;
          }

          v54 = objc_alloc_init(NEDNSProxyProviderProtocol);
          v63 = [(NETunnelProviderProtocol *)v10 pluginType];
          [(NEFilterProviderConfiguration *)v54 setPluginType:v63];

          if (self)
          {
            v65 = objc_getProperty(self, v64, 56, 1);
          }

          else
          {
            v65 = 0;
          }

          v58 = [v65 dnsProxy];
          [v58 setProtocol:v54];
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

      v33 = [v46 VPN];
    }

    v47 = v33;
    [v33 setProtocol:v10];

    goto LABEL_52;
  }

  v14 = [v6 objectForKeyedSubscript:@"interface-name"];
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

    v18 = [v17 alwaysOnVPN];
    v19 = [v18 interfaceProtocolMapping];

    if (v19)
    {
      if (self)
      {
        v21 = objc_getProperty(self, v20, 56, 1);
      }

      else
      {
        v21 = 0;
      }

      v22 = [v21 alwaysOnVPN];
      v23 = [v22 interfaceProtocolMapping];
      v24 = [v23 mutableCopy];
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

    v38 = [v37 alwaysOnVPN];
    [v38 setInterfaceProtocolMapping:v24];

    goto LABEL_52;
  }

  v34 = @"Missing interface name";
LABEL_30:
  *a4 = v34;

  v35 = 0;
LABEL_53:

  return v35;
}

- (BOOL)createConfigurationWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  v8 = [v6 objectForKeyedSubscript:@"type"];
  v9 = [v6 objectForKeyedSubscript:@"grade"];

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
        *a4 = v13 = 0;
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
      *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid configuration type: %@", v8];

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

  v2 = [(NEUtilConfigurationClient *)self dnsProxy];
  v3 = [v2 protocol];

  return v3;
}

- (NEFilterProviderConfiguration)filterConfiguration
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v2 = [(NEUtilConfigurationClient *)self contentFilter];
  v3 = [v2 provider];

  return v3;
}

- (id)protocolForParameters:(id)a3
{
  v5 = a3;
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

    v10 = [v9 VPN];
LABEL_13:
    v15 = v10;
    v16 = [v10 protocol];
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

  v12 = [v11 appVPN];

  if (v12)
  {
    if (self)
    {
      v14 = objc_getProperty(self, v13, 56, 1);
    }

    else
    {
      v14 = 0;
    }

    v10 = [v14 appVPN];
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

  v19 = [v18 alwaysOnVPN];

  if (v19)
  {
    v15 = [v5 objectForKeyedSubscript:@"interface-name"];
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

      v22 = [v21 alwaysOnVPN];
      v23 = [v22 interfaceProtocolMapping];
      v16 = [v23 objectForKeyedSubscript:v15];
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_14;
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (void)setOnDemandRules:(id)a3
{
  v22 = a3;
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
    v9 = [v22 copy];
    if (self)
    {
      v10 = objc_getProperty(self, v8, 56, 1);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 VPN];
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

    v13 = [v12 appVPN];

    if (v13)
    {
      v9 = [v22 copy];
      if (self)
      {
        v16 = objc_getProperty(self, v15, 56, 1);
      }

      else
      {
        v16 = 0;
      }

      v11 = [v16 appVPN];
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

      v18 = [v17 dnsSettings];

      if (!v18)
      {
        goto LABEL_20;
      }

      v9 = [v22 copy];
      if (self)
      {
        v20 = objc_getProperty(self, v19, 56, 1);
      }

      else
      {
        v20 = 0;
      }

      v11 = [v20 dnsSettings];
    }
  }

  v21 = v11;
  [v11 setOnDemandRules:v9];

LABEL_20:
}

- (NSArray)onDemandRules
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v3 = [(NEUtilConfigurationClient *)self VPN];

  if (v3)
  {
    if (v2)
    {
      Property = objc_getProperty(v2, v4, 56, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = [Property VPN];
  }

  else
  {
    if (v2)
    {
      v7 = objc_getProperty(v2, v4, 56, 1);
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 appVPN];

    if (v8)
    {
      if (v2)
      {
        v10 = objc_getProperty(v2, v9, 56, 1);
      }

      else
      {
        v10 = 0;
      }

      v6 = [v10 appVPN];
    }

    else
    {
      if (v2)
      {
        v11 = objc_getProperty(v2, v9, 56, 1);
      }

      else
      {
        v11 = 0;
      }

      v12 = [v11 dnsSettings];

      if (!v12)
      {
        goto LABEL_20;
      }

      if (v2)
      {
        v14 = objc_getProperty(v2, v13, 56, 1);
      }

      else
      {
        v14 = 0;
      }

      v6 = [v14 dnsSettings];
    }
  }

  v15 = v6;
  v12 = [v6 onDemandRules];

LABEL_20:

  return v12;
}

- (BOOL)disconnectOnDemandEnabled
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v3 = [(NEUtilConfigurationClient *)self VPN];

  if (v3)
  {
    if (v2)
    {
      Property = objc_getProperty(v2, v4, 56, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = [Property VPN];
LABEL_13:
    v11 = v6;
    v12 = [v6 isDisconnectOnDemandEnabled];

    return v12;
  }

  if (v2)
  {
    v7 = objc_getProperty(v2, v4, 56, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 appVPN];

  if (v8)
  {
    if (v2)
    {
      v10 = objc_getProperty(v2, v9, 56, 1);
    }

    else
    {
      v10 = 0;
    }

    v6 = [v10 appVPN];
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)onDemandUserOverrideDisabled
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v4 = [(NEUtilConfigurationClient *)self VPN];
  if (v4)
  {
    if (v2)
    {
      Property = objc_getProperty(v2, v3, 56, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = [Property VPN];
  }

  else
  {
    if (v2)
    {
      v7 = objc_getProperty(v2, v3, 56, 1);
    }

    else
    {
      v7 = 0;
    }

    v6 = [v7 appVPN];
  }

  v8 = v6;

  v9 = [v8 isOnDemandUserOverrideDisabled];
  return v9;
}

- (BOOL)onDemandEnabled
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v3 = [(NEUtilConfigurationClient *)self VPN];

  if (v3)
  {
    if (v2)
    {
      Property = objc_getProperty(v2, v4, 56, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = [Property VPN];
LABEL_13:
    v11 = v6;
    v12 = [v6 isOnDemandEnabled];

    return v12;
  }

  if (v2)
  {
    v7 = objc_getProperty(v2, v4, 56, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 appVPN];

  if (v8)
  {
    if (v2)
    {
      v10 = objc_getProperty(v2, v9, 56, 1);
    }

    else
    {
      v10 = 0;
    }

    v6 = [v10 appVPN];
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)enabled
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v3 = [(NEUtilConfigurationClient *)self VPN];

  if (v3)
  {
    if (v2)
    {
      Property = objc_getProperty(v2, v4, 56, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = [Property VPN];
LABEL_49:
    v35 = v6;
    v36 = [v6 isEnabled];

    return v36;
  }

  if (v2)
  {
    v7 = objc_getProperty(v2, v4, 56, 1);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 appVPN];

  if (v8)
  {
    if (v2)
    {
      v10 = objc_getProperty(v2, v9, 56, 1);
    }

    else
    {
      v10 = 0;
    }

    v6 = [v10 appVPN];
    goto LABEL_49;
  }

  if (v2)
  {
    v11 = objc_getProperty(v2, v9, 56, 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 contentFilter];

  if (v12)
  {
    if (v2)
    {
      v14 = objc_getProperty(v2, v13, 56, 1);
    }

    else
    {
      v14 = 0;
    }

    v6 = [v14 contentFilter];
    goto LABEL_49;
  }

  if (v2)
  {
    v15 = objc_getProperty(v2, v13, 56, 1);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 alwaysOnVPN];

  if (v16)
  {
    if (v2)
    {
      v18 = objc_getProperty(v2, v17, 56, 1);
    }

    else
    {
      v18 = 0;
    }

    v6 = [v18 alwaysOnVPN];
    goto LABEL_49;
  }

  if (v2)
  {
    v19 = objc_getProperty(v2, v17, 56, 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = [v19 dnsProxy];

  if (v20)
  {
    if (v2)
    {
      v22 = objc_getProperty(v2, v21, 56, 1);
    }

    else
    {
      v22 = 0;
    }

    v6 = [v22 dnsProxy];
    goto LABEL_49;
  }

  if (v2)
  {
    v23 = objc_getProperty(v2, v21, 56, 1);
  }

  else
  {
    v23 = 0;
  }

  v24 = [v23 dnsSettings];

  if (v24)
  {
    if (v2)
    {
      v26 = objc_getProperty(v2, v25, 56, 1);
    }

    else
    {
      v26 = 0;
    }

    v6 = [v26 dnsSettings];
    goto LABEL_49;
  }

  if (v2)
  {
    v27 = objc_getProperty(v2, v25, 56, 1);
  }

  else
  {
    v27 = 0;
  }

  v28 = [v27 relay];

  if (v28)
  {
    if (v2)
    {
      v30 = objc_getProperty(v2, v29, 56, 1);
    }

    else
    {
      v30 = 0;
    }

    v6 = [v30 relay];
    goto LABEL_49;
  }

  if (v2)
  {
    v31 = objc_getProperty(v2, v29, 56, 1);
  }

  else
  {
    v31 = 0;
  }

  v32 = [v31 urlFilter];

  if (v32)
  {
    if (v2)
    {
      v34 = objc_getProperty(v2, v33, 56, 1);
    }

    else
    {
      v34 = 0;
    }

    v6 = [v34 urlFilter];
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

- (NEUtilConfigurationClient)initWithClientName:(id)a3
{
  v4 = a3;
  v5 = [(NEUtilConfigurationClient *)self initInternalWithClientName:v4];
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

- (id)initInternalWithClientName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NEUtilConfigurationClient;
  v5 = [(NEUtilConfigurationClient *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    clientName = v5->_clientName;
    v5->_clientName = v6;
  }

  return v5;
}

+ (void)removeClientWithName:(id)a3
{
  v3 = a3;
  v4 = +[NEUtilConfigurationClient allClients];
  [v4 removeObjectForKey:v3];
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

+ (id)clientWithName:(id)a3
{
  v3 = a3;
  v4 = +[NEUtilConfigurationClient allClients];
  v5 = [v4 objectForKeyedSubscript:v3];
  if (!v5)
  {
    v6 = [v3 hasPrefix:@"app:"];
    v7 = off_1E7F04DC0;
    if (!v6)
    {
      v7 = off_1E7F04E70;
    }

    v5 = [objc_alloc(*v7) initWithClientName:v3];
    if (v5)
    {
      [v4 setObject:v5 forKeyedSubscript:v3];
    }
  }

  return v5;
}

@end