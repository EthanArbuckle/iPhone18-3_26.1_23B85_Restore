@interface NEDNSSettings
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)useForAllDomains;
- (NEDNSSettings)initWithCoder:(id)coder;
- (NEDNSSettings)initWithServers:(NSArray *)servers;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEDNSSettings

- (BOOL)useForAllDomains
{
  matchDomains = [(NEDNSSettings *)self matchDomains];
  if (matchDomains)
  {
    matchDomains2 = [(NEDNSSettings *)self matchDomains];
    if ([matchDomains2 count])
    {
      matchDomains3 = [(NEDNSSettings *)self matchDomains];
      if ([matchDomains3 count] == 1)
      {
        matchDomains4 = [(NEDNSSettings *)self matchDomains];
        v7 = [matchDomains4 objectAtIndexedSubscript:0];
        v8 = [v7 length] == 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = NEDNSSettings;
  v5 = [(NEDNSSettings *)&v34 init];
  if (v5)
  {
    v6 = *MEMORY[0x1E69823D8];
    v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69823D8]];
    v8 = isa_nsarray(v7);

    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:v6];
      v10 = [v9 copy];
      servers = v5->_servers;
      v5->_servers = v10;
    }

    v12 = *MEMORY[0x1E69823D0];
    v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69823D0]];
    v14 = isa_nsarray(v13);

    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:v12];
      v16 = [v15 copy];
      searchDomains = v5->_searchDomains;
      v5->_searchDomains = v16;
    }

    v18 = *MEMORY[0x1E69823C8];
    v19 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69823C8]];
    v20 = isa_nsstring(v19);

    if (v20)
    {
      v21 = [dictionaryCopy objectForKeyedSubscript:v18];
      domainName = v5->_domainName;
      v5->_domainName = v21;
    }

    v23 = *MEMORY[0x1E69823F0];
    v24 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69823F0]];
    v25 = isa_nsarray(v24);

    if (v25)
    {
      v26 = [dictionaryCopy objectForKeyedSubscript:v23];
      v27 = [v26 copy];
      matchDomains = v5->_matchDomains;
      v5->_matchDomains = v27;
    }

    v29 = *MEMORY[0x1E69823F8];
    v30 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69823F8]];
    v31 = isa_nsnumber(v30);

    if (v31)
    {
      v32 = [dictionaryCopy objectForKeyedSubscript:v29];
      v5->_matchDomainsNoSearch = [v32 BOOLValue];
    }
  }

  return v5;
}

