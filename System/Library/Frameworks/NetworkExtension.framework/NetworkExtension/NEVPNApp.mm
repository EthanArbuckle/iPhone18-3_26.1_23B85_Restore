@interface NEVPNApp
+ (BOOL)compareAppRules:(id)rules newAppRules:(id)appRules noExistingDomain:(BOOL *)domain;
+ (id)findRuleWithSameDomains:(id)domains matchSigningIdentifier:(id)identifier startIndex:(int64_t *)index;
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)installSigningIdentifiersWithFlowDivertControlSocket:(int)socket;
- (BOOL)removeAppRuleByID:(id)d;
- (NEVPNApp)init;
- (NEVPNApp)initWithCoder:(id)coder;
- (id)copyAppRuleByID:(id)d;
- (id)copyAppRuleIDs;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEVPNApp

- (BOOL)installSigningIdentifiersWithFlowDivertControlSocket:(int)socket
{
  v64 = *MEMORY[0x1E69E9840];
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  if (self)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    appRules = [(NEVPNApp *)self appRules];
    v6 = [appRules countByEnumeratingWithState:&v55 objects:buf count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v56;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v56 != v8)
          {
            objc_enumerationMutation(appRules);
          }

          v10 = *(*(&v55 + 1) + 8 * i);
          matchSigningIdentifier = [v10 matchSigningIdentifier];
          if (matchSigningIdentifier)
          {
            v12 = matchSigningIdentifier;
            matchSigningIdentifier2 = [v10 matchSigningIdentifier];
            v14 = [v4 objectForKeyedSubscript:matchSigningIdentifier2];

            if (!v14)
            {
              matchSigningIdentifier3 = [v10 matchSigningIdentifier];
              matchSigningIdentifier4 = [v10 matchSigningIdentifier];
              [v4 setObject:matchSigningIdentifier3 forKeyedSubscript:matchSigningIdentifier4];
            }
          }
        }

        v7 = [appRules countByEnumeratingWithState:&v55 objects:buf count:16];
      }

      while (v7);
    }

    v17 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];
  }

  else
  {
    v17 = 0;
  }

  if ([(NEVPN *)self tunnelType]== 2)
  {
    if ([v17 count])
    {
      v18 = NEFlowTLVMsgCreate();
      NEFlowTLVAdd();
      v19 = send(socket, v18, v51 - v53, 0);
      v20 = MEMORY[0x1E695E480];
      if (v19 < 0)
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v41 = __error();
          v42 = strerror(*v41);
          *buf = 136315138;
          v61 = v42;
          _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "Failed to send a FLOW_DIVERT_PKT_APP_MAP_CREATE message: %s", buf, 0xCu);
        }

        v32 = 0;
        v21 = 0;
      }

      else
      {
        CFAllocatorDeallocate(*MEMORY[0x1E695E480], v18);
        v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
        allKeys = [v17 allKeys];
        if ([allKeys count])
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          do
          {
            if ([allKeys count])
            {
              v26 = 0;
              v27 = 0;
              do
              {
                if (v25 != v27)
                {
                  v28 = [allKeys objectAtIndexedSubscript:v23];
                  v29 = [allKeys objectAtIndexedSubscript:v26];
                  v30 = [v28 commonPrefixWithString:v29 options:2];

                  if ([v30 length])
                  {
                    [v21 setObject:v30 forKeyedSubscript:v30];
                  }
                }

                v26 = ++v27;
              }

              while ([allKeys count] > v27);
            }

            v31 = [allKeys objectAtIndexedSubscript:v23];
            v24 += strlen([v31 cStringUsingEncoding:1]);

            v23 = ++v25;
          }

          while ([allKeys count] > v25);
          v20 = MEMORY[0x1E695E480];
        }

        v54 = [v21 count];
        [allKeys count];
        v18 = NEFlowTLVMsgCreate();
        NEFlowTLVAdd();
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v32 = allKeys;
        v35 = [v32 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v48;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v48 != v37)
              {
                objc_enumerationMutation(v32);
              }

              strlen([*(*(&v47 + 1) + 8 * j) cStringUsingEncoding:1]);
              NEFlowTLVAdd();
            }

            v36 = [v32 countByEnumeratingWithState:&v47 objects:v59 count:16];
          }

          while (v36);
        }

        if ((send(socket, v18, v51 - v53, 0) & 0x8000000000000000) == 0)
        {
          v33 = 1;
          if (!v18)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v43 = (v51 - v53);
          v44 = __error();
          v45 = strerror(*v44);
          *buf = 134218242;
          v61 = v43;
          v62 = 2080;
          v63 = v45;
          _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "Failed to send a FLOW_DIVERT_PKT_APP_MAP_CREATE with size %lu bytes: %s", buf, 0x16u);
        }
      }

      v33 = 0;
      if (v18)
      {
LABEL_45:
        CFAllocatorDeallocate(*v20, v18);
      }
    }

    else
    {
      v32 = 0;
      v21 = 0;
      v33 = 1;
    }
  }

  else
  {
    v32 = 0;
    v21 = 0;
    v33 = 0;
  }

