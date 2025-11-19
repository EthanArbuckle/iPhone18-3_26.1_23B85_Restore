@interface NEProviderAppConfigurationClient
- (BOOL)createConfigurationWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)enabled;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)onDemandEnabled;
- (BOOL)setPasswordWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setProtocolWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setProviderTypeWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)setSharedSecretWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetPasswordWithParameters:(id)a3 errorStr:(id *)a4;
- (BOOL)unsetSharedSecretWithParameters:(id)a3 errorStr:(id *)a4;
- (NEProviderAppConfigurationClient)initWithClientName:(id)a3;
- (id)dnsProxyConfiguration;
- (id)dnsSettingsBundle;
- (id)filterConfiguration;
- (id)listenerEndpoint;
- (id)onDemandRules;
- (id)protocolForParameters:(id)a3;
- (uint64_t)deleteKeychainItemWithPersistentReference:(uint64_t)a1;
- (uint64_t)setKeychainItemData:(void *)a3 withName:(uint64_t *)a4 persistentReference:;
- (void)handleConfigChanged:(id)a3;
- (void)loadAllWithCompletionHandler:(void *)a1;
- (void)setOnDemandRules:(id)a3;
@end

@implementation NEProviderAppConfigurationClient

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v3 || (MEMORY[0x1BFAFC5E0](v3) == MEMORY[0x1E69E9E90] ? (v6 = WeakRetained == 0) : (v6 = 1), v6))
  {
    v7 = MEMORY[0x1E696AEC0];
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v4, 128, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = [v7 stringWithFormat:@"Failed to establish an IPC connection to target app %@", Property];
    v25[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    [v10 _setEndpoint:v3];
    v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v10];
    objc_setProperty_atomic(WeakRetained, v12, v11, 136);

    v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38CE490];
    [objc_getProperty(WeakRetained v14];

    v16 = objc_getProperty(WeakRetained, v15, 136, 1);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_2;
    v23[3] = &unk_1E7F0B4A8;
    v17 = WeakRetained;
    v24 = v17;
    v18 = [v16 remoteObjectProxyWithErrorHandler:v23];
    objc_setProperty_atomic(v17, v19, v18, 144);

    [objc_getProperty(v17 v20];
    [objc_getProperty(v17 v21];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_154(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 120, 1);
  }

  v6 = Property;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 40);
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", *(*(&v30 + 1) + 8 * v10)];
        [v11 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v14 = objc_getProperty(v14, v13, 112, 1);
  }

  if ([v14 count])
  {
    [*(a1 + 40) addObject:@"Newly-created (unsaved) configurations:\n"];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = *(a1 + 32);
    if (v16)
    {
      v16 = objc_getProperty(v16, v15, 112, 1);
    }

    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        v21 = 0;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(a1 + 40);
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", *(*(&v26 + 1) + 8 * v21)];
          [v22 addObject:v23];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }
  }

  v24 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v25 = *MEMORY[0x1E69E9840];
}

- (void)loadAllWithCompletionHandler:(void *)a1
{
  v3 = a2;
  if (objc_getProperty(a1, v4, 120, 1))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_7;
    block[3] = &unk_1E7F0B600;
    v8 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v5 = v8;
  }

  else
  {
    v6 = +[NEVPNManager sharedManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke;
    v9[3] = &unk_1E7F0B628;
    v9[4] = a1;
    v10 = v3;
    [v6 loadFromPreferencesWithCompletionHandler:v9];

    v5 = v10;
  }
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_2_161(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = a2;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 120, 1);
  }

  v5 = Property;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        objc_opt_class();
        v11 = @"%@ (filter)";
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_14;
        }

        objc_opt_class();
        v11 = @"%@ (app-proxy)";
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_14;
        }

        objc_opt_class();
        v11 = @"%@ (packet-tunnel)";
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v11 = @"%@ (lite)", (objc_opt_isKindOfClass()) || (objc_opt_class(), v11 = @"%@ (dns-proxy)", (objc_opt_isKindOfClass()) || (objc_opt_class(), v11 = @"%@ (dns-settings)", (objc_opt_isKindOfClass()))
        {
LABEL_14:
          v12 = *(a1 + 40);
          v13 = MEMORY[0x1E696AEC0];
          v14 = [v10 localizedDescription];
          v15 = [v13 stringWithFormat:v11, v14, v31];
          [v12 addObject:v15];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v7);
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    v17 = objc_getProperty(v17, v16, 112, 1);
  }

  if ([v17 count])
  {
    [*(a1 + 40) addObject:@"Newly-created (unsaved) configurations:\n"];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = *(a1 + 32);
    if (v19)
    {
      v19 = objc_getProperty(v19, v18, 112, 1);
    }

    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        v24 = 0;
        do
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(a1 + 40);
          v26 = MEMORY[0x1E696AEC0];
          v27 = [*(*(&v32 + 1) + 8 * v24) localizedDescription];
          v28 = [v26 stringWithFormat:@"%@ (packet-tunnel)\n", v27];
          [v25 addObject:v28];

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v22);
    }
  }

  v29 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v30 = *MEMORY[0x1E69E9840];
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v172[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v165 = 0;
  v166 = &v165;
  v167 = 0x3032000000;
  v168 = __Block_byref_object_copy__22795;
  v169 = __Block_byref_object_dispose__22796;
  v170 = 0;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load configuration %@: %@", *(a1 + 32), v6];
    v10 = v166[5];
    v166[5] = v9;

    v11 = *(a1 + 56);
    v172[0] = v166[5];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:1];
    (*(v11 + 16))(v11, v12);
