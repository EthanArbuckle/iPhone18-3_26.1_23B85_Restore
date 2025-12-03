@interface NEProfileIngestion
+ (id)getServiceIDForPayload:(id)payload;
- (BOOL)createConfigurationFromPayload:(id)payload payloadType:(id)type;
- (BOOL)enableAlwaysOnVpn;
- (BOOL)isInstalled:(id)installed;
- (BOOL)loadConfigurationsForceReloadFromDisk;
- (BOOL)lockConfigurations;
- (BOOL)removeConfiguration:(id)configuration;
- (BOOL)removeConfigurationWithIdentifier:(id)identifier;
- (BOOL)removeIngestedConfiguration;
- (BOOL)saveIngestedConfiguration;
- (BOOL)saveIngestedConfiguration:(id *)configuration;
- (BOOL)updateAccountIdentifiers:(id)identifiers;
- (BOOL)updateAppLayerVPNMappingRules:(id)rules;
- (BOOL)updateDefaultAfterAddingConfiguration;
- (BOOL)updateDefaultAfterDeletingConfiguration;
- (BOOL)updateManagedAppRules:(id)rules;
- (BOOL)updatePerAppMappingRules:(id)rules;
- (NEProfileIngestion)initWithNameAndType:(id)type payloadType:(id)payloadType;
- (id)copyManagedConfigurationIDs;
- (id)findConfigurationByConfigurationID:(id)d;
- (id)findConfigurationByName:(id)name;
- (id)findConfigurationByPayloadUUID:(id)d;
- (id)getCertificatesForConfigurationWithIdentifier:(id)identifier;
- (id)setAsideConfigurationName:(id)name unsetAside:(BOOL)aside;
- (uint64_t)enableAlwaysOnVpnInternal:(void *)internal;
- (uint64_t)matchConfigAppUUID:(void *)d configUUIDType:(void *)type configAppUUID:;
- (uint64_t)saveConfiguration:(void *)configuration returnError:;
- (void)dealloc;
- (void)enableDefaultService;
- (void)removeAllConfigurationsWithPayload:(id)payload profile:(id)profile;
- (void)unlockConfigurations;
@end

@implementation NEProfileIngestion

- (BOOL)updateManagedAppRules:(id)rules
{
  v118 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v113 = objc_opt_class();
    v114 = 2112;
    v115 = rulesCopy;
    v66 = v113;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@ updateManagedAppRules %@", buf, 0x16u);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = [(NEProfileIngestion *)self currentConfigurations];
  v71 = [obj countByEnumeratingWithState:&v96 objects:v110 count:16];
  if (v71)
  {
    v70 = *v97;
    *&v5 = 138412802;
    v67 = v5;
    selfCopy = self;
    do
    {
      for (i = 0; i != v71; ++i)
      {
        if (*v97 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v96 + 1) + 8 * i);
        if ([v7 grade] != 1)
        {
          continue;
        }

        v72 = i;
        Property = [v7 pathController];
        v10 = Property;
        if (Property)
        {
          Property = objc_getProperty(Property, v9, 32, 1);
        }

        v11 = Property;
        v12 = isa_nsarray(v11);

        i = v72;
        if (!v12)
        {
          continue;
        }

        array = [MEMORY[0x1E695DF70] array];
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v76 = rulesCopy;
        v80 = [v76 countByEnumeratingWithState:&v92 objects:v109 count:16];
        if (!v80)
        {
          goto LABEL_70;
        }

        v79 = *v93;
        v75 = v7;
        do
        {
          v13 = 0;
          do
          {
            if (*v93 != v79)
            {
              objc_enumerationMutation(v76);
            }

            v14 = *(*(&v92 + 1) + 8 * v13);
            if (isa_nsstring(v14))
            {
              v15 = v14;
              v16 = v7;
              v86 = v15;
              if (self)
              {
                v17 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*"];
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                pathController = [v16 pathController];
                v20 = pathController;
                if (pathController)
                {
                  pathController = objc_getProperty(pathController, v19, 32, 1);
                }

                v77 = v16;
                v78 = v13;
                v21 = pathController;

                v22 = [v21 countByEnumeratingWithState:&v104 objects:buf count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = 0;
                  v25 = 0;
                  v26 = *v105;
                  v81 = *v105;
                  v82 = v21;
                  do
                  {
                    v27 = 0;
                    v83 = v23;
                    do
                    {
                      if (*v105 != v26)
                      {
                        v28 = v27;
                        objc_enumerationMutation(v21);
                        v27 = v28;
                      }

                      v85 = v27;
                      v29 = *(*(&v104 + 1) + 8 * v27);
                      if (isa_nsdictionary(v29))
                      {
                        v30 = [v29 objectForKeyedSubscript:@"AppIdentifierMatches"];
                        if (v30)
                        {
                          v87 = v29;
                          v31 = v30;
                          if (isa_nsarray(v30))
                          {
                            v102 = 0u;
                            v103 = 0u;
                            v100 = 0u;
                            v101 = 0u;
                            v84 = v31;
                            v32 = v31;
                            v33 = [v32 countByEnumeratingWithState:&v100 objects:v111 count:16];
                            if (v33)
                            {
                              v34 = v33;
                              v35 = *v101;
                              do
                              {
                                for (j = 0; j != v34; ++j)
                                {
                                  if (*v101 != v35)
                                  {
                                    objc_enumerationMutation(v32);
                                  }

                                  v37 = *(*(&v100 + 1) + 8 * j);
                                  if (isa_nsstring(v37))
                                  {
                                    v38 = [v37 stringByTrimmingCharactersInSet:v17];
                                    if ([v15 hasPrefix:v38])
                                    {
                                      v39 = [v38 length];
                                      v40 = v39;
                                      if (!v25 || v24 < v39)
                                      {
                                        v41 = v87;

                                        v24 = v40;
                                        v25 = v41;
                                        v15 = v86;
                                      }
                                    }
                                  }
                                }

                                v34 = [v32 countByEnumeratingWithState:&v100 objects:v111 count:16];
                              }

                              while (v34);
                            }

                            v26 = v81;
                            v21 = v82;
                            v23 = v83;
                            v30 = v84;
                          }

                          else
                          {
                            v30 = v31;
                          }
                        }

                        else if (!v25)
                        {
                          v25 = v29;
                          v30 = 0;
                          v24 = 0;
                        }
                      }

                      v27 = v85 + 1;
                    }

                    while (v85 + 1 != v23);
                    v23 = [v21 countByEnumeratingWithState:&v104 objects:buf count:16];
                  }

                  while (v23);
                }

                else
                {
                  v25 = 0;
                }

                self = selfCopy;
                v7 = v75;
                v16 = v77;
                v13 = v78;
              }

              else
              {
                v25 = 0;
              }

              if (isa_nsdictionary(v25))
              {
                v42 = [v25 objectForKeyedSubscript:@"AllowRoamingCellularData"];
                v43 = [v25 objectForKeyedSubscript:@"AllowCellularData"];
                if (isa_nsnumber(v42))
                {
                  bOOLValue = [v42 BOOLValue];
                  if ((isa_nsnumber(v43) & 1) == 0)
                  {
                    if ((bOOLValue & 1) == 0)
                    {
                      v45 = 0;
                      goto LABEL_61;
                    }

                    goto LABEL_64;
                  }
                }

                else
                {
                  if (!isa_nsnumber(v43))
                  {
                    goto LABEL_64;
                  }

                  bOOLValue = 1;
                }

                v45 = [v43 BOOLValue] ^ 1;
                if ((v45 & 1) != 0 || (bOOLValue & 1) == 0)
                {
LABEL_61:
                  v46 = [(NEAppRule *)[NEPathRule alloc] initWithSigningIdentifier:v86];
                  [(NEPathRule *)v46 setCellularBehavior:v45];
                  if (v46)
                  {
                    [array addObject:v46];
                  }
                }

LABEL_64:
              }
            }

            ++v13;
          }

          while (v13 != v80);
          v47 = [v76 countByEnumeratingWithState:&v92 objects:v109 count:16];
          v80 = v47;
        }

        while (v47);
LABEL_70:

        v48 = ne_log_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v61 = objc_opt_class();
          v62 = v61;
          name = [v7 name];
          *buf = v67;
          v113 = v61;
          v114 = 2112;
          v115 = name;
          v116 = 2112;
          v117 = array;
          _os_log_debug_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_DEBUG, "%@ newPathRules for %@: %@", buf, 0x20u);
        }

        pathController2 = [v7 pathController];
        pathRules = [pathController2 pathRules];
        v51 = [pathRules count];
        v52 = array;
        v53 = [array count];

        if (v51 == v53)
        {
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          pathController3 = [v7 pathController];
          pathRules2 = [pathController3 pathRules];

          v56 = [pathRules2 countByEnumeratingWithState:&v88 objects:v108 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v89;
            while (2)
            {
              for (k = 0; k != v57; ++k)
              {
                if (*v89 != v58)
                {
                  objc_enumerationMutation(pathRules2);
                }

                if (![array containsObject:*(*(&v88 + 1) + 8 * k)])
                {

                  v52 = array;
                  goto LABEL_83;
                }
              }

              v57 = [pathRules2 countByEnumeratingWithState:&v88 objects:v108 count:16];
              if (v57)
              {
                continue;
              }

              break;
            }
          }

          v52 = array;
        }

        else
        {
LABEL_83:
          pathController4 = [v7 pathController];
          [pathController4 setPathRules:v52];

          [(NEProfileIngestion *)self saveConfiguration:v7 returnError:0];
        }

        i = v72;
      }

      v71 = [obj countByEnumeratingWithState:&v96 objects:v110 count:16];
    }

    while (v71);
  }

  v64 = *MEMORY[0x1E69E9840];
  return 1;
}

- (uint64_t)saveConfiguration:(void *)configuration returnError:
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__21748;
    v38 = __Block_byref_object_dispose__21749;
    v39 = 0;
    if (!v5 || ([v5 name], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length") == 0, v7, v8))
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        *buf = 138412290;
        v45 = v24;
        v25 = v24;
        _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%@ saveConfigurationByConfiguration failed: empty configuration or configuration name", buf, 0xCu);
      }
    }

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_opt_class();
      name = [v6 name];
      *buf = 138412546;
      v45 = v19;
      v46 = 2112;
      v47 = name;
      _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "%@ saveConfiguration: '%@'", buf, 0x16u);
    }

    manager = [self manager];
    v12 = MEMORY[0x1E69E96A0];
    v13 = MEMORY[0x1E69E96A0];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __52__NEProfileIngestion_saveConfiguration_returnError___block_invoke;
    v29 = &unk_1E7F0A750;
    selfCopy = self;
    v14 = v6;
    v31 = v14;
    v32 = &v34;
    v33 = &v40;
    [manager saveConfiguration:v14 withCompletionQueue:v12 handler:&v26];

    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      name2 = [v14 name];
      v23 = *(v41 + 24);
      *buf = 138413058;
      v45 = v21;
      v46 = 2112;
      v47 = name2;
      v48 = 1024;
      v49 = v23;
      v50 = 2112;
      v51 = v14;
      _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "%@ saveConfiguration '%@', ok = %d, configuration %@", buf, 0x26u);
    }

    if (configuration)
    {
      *configuration = v35[5];
    }

    v16 = *(v41 + 24);

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