LABEL_46:

  v39 = *MEMORY[0x1E69E9840];
  return v33;
}

- (id)copyAppRuleIDs
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_appRules, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_appRules;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        matchSigningIdentifier = [*(*(&v13 + 1) + 8 * v8) matchSigningIdentifier];
        [v3 addObject:matchSigningIdentifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)removeAppRuleByID:(id)d
{
  dCopy = d;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_appRules];
  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndex:v6];
      matchSigningIdentifier = [v7 matchSigningIdentifier];
      v9 = [matchSigningIdentifier isEqualToString:dCopy];

      if (v9)
      {
        break;
      }

      if (++v6 >= [v5 count])
      {
        goto LABEL_5;
      }
    }

    [v5 removeObjectAtIndex:v6];
    objc_storeStrong(&self->_appRules, v5);

    v10 = 1;
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (id)copyAppRuleByID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = selfCopy->_appRules;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        matchSigningIdentifier = [v10 matchSigningIdentifier];
        v12 = [matchSigningIdentifier isEqualToString:dCopy];

        if (v12)
        {
          v7 = [v10 copy];
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(selfCopy);
  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)copyLegacyDictionary
{
  v6.receiver = self;
  v6.super_class = NEVPNApp;
  copyLegacyDictionary = [(NEVPN *)&v6 copyLegacyDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPN isOnDemandEnabled](self, "isOnDemandEnabled")}];
  [copyLegacyDictionary setObject:v4 forKeyedSubscript:*MEMORY[0x1E69827C0]];

  return copyLegacyDictionary;
}