LABEL_3:

    goto LABEL_87;
  }

  if (!v5 && *(a1 + 64) != 1)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration with name %@ does not exist", *(a1 + 32)];
    v24 = v166[5];
    v166[5] = v23;

    v25 = *(a1 + 56);
    v171 = v166[5];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v171 count:1];
    (*(v25 + 16))(v25, v12);
    goto LABEL_3;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    objc_setProperty_atomic(v13, v7, 0, 80);
    v15 = *(a1 + 40);
    if (v15)
    {
      objc_setProperty_atomic(v15, v14, 0, 88);
      v17 = *(a1 + 40);
      if (v17)
      {
        objc_setProperty_atomic(v17, v16, 0, 96);
        v19 = *(a1 + 40);
        if (v19)
        {
          objc_setProperty_atomic(v19, v18, 0, 104);
        }
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = *(a1 + 40);
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = &OBJC_IVAR___NEProviderAppConfigurationClient__currentManager;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = *(a1 + 40);
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = &OBJC_IVAR___NEProviderAppConfigurationClient__filterManager;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = *(a1 + 40);
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = &OBJC_IVAR___NEProviderAppConfigurationClient__dnsProxyManager;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = &OBJC_IVAR___NEProviderAppConfigurationClient__dnsSettingsManager;
LABEL_24:
      objc_setProperty_atomic(v21, v20, v5, *v22);
    }
  }