void __52__NEProfileIngestion_saveConfiguration_returnError___block_invoke(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] != 9)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = a1[4];
      v17 = objc_opt_class();
      v18 = a1[5];
      v19 = v17;
      v20 = [v18 name];
      v21 = convert_error_to_string(v4);
      v22 = 138412802;
      v23 = v17;
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%@ Error occurred when saving configuration '%@': %@", &v22, 0x20u);
    }

    v13 = *(a1[6] + 8);
    v14 = v4;
    v5 = *(v13 + 40);
    *(v13 + 40) = v14;
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = a1[4];
      v7 = objc_opt_class();
      v8 = a1[5];
      v9 = v7;
      v10 = [v8 name];
      v11 = convert_error_to_string(v4);
      v22 = 138412802;
      v23 = v7;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ saved configuration '%@': %@", &v22, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateAccountIdentifiers:(id)identifiers
{
  v44 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  selfCopy = self;
  obj = [(NEProfileIngestion *)self currentConfigurations];
  v4 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v33 = *v39;
    v6 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        appVPN = [v8 appVPN];

        if (appVPN)
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v10 = [&unk_1F38BA880 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v35;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v35 != v12)
                {
                  objc_enumerationMutation(&unk_1F38BA880);
                }

                v14 = *(*(&v34 + 1) + 8 * j);
                appVPN2 = [v8 appVPN];
                [appVPN2 removeAppRuleByID:v14];
              }

              v11 = [&unk_1F38BA880 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v11);
          }

          externalIdentifier = [v8 externalIdentifier];

          if (externalIdentifier)
          {
            externalIdentifier2 = [v8 externalIdentifier];
            v18 = [identifiersCopy objectForKeyedSubscript:externalIdentifier2];

            mailAccountIdentifiers = [v18 mailAccountIdentifiers];
            v20 = [mailAccountIdentifiers count];

            if (v20)
            {
              mailAccountIdentifiers2 = [v18 mailAccountIdentifiers];
              [v8 setMailDomains:0 accountIdentifiers:mailAccountIdentifiers2];
            }

            calendarAccountIdentifiers = [v18 calendarAccountIdentifiers];
            v23 = [calendarAccountIdentifiers count];

            if (v23)
            {
              calendarAccountIdentifiers2 = [v18 calendarAccountIdentifiers];
              [v8 setCalendarDomains:0 accountIdentifiers:calendarAccountIdentifiers2];
            }

            contactsAccountIdentifiers = [v18 contactsAccountIdentifiers];
            v26 = [contactsAccountIdentifiers count];

            if (v26)
            {
              contactsAccountIdentifiers2 = [v18 contactsAccountIdentifiers];
              [v8 setContactsDomains:0 accountIdentifiers:contactsAccountIdentifiers2];
            }
          }

          v6 &= [(NEProfileIngestion *)selfCopy saveConfiguration:v8 returnError:0];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (BOOL)updateAppLayerVPNMappingRules:(id)rules
{
  v16 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412802;
    v11 = objc_opt_class();
    v12 = 2080;
    v13 = "[NEProfileIngestion updateAppLayerVPNMappingRules:]";
    v14 = 2112;
    v15 = rulesCopy;
    v9 = v11;
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@ %s %@", &v10, 0x20u);
  }

  v6 = [(NEProfileIngestion *)self updatePerAppMappingRules:rulesCopy];
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)updatePerAppMappingRules:(id)rules
{
  v179 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v169 = objc_opt_class();
    v170 = 2112;
    v171 = rulesCopy;
    v109 = v169;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ updatePerAppMappingRules %@", buf, 0x16u);
  }

  selfCopy = self;

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(rulesCopy, "count")}];
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  obj = rulesCopy;
  v130 = [obj countByEnumeratingWithState:&v160 objects:v178 count:16];
  if (v130)
  {
    v127 = *v161;
    do
    {
      for (i = 0; i != v130; ++i)
      {
        if (*v161 != v127)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v160 + 1) + 8 * i);
        v9 = [obj objectForKey:v8];
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v132 = v9;
        allValues = [v9 allValues];
        v11 = [allValues countByEnumeratingWithState:&v156 objects:v177 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v157;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v157 != v13)
              {
                objc_enumerationMutation(allValues);
              }

              v15 = *(*(&v156 + 1) + 8 * j);
              v16 = [v6 objectForKeyedSubscript:v15];
              if (!v16)
              {
                v16 = [MEMORY[0x1E695DFA8] set];
                [v6 setObject:v16 forKeyedSubscript:v15];
              }

              [v16 addObject:v8];
            }

            v12 = [allValues countByEnumeratingWithState:&v156 objects:v177 count:16];
          }

          while (v12);
        }
      }

      v130 = [obj countByEnumeratingWithState:&v160 objects:v178 count:16];
    }

    while (v130);
  }

  v17 = ne_log_obj();
  v18 = selfCopy;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v110 = objc_opt_class();
    *buf = 138412546;
    v169 = v110;
    v170 = 2112;
    v171 = v6;
    v111 = v110;
    _os_log_debug_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEBUG, "%@ updatePerAppMappingRules appIDsByPerAppUUID %@", buf, 0x16u);
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  currentConfigurations = [(NEProfileIngestion *)selfCopy currentConfigurations];
  v19 = [currentConfigurations countByEnumeratingWithState:&v152 objects:v176 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v153;
    *&v20 = 138413058;
    v112 = v20;
    v113 = *v153;
    do
    {
      v23 = 0;
      v115 = v21;
      do
      {
        if (*v153 != v22)
        {
          objc_enumerationMutation(currentConfigurations);
        }

        v24 = *(*(&v152 + 1) + 8 * v23);
        externalIdentifier = [v24 externalIdentifier];
        if (externalIdentifier)
        {
          array = [MEMORY[0x1E695DF70] array];
          appVPN = [v24 appVPN];

          v119 = v24;
          if (appVPN)
          {
            appVPN2 = [v24 appVPN];
            v27 = @"VPNUUID";
            v125 = 0;
            v128 = @"VPNUUID";
            v28 = appVPN2;
          }

          else
          {
            relay = [v24 relay];

            if (relay)
            {
              relay2 = [v24 relay];
              appVPN2 = [relay2 perApp];

              v31 = @"RelayUUID";
              v28 = 0;
              v125 = appVPN2;
              v128 = @"RelayUUID";
            }

            else
            {
              v32 = v23;
              contentFilter = [v24 contentFilter];
              perApp = [contentFilter perApp];
              if (perApp)
              {
                [v24 contentFilter];
              }

              else
              {
                [v24 dnsProxy];
              }
              v35 = ;
              appVPN2 = [v35 perApp];

              contentFilter2 = [v24 contentFilter];
              perApp2 = [contentFilter2 perApp];
              v38 = @"ContentFilterUUID";
              if (!perApp2)
              {
                v38 = @"DNSProxyUUID";
              }

              v128 = v38;

              v28 = 0;
              v125 = appVPN2;
              v18 = selfCopy;
              v23 = v32;
            }
          }

          copyAppRuleIDs = [(__CFString *)appVPN2 copyAppRuleIDs];
          if (copyAppRuleIDs)
          {
            v40 = copyAppRuleIDs;
            v121 = v23;
            v41 = ne_log_obj();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v63 = objc_opt_class();
              v64 = v63;
              name = [v119 name];
              *buf = v112;
              v169 = v63;
              v170 = 2112;
              v171 = name;
              v172 = 2112;
              v173 = externalIdentifier;
              v174 = 2112;
              v175 = v40;
              _os_log_debug_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_DEBUG, "%@ updatePerAppMappingRules config %@ perAppUUID %@, existing appRules %@", buf, 0x2Au);
            }

            v150 = 0u;
            v151 = 0u;
            v148 = 0u;
            v149 = 0u;
            v42 = v40;
            v43 = [(__CFString *)v42 countByEnumeratingWithState:&v148 objects:v167 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v149;
              do
              {
                v46 = 0;
                do
                {
                  if (*v149 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = *(*(&v148 + 1) + 8 * v46);
                  v48 = v47;
                  if (!v18)
                  {

LABEL_49:
                    v50 = [obj objectForKey:v48];
                    if (([(NEProfileIngestion *)v18 matchConfigAppUUID:v50 configUUIDType:v128 configAppUUID:externalIdentifier]& 1) == 0)
                    {
                      [array addObject:v48];
                    }

                    goto LABEL_52;
                  }

                  if (isAutoCreatedRule__onceToken != -1)
                  {
                    dispatch_once(&isAutoCreatedRule__onceToken, &__block_literal_global_21845);
                  }

                  v49 = [isAutoCreatedRule__autoRuleIdentifiers containsObject:v48];

                  if ((v49 & 1) == 0)
                  {
                    goto LABEL_49;
                  }

LABEL_52:
                  ++v46;
                }

                while (v44 != v46);
                v51 = [(__CFString *)v42 countByEnumeratingWithState:&v148 objects:v167 count:16];
                v44 = v51;
              }

              while (v51);
            }

            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v52 = array;
            v53 = [v52 countByEnumeratingWithState:&v144 objects:v166 count:16];
            if (v53)
            {
              v54 = v53;
              v55 = 0;
              v56 = *v145;
              do
              {
                for (k = 0; k != v54; ++k)
                {
                  if (*v145 != v56)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v58 = *(*(&v144 + 1) + 8 * k);
                  v59 = ne_log_obj();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v169 = v58;
                    _os_log_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_DEFAULT, "updatePerAppMappingRules: Removing PerApp rule for identifier %@.", buf, 0xCu);
                  }

                  if (v28)
                  {
                    v60 = v28;
                  }

                  else
                  {
                    v60 = v125;
                  }

                  if (([(__CFString *)v60 removeAppRuleByID:v58]& 1) != 0)
                  {
                    v55 = 1;
                  }

                  else
                  {
                    v61 = ne_log_obj();
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v169 = v58;
                      _os_log_error_impl(&dword_1BA83C000, v61, OS_LOG_TYPE_ERROR, "updatePerAppMappingRules: Could not remove perApp rule for identifier %@.", buf, 0xCu);
                    }
                  }
                }

                v54 = [v52 countByEnumeratingWithState:&v144 objects:v166 count:16];
              }

              while (v54);

              v18 = selfCopy;
              if (v55)
              {
                [(NEProfileIngestion *)selfCopy saveConfiguration:v119 returnError:0];
              }
            }

            else
            {
            }

            v62 = v125;
            v22 = v113;
            v21 = v115;
            v23 = v121;
          }

          else
          {
            v42 = v28;
            v28 = v125;
            v62 = v128;
          }
        }

        ++v23;
      }

      while (v23 != v21);
      v21 = [currentConfigurations countByEnumeratingWithState:&v152 objects:v176 count:16];
    }

    while (v21);
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  currentConfigurations2 = [(NEProfileIngestion *)v18 currentConfigurations];
  v66 = [currentConfigurations2 countByEnumeratingWithState:&v140 objects:v165 count:16];
  if (!v66)
  {
    goto LABEL_132;
  }

  v67 = v66;
  v68 = *v141;
  v114 = *v141;
  do
  {
    v69 = 0;
    v116 = v67;
    do
    {
      if (*v141 != v68)
      {
        objc_enumerationMutation(currentConfigurations2);
      }

      v70 = *(*(&v140 + 1) + 8 * v69);
      externalIdentifier2 = [v70 externalIdentifier];
      if (externalIdentifier2)
      {
        v122 = [v6 objectForKeyedSubscript:externalIdentifier2];
        appVPN3 = [v70 appVPN];

        if (appVPN3)
        {
          appVPN4 = [v70 appVPN];
          v73 = @"VPNUUID";
          v74 = @"VPNUUID";
        }

        else
        {
          appVPN4 = 0;
          v73 = 0;
        }

        contentFilter3 = [v70 contentFilter];

        if (contentFilter3)
        {
          contentFilter4 = [v70 contentFilter];
          perApp3 = [contentFilter4 perApp];

          if (!perApp3)
          {
            v78 = objc_alloc_init(NEPerApp);
            contentFilter5 = [v70 contentFilter];
            [contentFilter5 setPerApp:v78];
          }

          v80 = v70;
          contentFilter6 = [v70 contentFilter];
          v82 = @"ContentFilterUUID";
          goto LABEL_102;
        }

        dnsProxy = [v70 dnsProxy];

        if (dnsProxy)
        {
          dnsProxy2 = [v70 dnsProxy];
          perApp4 = [dnsProxy2 perApp];

          if (!perApp4)
          {
            v86 = objc_alloc_init(NEPerApp);
            dnsProxy3 = [v70 dnsProxy];
            [dnsProxy3 setPerApp:v86];
          }

          v80 = v70;
          contentFilter6 = [v70 dnsProxy];
          v82 = @"DNSProxyUUID";
          goto LABEL_102;
        }

        relay3 = [v70 relay];

        if (relay3)
        {
          relay4 = [v70 relay];
          perApp5 = [relay4 perApp];

          if (!perApp5)
          {
            v91 = objc_alloc_init(NEPerApp);
            relay5 = [v70 relay];
            [relay5 setPerApp:v91];
          }

          v80 = v70;
          contentFilter6 = [v70 relay];
          v82 = @"RelayUUID";
LABEL_102:
          perApp6 = [contentFilter6 perApp];

          v94 = v82;
          v73 = v94;
          v70 = v80;
        }

        else
        {
          perApp6 = 0;
        }

        if (appVPN4 | perApp6)
        {
          v120 = v69;
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v95 = v122;
          v96 = [v95 countByEnumeratingWithState:&v136 objects:v164 count:16];
          if (v96)
          {
            v97 = v96;
            v126 = perApp6;
            v129 = v70;
            v124 = 0;
            v98 = *v137;
            do
            {
              for (m = 0; m != v97; ++m)
              {
                if (*v137 != v98)
                {
                  objc_enumerationMutation(v95);
                }

                v100 = *(*(&v136 + 1) + 8 * m);
                v101 = [obj objectForKey:v100];
                if (([(NEProfileIngestion *)selfCopy matchConfigAppUUID:v101 configUUIDType:v73 configAppUUID:externalIdentifier2]& 1) != 0)
                {
                  v102 = appVPN4;
                  if (!appVPN4)
                  {
                    v102 = v126;
                  }

                  v103 = [v102 copyAppRuleByID:v100];
                  if (!v103)
                  {
                    v104 = ne_log_obj();
                    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v169 = v100;
                      _os_log_impl(&dword_1BA83C000, v104, OS_LOG_TYPE_DEFAULT, "updatePerAppMappingRules: Adding PerApp rule for identifier %@.", buf, 0xCu);
                    }

                    if ([v129 setPerAppRuleSettings:MEMORY[0x1E695E0F8] withAppIdentifier:v100])
                    {
                      v103 = 0;
                      v124 = 1;
                    }

                    else
                    {
                      v105 = ne_log_obj();
                      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v169 = v100;
                        _os_log_error_impl(&dword_1BA83C000, v105, OS_LOG_TYPE_ERROR, "updatePerAppMappingRules: Could not set PerApp rule for identifier %@", buf, 0xCu);
                      }

                      v103 = 0;
                    }
                  }
                }

                else
                {
                  v103 = ne_log_obj();
                  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v169 = v100;
                    _os_log_impl(&dword_1BA83C000, v103, OS_LOG_TYPE_DEFAULT, "updatePerAppMappingRules: Add for appID %@ failed - UUID/type mismatch ", buf, 0xCu);
                  }
                }
              }

              v97 = [v95 countByEnumeratingWithState:&v136 objects:v164 count:16];
            }

            while (v97);

            v68 = v114;
            v67 = v116;
            v69 = v120;
            perApp6 = v126;
            if (v124)
            {
              [(NEProfileIngestion *)selfCopy saveConfiguration:v129 returnError:0];
            }
          }

          else
          {

            v67 = v116;
            v69 = v120;
          }
        }
      }

      ++v69;
    }

    while (v69 != v67);
    v106 = [currentConfigurations2 countByEnumeratingWithState:&v140 objects:v165 count:16];
    v67 = v106;
  }

  while (v106);