- (id)initFromLegacyDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = NEVPNApp;
  v5 = [(NEVPN *)&v28 initFromLegacyDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = *MEMORY[0x1E69827C0];
    v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69827C0]];
    v8 = isa_nsnumber(v7);

    if ((v8 & 1) != 0 || (v6 = *MEMORY[0x1E69827B8], [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69827B8]], v9 = objc_claimAutoreleasedReturnValue(), v10 = isa_nsnumber(v9), v9, v10))
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:v6];
      [v5 setOnDemandEnabled:{objc_msgSend(v11, "BOOLValue")}];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982728]];
    if (isa_nsarray(v12))
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v24 + 1) + 8 * i);
            if (isa_nsdictionary(v19))
            {
              v20 = [NEAppRule alloc];
              v21 = [(NEAppRule *)v20 initFromLegacyDictionary:v19, v24];
              if (v21)
              {
                [v13 addObject:v21];
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v16);
      }

      if ([v13 count])
      {
        [v5 setAppRules:v13];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v101 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v95.receiver = self;
  v95.super_class = NEVPNApp;
  v5 = [(NEVPN *)&v95 checkValidityAndCollectErrors:errorsCopy];
  appRules = [(NEVPNApp *)self appRules];

  if (appRules)
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    selfCopy = self;
    appRules2 = [(NEVPNApp *)self appRules];
    v8 = [appRules2 countByEnumeratingWithState:&v91 objects:v100 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v92;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          v12 = v5;
          if (*v92 != v10)
          {
            objc_enumerationMutation(appRules2);
          }

          v13 = *(*(&v91 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [v13 checkValidityAndCollectErrors:errorsCopy] & v12;
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v5 = 0;
          }
        }

        v9 = [appRules2 countByEnumeratingWithState:&v91 objects:v100 count:16];
      }

      while (v9);
    }

    self = selfCopy;
  }

  excludedDomains = [(NEVPNApp *)self excludedDomains];
  v15 = [excludedDomains count];

  if (v15)
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    excludedDomains2 = [(NEVPNApp *)self excludedDomains];
    v17 = [excludedDomains2 countByEnumeratingWithState:&v87 objects:v99 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = v5;
      v20 = *v88;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v88 != v20)
          {
            objc_enumerationMutation(excludedDomains2);
          }

          v22 = *(*(&v87 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v22 length])
          {
            v23 = NEResourcesCopyLocalizedNSString(@"APP_VPN_EMPTY_EXCLUDED_DOMAIN", @"APP_VPN_EMPTY_EXCLUDED_DOMAIN");
            [NEConfiguration addError:v23 toList:errorsCopy];

            LOBYTE(v5) = 0;
            goto LABEL_25;
          }
        }

        v18 = [excludedDomains2 countByEnumeratingWithState:&v87 objects:v99 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      LOBYTE(v5) = v19;
    }