LABEL_25:
  v26 = *(a1 + 64);
  if (v26 <= 102)
  {
    switch(v26)
    {
      case 1:
        v27 = *(a1 + 40);
        v28 = *(a1 + 48);
        v29 = v166;
        v164 = v166[5];
        [v27 createConfigurationWithParameters:v28 errorStr:&v164];
        v30 = v164;
        goto LABEL_82;
      case 2:
        v69 = *(a1 + 40);
        v70 = *(a1 + 48);
        v29 = v166;
        v159 = v166[5];
        [v69 setProtocolWithParameters:v70 errorStr:&v159];
        v30 = v159;
        goto LABEL_82;
      case 3:
        v79 = *(a1 + 40);
        v80 = *(a1 + 48);
        v29 = v166;
        v158 = v166[5];
        [v79 setFilterPluginWithParameters:v80 errorStr:&v158];
        v30 = v158;
        goto LABEL_82;
      case 4:
        v65 = *(a1 + 40);
        v66 = *(a1 + 48);
        v29 = v166;
        v157 = v166[5];
        [v65 unsetFilterPluginParameters:v66 errorStr:&v157];
        v30 = v157;
        goto LABEL_82;
      case 5:
        v67 = *(a1 + 40);
        v68 = *(a1 + 48);
        v29 = v166;
        v156 = v166[5];
        [v67 setDNSProxyWithParameters:v68 errorStr:&v156];
        v30 = v156;
        goto LABEL_82;
      case 6:
        v77 = *(a1 + 40);
        v78 = *(a1 + 48);
        v29 = v166;
        v155 = v166[5];
        [v77 unsetDNSProxyWithParameters:v78 errorStr:&v155];
        v30 = v155;
        goto LABEL_82;
      case 7:
        v55 = *(a1 + 40);
        v56 = *(a1 + 48);
        v29 = v166;
        v154 = v166[5];
        [v55 setCommonParameters:v56 errorStr:&v154];
        v30 = v154;
        goto LABEL_82;
      case 8:
        v63 = *(a1 + 40);
        v64 = *(a1 + 48);
        v29 = v166;
        v153 = v166[5];
        [v63 unsetCommonParameters:v64 errorStr:&v153];
        v30 = v153;
        goto LABEL_82;
      case 9:
        v57 = *(a1 + 40);
        v58 = *(a1 + 48);
        v29 = v166;
        v152 = v166[5];
        [v57 setIPSecParameters:v58 errorStr:&v152];
        v30 = v152;
        goto LABEL_82;
      case 10:
        v81 = *(a1 + 40);
        v82 = *(a1 + 48);
        v29 = v166;
        v151 = v166[5];
        [v81 unsetIPSecParameters:v82 errorStr:&v151];
        v30 = v151;
        goto LABEL_82;
      case 11:
      case 12:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 31:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 50:
      case 51:
        goto LABEL_49;
      case 13:
        v75 = *(a1 + 40);
        v76 = *(a1 + 48);
        v29 = v166;
        v150 = v166[5];
        [v75 addOnDemandRuleWithParameters:v76 errorStr:&v150];
        v30 = v150;
        goto LABEL_82;
      case 14:
        v53 = *(a1 + 40);
        v54 = *(a1 + 48);
        v29 = v166;
        v149 = v166[5];
        [v53 removeOnDemandRuleWithParameters:v54 errorStr:&v149];
        v30 = v149;
        goto LABEL_82;
      case 15:
        v71 = *(a1 + 40);
        v72 = *(a1 + 48);
        v29 = v166;
        v136 = v166[5];
        [v71 setProxyParameters:v72 errorStr:&v136];
        v30 = v136;
        goto LABEL_82;
      case 16:
        v49 = *(a1 + 40);
        v50 = *(a1 + 48);
        v29 = v166;
        v135 = v166[5];
        [v49 unsetProxyParameters:v50 errorStr:&v135];
        v30 = v135;
        goto LABEL_82;
      case 17:
        v61 = *(a1 + 40);
        v62 = *(a1 + 48);
        v29 = v166;
        v134 = v166[5];
        [v61 setProxyServer:v62 errorStr:&v134];
        v30 = v134;
        goto LABEL_82;
      case 18:
        v93 = *(a1 + 40);
        v94 = *(a1 + 48);
        v29 = v166;
        v133 = v166[5];
        [v93 unsetProxyServer:v94 errorStr:&v133];
        v30 = v133;
        goto LABEL_82;
      case 19:
        v95 = *(a1 + 40);
        v96 = *(a1 + 48);
        v29 = v166;
        v140 = v166[5];
        [v95 setDNSParameters:v96 errorStr:&v140];
        v30 = v140;
        goto LABEL_82;
      case 20:
        v73 = *(a1 + 40);
        v74 = *(a1 + 48);
        v29 = v166;
        v139 = v166[5];
        [v73 unsetDNSParameters:v74 errorStr:&v139];
        v30 = v139;
        goto LABEL_82;
      case 30:
        v34 = [v5 description];
        [v8 addObject:v34];
        goto LABEL_83;
      case 32:
        Property = *(a1 + 40);
        if (!Property)
        {
          goto LABEL_108;
        }

        if (objc_getProperty(Property, v20, 88, 1))
        {
          v85 = +[NEFilterManager sharedManager];
          v86 = v144;
          v144[0] = MEMORY[0x1E69E9820];
          v144[1] = 3221225472;
          v144[2] = __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_5;
          v144[3] = &unk_1E7F0A960;
          v144[7] = &v165;
          v87 = *(a1 + 32);
          v88 = *(a1 + 40);
          v144[4] = v87;
          v144[5] = v88;
          v144[6] = *(a1 + 56);
          [v85 saveToPreferencesWithCompletionHandler:v144];
          goto LABEL_112;
        }

        Property = *(a1 + 40);
        if (!Property)
        {
          goto LABEL_108;
        }

        if (objc_getProperty(Property, v84, 96, 1))
        {
          v85 = +[NEDNSProxyManager sharedManager];
          v86 = v143;
          v143[0] = MEMORY[0x1E69E9820];
          v143[1] = 3221225472;
          v143[2] = __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_6;
          v143[3] = &unk_1E7F0A960;
          v143[7] = &v165;
          v115 = *(a1 + 32);
          v116 = *(a1 + 40);
          v143[4] = v115;
          v143[5] = v116;
          v143[6] = *(a1 + 56);
          [v85 saveToPreferencesWithCompletionHandler:v143];
          goto LABEL_112;
        }

        Property = *(a1 + 40);
        if (!Property)
        {
          goto LABEL_108;
        }

        if (objc_getProperty(Property, v114, 104, 1))
        {
          v85 = +[NEDNSSettingsManager sharedManager];
          v86 = v142;
          v142[0] = MEMORY[0x1E69E9820];
          v142[1] = 3221225472;
          v142[2] = __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_7;
          v142[3] = &unk_1E7F0A960;
          v142[7] = &v165;
          v121 = *(a1 + 32);
          v122 = *(a1 + 40);
          v142[4] = v121;
          v142[5] = v122;
          v142[6] = *(a1 + 56);
          [v85 saveToPreferencesWithCompletionHandler:v142];
        }

        else
        {
          Property = *(a1 + 40);
          if (Property)
          {
            Property = objc_getProperty(Property, v120, 80, 1);
          }

LABEL_108:
          v85 = Property;
          v86 = v141;
          v141[0] = MEMORY[0x1E69E9820];
          v141[1] = 3221225472;
          v141[2] = __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_8;
          v141[3] = &unk_1E7F0A960;
          v141[7] = &v165;
          v126 = *(a1 + 32);
          v127 = *(a1 + 40);
          v141[4] = v126;
          v141[5] = v127;
          v141[6] = *(a1 + 56);
          [v85 saveToPreferencesWithCompletionHandler:v141];
        }

        goto LABEL_112;
      case 33:
        v101 = *(a1 + 40);
        if (!v101)
        {
          goto LABEL_111;
        }

        if (objc_getProperty(v101, v20, 88, 1))
        {
          v85 = +[NEFilterManager sharedManager];
          v86 = v163;
          v163[0] = MEMORY[0x1E69E9820];
          v163[1] = 3221225472;
          v163[2] = __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_189;
          v163[3] = &unk_1E7F0A960;
          v163[7] = &v165;
          v103 = *(a1 + 32);
          v104 = *(a1 + 40);
          v163[4] = v103;
          v163[5] = v104;
          v163[6] = *(a1 + 56);
          [v85 removeFromPreferencesWithCompletionHandler:v163];
          goto LABEL_112;
        }

        v101 = *(a1 + 40);
        if (!v101)
        {
          goto LABEL_111;
        }

        if (objc_getProperty(v101, v102, 96, 1))
        {
          v85 = +[NEDNSProxyManager sharedManager];
          v86 = v162;
          v162[0] = MEMORY[0x1E69E9820];
          v162[1] = 3221225472;
          v162[2] = __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_2_193;
          v162[3] = &unk_1E7F0A960;
          v162[7] = &v165;
          v118 = *(a1 + 32);
          v119 = *(a1 + 40);
          v162[4] = v118;
          v162[5] = v119;
          v162[6] = *(a1 + 56);
          [v85 removeFromPreferencesWithCompletionHandler:v162];
          goto LABEL_112;
        }

        v101 = *(a1 + 40);
        if (!v101)
        {
          goto LABEL_111;
        }

        if (objc_getProperty(v101, v117, 104, 1))
        {
          v85 = +[NEDNSSettingsManager sharedManager];
          v86 = v161;
          v161[0] = MEMORY[0x1E69E9820];
          v161[1] = 3221225472;
          v161[2] = __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_3_194;
          v161[3] = &unk_1E7F0A960;
          v161[7] = &v165;
          v124 = *(a1 + 32);
          v125 = *(a1 + 40);
          v161[4] = v124;
          v161[5] = v125;
          v161[6] = *(a1 + 56);
          [v85 removeFromPreferencesWithCompletionHandler:v161];
        }

        else
        {
          v101 = *(a1 + 40);
          if (v101)
          {
            v101 = objc_getProperty(v101, v123, 80, 1);
          }

LABEL_111:
          v85 = v101;
          v86 = v160;
          v160[0] = MEMORY[0x1E69E9820];
          v160[1] = 3221225472;
          v160[2] = __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_4;
          v160[3] = &unk_1E7F0A960;
          v160[7] = &v165;
          v128 = *(a1 + 32);
          v129 = *(a1 + 40);
          v160[4] = v128;
          v160[5] = v129;
          v160[6] = *(a1 + 56);
          [v85 removeFromPreferencesWithCompletionHandler:v160];
        }

LABEL_112:

        v12 = v86[4];
        break;
      case 44:
        v47 = *(a1 + 40);
        v48 = *(a1 + 48);
        v29 = v166;
        v138 = v166[5];
        [v47 setAppPushParameters:v48 errorStr:&v138];
        v30 = v138;
        goto LABEL_82;
      case 45:
        v59 = *(a1 + 40);
        v60 = *(a1 + 48);
        v29 = v166;
        v137 = v166[5];
        [v59 unsetAppPushParameters:v60 errorStr:&v137];
        v30 = v137;
        goto LABEL_82;
      case 46:
        v97 = *(a1 + 40);
        v98 = *(a1 + 48);
        v29 = v166;
        v148 = v166[5];
        [v97 addRelayWithParameters:v98 errorStr:&v148];
        v30 = v148;
        goto LABEL_82;
      case 47:
        v89 = *(a1 + 40);
        v90 = *(a1 + 48);
        v29 = v166;
        v147 = v166[5];
        [v89 removeRelayWithParameters:v90 errorStr:&v147];
        v30 = v147;
        goto LABEL_82;
      case 48:
        v91 = *(a1 + 40);
        v92 = *(a1 + 48);
        v29 = v166;
        v146 = v166[5];
        [v91 setRelayConditionsWithParameters:v92 errorStr:&v146];
        v30 = v146;
        goto LABEL_82;
      case 49:
        v99 = *(a1 + 40);
        v100 = *(a1 + 48);
        v29 = v166;
        v145 = v166[5];
        [v99 unsetRelayConditionsWithParameters:v100 errorStr:&v145];
        v30 = v145;
        goto LABEL_82;
      case 52:
        v105 = *(a1 + 40);
        v106 = *(a1 + 48);
        v29 = v166;
        v132 = v166[5];
        [v105 setHotspotProviderParameters:v106 errorStr:&v132];
        v30 = v132;
        goto LABEL_82;
      case 53:
        v51 = *(a1 + 40);
        v52 = *(a1 + 48);
        v29 = v166;
        v131 = v166[5];
        [v51 unsetHotspotProviderParameters:v52 errorStr:&v131];
        v30 = v131;
LABEL_82:
        v107 = v30;
        v34 = v29[5];
        v29[5] = v107;
        goto LABEL_83;
      default:
        if (v26 != 101)
        {
          goto LABEL_49;
        }

        goto LABEL_84;
    }

    goto LABEL_3;
  }

  if ((v26 - 103) < 2)
  {
    v36 = *(a1 + 40);
    if (v36 && objc_getProperty(v36, v20, 80, 1))
    {
      v38 = *(a1 + 40);
      if (v38)
      {
        v38 = objc_getProperty(v38, v37, 80, 1);
      }

      v39 = v38;
      v40 = [v39 connection];
      v41 = [v40 status];

      if (v41 <= 5)
      {
        [v8 addObject:off_1E7F0A9A8[v41]];
      }
    }

    goto LABEL_84;
  }

  if (v26 == 105)
  {
    v42 = *(a1 + 40);
    if (!v42 || !objc_getProperty(v42, v20, 80, 1))
    {
      goto LABEL_84;
    }

    v43 = [*(a1 + 48) objectForKeyedSubscript:@"stop-current-session"];
    if (isa_nsstring(v43))
    {
      if ([v43 BOOLValue])
      {
        v45 = &unk_1F38BA940;
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = 0;
    }

    v109 = *(a1 + 40);
    if (v109)
    {
      v109 = objc_getProperty(v109, v44, 80, 1);
    }

    v110 = v109;
    v111 = [v110 connection];
    v130 = 0;
    [v111 startVPNTunnelWithOptions:v45 andReturnError:&v130];
    v34 = v130;

    if (v34)
    {
      v112 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to start the tunnel: %@", v34];
      v113 = v166[5];
      v166[5] = v112;
    }
  }

  else if (v26 == 106)
  {
    v31 = *(a1 + 40);
    if (!v31 || !objc_getProperty(v31, v20, 80, 1))
    {
      goto LABEL_84;
    }

    v33 = *(a1 + 40);
    if (v33)
    {
      v33 = objc_getProperty(v33, v32, 80, 1);
    }

    v34 = v33;
    v35 = [v34 connection];
    [v35 stopVPNTunnel];
  }

  else
  {
LABEL_49:
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown command"];
    v34 = v166[5];
    v166[5] = v46;
  }

LABEL_83:

LABEL_84:
  if (v166[5])
  {
    [v8 addObject:?];
  }

  (*(*(a1 + 56) + 16))();
LABEL_87:

  _Block_object_dispose(&v165, 8);
  v108 = *MEMORY[0x1E69E9840];
}