LABEL_132:

  v107 = *MEMORY[0x1E69E9840];
  return 1;
}

- (uint64_t)matchConfigAppUUID:(void *)d configUUIDType:(void *)type configAppUUID:
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dCopy = d;
  typeCopy = type;
  if (self)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [v10 objectForKeyedSubscript:{v14, v18}];
          if ([v14 isEqual:dCopy] && objc_msgSend(v15, "isEqual:", typeCopy))
          {

            v11 = 1;
            goto LABEL_13;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

void __40__NEProfileIngestion_isAutoCreatedRule___block_invoke()
{
  v0 = isAutoCreatedRule__autoRuleIdentifiers;
  isAutoCreatedRule__autoRuleIdentifiers = &unk_1F38BA868;
}

- (void)enableDefaultService
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "TO-DO: enableDefaultService: activate last service after removing current service", v3, 2u);
  }
}

- (void)unlockConfigurations
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "TO-DO: unlockConfigurations", v3, 2u);
  }
}

- (BOOL)lockConfigurations
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "TO-DO: lockConfigurations", v4, 2u);
  }

  return 1;
}

- (BOOL)enableAlwaysOnVpn
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = objc_opt_class();
    v6 = v8;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@ enableAlwaysOnVpn", &v7, 0xCu);
  }

  result = [(NEProfileIngestion *)self enableAlwaysOnVpnInternal:?];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)enableAlwaysOnVpnInternal:(void *)internal
{
  v60 = *MEMORY[0x1E69E9840];
  if (!internal)
  {
    v35 = 0;
    goto LABEL_32;
  }

  internalCopy = internal;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v56 = objc_opt_class();
    v57 = 1024;
    LODWORD(v58[0]) = a2;
    v42 = v56;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@ enableAlwaysOnVpnInternal with sanityCheck %d", buf, 0x12u);
  }

  [internalCopy loadConfigurationsForceReloadFromDisk];
  currentConfigurations = [internalCopy currentConfigurations];

  if (currentConfigurations)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    currentConfigurations2 = [internalCopy currentConfigurations];
    v7 = [currentConfigurations2 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v7)
    {
      v8 = v7;
      v49 = a2;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = *v52;
      v50 = internalCopy;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v52 != v12)
          {
            objc_enumerationMutation(currentConfigurations2);
          }

          v14 = *(*(&v51 + 1) + 8 * i);
          alwaysOnVPN = [v14 alwaysOnVPN];

          if (alwaysOnVPN)
          {
            v16 = v14;

            payloadInfo = [v16 payloadInfo];
            isSetAside = [payloadInfo isSetAside];

            v19 = ne_log_obj();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = objc_opt_class();
              *buf = 138412546;
              v56 = v20;
              v57 = 2112;
              v58[0] = v16;
              v21 = v20;
              _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "%@ enableAlwaysOnVpnInternal: Always-On VPN configs found %@", buf, 0x16u);

              internalCopy = v50;
            }

            ++v11;
            v10 += isSetAside;

            v9 = v16;
          }
        }

        v8 = [currentConfigurations2 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v8);

      if (v11 >= 2)
      {
        if (v49)
        {
          v22 = ne_log_obj();
          v23 = v22;
          if (v11 == 2 && v10 == 1)
          {
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
LABEL_28:

              goto LABEL_30;
            }

            v24 = objc_opt_class();
            *buf = 138412802;
            v56 = v24;
            v57 = 1024;
            LODWORD(v58[0]) = 2;
            WORD2(v58[0]) = 1024;
            *(v58 + 6) = 1;
            v25 = v24;
            v26 = "%@ enableAlwaysOnVpnInternal: Sanity check OK, %d Always-On VPN configs found (%d set aside).";
            v27 = v23;
            v28 = 24;
LABEL_42:
            _os_log_debug_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);

            goto LABEL_28;
          }

          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