- (id)copyLegacyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  servers = [(NEDNSSettings *)self servers];

  if (servers)
  {
    servers2 = [(NEDNSSettings *)self servers];
    [v3 setObject:servers2 forKeyedSubscript:*MEMORY[0x1E69823D8]];
  }

  searchDomains = [(NEDNSSettings *)self searchDomains];

  if (searchDomains)
  {
    searchDomains2 = [(NEDNSSettings *)self searchDomains];
    [v3 setObject:searchDomains2 forKeyedSubscript:*MEMORY[0x1E69823D0]];
  }

  domainName = [(NEDNSSettings *)self domainName];

  if (domainName)
  {
    domainName2 = [(NEDNSSettings *)self domainName];
    [v3 setObject:domainName2 forKeyedSubscript:*MEMORY[0x1E69823C8]];
  }

  matchDomains = [(NEDNSSettings *)self matchDomains];

  if (matchDomains)
  {
    matchDomains2 = [(NEDNSSettings *)self matchDomains];
    [v3 setObject:matchDomains2 forKeyedSubscript:*MEMORY[0x1E69823F0]];
  }

  if ([(NEDNSSettings *)self matchDomainsNoSearch])
  {
    [v3 setObject:&unk_1F38BA448 forKeyedSubscript:*MEMORY[0x1E69823F8]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v37 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  if ([(NEDNSSettings *)self isMemberOfClass:objc_opt_class()])
  {
    servers = [(NEDNSSettings *)self servers];
    if (servers)
    {
    }

    else
    {
      searchDomains = [(NEDNSSettings *)self searchDomains];

      if (!searchDomains)
      {
        [NEConfiguration addError:errorsCopy toList:?];
        v7 = 0;
        goto LABEL_6;
      }
    }
  }

  v7 = 1;
LABEL_6:
  servers2 = [(NEDNSSettings *)self servers];

  if (!servers2)
  {
    goto LABEL_21;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  servers3 = [(NEDNSSettings *)self servers];
  v10 = [servers3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v12 = *v32;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v32 != v12)
      {
        objc_enumerationMutation(servers3);
      }

      v14 = *(*(&v31 + 1) + 8 * i);
      if ((isa_nsstring(v14) & 1) == 0)
      {
        v15 = @"Non-string for DNS server";
        goto LABEL_17;
      }

      v30 = 0;
      v29[0] = 0;
      v29[1] = 0;
      if (!inet_pton(2, [v14 UTF8String], &v30) && !inet_pton(30, objc_msgSend(v14, "UTF8String"), v29))
      {
        v15 = @"Invalid DNS server";
LABEL_17:
        [NEConfiguration addError:v15 toList:errorsCopy];
        v7 = 0;
        continue;
      }
    }

    v11 = [servers3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v11);
LABEL_20:

  self = selfCopy;
LABEL_21:
  searchDomains2 = [(NEDNSSettings *)self searchDomains];

  if (searchDomains2)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    searchDomains3 = [(NEDNSSettings *)self searchDomains];
    v18 = [searchDomains3 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(searchDomains3);
          }

          if ((isa_nsstring(*(*(&v25 + 1) + 8 * j)) & 1) == 0)
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v7 = 0;
          }
        }

        v19 = [searchDomains3 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v19);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  servers = [(NEDNSSettings *)self servers];
  v6 = [v4 initWithServers:servers];

  [v6 setSearchDomains:self->_searchDomains];
  [v6 setDomainName:self->_domainName];
  [v6 setMatchDomains:self->_matchDomains];
  [v6 setMatchDomainsNoSearch:self->_matchDomainsNoSearch];
  [v6 setProxyAgentUUID:self->_proxyAgentUUID];
  [v6 setAllowFailover:self->_allowFailover];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  servers = [(NEDNSSettings *)self servers];
  [coderCopy encodeObject:servers forKey:@"Servers"];

  searchDomains = [(NEDNSSettings *)self searchDomains];
  [coderCopy encodeObject:searchDomains forKey:@"SearchDomains"];

  domainName = [(NEDNSSettings *)self domainName];
  [coderCopy encodeObject:domainName forKey:@"domainName"];

  matchDomains = [(NEDNSSettings *)self matchDomains];
  [coderCopy encodeObject:matchDomains forKey:@"matchDomains"];

  [coderCopy encodeBool:-[NEDNSSettings matchDomainsNoSearch](self forKey:{"matchDomainsNoSearch"), @"matchDomainsNoSearch"}];
  proxyAgentUUID = [(NEDNSSettings *)self proxyAgentUUID];
  [coderCopy encodeObject:proxyAgentUUID forKey:@"ProxyAgentUUID"];

  [coderCopy encodeBool:-[NEDNSSettings allowFailover](self forKey:{"allowFailover"), @"AllowFailover"}];
}

- (NEDNSSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = NEDNSSettings;
  v5 = [(NEDNSSettings *)&v26 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Servers"];
    servers = v5->_servers;
    v5->_servers = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"SearchDomains"];
    searchDomains = v5->_searchDomains;
    v5->_searchDomains = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainName"];
    domainName = v5->_domainName;
    v5->_domainName = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"matchDomains"];
    matchDomains = v5->_matchDomains;
    v5->_matchDomains = v21;

    v5->_matchDomainsNoSearch = [coderCopy decodeBoolForKey:@"matchDomainsNoSearch"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxyAgentUUID"];
    proxyAgentUUID = v5->_proxyAgentUUID;
    v5->_proxyAgentUUID = v23;

    v5->_allowFailover = [coderCopy decodeBoolForKey:@"AllowFailover"];
  }

  return v5;
}

- (NEDNSSettings)initWithServers:(NSArray *)servers
{
  v4 = servers;
  v9.receiver = self;
  v9.super_class = NEDNSSettings;
  v5 = [(NEDNSSettings *)&v9 init];
  if (v5)
  {
    v6 = [(NSArray *)v4 copy];
    v7 = v5->_servers;
    v5->_servers = v6;
  }

  return v5;
}

@end