void __80__NEProviderAppConfigurationClient_loadConfigurationWithName_completionHandler___block_invoke(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  Property = a1[4];
  v24 = v4;
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 120, 1);
  }

  v6 = Property;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          objc_opt_isKindOfClass();
        }
      }

      v12 = [v11 localizedDescription];
      v13 = [v12 isEqualToString:a1[5]];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    v15 = v11;

    if (v15)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_14:
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = a1[4];
  if (v16)
  {
    v16 = objc_getProperty(v16, v14, 112, 1);
  }

  v17 = v16;
  v15 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v18 = *v26;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v17);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = [v20 localizedDescription];
        v22 = [v21 isEqualToString:a1[5]];

        if (v22)
        {
          v15 = v20;
          goto LABEL_28;
        }
      }

      v15 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

LABEL_29:
  (*(a1[6] + 16))();

  v23 = *MEMORY[0x1E69E9840];
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_189(void *a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to remove configuration %@: %@", a1[4], v4];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 120, 1);
    }

    v9 = Property;
    v7 = +[NEFilterManager sharedManager];
    [v9 removeObjectIdenticalTo:v7];
  }

  v10 = a1[6];
  if (*(*(a1[7] + 8) + 40))
  {
    v13[0] = *(*(a1[7] + 8) + 40);
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(a1[6], 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_2_193(void *a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to remove configuration %@: %@", a1[4], v4];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 120, 1);
    }

    v9 = Property;
    v7 = +[NEDNSProxyManager sharedManager];
    [v9 removeObjectIdenticalTo:v7];
  }

  v10 = a1[6];
  if (*(*(a1[7] + 8) + 40))
  {
    v13[0] = *(*(a1[7] + 8) + 40);
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(a1[6], 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_3_194(void *a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to remove configuration %@: %@", a1[4], v4];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 120, 1);
    }

    v9 = Property;
    v7 = +[NEDNSSettingsManager sharedManager];
    [v9 removeObjectIdenticalTo:v7];
  }

  v10 = a1[6];
  if (*(*(a1[7] + 8) + 40))
  {
    v13[0] = *(*(a1[7] + 8) + 40);
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(a1[6], 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_4(void *a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to remove configuration %@: %@", a1[4], v4];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 112, 1);
    }

    v10 = Property;
    v11 = a1[5];
    if (v11)
    {
      v12 = objc_getProperty(v11, v9, 80, 1);
    }

    else
    {
      v12 = 0;
    }

    [v10 removeObjectIdenticalTo:v12];

    v14 = a1[5];
    if (v14)
    {
      v14 = objc_getProperty(v14, v13, 120, 1);
    }

    v7 = v14;
    v16 = a1[5];
    if (v16)
    {
      v17 = objc_getProperty(v16, v15, 80, 1);
    }

    else
    {
      v17 = 0;
    }

    [v7 removeObjectIdenticalTo:v17];
  }

  v18 = a1[6];
  if (*(*(a1[7] + 8) + 40))
  {
    v21[0] = *(*(a1[7] + 8) + 40);
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    (*(v18 + 16))(v18, v19);
  }

  else
  {
    (*(v18 + 16))(a1[6], 0);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_5(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to save configuration %@: %@", a1[4], v4];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = a1[5];
  if (v8)
  {
    objc_setProperty_atomic(v8, v3, 0, 120);
  }

  v9 = a1[6];
  if (*(*(a1[7] + 8) + 40))
  {
    v12[0] = *(*(a1[7] + 8) + 40);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(a1[6], 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_6(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to save configuration %@: %@", a1[4], v4];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = a1[5];
  if (v8)
  {
    objc_setProperty_atomic(v8, v3, 0, 120);
  }

  v9 = a1[6];
  if (*(*(a1[7] + 8) + 40))
  {
    v12[0] = *(*(a1[7] + 8) + 40);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(a1[6], 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_7(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to save configuration %@: %@", a1[4], v4];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = a1[5];
  if (v8)
  {
    objc_setProperty_atomic(v8, v3, 0, 120);
  }

  v9 = a1[6];
  if (*(*(a1[7] + 8) + 40))
  {
    v12[0] = *(*(a1[7] + 8) + 40);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(a1[6], 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_8(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to save configuration %@: %@", a1[4], v4];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 112, 1);
    }

    v7 = Property;
    v10 = a1[5];
    if (v10)
    {
      v11 = objc_getProperty(v10, v9, 80, 1);
    }

    else
    {
      v11 = 0;
    }

    [v7 removeObjectIdenticalTo:v11];
  }

  v13 = a1[5];
  if (v13)
  {
    objc_setProperty_atomic(v13, v12, 0, 120);
  }

  v14 = a1[6];
  if (*(*(a1[7] + 8) + 40))
  {
    v17[0] = *(*(a1[7] + 8) + 40);
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    (*(v14 + 16))(v14, v15);
  }

  else
  {
    (*(v14 + 16))(a1[6], 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = +[NEVPNManager sharedManager];
  v3 = [v2 connection];
  v4 = [v3 status];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = +[NEVPNManager sharedManager];
    v8 = [v5 initWithObjects:{v6, 0}];
    v9 = *(a1 + 32);
    if (v9)
    {
      objc_setProperty_atomic(v9, v7, v8, 120);
    }
  }

  v10 = +[NEFilterManager sharedManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7F0B628;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v11;
  [v10 loadFromPreferencesWithCompletionHandler:v12];
}

void __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = +[NEFilterManager sharedManager];
  v3 = [v2 providerConfiguration];

  if (v3)
  {
    v5 = *(a1 + 32);
    if (v5 && objc_getProperty(v5, v4, 120, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v6, 120, 1);
      }

      v8 = Property;
      v9 = +[NEFilterManager sharedManager];
      [v8 addObject:v9];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E695DF70]);
      v9 = +[NEFilterManager sharedManager];
      v8 = [v10 initWithObjects:{v9, 0}];
      v12 = *(a1 + 32);
      if (v12)
      {
        objc_setProperty_atomic(v12, v11, v8, 120);
      }
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_3;
  v14[3] = &unk_1E7F0B5B0;
  v13 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v13;
  [NETunnelProviderManager loadAllFromPreferencesWithCompletionHandler:v14];
}

void __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v5 = *(a1 + 32);
    if (v5 && objc_getProperty(v5, v4, 120, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v6, 120, 1);
      }

      [Property addObjectsFromArray:v3];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v3];
      v10 = *(a1 + 32);
      if (v10)
      {
        objc_setProperty_atomic(v10, v8, v9, 120);
      }
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_4;
  v12[3] = &unk_1E7F0B5B0;
  v11 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v11;
  [NEAppProxyProviderManager loadAllFromPreferencesWithCompletionHandler:v12];
}

void __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v5 = *(a1 + 32);
    if (v5 && objc_getProperty(v5, v4, 120, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v6, 120, 1);
      }

      [Property addObjectsFromArray:v3];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v3];
      v10 = *(a1 + 32);
      if (v10)
      {
        objc_setProperty_atomic(v10, v8, v9, 120);
      }
    }
  }

  v11 = +[NEDNSProxyManager sharedManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_5;
  v13[3] = &unk_1E7F0B628;
  v12 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v12;
  [v11 loadFromPreferencesWithCompletionHandler:v13];
}

void __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5 && objc_getProperty(v5, v3, 120, 1))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 120, 1);
    }

    v8 = Property;
    v9 = +[NEDNSProxyManager sharedManager];
    [v8 addObject:v9];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E695DF70]);
    v9 = +[NEDNSProxyManager sharedManager];
    v8 = [v10 initWithObjects:{v9, 0}];
    v12 = *(a1 + 32);
    if (v12)
    {
      objc_setProperty_atomic(v12, v11, v8, 120);
    }
  }

  v13 = +[NEDNSSettingsManager sharedManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_6;
  v15[3] = &unk_1E7F0B628;
  v14 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v14;
  [v13 loadFromPreferencesWithCompletionHandler:v15];
}