LABEL_38:

            v35 = 0;
            goto LABEL_31;
          }

          v48 = objc_opt_class();
          *buf = 138412802;
          v56 = v48;
          v57 = 1024;
          LODWORD(v58[0]) = v11;
          WORD2(v58[0]) = 1024;
          *(v58 + 6) = v10;
          v39 = v48;
          v40 = "%@ enableAlwaysOnVpnInternal: Sanity check failed. %d Always-On VPN configs found (%d set aside). Enabling will be disallowed.";
        }

        else
        {
          v23 = ne_log_obj();
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          v38 = objc_opt_class();
          *buf = 138412802;
          v56 = v38;
          v57 = 1024;
          LODWORD(v58[0]) = v11;
          WORD2(v58[0]) = 1024;
          *(v58 + 6) = v10;
          v39 = v38;
          v40 = "%@ enableAlwaysOnVpnInternal: %d Always-On VPN configs found (%d set aside), skip enabling new AOVpn configs.";
        }

        _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, v40, buf, 0x18u);

        goto LABEL_38;
      }

      if (v9)
      {
        alwaysOnVPN2 = [v9 alwaysOnVPN];
        isEnabled = [alwaysOnVPN2 isEnabled];

        v23 = ne_log_obj();
        v34 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
        if ((isEnabled & 1) == 0)
        {
          if (v34)
          {
            v45 = objc_opt_class();
            v46 = "";
            if (v49)
            {
              v46 = " anyway";
            }

            *buf = 138412546;
            v56 = v45;
            v57 = 2080;
            v58[0] = v46;
            v47 = v45;
            _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "%@ enableAlwaysOnVpnInternal: enable the only Always-On VPN config%s.", buf, 0x16u);
          }

          alwaysOnVPN3 = [v9 alwaysOnVPN];
          v35 = 1;
          [alwaysOnVPN3 setEnabled:1];

          [(NEProfileIngestion *)internalCopy saveConfiguration:v9 returnError:0];
          goto LABEL_31;
        }

        if (!v34)
        {
          goto LABEL_28;
        }

        v44 = objc_opt_class();
        *buf = 138412290;
        v56 = v44;
        v25 = v44;
        v26 = "%@ enableAlwaysOnVpnInternal: the only Always-On VPN config is already enabled.";
        v27 = v23;
        v28 = 12;
        goto LABEL_42;
      }
    }

    else
    {
    }

    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_30;
    }

    v43 = objc_opt_class();
    *buf = 138412290;
    v56 = v43;
    v30 = v43;
    v31 = "%@ enableAlwaysOnVpnInternal: no Always-On VPN configs to enable";
LABEL_40:
    _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, v31, buf, 0xCu);

    goto LABEL_30;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v29 = objc_opt_class();
    *buf = 138412290;
    v56 = v29;
    v30 = v29;
    v31 = "%@ enableAlwaysOnVpnInternal: empty configuration database";
    goto LABEL_40;
  }

LABEL_30:
  v35 = 1;
LABEL_31:

LABEL_32:
  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (id)copyManagedConfigurationIDs
{
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];

  if (currentConfigurations)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];
    v6 = [currentConfigurations2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(currentConfigurations2);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          payloadInfo = [v10 payloadInfo];
          payloadUUID = [payloadInfo payloadUUID];

          if (payloadUUID)
          {
            identifier = [v10 identifier];
            uUIDString = [identifier UUIDString];
            [array addObject:uUIDString];
          }
        }

        v7 = [currentConfigurations2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }

  v15 = [array copy];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)updateDefaultAfterDeletingConfiguration
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "To-DO: updateDefaultAfterDeletingConfiguration", v4, 2u);
  }

  return 1;
}

- (BOOL)updateDefaultAfterAddingConfiguration
{
  selfCopy = self;
  v66 = *MEMORY[0x1E69E9840];
  ingestedConfiguration = [(NEProfileIngestion *)self ingestedConfiguration];
  name = [ingestedConfiguration name];

  if (name)
  {
    v49 = name;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    currentConfigurations = [(NEProfileIngestion *)selfCopy currentConfigurations];
    v6 = [currentConfigurations countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v58;
      v51 = currentConfigurations;
      v52 = selfCopy;
      v50 = *v58;
LABEL_4:
      v9 = 0;
      v56 = v7;
      while (1)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(currentConfigurations);
        }

        v10 = *(*(&v57 + 1) + 8 * v9);
        payloadInfo = [v10 payloadInfo];
        if (!payloadInfo)
        {
          goto LABEL_13;
        }

        v12 = payloadInfo;
        payloadInfo2 = [v10 payloadInfo];
        if (![payloadInfo2 isSetAside])
        {
          goto LABEL_11;
        }

        identifier = [v10 identifier];
        ingestedConfiguration2 = [(NEProfileIngestion *)selfCopy ingestedConfiguration];
        identifier2 = [ingestedConfiguration2 identifier];
        if ([identifier isEqual:identifier2])
        {
          break;
        }

        payloadInfo3 = [v10 payloadInfo];
        [payloadInfo3 profileIdentifier];
        v17 = v53 = identifier;
        ingestedConfiguration3 = [(NEProfileIngestion *)selfCopy ingestedConfiguration];
        payloadInfo4 = [ingestedConfiguration3 payloadInfo];
        profileIdentifier = [payloadInfo4 profileIdentifier];
        v54 = [v17 isEqualToString:profileIdentifier];

        currentConfigurations = v51;
        v8 = v50;

        selfCopy = v52;
        v7 = v56;
        if (!v54)
        {
          goto LABEL_13;
        }

        ingestedConfiguration4 = [(NEProfileIngestion *)v52 ingestedConfiguration];
        name2 = [ingestedConfiguration4 name];
        identifier3 = [v10 identifier];
        uUIDString = [identifier3 UUIDString];
        v12 = [name2 stringByAppendingString:uUIDString];

        name3 = [v10 name];
        LOBYTE(identifier3) = [name3 isEqualToString:v12];

        if (identifier3)
        {
          v27 = v10;

          selfCopy = v52;
          if (!v27)
          {
            goto LABEL_25;
          }

          v30 = [v27 VPN];
          if (v30)
          {
            [v27 VPN];
          }

          else
          {
            [v27 appVPN];
          }
          v33 = ;

          ingestedConfiguration5 = [(NEProfileIngestion *)v52 ingestedConfiguration];
          v35 = [ingestedConfiguration5 VPN];
          ingestedConfiguration6 = [(NEProfileIngestion *)v52 ingestedConfiguration];
          v37 = ingestedConfiguration6;
          if (v35)
          {
            [ingestedConfiguration6 VPN];
          }

          else
          {
            [ingestedConfiguration6 appVPN];
          }
          v38 = ;

          if (v33 && v38 && (v39 = objc_opt_class(), [v39 isEqual:objc_opt_class()]))
          {
            v40 = ne_log_obj();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              ingestedConfiguration7 = [(NEProfileIngestion *)v52 ingestedConfiguration];
              name4 = [ingestedConfiguration7 name];
              isOnDemandEnabled = [v33 isOnDemandEnabled];
              *buf = 138412546;
              v62 = name4;
              v63 = 1024;
              v64 = isOnDemandEnabled;
              _os_log_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_DEFAULT, "%@: Using onDemandEnabled setting from set-aside configuration (%d)", buf, 0x12u);
            }

            [v38 setOnDemandEnabled:{objc_msgSend(v33, "isOnDemandEnabled")}];
          }

          else
          {
            v44 = ne_log_obj();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              ingestedConfiguration8 = [(NEProfileIngestion *)v52 ingestedConfiguration];
              name5 = [ingestedConfiguration8 name];
              *buf = 138412290;
              v62 = name5;
              _os_log_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_DEFAULT, "%@: VPN type mis-match with set-aside configuration", buf, 0xCu);
            }
          }

          goto LABEL_41;
        }

        currentConfigurations = v51;
        selfCopy = v52;
        v8 = v50;
LABEL_12:

LABEL_13:
        if (v7 == ++v9)
        {
          v26 = [currentConfigurations countByEnumeratingWithState:&v57 objects:v65 count:16];
          v7 = v26;
          if (v26)
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }
      }

      v7 = v56;
LABEL_11:

      goto LABEL_12;
    }

LABEL_19:

LABEL_25:
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      ingestedConfiguration9 = [(NEProfileIngestion *)selfCopy ingestedConfiguration];
      name6 = [ingestedConfiguration9 name];
      *buf = 138412290;
      v62 = name6;
      _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEFAULT, "%@: No set-aside configuration", buf, 0xCu);
    }

LABEL_41:
    name = v49;
  }

  else
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      ingestedConfiguration10 = [(NEProfileIngestion *)selfCopy ingestedConfiguration];
      identifier4 = [ingestedConfiguration10 identifier];
      *buf = 138412290;
      v62 = identifier4;
      _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "The ingested configuration (%@) has no name, cannot update from the set aside version of the configuration", buf, 0xCu);
    }
  }

  v47 = *MEMORY[0x1E69E9840];
  return name != 0;
}

- (BOOL)removeIngestedConfiguration
{
  v12 = *MEMORY[0x1E69E9840];
  ingestedConfiguration = [(NEProfileIngestion *)self ingestedConfiguration];

  if (ingestedConfiguration)
  {
    ingestedConfiguration2 = [(NEProfileIngestion *)self ingestedConfiguration];
    v5 = [(NEProfileIngestion *)self removeConfiguration:ingestedConfiguration2];

    if (!v5)
    {
      result = 0;
      goto LABEL_9;
    }

    [(NEProfileIngestion *)self setIngestedConfiguration:0];
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = objc_opt_class();
      v9 = v11;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ removeIngestedConfiguration skipped: current configuration does not exist", &v10, 0xCu);
    }
  }

  result = 1;
LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)getCertificatesForConfigurationWithIdentifier:(id)identifier
{
  v3 = [(NEProfileIngestion *)self findConfigurationByConfigurationID:identifier];
  getCertificates = [v3 getCertificates];

  return getCertificates;
}