LABEL_25:
  }

  if ([(NEVPNApp *)self restrictDomains])
  {
    protocol = [(NEVPN *)self protocol];
    serverAddress = [protocol serverAddress];

    if (serverAddress)
    {
      v26 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:serverAddress];
      v27 = v26;
      if (!v26 || ([v26 host], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v28 = serverAddress;
      }

      v29 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"."];
      v30 = [v28 stringByTrimmingCharactersInSet:v29];

      v66 = v30;
      v31 = [v30 componentsSeparatedByString:@"."];
      if ([v31 count] > 1)
      {
        v63 = v27;
        v64 = serverAddress;
        v65 = v5;
        v68 = errorsCopy;
        v62 = v31;
        v61 = [v31 subarrayWithRange:{objc_msgSend(v31, "count") - 2, 2}];
        [v61 componentsJoinedByString:@"."];
        v34 = v36 = self;
        v74 = [@"." stringByAppendingString:v34];
        v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        obj = [(NEVPNApp *)v36 appRules];
        v70 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
        if (v70)
        {
          v69 = *v84;
          do
          {
            v38 = 0;
            do
            {
              if (*v84 != v69)
              {
                objc_enumerationMutation(obj);
              }

              v71 = v38;
              v39 = *(*(&v83 + 1) + 8 * v38);
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v82 = 0u;
              matchDomains = [v39 matchDomains];
              v41 = [matchDomains countByEnumeratingWithState:&v79 objects:v97 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v80;
                do
                {
                  for (k = 0; k != v42; ++k)
                  {
                    if (*v80 != v43)
                    {
                      objc_enumerationMutation(matchDomains);
                    }

                    v45 = *(*(&v79 + 1) + 8 * k);
                    v46 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*."];
                    v47 = [v45 stringByTrimmingCharactersInSet:v46];

                    v48 = [v47 length];
                    if (v48 > [v34 length] && !objc_msgSend(v47, "hasSuffix:", v74) || (v49 = objc_msgSend(v47, "length"), v49 == objc_msgSend(v34, "length")) && !objc_msgSend(v47, "isEqualToString:", v34) || (v50 = objc_msgSend(v47, "length"), v50 < objc_msgSend(v34, "length")))
                    {
                      [v37 setObject:v47 forKeyedSubscript:v47];
                    }
                  }

                  v42 = [matchDomains countByEnumeratingWithState:&v79 objects:v97 count:16];
                }

                while (v42);
              }

              v38 = v71 + 1;
            }

            while (v71 + 1 != v70);
            v70 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
          }

          while (v70);
        }

        LOBYTE(v5) = v65;
        if ([v37 count])
        {
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v72 = v37;
          v51 = [v72 countByEnumeratingWithState:&v75 objects:v96 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v76;
            do
            {
              for (m = 0; m != v52; ++m)
              {
                if (*v76 != v53)
                {
                  objc_enumerationMutation(v72);
                }

                v55 = *(*(&v75 + 1) + 8 * m);
                v56 = objc_alloc(MEMORY[0x1E696AEC0]);
                v57 = NEResourcesCopyLocalizedNSString(@"APP_VPN_INVALID_MATCH_DOMAIN", @"APP_VPN_INVALID_MATCH_DOMAIN");
                v58 = [v56 initWithFormat:v57, v55, v34];
                [v68 addObject:v58];
              }

              v52 = [v72 countByEnumeratingWithState:&v75 objects:v96 count:16];
            }

            while (v52);
          }

          LOBYTE(v5) = 0;
        }

        errorsCopy = v68;
        v27 = v63;
        serverAddress = v64;
        v33 = v61;
        v31 = v62;
      }

      else
      {
        v32 = objc_alloc(MEMORY[0x1E696AEC0]);
        v33 = NEResourcesCopyLocalizedNSString(@"APP_VPN_INVALID_DOMAIN", @"APP_VPN_INVALID_DOMAIN");
        v34 = [v32 initWithFormat:v33, objc_msgSend(v31, "count")];
        [errorsCopy addObject:v34];
        LOBYTE(v5) = 0;
      }

      v35 = v66;
    }

    else
    {
      v35 = NEResourcesCopyLocalizedNSString(@"APP_VPN_NO_DOMAIN", @"APP_VPN_NO_DOMAIN");
      [errorsCopy addObject:v35];
      LOBYTE(v5) = 0;
    }
  }

  v59 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = NEVPNApp;
  v4 = [(NEVPN *)&v13 copyWithZone:zone];
  appRules = [(NEVPNApp *)self appRules];

  if (appRules)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    appRules2 = [(NEVPNApp *)self appRules];
    v8 = [v6 initWithArray:appRules2 copyItems:1];
    [v4 setAppRules:v8];
  }

  v9 = objc_alloc(MEMORY[0x1E695DEC8]);
  excludedDomains = [(NEVPNApp *)self excludedDomains];
  v11 = [v9 initWithArray:excludedDomains copyItems:1];
  [v4 setExcludedDomains:v11];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NEVPNApp;
  coderCopy = coder;
  [(NEVPN *)&v7 encodeWithCoder:coderCopy];
  v5 = [(NEVPNApp *)self appRules:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"Rules"];

  excludedDomains = [(NEVPNApp *)self excludedDomains];
  [coderCopy encodeObject:excludedDomains forKey:@"ExcludedDomains"];
}

- (NEVPNApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NEVPNApp;
  v5 = [(NEVPN *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Rules"];
    appRules = v5->_appRules;
    v5->_appRules = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"ExcludedDomains"];
    excludedDomains = v5->_excludedDomains;
    v5->_excludedDomains = v14;
  }

  return v5;
}

- (NEVPNApp)init
{
  v5.receiver = self;
  v5.super_class = NEVPNApp;
  v2 = [(NEVPN *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NEVPN *)v2 setEnabled:1];
    [(NEVPN *)v3 setTunnelType:2];
    v3->_noRestriction = 1;
  }

  return v3;
}