void __65__NEProviderAppConfigurationClient_loadAllWithCompletionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v13 = a2;
  v4 = *(a1 + 32);
  if (v4 && objc_getProperty(v4, v3, 120, 1))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 120, 1);
    }

    v7 = Property;
    v8 = +[NEDNSSettingsManager sharedManager];
    [v7 addObject:v8];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v8 = +[NEDNSSettingsManager sharedManager];
    v7 = [v9 initWithObjects:{v8, 0}];
    v11 = *(a1 + 32);
    if (v11)
    {
      objc_setProperty_atomic(v11, v10, v7, 120);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0);
  }
}

void __101__NEProviderAppConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Got an error on the connection with the app: %@", &v10, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    objc_setProperty_atomic(v6, v5, 0, 136);
    v8 = *(a1 + 32);
    if (v8)
    {
      objc_setProperty_atomic(v8, v7, 0, 144);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)setProviderTypeWithParameters:(id)a3 errorStr:(id *)a4
{
  v5 = [a3 objectForKeyedSubscript:@"provider-type"];

  if (v5)
  {
    *a4 = @"The provider type cannot be specified for this configuration type";
  }

  return v5 == 0;
}

- (BOOL)unsetSharedSecretWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEProviderAppConfigurationClient *)self protocolForParameters:v6];
  v8 = [v6 objectForKeyedSubscript:@"shared-secret"];

  LODWORD(v6) = isa_nsstring(v8);
  if (v6 && ([v7 sharedSecretReference], v9 = objc_claimAutoreleasedReturnValue(), v9, v9) && (objc_msgSend(v7, "sharedSecretReference"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NEProviderAppConfigurationClient deleteKeychainItemWithPersistentReference:](self, v10), v10, v11))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to delete the shared secret keychain item: %d", v11];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (uint64_t)deleteKeychainItemWithPersistentReference:(uint64_t)a1
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *MEMORY[0x1E697B008];
    v3 = *MEMORY[0x1E697B3C8];
    v10[0] = *MEMORY[0x1E697AFF8];
    v10[1] = v3;
    v11[0] = v2;
    v11[1] = a2;
    v4 = MEMORY[0x1E695DF20];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:2];

    v7 = SecItemDelete(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)setSharedSecretWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEProviderAppConfigurationClient *)self protocolForParameters:v6];
  v8 = [v6 objectForKeyedSubscript:@"shared-secret"];
  v9 = isa_nsstring(v8);

  if (v9)
  {
    v10 = [v7 sharedSecretReference];
    v11 = [v6 objectForKeyedSubscript:@"shared-secret"];
    v12 = [v11 dataUsingEncoding:4];

    v14 = MEMORY[0x1E696AEC0];
    if (self)
    {
      Property = objc_getProperty(self, v13, 80, 1);
    }

    else
    {
      Property = 0;
    }

    v16 = [Property localizedDescription];
    v17 = [v14 stringWithFormat:@"%@.SHAREDSECRET", v16];
    v22 = v10;
    v18 = [(NEProviderAppConfigurationClient *)self setKeychainItemData:v12 withName:v17 persistentReference:&v22];
    v19 = v22;

    v20 = v18 == 0;
    if (v18)
    {
      *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set the shared secret in the keychain: %d", v18];
    }

    else
    {
      [v7 setSharedSecretReference:v19];
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (uint64_t)setKeychainItemData:(void *)a3 withName:(uint64_t *)a4 persistentReference:
{
  v41[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v9 = a3;
  if (a1)
  {
    v10 = *a4;
    v11 = *MEMORY[0x1E695E4D0];
    v12 = *MEMORY[0x1E697B3A8];
    v13 = 0x1E695D000uLL;
    if (!*a4)
    {
      goto LABEL_5;
    }

    v14 = *MEMORY[0x1E697B310];
    v40[0] = *MEMORY[0x1E697B3C8];
    v40[1] = v14;
    v41[0] = v10;
    v41[1] = v11;
    v40[2] = v12;
    v41[2] = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
    result = 0;
    if (SecItemCopyMatching(v15, &result))
    {

      goto LABEL_5;
    }

    v27 = result;
    v28 = isa_nsdictionary(v27);
    if (v28)
    {
      v36 = v9;
      v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v29 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
      v30 = *MEMORY[0x1E697AE88];
      [v27 objectForKeyedSubscript:*MEMORY[0x1E697AE88]];
      v31 = v35 = v28;
      [v29 setObject:v31 forKeyedSubscript:v30];

      [v29 setObject:v11 forKeyedSubscript:v12];
      v32 = [v27 mutableCopy];
      [v32 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697B3C0]];
      v24 = SecItemUpdate(v29, v32);

      v28 = v35;
      v9 = v36;
      if (v24 != -25300)
      {

LABEL_14:
        goto LABEL_15;
      }
    }

    v13 = 0x1E695D000;
    if (((*a4 != 0) & ~v28) == 0)
    {
LABEL_5:
      v38[0] = *MEMORY[0x1E697AE88];
      v16 = MEMORY[0x1E696AEC0];
      v17 = [objc_getProperty(a1 v8];
      v18 = [v16 stringWithFormat:@"%@.PASSWORD", v17];
      v19 = *MEMORY[0x1E697B3C0];
      v39[0] = v18;
      v39[1] = v7;
      v20 = *MEMORY[0x1E697ABD8];
      v38[1] = v19;
      v38[2] = v20;
      v21 = *MEMORY[0x1E697AFF8];
      v22 = *MEMORY[0x1E697B008];
      v39[2] = *MEMORY[0x1E697ABE0];
      v39[3] = v22;
      v23 = *MEMORY[0x1E697B320];
      v38[3] = v21;
      v38[4] = v23;
      v38[5] = v12;
      v39[4] = v11;
      v39[5] = v11;
      v15 = [*(v13 + 3872) dictionaryWithObjects:v39 forKeys:v38 count:6];

      result = 0;
      v24 = SecItemAdd(v15, &result);
      if (!v24)
      {
        v25 = result;
        if (isa_nsdata(v25))
        {
          v26 = v25;
          *a4 = v25;
        }

        else
        {

          v24 = 4294965226;
        }
      }

      goto LABEL_14;
    }
  }

  v24 = 0;
LABEL_15:

  v33 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)unsetPasswordWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEProviderAppConfigurationClient *)self protocolForParameters:v6];
  v8 = [v6 objectForKeyedSubscript:@"password"];

  LODWORD(v6) = isa_nsstring(v8);
  if (v6 && ([v7 passwordReference], v9 = objc_claimAutoreleasedReturnValue(), v9, v9) && (objc_msgSend(v7, "passwordReference"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NEProviderAppConfigurationClient deleteKeychainItemWithPersistentReference:](self, v10), v10, v11))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to delete the password keychain item: %d", v11];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)setPasswordWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [(NEProviderAppConfigurationClient *)self protocolForParameters:v6];
  v8 = [v6 objectForKeyedSubscript:@"password"];
  v9 = isa_nsstring(v8);

  if (v9)
  {
    v10 = [v7 passwordReference];
    v11 = [v6 objectForKeyedSubscript:@"password"];
    v12 = [v11 dataUsingEncoding:4];

    v14 = MEMORY[0x1E696AEC0];
    if (self)
    {
      Property = objc_getProperty(self, v13, 80, 1);
    }

    else
    {
      Property = 0;
    }

    v16 = [Property localizedDescription];
    v17 = [v14 stringWithFormat:@"%@.PASSWORD", v16];
    v22 = v10;
    v18 = [(NEProviderAppConfigurationClient *)self setKeychainItemData:v12 withName:v17 persistentReference:&v22];
    v19 = v22;

    v20 = v18 == 0;
    if (v18)
    {
      *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set the password in the keychain: %d", v18];
    }

    else
    {
      [v7 setPasswordReference:v19];
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (BOOL)setProtocolWithParameters:(id)a3 errorStr:(id *)a4
{
  v7 = [a3 objectForKeyedSubscript:@"type"];
  if (self)
  {
    Property = objc_getProperty(self, v6, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 || (!self ? (v12 = 0) : (v12 = objc_getProperty(self, v11, 80, 1)), v13 = v12, objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, (v14))
  {
    if ([v7 isEqualToString:@"provider"])
    {
      v16 = NETunnelProviderProtocol;
LABEL_9:
      v18 = objc_alloc_init(v16);
      if (self)
      {
        v19 = objc_getProperty(self, v17, 80, 1);
      }

      else
      {
        v19 = 0;
      }

      [v19 setProtocolConfiguration:v18];

      goto LABEL_12;
    }

    v20 = 0;
    v21 = @"Invalid protocol type, valid type is provider";
LABEL_14:
    *a4 = v21;
    goto LABEL_15;
  }

  if (self)
  {
    v23 = objc_getProperty(self, v15, 80, 1);
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v25)
  {
    if ([v7 isEqualToString:@"ikev1"])
    {
      v27 = off_1E7F04ED0;
    }

    else
    {
      if (([v7 isEqualToString:@"ikev2"] & 1) == 0)
      {
        v20 = 0;
        v21 = @"Invalid protocol type, valid types are ikev1 and ikev2";
        goto LABEL_14;
      }

      v27 = off_1E7F04EC8;
    }

    v16 = *v27;
    goto LABEL_9;
  }

  if (self)
  {
    if (objc_getProperty(self, v26, 88, 1))
    {
      if (([v7 isEqualToString:@"provider"] & 1) == 0)
      {
        v20 = 0;
        v21 = @"Invalid filter type, valid type is provider";
        goto LABEL_14;
      }

      v29 = objc_alloc_init(NEFilterProviderConfiguration);
      v20 = 1;
      [objc_getProperty(self v30];
    }

    else
    {
      v20 = 1;
      if (!objc_getProperty(self, v28, 96, 1))
      {
        goto LABEL_15;
      }

      if (([v7 isEqualToString:@"provider"] & 1) == 0)
      {
        v20 = 0;
        v21 = @"Invalid DNS proxy type, valid type is provider";
        goto LABEL_14;
      }

      v29 = objc_alloc_init(NEDNSProxyProviderProtocol);
      [objc_getProperty(self v31];
    }

    goto LABEL_15;
  }

LABEL_12:
  v20 = 1;
LABEL_15:

  return v20;
}

- (BOOL)createConfigurationWithParameters:(id)a3 errorStr:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  v8 = [v6 objectForKeyedSubscript:@"type"];

  if ([v8 isEqualToString:@"lite"])
  {
    v9 = +[NEVPNManager sharedManager];
    [v9 setLocalizedDescription:v7];

    v10 = +[NEVPNManager sharedManager];
    v12 = v10;
    if (self)
    {
      objc_setProperty_atomic(self, v11, v10, 80);

      if (!objc_getProperty(self, v13, 112, 1))
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_setProperty_atomic(self, v16, v15, 112);
      }

LABEL_10:
      v24 = objc_getProperty(self, v14, 112, 1);
      Property = objc_getProperty(self, v25, 80, 1);
LABEL_11:
      [v24 addObject:Property];

      goto LABEL_31;
    }

    goto LABEL_36;
  }

  if ([v8 isEqualToString:@"packet-tunnel"])
  {
    v17 = objc_alloc_init(NETunnelProviderManager);
    v19 = v17;
    if (self)
    {
      objc_setProperty_atomic(self, v18, v17, 80);

      [objc_getProperty(self v20];
      if (!objc_getProperty(self, v21, 112, 1))
      {
        v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_setProperty_atomic(self, v23, v22, 112);
      }

      goto LABEL_10;
    }

    [0 setLocalizedDescription:v7];
LABEL_36:

    v24 = 0;
    Property = 0;
    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"filter"])
  {
    v27 = +[NEFilterManager sharedManager];
    [v27 setLocalizedDescription:v7];

    if (self)
    {
      if (!objc_getProperty(self, v28, 112, 1))
      {
        v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_setProperty_atomic(self, v31, v30, 112);
      }

      v32 = objc_getProperty(self, v29, 112, 1);
    }

    else
    {

      v32 = 0;
    }

    v33 = NEFilterManager;
  }

  else if ([v8 isEqualToString:@"dns-proxy"])
  {
    v34 = +[NEDNSProxyManager sharedManager];
    [v34 setLocalizedDescription:v7];

    if (self)
    {
      if (!objc_getProperty(self, v35, 112, 1))
      {
        v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_setProperty_atomic(self, v38, v37, 112);
      }

      v32 = objc_getProperty(self, v36, 112, 1);
    }

    else
    {

      v32 = 0;
    }

    v33 = NEDNSProxyManager;
  }

  else
  {
    if (![v8 isEqualToString:@"dns-settings"])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid configuration type, valid types are lite, packet-tunnel, filter, dns-proxy, and dns-settings"];
      *a4 = v46 = 0;
      goto LABEL_32;
    }

    v39 = +[NEDNSSettingsManager sharedManager];
    [v39 setLocalizedDescription:v7];

    if (self)
    {
      if (!objc_getProperty(self, v40, 112, 1))
      {
        v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_setProperty_atomic(self, v43, v42, 112);
      }

      v32 = objc_getProperty(self, v41, 112, 1);
    }

    else
    {

      v32 = 0;
    }

    v33 = NEDNSSettingsManager;
  }

  v44 = v32;
  v45 = [(__objc2_class *)v33 sharedManager];
  [v44 addObject:v45];

LABEL_31:
  v46 = 1;
LABEL_32:

  return v46;
}

- (id)dnsSettingsBundle
{
  if (self)
  {
    self = objc_getProperty(self, a2, 104, 1);
    if (self)
    {
      self = objc_getProperty(self, v2, 40, 1);
    }
  }

  v3 = self;
  v4 = [(NEProviderAppConfigurationClient *)v3 dnsSettings];

  return v4;
}

- (id)dnsProxyConfiguration
{
  if (self)
  {
    self = objc_getProperty(self, a2, 96, 1);
    v2 = vars8;
  }

  return [(NEProviderAppConfigurationClient *)self providerProtocol];
}

- (id)filterConfiguration
{
  if (self)
  {
    self = objc_getProperty(self, a2, 88, 1);
    v2 = vars8;
  }

  return [(NEProviderAppConfigurationClient *)self providerConfiguration];
}

- (id)protocolForParameters:(id)a3
{
  if (self)
  {
    self = objc_getProperty(self, a2, 80, 1);
    v3 = vars8;
  }

  return [(NEProviderAppConfigurationClient *)self protocolConfiguration];
}

- (void)setOnDemandRules:(id)a3
{
  v6 = [a3 copy];
  if (self)
  {
    Property = objc_getProperty(self, v4, 80, 1);
  }

  else
  {
    Property = 0;
  }

  [Property setOnDemandRules:v6];
}

- (id)onDemandRules
{
  if (self)
  {
    self = objc_getProperty(self, a2, 80, 1);
    v2 = vars8;
  }

  return [(NEProviderAppConfigurationClient *)self onDemandRules];
}

- (BOOL)onDemandEnabled
{
  if (self)
  {
    self = objc_getProperty(self, a2, 80, 1);
    v2 = vars8;
  }

  return [(NEProviderAppConfigurationClient *)self isOnDemandEnabled];
}

- (BOOL)enabled
{
  if (self)
  {
    v3 = self;
    v4 = &OBJC_IVAR___NEProviderAppConfigurationClient__filterManager;
    if (!objc_getProperty(self, a2, 88, 1))
    {
      v4 = &OBJC_IVAR___NEProviderAppConfigurationClient__dnsProxyManager;
      if (!objc_getProperty(v3, v5, 96, 1))
      {
        v4 = &OBJC_IVAR___NEProviderAppConfigurationClient__dnsSettingsManager;
        if (!objc_getProperty(v3, v5, 104, 1))
        {
          v4 = &OBJC_IVAR___NEProviderAppConfigurationClient__currentManager;
        }
      }
    }

    self = objc_getProperty(v3, v5, *v4, 1);
    v2 = vars8;
  }

  return [(NEProviderAppConfigurationClient *)self isEnabled];
}

- (void)handleConfigChanged:(id)a3
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 120);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38CE490];
  [v7 setExportedInterface:v8];

  [v7 setExportedObject:self];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__NEProviderAppConfigurationClient_listener_shouldAcceptNewConnection___block_invoke;
  v13[3] = &unk_1E7F0AA58;
  objc_copyWeak(&v14, &location);
  [v7 setInvalidationHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__NEProviderAppConfigurationClient_listener_shouldAcceptNewConnection___block_invoke_2;
  v11[3] = &unk_1E7F0AA58;
  objc_copyWeak(&v12, &location);
  [v7 setInterruptionHandler:v11];
  [v7 resume];
  if (self)
  {
    objc_setProperty_atomic(self, v9, v7, 136);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return 1;
}

void __71__NEProviderAppConfigurationClient_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    self = WeakRetained;
    objc_setProperty_atomic(WeakRetained, v2, 0, 80);
    objc_setProperty_atomic(self, v3, 0, 120);
    objc_setProperty_atomic(self, v4, 0, 112);
    WeakRetained = self;
  }
}

void __71__NEProviderAppConfigurationClient_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    self = WeakRetained;
    objc_setProperty_atomic(WeakRetained, v2, 0, 80);
    objc_setProperty_atomic(self, v3, 0, 120);
    objc_setProperty_atomic(self, v4, 0, 112);
    WeakRetained = self;
  }
}

- (NEProviderAppConfigurationClient)initWithClientName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NEProviderAppConfigurationClient;
  v5 = [(NEUtilConfigurationClient *)&v10 initInternalWithClientName:v4];
  if (v5)
  {
    v6 = [v4 componentsSeparatedByString:@":"];
    if ([v6 count] < 2)
    {
      v7 = v4;
    }

    else
    {
      v7 = [v6 objectAtIndexedSubscript:1];
    }

    targetAppBundleID = v5->_targetAppBundleID;
    v5->_targetAppBundleID = v7;
  }

  return v5;
}

- (id)listenerEndpoint
{
  if (a1)
  {
    a1 = [objc_getProperty(a1 a2];
    v2 = vars8;
  }

  return a1;
}

@end