- (BOOL)removeConfigurationWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NEProfileIngestion *)self findConfigurationByConfigurationID:identifierCopy];
  if (v5)
  {
    [(NEProfileIngestion *)self removeConfiguration:v5];
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412546;
      v11 = objc_opt_class();
      v12 = 2112;
      v13 = identifierCopy;
      v9 = v11;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ removeConfigurationWithIdentifier failed: no configuration found with id %@", &v10, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)removeConfiguration:(id)configuration
{
  v53 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  payloadInfo = [configurationCopy payloadInfo];
  isSetAside = [payloadInfo isSetAside];

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if (configurationCopy)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v30 = objc_opt_class();
      name = [configurationCopy name];
      *buf = 138412546;
      v48 = v30;
      v49 = 2112;
      v50 = name;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ removeConfiguration: '%@'", buf, 0x16u);
    }

    manager = [(NEProfileIngestion *)self manager];
    v8 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __42__NEProfileIngestion_removeConfiguration___block_invoke;
    v40[3] = &unk_1E7F0AD00;
    v10 = configurationCopy;
    v41 = v10;
    v42 = &v43;
    [manager removeConfiguration:v10 withCompletionQueue:v8 handler:v40];

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v32 = objc_opt_class();
      name2 = [v10 name];
      v34 = *(v44 + 24);
      *buf = 138412802;
      v48 = v32;
      v49 = 2112;
      v50 = name2;
      v51 = 1024;
      v52 = v34;
      _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "%@ removeConfiguration '%@', ok = %d", buf, 0x1Cu);
    }

    currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];
    v13 = currentConfigurations == 0;

    if (!v13)
    {
      for (i = 0; ; ++i)
      {
        currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];
        v16 = i < [currentConfigurations2 count];

        if (!v16)
        {
          break;
        }

        currentConfigurations3 = [(NEProfileIngestion *)self currentConfigurations];
        v18 = [currentConfigurations3 objectAtIndex:i];

        identifier = [v18 identifier];
        uUIDString = [identifier UUIDString];
        identifier2 = [v10 identifier];
        uUIDString2 = [identifier2 UUIDString];
        v23 = [uUIDString isEqualToString:uUIDString2];

        if (v23)
        {
          currentConfigurations4 = [(NEProfileIngestion *)self currentConfigurations];
          [currentConfigurations4 removeObjectAtIndex:i];

          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v37 = objc_opt_class();
            name3 = [v10 name];
            *buf = 138412546;
            v48 = v37;
            v49 = 2112;
            v50 = name3;
            _os_log_debug_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEBUG, "%@ removeConfiguration '%@' from cached list", buf, 0x16u);
          }

          break;
        }
      }
    }

    if (isSetAside)
    {
      [(NEProfileIngestion *)self enableAlwaysOnVpnInternal:?];
    }

    v25 = *(v44 + 24);
    v24 = v41;
  }

  else
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v35 = objc_opt_class();
      *buf = 138412290;
      v48 = v35;
      v36 = v35;
      _os_log_debug_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEBUG, "%@ removeConfiguration skipped: empty configuration.", buf, 0xCu);
    }

    v25 = 1;
  }

  _Block_object_dispose(&v43, 8);
  v28 = *MEMORY[0x1E69E9840];
  return v25 & 1;
}

void __42__NEProfileIngestion_removeConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) name];
      v7 = convert_error_to_string(v3);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "Error occurred when removing configurations '%@': %@", &v8, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveIngestedConfiguration:(id *)configuration
{
  ingestedConfiguration = [(NEProfileIngestion *)self ingestedConfiguration];
  LOBYTE(configuration) = [(NEProfileIngestion *)self saveConfiguration:ingestedConfiguration returnError:configuration];

  return configuration;
}

- (BOOL)saveIngestedConfiguration
{
  selfCopy = self;
  ingestedConfiguration = [(NEProfileIngestion *)self ingestedConfiguration];
  LOBYTE(selfCopy) = [(NEProfileIngestion *)selfCopy saveConfiguration:ingestedConfiguration returnError:0];

  return selfCopy;
}

- (BOOL)createConfigurationFromPayload:(id)payload payloadType:(id)type
{
  v233 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  typeCopy = type;
  payloadAtom = [payloadCopy payloadAtom];
  v9 = [payloadAtom objectForKeyedSubscript:@"UserDefinedName"];
  v10 = [payloadAtom objectForKeyedSubscript:@"VPNSubType"];
  if (!v9)
  {
    v11 = [payloadAtom objectForKeyedSubscript:@"PayloadDisplayName"];
    if (!v11)
    {
      if (([(NEConfiguration *)typeCopy isEqualToString:@"com.apple.webcontent-filter"]& 1) != 0)
      {
        v12 = kNECFPluginBundleIDKey;
      }

      else
      {
        v13 = [(NEConfiguration *)typeCopy isEqualToString:@"com.apple.dnsProxy.managed"];
        v12 = kNEVPNTypeKey;
        if (v13)
        {
          v12 = &kNEDNSProxyAppBundleIdentifierKey;
        }
      }

      v11 = [payloadAtom objectForKeyedSubscript:*v12];
    }

    v9 = v11;
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v228 = typeCopy;
    v229 = 2112;
    v230 = v9;
    _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "createConfigurationFromPayload type %@, name '%@'", buf, 0x16u);
  }

  v15 = [(NEProfileIngestion *)self findConfigurationByName:v9];
  selfCopy = self;
  if (!v15)
  {
    goto LABEL_186;
  }

  v189 = payloadCopy;
  v16 = v9;
  v17 = v16;
  v191 = v15;
  v194 = v10;
  if (self)
  {
    v18 = [(__CFString *)v16 componentsSeparatedByString:@" "];
    v19 = [v18 count];
    v20 = v19 - 1;
    v197 = v18;
    if (v19 > 1)
    {
      v24 = typeCopy;
      v25 = [v18 objectAtIndex:v20];
      v26 = v18;
      v27 = [v25 length];
      v28 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789 "];
      v29 = [v25 stringByTrimmingCharactersInSet:v28];

      if ([v29 length])
      {
        v22 = v17;
        intValue = 0;
      }

      else
      {
        v30 = [v26 objectAtIndex:v20];
        intValue = [v30 intValue];

        v22 = [(__CFString *)v17 substringToIndex:[(__CFString *)v17 length]- v27];
      }

      v21 = v24;
      self = selfCopy;
    }

    else
    {
      v21 = typeCopy;
      v22 = v17;
      intValue = 0;
    }

    currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];

    if (currentConfigurations)
    {
      selfCopy2 = self;
      v33 = 0;
      v34 = intValue + 1;
      do
      {
        v35 = [(__CFString *)v22 stringByAppendingFormat:@" %ld", v34];

        v36 = [(NEProfileIngestion *)selfCopy2 findConfigurationByName:v35];

        ++v34;
        v33 = v35;
      }

      while (v36);
    }

    else
    {
      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_ERROR, "resolveConfigurationNameConflict system configurations disappeared", buf, 2u);
      }

      v35 = 0;
    }

    v9 = v35;
  }

  else
  {
    v21 = typeCopy;
    v9 = 0;
  }

  v38 = ne_log_obj();
  payloadCopy = v189;
  v15 = v191;
  self = selfCopy;
  typeCopy = v21;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v66 = objc_opt_class();
    *buf = 138412802;
    v228 = v66;
    v229 = 2112;
    v230 = v17;
    v231 = 2112;
    v232 = v9;
    v67 = v66;
    _os_log_debug_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_DEBUG, "%@ createConfigurationFromPayload: rename %@ to %@", buf, 0x20u);
  }

  v10 = v194;
  if (v9)
  {
LABEL_186:
    if (isa_nsstring(v10) && [NETunnelProviderProtocol isLegacyPluginType:v10])
    {
      manager = [(NEProfileIngestion *)self manager];
      v220[0] = MEMORY[0x1E69E9820];
      v220[1] = 3221225472;
      v220[2] = __65__NEProfileIngestion_createConfigurationFromPayload_payloadType___block_invoke;
      v220[3] = &unk_1E7F0A6F0;
      v221 = payloadCopy;
      [manager fetchUpgradeInfoForPluginType:v10 completionQueue:MEMORY[0x1E69E96A0] handler:v220];
    }

    if ([(NEConfiguration *)typeCopy isEqualToString:@"com.apple.vpn.managed"])
    {
      v40 = [payloadAtom objectForKeyedSubscript:@"VPNType"];
      v41 = [v40 isEqualToString:@"PPTP"];

      if (v41)
      {
        v42 = ne_log_obj();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_DEBUG, "ingesting PPTP not supported", buf, 2u);
        }

        [(NEProfileIngestion *)self setIngestedConfiguration:0];
        v43 = 1;
LABEL_58:

        goto LABEL_59;
      }

      v56 = [[NEConfiguration alloc] initWithVPNPayload:payloadCopy configurationName:v9 grade:1];
      goto LABEL_55;
    }

    if ([(NEConfiguration *)typeCopy isEqualToString:@"com.apple.vpn.managed.alwayson"])
    {
      currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];

      if (currentConfigurations2)
      {
        v192 = v15;
        v195 = v10;
        v187 = typeCopy;
        v45 = payloadAtom;
        v218 = 0u;
        v219 = 0u;
        v216 = 0u;
        v217 = 0u;
        currentConfigurations3 = [(NEProfileIngestion *)self currentConfigurations];
        v47 = [currentConfigurations3 countByEnumeratingWithState:&v216 objects:v226 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v217;
          while (2)
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v217 != v49)
              {
                objc_enumerationMutation(currentConfigurations3);
              }

              v51 = *(*(&v216 + 1) + 8 * i);
              alwaysOnVPN = [v51 alwaysOnVPN];
              if (alwaysOnVPN)
              {
                v53 = alwaysOnVPN;
                payloadInfo = [v51 payloadInfo];
                isSetAside = [payloadInfo isSetAside];

                if ((isSetAside & 1) == 0)
                {
                  v65 = ne_log_obj();
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    v113 = objc_opt_class();
                    *buf = 138412290;
                    v228 = v113;
                    v114 = v113;
                    _os_log_error_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_ERROR, "%@ createConfigurationFromPayload: installations of multiple Always-On VPN configs are not allowed.", buf, 0xCu);
                  }

                  v43 = 0;
                  payloadAtom = v45;
                  v15 = v192;
                  v10 = v195;
                  typeCopy = v187;
                  goto LABEL_58;
                }
              }
            }

            v48 = [currentConfigurations3 countByEnumeratingWithState:&v216 objects:v226 count:16];
            if (v48)
            {
              continue;
            }

            break;
          }
        }

        payloadAtom = v45;
        v15 = v192;
        v10 = v195;
        self = selfCopy;
        typeCopy = v187;
      }

      v56 = [[NEConfiguration alloc] initWithAlwaysOnVPNPayload:payloadCopy configurationName:v9 grade:1];
      goto LABEL_55;
    }

    if ([(NEConfiguration *)typeCopy isEqualToString:@"com.apple.vpn.managed.applayer"])
    {
      v56 = [[NEConfiguration alloc] initWithAppLayerVPNPayload:payloadCopy configurationName:v9 grade:1];
LABEL_55:
      v57 = v56;
      [(NEProfileIngestion *)self setIngestedConfiguration:v56];
LABEL_56:

      ingestedConfiguration = [(NEProfileIngestion *)self ingestedConfiguration];
      v43 = ingestedConfiguration != 0;

      v59 = ne_log_obj();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v68 = objc_opt_class();
        v69 = "no";
        if (ingestedConfiguration)
        {
          v69 = "yes";
        }

        *buf = 138412546;
        v228 = v68;
        v229 = 2080;
        v230 = v69;
        v70 = v68;
        _os_log_debug_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_DEBUG, "%@ createConfigurationFromPayload: configuration created (%s)", buf, 0x16u);
      }

      goto LABEL_58;
    }

    if (![(NEConfiguration *)typeCopy isEqualToString:@"com.apple.webcontent-filter"])
    {
      if ([(NEConfiguration *)typeCopy isEqualToString:@"com.apple.networkusagerules"])
      {
        v56 = [[NEConfiguration alloc] initWithPathControllerPayload:payloadCopy configurationName:v9 grade:1];
        goto LABEL_55;
      }

      if (![(NEConfiguration *)typeCopy isEqualToString:@"com.apple.dnsProxy.managed"])
      {
        if ([(NEConfiguration *)typeCopy isEqualToString:@"com.apple.dnsSettings.managed"])
        {
          v56 = [[NEConfiguration alloc] initWithDNSSettingsPayload:payloadCopy configurationName:v9 grade:2];
        }

        else
        {
          if (![(NEConfiguration *)typeCopy isEqualToString:@"com.apple.relay.managed"])
          {
            v115 = ne_log_obj();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v228 = typeCopy;
              _os_log_error_impl(&dword_1BA83C000, v115, OS_LOG_TYPE_ERROR, "NEProfileIngestion createConfigurationFromPayload: unsupported payload type '%@'", buf, 0xCu);
            }

            v43 = 0;
            goto LABEL_58;
          }

          v56 = [[NEConfiguration alloc] initWithRelayPayload:payloadCopy configurationName:v9 grade:1];
        }

        goto LABEL_55;
      }

      v193 = v15;
      v196 = v10;
      v186 = payloadAtom;
      v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
      currentConfigurations4 = [(NEProfileIngestion *)self currentConfigurations];

      v185 = v9;
      if (currentConfigurations4)
      {
        v82 = typeCopy;
        v206 = 0u;
        v207 = 0u;
        v204 = 0u;
        v205 = 0u;
        currentConfigurations5 = [(NEProfileIngestion *)self currentConfigurations];
        v84 = [currentConfigurations5 countByEnumeratingWithState:&v204 objects:v223 count:16];
        if (v84)
        {
          v85 = v84;
          v86 = *v205;
          do
          {
            for (j = 0; j != v85; ++j)
            {
              if (*v205 != v86)
              {
                objc_enumerationMutation(currentConfigurations5);
              }

              v88 = *(*(&v204 + 1) + 8 * j);
              dnsProxy = [v88 dnsProxy];
              if (dnsProxy)
              {
                v90 = dnsProxy;
                payloadInfo2 = [v88 payloadInfo];

                if (!payloadInfo2)
                {
                  [v57 addObject:v88];
                }
              }
            }

            v85 = [currentConfigurations5 countByEnumeratingWithState:&v204 objects:v223 count:16];
          }

          while (v85);
        }

        typeCopy = v82;
        self = selfCopy;
        v9 = v185;
      }

      v92 = [NEConfiguration initWithDNSProxyPayload:payloadCopy configurationName:v9 grade:?];
      [(NEProfileIngestion *)self setIngestedConfiguration:v92];

      ingestedConfiguration2 = [(NEProfileIngestion *)self ingestedConfiguration];

      if (ingestedConfiguration2)
      {
        v188 = typeCopy;
        v190 = payloadCopy;
        ingestedConfiguration3 = [(NEProfileIngestion *)self ingestedConfiguration];
        [ingestedConfiguration3 setName:v9];

        v202 = 0u;
        v203 = 0u;
        v200 = 0u;
        v201 = 0u;
        v57 = v57;
        v95 = [v57 countByEnumeratingWithState:&v200 objects:v222 count:16];
        if (v95)
        {
          v96 = v95;
          v97 = *v201;
          do
          {
            for (k = 0; k != v96; ++k)
            {
              if (*v201 != v97)
              {
                objc_enumerationMutation(v57);
              }

              v99 = *(*(&v200 + 1) + 8 * k);
              v100 = ne_log_obj();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
              {
                v101 = objc_opt_class();
                v102 = v101;
                [v99 identifier];
                v104 = v103 = v57;
                *buf = 138412546;
                v228 = v101;
                v229 = 2112;
                v230 = v104;
                _os_log_impl(&dword_1BA83C000, v100, OS_LOG_TYPE_INFO, "%@ createConfigurationFromPayload: Removing overridden DNS proxy configuration %@.", buf, 0x16u);

                v57 = v103;
                self = selfCopy;
              }

              [(NEProfileIngestion *)self removeConfiguration:v99];
            }

            v96 = [v57 countByEnumeratingWithState:&v200 objects:v222 count:16];
          }

          while (v96);
        }

        goto LABEL_152;
      }