+ (id)findRuleWithSameDomains:(id)domains matchSigningIdentifier:(id)identifier startIndex:(int64_t *)index
{
  v60 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  identifierCopy = identifier;
  if (!domainsCopy)
  {
    goto LABEL_14;
  }

  v8 = [domainsCopy count];
  v9 = 0;
  if (!index || !v8)
  {
    goto LABEL_15;
  }

  indexCopy = index;
  v11 = *index;
  if (v11 >= [domainsCopy count])
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v12 = domainsCopy;
  v9 = [v12 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v9)
  {
    v48 = indexCopy;
    v44 = domainsCopy;
    v13 = 0;
    v14 = *v55;
LABEL_7:
    v15 = 0;
    v16 = v13;
    while (1)
    {
      if (*v55 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v13 = *(*(&v54 + 1) + 8 * v15);

      matchSigningIdentifier = [v13 matchSigningIdentifier];
      v18 = [matchSigningIdentifier isEqualToString:identifierCopy];

      if (v18)
      {
        break;
      }

      v15 = v15 + 1;
      v16 = v13;
      if (v9 == v15)
      {
        v9 = [v12 countByEnumeratingWithState:&v54 objects:v59 count:16];
        if (v9)
        {
          goto LABEL_7;
        }

        v13 = v12;
        domainsCopy = v44;
        goto LABEL_39;
      }
    }

    if (!v13)
    {
      v9 = 0;
      domainsCopy = v44;
      goto LABEL_15;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v12;
    v21 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v46 = 0;
      v24 = *v51;
      v25 = v48;
      do
      {
        v26 = 0;
        v45 = v23;
        do
        {
          if (*v51 != v24)
          {
            objc_enumerationMutation(obj);
          }

          if (v23 >= *v25)
          {
            v27 = *(*(&v50 + 1) + 8 * v26);
            matchSigningIdentifier2 = [v27 matchSigningIdentifier];
            matchSigningIdentifier3 = [v13 matchSigningIdentifier];
            v30 = [matchSigningIdentifier2 isEqualToString:matchSigningIdentifier3];

            if ((v30 & 1) == 0)
            {
              matchDomains = [v27 matchDomains];
              v32 = [matchDomains count];

              if (v32)
              {
                matchDomains2 = [v27 matchDomains];
                v34 = [matchDomains2 count];
                matchDomains3 = [v13 matchDomains];
                v36 = [matchDomains3 count];

                if (v34 == v36)
                {
                  v37 = MEMORY[0x1E695DFD8];
                  matchDomains4 = [v27 matchDomains];
                  v39 = [v37 setWithArray:matchDomains4];

                  v40 = MEMORY[0x1E695DFD8];
                  matchDomains5 = [v13 matchDomains];
                  v42 = [v40 setWithArray:matchDomains5];

                  if ([v39 isEqualToSet:v42])
                  {
                    matchSigningIdentifier4 = [v27 matchSigningIdentifier];

                    v46 = matchSigningIdentifier4;
                  }

                  v25 = v48;
                }

                else
                {
                  v25 = v48;
                }
              }
            }
          }

          ++v26;
          ++v23;
        }

        while (v22 != v26);
        v23 = v45 + v22;
        v22 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
      v46 = 0;
      v25 = v48;
    }

    *v25 = v23;
    domainsCopy = v44;
    v9 = v46;
  }

  else
  {
    v13 = v12;
  }

LABEL_39:

LABEL_15:
  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (BOOL)compareAppRules:(id)rules newAppRules:(id)appRules noExistingDomain:(BOOL *)domain
{
  v89 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  appRulesCopy = appRules;
  if (!rulesCopy || ![rulesCopy count])
  {
LABEL_53:
    v53 = 0;
    if (domain)
    {
      *domain = 1;
    }

    goto LABEL_60;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v9 = rulesCopy;
  v10 = [v9 countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (!v10)
  {

    goto LABEL_53;
  }

  v11 = v10;
  v61 = rulesCopy;
  v12 = 0;
  v13 = *v81;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v81 != v13)
      {
        objc_enumerationMutation(v9);
      }

      matchDomains = [*(*(&v80 + 1) + 8 * i) matchDomains];
      v12 += [matchDomains count];
    }

    v11 = [v9 countByEnumeratingWithState:&v80 objects:v88 count:16];
  }

  while (v11);

  rulesCopy = v61;
  if (!v12)
  {
    goto LABEL_53;
  }

  if (appRulesCopy && [appRulesCopy count])
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    obj = v9;
    v62 = appRulesCopy;
    v59 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
    if (v59)
    {
      v57 = *v77;
      while (2)
      {
        for (j = 0; j != v59; ++j)
        {
          if (*v77 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v76 + 1) + 8 * j);
          matchDomains2 = [v17 matchDomains];
          v19 = [matchDomains2 count];

          if (v19)
          {
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v20 = appRulesCopy;
            v21 = [v20 countByEnumeratingWithState:&v72 objects:v86 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v73;
LABEL_21:
              v24 = 0;
              while (1)
              {
                if (*v73 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v72 + 1) + 8 * v24);
                matchSigningIdentifier = [v17 matchSigningIdentifier];
                matchSigningIdentifier2 = [v25 matchSigningIdentifier];
                v28 = [matchSigningIdentifier isEqualToString:matchSigningIdentifier2];

                if (v28)
                {
                  break;
                }

                if (v22 == ++v24)
                {
                  v22 = [v20 countByEnumeratingWithState:&v72 objects:v86 count:16];
                  if (v22)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_57;
                }
              }

              matchDomains3 = [v17 matchDomains];
              v30 = [matchDomains3 count];
              matchDomains4 = [v25 matchDomains];
              v32 = [matchDomains4 count];

              if (v30 == v32)
              {
                v33 = MEMORY[0x1E695DFD8];
                matchDomains5 = [v17 matchDomains];
                v35 = [v33 setWithArray:matchDomains5];

                v36 = MEMORY[0x1E695DFD8];
                matchDomains6 = [v25 matchDomains];
                v38 = [v36 setWithArray:matchDomains6];

                LOBYTE(matchDomains6) = [v35 isEqualToSet:v38];
                if (matchDomains6)
                {

                  appRulesCopy = v62;
                  continue;
                }
              }
            }

LABEL_57:

            v54 = obj;
LABEL_59:

            v53 = 1;
            rulesCopy = v61;
            appRulesCopy = v62;
            goto LABEL_60;
          }
        }

        v59 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
        if (v59)
        {
          continue;
        }

        break;
      }
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v58 = appRulesCopy;
    v39 = [v58 countByEnumeratingWithState:&v68 objects:v85 count:16];
    if (v39)
    {
      v40 = v39;
      v60 = *v69;
      while (2)
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v69 != v60)
          {
            objc_enumerationMutation(v58);
          }

          v42 = *(*(&v68 + 1) + 8 * k);
          matchDomains7 = [v42 matchDomains];
          v44 = [matchDomains7 count];

          if (v44)
          {
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v45 = obj;
            v46 = [v45 countByEnumeratingWithState:&v64 objects:v84 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v65;
              while (2)
              {
                for (m = 0; m != v47; ++m)
                {
                  if (*v65 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  matchSigningIdentifier3 = [*(*(&v64 + 1) + 8 * m) matchSigningIdentifier];
                  matchSigningIdentifier4 = [v42 matchSigningIdentifier];
                  v52 = [matchSigningIdentifier3 isEqualToString:matchSigningIdentifier4];

                  if (v52)
                  {

                    appRulesCopy = v62;
                    goto LABEL_49;
                  }
                }

                v47 = [v45 countByEnumeratingWithState:&v64 objects:v84 count:16];
                if (v47)
                {
                  continue;
                }

                break;
              }
            }

            v54 = v58;
            goto LABEL_59;
          }

LABEL_49:
          ;
        }

        v40 = [v58 countByEnumeratingWithState:&v68 objects:v85 count:16];
        if (v40)
        {
          continue;
        }

        break;
      }
    }

    v53 = 0;
    rulesCopy = v61;
  }

  else
  {
    v53 = 1;
  }

LABEL_60:

  v55 = *MEMORY[0x1E69E9840];
  return v53;
}

@end