LABEL_154:
      payloadAtom = v186;
      goto LABEL_155;
    }

    v188 = typeCopy;
    v62 = [payloadAtom objectForKeyedSubscript:@"FilterURLs"];
    if (isa_nsnumber(v62))
    {
      v63 = [payloadAtom objectForKeyedSubscript:@"FilterURLs"];
      v64 = [v63 BOOLValue] ^ 1;
    }

    else
    {
      v64 = 1;
    }

    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v190 = payloadCopy;
    v193 = v15;
    v186 = payloadAtom;
    v196 = v10;
    if (v64)
    {
      currentConfigurations6 = [(NEProfileIngestion *)self currentConfigurations];

      if (currentConfigurations6)
      {
        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        currentConfigurations7 = [(NEProfileIngestion *)self currentConfigurations];
        v73 = [currentConfigurations7 countByEnumeratingWithState:&v212 objects:v225 count:16];
        if (v73)
        {
          v74 = v73;
          v75 = *v213;
          do
          {
            for (m = 0; m != v74; ++m)
            {
              if (*v213 != v75)
              {
                objc_enumerationMutation(currentConfigurations7);
              }

              v77 = *(*(&v212 + 1) + 8 * m);
              contentFilter = [v77 contentFilter];

              if (contentFilter)
              {
                payloadInfo3 = [v77 payloadInfo];

                if (!payloadInfo3)
                {
                  [v57 addObject:v77];
                }
              }
            }

            v74 = [currentConfigurations7 countByEnumeratingWithState:&v212 objects:v225 count:16];
          }

          while (v74);
        }

        self = selfCopy;
      }

      v80 = [[NEConfiguration alloc] initWithContentFilterPayload:payloadCopy configurationName:v9 grade:1];
      goto LABEL_142;
    }

    v105 = [NEConfiguration alloc];
    v106 = payloadCopy;
    v198 = v9;
    if (!v105)
    {
      v80 = 0;
      goto LABEL_141;
    }

    v184 = v106;
    payloadAtom2 = [v106 payloadAtom];
    v108 = ne_log_large_obj();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
    {
      v142 = objc_opt_class();
      *buf = 138412290;
      v228 = v142;
      v143 = v142;
      _os_log_debug_impl(&dword_1BA83C000, v108, OS_LOG_TYPE_DEBUG, "%@ initWithURLFilterPayload", buf, 0xCu);
    }

    v109 = [payloadAtom2 objectForKeyedSubscript:@"FilterURLs"];
    v110 = isa_nsnumber(v109);

    if ((v110 & 1) == 0)
    {
      v112 = ne_log_obj();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v228 = v105;
        _os_log_error_impl(&dword_1BA83C000, v112, OS_LOG_TYPE_ERROR, "%@ initWithURLFilterPayload: not URLFilter config", buf, 0xCu);
      }

      v80 = 0;
      goto LABEL_139;
    }

    if (!payloadAtom2)
    {
      goto LABEL_136;
    }

    v111 = [payloadAtom2 objectForKeyedSubscript:@"FilterType"];
    if (v111)
    {
      v109 = [payloadAtom2 objectForKeyedSubscript:@"FilterType"];
      if (([@"Plugin" isEqualToString:v109] & 1) == 0)
      {

LABEL_136:
        v129 = ne_log_obj();
        if (!os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_137;
        }

        v178 = objc_opt_class();
        *buf = 138412290;
        v228 = v178;
        v146 = v178;
        v147 = "%@ initWithURLFilterPayload: empty payload atom or plugin type, or wrong filter type";
LABEL_181:
        _os_log_error_impl(&dword_1BA83C000, v129, OS_LOG_TYPE_ERROR, v147, buf, 0xCu);

        goto LABEL_137;
      }
    }

    v116 = [payloadAtom2 objectForKeyedSubscript:@"PluginBundleID"];

    if (v111)
    {
    }

    if (!v116)
    {
      goto LABEL_136;
    }

    v117 = [(NEConfiguration *)v105 initWithName:v198 grade:1];
    if (!v117)
    {
      v105 = ne_log_obj();
      if (!os_log_type_enabled(&v105->super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_138;
      }

      v144 = objc_opt_class();
      *buf = 138412290;
      v228 = v144;
      v129 = v144;
      _os_log_error_impl(&dword_1BA83C000, &v105->super, OS_LOG_TYPE_ERROR, "%@ initWithURLFilterPayload init failed", buf, 0xCu);
LABEL_137:

LABEL_138:
      v80 = 0;
      self = selfCopy;
LABEL_139:
      v106 = v184;
LABEL_140:

LABEL_141:
      payloadCopy = v190;
LABEL_142:
      [(NEProfileIngestion *)self setIngestedConfiguration:v80];

      ingestedConfiguration4 = [(NEProfileIngestion *)self ingestedConfiguration];

      if (ingestedConfiguration4)
      {
        ingestedConfiguration5 = [(NEProfileIngestion *)self ingestedConfiguration];
        v185 = v9;
        [ingestedConfiguration5 setName:v9];

        v210 = 0u;
        v211 = 0u;
        v208 = 0u;
        v209 = 0u;
        v57 = v57;
        v132 = [v57 countByEnumeratingWithState:&v208 objects:v224 count:16];
        if (v132)
        {
          v133 = v132;
          v134 = *v209;
          do
          {
            for (n = 0; n != v133; ++n)
            {
              if (*v209 != v134)
              {
                objc_enumerationMutation(v57);
              }

              v136 = *(*(&v208 + 1) + 8 * n);
              v137 = ne_log_obj();
              if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
              {
                v138 = objc_opt_class();
                v139 = v138;
                [v136 identifier];
                v141 = v140 = v57;
                *buf = 138412546;
                v228 = v138;
                v229 = 2112;
                v230 = v141;
                _os_log_impl(&dword_1BA83C000, v137, OS_LOG_TYPE_DEFAULT, "%@ createConfigurationFromPayload: Removing overridden content filter configuration %@.", buf, 0x16u);

                v57 = v140;
                self = selfCopy;
              }

              [(NEProfileIngestion *)self removeConfiguration:v136];
            }

            v133 = [v57 countByEnumeratingWithState:&v208 objects:v224 count:16];
          }

          while (v133);
        }

LABEL_152:

        typeCopy = v188;
        payloadCopy = v190;
        v9 = v185;
        payloadAtom = v186;
LABEL_155:
        v15 = v193;
        v10 = v196;
        goto LABEL_56;
      }

      typeCopy = v188;
      goto LABEL_154;
    }

    v105 = v117;
    v118 = objc_alloc_init(NEURLFilterConfiguration);
    [(NEConfiguration *)v105 setUrlFilter:v118];

    urlFilter = [(NEConfiguration *)v105 urlFilter];

    if (!urlFilter)
    {
      v129 = ne_log_obj();
      if (!os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_137;
      }

      v145 = objc_opt_class();
      *buf = 138412290;
      v228 = v145;
      v146 = v145;
      v147 = "%@ initWithURLFilterPayload failed, can't create URL filter config";
      goto LABEL_181;
    }

    v120 = [payloadAtom2 objectForKeyedSubscript:@"PluginBundleID"];
    urlFilter2 = [(NEConfiguration *)v105 urlFilter];
    [urlFilter2 setAppBundleIdentifier:v120];

    urlFilter3 = [(NEConfiguration *)v105 urlFilter];
    appBundleIdentifier = [urlFilter3 appBundleIdentifier];
    [(NEConfiguration *)v105 setApplication:appBundleIdentifier];

    urlFilter4 = [(NEConfiguration *)v105 urlFilter];
    appBundleIdentifier2 = [urlFilter4 appBundleIdentifier];
    [(NEConfiguration *)v105 setApplicationIdentifier:appBundleIdentifier2];

    v126 = [payloadAtom2 objectForKeyedSubscript:@"Enabled"];
    if (isa_nsnumber(v126))
    {
      v127 = [payloadAtom2 objectForKeyedSubscript:@"Enabled"];
      bOOLValue = [v127 BOOLValue];

      if (!bOOLValue)
      {
LABEL_162:
        v149 = [payloadAtom2 objectForKeyedSubscript:@"URLFilterParameters"];
        if ((isa_nsdictionary(v149) & 1) == 0)
        {
          v177 = ne_log_obj();
          if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
          {
            v182 = objc_opt_class();
            *buf = 138412546;
            v228 = v182;
            v229 = 2112;
            v230 = @"URLFilterParameters";
            v183 = v182;
            _os_log_error_impl(&dword_1BA83C000, v177, OS_LOG_TYPE_ERROR, "%@ initWithContentFilterPayload failed, missing %@ dictionary", buf, 0x16u);
          }

          v80 = 0;
          goto LABEL_179;
        }

        urlFilter5 = [(NEConfiguration *)v105 urlFilter];
        [urlFilter5 setShouldFailClosed:0];

        urlFilter13 = [v149 objectForKeyedSubscript:@"URLFilterFailClosed"];
        if (isa_nsnumber(urlFilter13))
        {
          v152 = [v149 objectForKeyedSubscript:@"URLFilterFailClosed"];
          bOOLValue2 = [v152 BOOLValue];

          if (!bOOLValue2)
          {
LABEL_167:
            v154 = [v149 objectForKeyedSubscript:@"URLFilterControlProviderDesignatedRequirement"];
            urlFilter6 = [(NEConfiguration *)v105 urlFilter];
            [urlFilter6 setControlProviderDesignatedRequirement:v154];

            v156 = [v149 objectForKeyedSubscript:@"URLFilterControlProviderBundleIdentifier"];
            urlFilter7 = [(NEConfiguration *)v105 urlFilter];
            [urlFilter7 setControlProviderBundleIdentifier:v156];

            v158 = [v149 objectForKeyedSubscript:@"URLPrefilterFetchFrequency"];
            LODWORD(urlFilter7) = isa_nsnumber(v158);

            if (urlFilter7)
            {
              v159 = [v149 objectForKeyedSubscript:@"URLPrefilterFetchFrequency"];
              intValue2 = [v159 intValue];
              urlFilter8 = [(NEConfiguration *)v105 urlFilter];
              [urlFilter8 setPrefilterFetchInterval:intValue2];
            }

            v162 = [v149 objectForKeyedSubscript:@"PIRServerURL"];
            v163 = isa_nsstring(v162);

            if (v163)
            {
              v164 = objc_alloc(MEMORY[0x1E695DFF8]);
              v165 = [v149 objectForKeyedSubscript:@"PIRServerURL"];
              v166 = [v164 initWithString:v165];
              urlFilter9 = [(NEConfiguration *)v105 urlFilter];
              [urlFilter9 setPirServerURL:v166];
            }

            v168 = [v149 objectForKeyedSubscript:@"PIRPrivacyPassIssuerURL"];
            v169 = isa_nsstring(v168);

            if (v169)
            {
              v170 = objc_alloc(MEMORY[0x1E695DFF8]);
              v171 = [v149 objectForKeyedSubscript:@"PIRPrivacyPassIssuerURL"];
              v172 = [v170 initWithString:v171];
              urlFilter10 = [(NEConfiguration *)v105 urlFilter];
              [urlFilter10 setPirPrivacyPassIssuerURL:v172];
            }

            v174 = [v149 objectForKeyedSubscript:@"PIRAuthenticationToken"];
            urlFilter11 = [(NEConfiguration *)v105 urlFilter];
            [urlFilter11 setPirAuthenticationToken:v174];

            v176 = ne_log_obj();
            if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
            {
              v179 = objc_opt_class();
              v180 = v179;
              urlFilter12 = [(NEConfiguration *)v105 urlFilter];
              *buf = 138412546;
              v228 = v179;
              v229 = 2112;
              v230 = urlFilter12;
              _os_log_debug_impl(&dword_1BA83C000, v176, OS_LOG_TYPE_DEBUG, "%@ initWithURLFilterPayload: config %@", buf, 0x16u);
            }

            v80 = v105;
LABEL_179:
            self = selfCopy;
            v106 = v184;

            goto LABEL_140;
          }

          urlFilter13 = [(NEConfiguration *)v105 urlFilter];
          [urlFilter13 setShouldFailClosed:1];
        }

        goto LABEL_167;
      }
    }

    else
    {
    }

    urlFilter14 = [(NEConfiguration *)v105 urlFilter];
    [urlFilter14 setEnabled:1];

    goto LABEL_162;
  }

  v43 = 0;
LABEL_59:

  v60 = *MEMORY[0x1E69E9840];
  return v43;
}

- (void)removeAllConfigurationsWithPayload:(id)payload profile:(id)profile
{
  v42 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  profileCopy = profile;
  if (isa_nsstring(payloadCopy) && (isa_nsstring(profileCopy) & 1) != 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = payloadCopy;
      v40 = 2112;
      v41 = profileCopy;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Removing existing configurations with payload UUID %@ and profile UUID %@", buf, 0x16u);
    }

    v9 = MEMORY[0x1E696AE18];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __65__NEProfileIngestion_removeAllConfigurationsWithPayload_profile___block_invoke;
    v34[3] = &unk_1E7F0A690;
    v29 = payloadCopy;
    v35 = payloadCopy;
    v28 = profileCopy;
    v36 = profileCopy;
    v10 = [v9 predicateWithBlock:v34];
    currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];
    v27 = v10;
    v12 = [currentConfigurations filteredArrayUsingPredicate:v10];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        v17 = 0;
        do
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * v17);
          v19 = [(NEProfileIngestion *)self removeConfiguration:v18];
          v20 = ne_log_obj();
          v21 = v20;
          if (v19)
          {
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_15;
            }

            name = [v18 name];
            identifier = [v18 identifier];
            *buf = 138412546;
            v39 = name;
            v40 = 2112;
            v41 = identifier;
            _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEFAULT, "Removed duplicate configuration %@ (%@)", buf, 0x16u);
            goto LABEL_13;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            name = [v18 name];
            identifier = [v18 identifier];
            *buf = 138412546;
            v39 = name;
            v40 = 2112;
            v41 = identifier;
            _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "Failed to remove duplicate configuration %@ (%@)", buf, 0x16u);
LABEL_13:
          }

LABEL_15:

          ++v17;
        }

        while (v15 != v17);
        v24 = [v13 countByEnumeratingWithState:&v30 objects:v37 count:16];
        v15 = v24;
      }

      while (v24);
    }

    v25 = v35;
    profileCopy = v28;
    payloadCopy = v29;
  }

  else
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v39 = payloadCopy;
      v40 = 2112;
      v41 = profileCopy;
      _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "Payload UUID (%@) and/or profile UUID (%@) is invalid", buf, 0x16u);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __65__NEProfileIngestion_removeAllConfigurationsWithPayload_profile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 payloadInfo];
    if (v4)
    {
      v5 = [v3 payloadInfo];
      v6 = [v5 payloadUUID];
      if ([v6 isEqualToString:*(a1 + 32)])
      {
        v7 = [v3 payloadInfo];
        v8 = [v7 profileUUID];
        v9 = [v8 isEqualToString:*(a1 + 40)];
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

- (BOOL)isInstalled:(id)installed
{
  v3 = [(NEProfileIngestion *)self findConfigurationByPayloadUUID:installed];

  return v3 != 0;
}

- (id)findConfigurationByConfigurationID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = dCopy;
  if (dCopy && [dCopy length])
  {
    currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];

    if (!currentConfigurations)
    {
      goto LABEL_17;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];
    currentConfigurations = [currentConfigurations2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (currentConfigurations)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != currentConfigurations; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(currentConfigurations2);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          identifier = [v10 identifier];
          uUIDString = [identifier UUIDString];
          v13 = [uUIDString isEqualToString:v5];

          if (v13)
          {
            currentConfigurations = v10;
            goto LABEL_16;
          }
        }

        currentConfigurations = [currentConfigurations2 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (currentConfigurations)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    currentConfigurations2 = ne_log_obj();
    if (os_log_type_enabled(currentConfigurations2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, currentConfigurations2, OS_LOG_TYPE_DEBUG, "findConfigurationByConfigurationID failed: empty identifier", buf, 2u);
    }

    currentConfigurations = 0;
  }

LABEL_16:

LABEL_17:
  v14 = *MEMORY[0x1E69E9840];

  return currentConfigurations;
}

- (id)findConfigurationByPayloadUUID:(id)d
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = dCopy;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "findConfigurationByPayloadUUID for payloadUUID %@", buf, 0xCu);
  }

  currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];

  if (currentConfigurations)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];
    v8 = [currentConfigurations2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(currentConfigurations2);
          }

          v12 = *(*(&v25 + 1) + 8 * v11);
          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            payloadInfo = [v12 payloadInfo];
            if (payloadInfo)
            {
              payloadInfo2 = [v12 payloadInfo];
              payloadUUID = [payloadInfo2 payloadUUID];
              *buf = 138412290;
              v31 = payloadUUID;
              _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "findConfigurationByPayloadUUID check config with payloadUUID %@", buf, 0xCu);
            }

            else
            {
              *buf = 138412290;
              v31 = 0;
              _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "findConfigurationByPayloadUUID check config with payloadUUID %@", buf, 0xCu);
            }
          }

          payloadInfo3 = [v12 payloadInfo];
          if (payloadInfo3)
          {
            v15 = payloadInfo3;
            payloadInfo4 = [v12 payloadInfo];
            payloadUUID2 = [payloadInfo4 payloadUUID];
            v18 = [payloadUUID2 isEqualToString:dCopy];

            if (v18)
            {
              currentConfigurations = v12;
              goto LABEL_21;
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v22 = [currentConfigurations2 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v9 = v22;
      }

      while (v22);
    }

    currentConfigurations = 0;
LABEL_21:
  }

  v23 = *MEMORY[0x1E69E9840];

  return currentConfigurations;
}

- (id)setAsideConfigurationName:(id)name unsetAside:(BOOL)aside
{
  asideCopy = aside;
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = [(NEProfileIngestion *)self findConfigurationByConfigurationID:nameCopy];
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v27 = 138412802;
    *v28 = nameCopy;
    *&v28[8] = 1024;
    *&v28[10] = asideCopy;
    v29 = 2112;
    v30 = v7;
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "setAsideConfigurationName: configID %@, unset %d, configurations %@", &v27, 0x1Cu);
  }

  if (!v7)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      *v28 = nameCopy;
      _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "setAsideConfigurationName can't find configuration of ID  %@", &v27, 0xCu);
    }

    goto LABEL_16;
  }

  name = [v7 name];
  name3 = name;
  if (asideCopy)
  {
    v11 = [name hasSuffix:nameCopy];

    if (!v11)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        *v28 = nameCopy;
        v17 = "setAsideConfigurationName: unset-aside failed. Name '%@' is not a set-aside name";
        goto LABEL_28;
      }

LABEL_16:
      v21 = 0;
      goto LABEL_17;
    }

    name2 = [v7 name];
    v13 = [name2 length];
    v14 = [nameCopy length];

    v15 = v13 - v14;
    if (v13 == v14)
    {
      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v27 = 138412290;
        *v28 = nameCopy;
        v17 = "setAsideConfigurationName: unset-aside failed. Name '%@' would be empty after unset-aside";
LABEL_28:
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, v17, &v27, 0xCu);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    name3 = [v7 name];
    v18 = [name3 substringToIndex:v15];
  }

  else
  {
    v18 = [name stringByAppendingString:nameCopy];
  }

  v16 = v18;

  v19 = [(NEProfileIngestion *)self findConfigurationByName:v16];

  if (v19)
  {
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      goto LABEL_16;
    }

    v27 = 67109378;
    *v28 = asideCopy;
    *&v28[4] = 2112;
    *&v28[6] = v16;
    v26 = "setAsideConfigurationName failed (unSetAside = %d), name '%@' in use.";
LABEL_26:
    _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, v26, &v27, 0x12u);
    goto LABEL_14;
  }

  payloadInfo = [v7 payloadInfo];

  if (!payloadInfo)
  {
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v27 = 67109378;
    *v28 = asideCopy;
    *&v28[4] = 2112;
    *&v28[6] = v16;
    v26 = "setAsideConfigurationName failed (unSetAside = %d), configuration '%@' is missing payload info.";
    goto LABEL_26;
  }

  payloadInfo2 = [v7 payloadInfo];
  [payloadInfo2 setIsSetAside:!asideCopy];

  [v7 setName:v16];
  [(NEProfileIngestion *)self saveConfiguration:v7 returnError:0];
  v21 = v7;
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)findConfigurationByName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  currentConfigurations = [(NEProfileIngestion *)self currentConfigurations];

  if (currentConfigurations)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    currentConfigurations2 = [(NEProfileIngestion *)self currentConfigurations];
    currentConfigurations = [currentConfigurations2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (currentConfigurations)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != currentConfigurations; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(currentConfigurations2);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          name = [v9 name];
          v11 = [name isEqualToString:nameCopy];

          if (v11)
          {
            currentConfigurations = v9;
            goto LABEL_12;
          }
        }

        currentConfigurations = [currentConfigurations2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (currentConfigurations)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v12 = *MEMORY[0x1E69E9840];

  return currentConfigurations;
}

- (BOOL)loadConfigurationsForceReloadFromDisk
{
  selfCopy = self;
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    [(NEProfileIngestion *)self currentConfigurations];

    manager = [(NEProfileIngestion *)selfCopy manager];
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__NEProfileIngestion_loadConfigurationsWithRefreshOption___block_invoke;
    v13[3] = &unk_1E7F0A668;
    v13[4] = selfCopy;
    v13[5] = &v14;
    [manager loadConfigurationsWithCompletionQueue:v4 handler:v13];

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = *(v15 + 24);
      currentConfigurations = [(NEProfileIngestion *)selfCopy currentConfigurations];
      v12 = [currentConfigurations count];
      *buf = 138413058;
      v19 = v9;
      v20 = 1024;
      v21 = 1;
      v22 = 1024;
      v23 = v10;
      v24 = 2048;
      v25 = v12;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ loadConfigurationsWithRefreshOption (refresh = %d) done, error = %d, #configs loaded %lu", buf, 0x22u);
    }

    LOBYTE(selfCopy) = *(v15 + 24) ^ 1;
    _Block_object_dispose(&v14, 8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return selfCopy & 1;
}

void __58__NEProfileIngestion_loadConfigurationsWithRefreshOption___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = convert_error_to_string(v6);
      v16 = 138412290;
      v17 = v15;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "loadConfigurationsWithRefreshOption Failed to load the current configurations: %@", &v16, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v8 = [v5 mutableCopy];
  [*(a1 + 32) setCurrentConfigurations:v8];

  v9 = [*(a1 + 32) ingestedConfiguration];

  if (v9)
  {
    v10 = [*(a1 + 32) ingestedConfiguration];
    v11 = [v10 identifier];
    v12 = [v11 UUIDString];

    v13 = [*(a1 + 32) findConfigurationByConfigurationID:v12];
    if (v13)
    {
      [*(a1 + 32) setIngestedConfiguration:v13];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NEProfileIngestion;
  [(NEProfileIngestion *)&v2 dealloc];
}

- (NEProfileIngestion)initWithNameAndType:(id)type payloadType:(id)payloadType
{
  v27 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  payloadTypeCopy = payloadType;
  v20.receiver = self;
  v20.super_class = NEProfileIngestion;
  v8 = [(NEProfileIngestion *)&v20 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    clientName = v8->_clientName;
    v8->_clientName = v9;

    v11 = [payloadTypeCopy copy];
    payloadType = v8->_payloadType;
    v8->_payloadType = v11;

    initSynchronous = [[NEConfigurationManager alloc] initSynchronous];
    manager = v8->_manager;
    v8->_manager = initSynchronous;

    if (!v8->_manager)
    {

      v8 = 0;
    }
  }

  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_opt_class();
    *buf = 138412802;
    v22 = v18;
    v23 = 2112;
    v24 = typeCopy;
    v25 = 2112;
    v26 = payloadTypeCopy;
    v19 = v18;
    _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "%@ initWithNameAndType name %@, type %@", buf, 0x20u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)getServiceIDForPayload:(id)payload
{
  v39 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v4 = [payloadCopy objectForKeyedSubscript:@"PayloadType"];
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = payloadCopy;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "getServiceIDForPayload start with payload stub %@", buf, 0xCu);
  }

  if (([v4 isEqualToString:@"com.apple.vpn.managed"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.vpn.managed.applayer") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.vpn.managed.alwayson") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.webcontent-filter") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.networkusagerules") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.dnsSettings.managed") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"com.apple.relay.managed") & 1) == 0)
  {
    log = ne_log_obj();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, log, OS_LOG_TYPE_DEBUG, "getServiceIDForPayload: ignore non-NetworkExtension payload", buf, 2u);
    }

    goto LABEL_40;
  }

  log = [payloadCopy objectForKeyedSubscript:@"PayloadUUID"];
  if (!log)
  {
    log = ne_log_obj();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, log, OS_LOG_TYPE_ERROR, "getServiceIDForPayload payload stub has no payload UUID", buf, 2u);
    }

    goto LABEL_40;
  }

  v6 = SCPreferencesCreate(*MEMORY[0x1E695E480], @"NEProfileIngestion Migrator", 0);
  if (!v6)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "getServiceIDForPayload failed to create SCPreference", buf, 2u);
    }

LABEL_40:
    v22 = 0;
    goto LABEL_49;
  }

  v7 = v6;
  v8 = SCNetworkServiceCopyAll(v6);
  if (!v8)
  {
    v22 = 0;
    goto LABEL_46;
  }

  v9 = v8;
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v28 = [(__CFArray *)v9 count];
    *buf = 134217984;
    v38 = v28;
    _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "getServiceIDForPayload found %lu services", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v9;
  v12 = [(__CFArray *)v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v12)
  {
    v22 = 0;
    goto LABEL_45;
  }

  v13 = v12;
  v29 = v4;
  v30 = payloadCopy;
  v14 = *v33;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v32 + 1) + 8 * i);
      if (!v16 || (v17 = SCNetworkServiceCopyProtocol(*(*(&v32 + 1) + 8 * i), @"com.apple.payload")) == 0)
      {
        v20 = 0;
        v21 = 0;
        goto LABEL_32;
      }

      v18 = v17;
      v19 = SCNetworkProtocolGetConfiguration(v17);
      v20 = v19;
      if (!v19)
      {
        v21 = 0;
LABEL_31:
        CFRelease(v18);
        goto LABEL_32;
      }

      v21 = [v19 objectForKeyedSubscript:@"PayloadUUID"];
      if (!isa_nsstring(v21) || ![v21 isEqualToString:log])
      {
        goto LABEL_31;
      }

      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:SCNetworkServiceGetServiceID(v16)];
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v22;
        _os_log_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEFAULT, "getServiceIDForPayload found matching service '%@'", buf, 0xCu);
      }

      CFRelease(v18);
      if (v22)
      {

        goto LABEL_43;
      }

LABEL_32:
    }

    v13 = [(__CFArray *)v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  v22 = 0;
LABEL_43:
  v4 = v29;
  payloadCopy = v30;
LABEL_45:

  CFRelease(v11);
LABEL_46:
  CFRelease(v7);
  v25 = ne_log_obj();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v38 = v22;
    _os_log_debug_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEBUG, "getServiceIDForPayload found matching service %@", buf, 0xCu);
  }

LABEL_49:
  v26 = *MEMORY[0x1E69E9840];

  return v22;
}

@end