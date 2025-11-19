@interface NEDNSSettings
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)useForAllDomains;
- (NEDNSSettings)initWithCoder:(id)a3;
- (NEDNSSettings)initWithServers:(NSArray *)servers;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEDNSSettings

- (BOOL)useForAllDomains
{
  v3 = [(NEDNSSettings *)self matchDomains];
  if (v3)
  {
    v4 = [(NEDNSSettings *)self matchDomains];
    if ([v4 count])
    {
      v5 = [(NEDNSSettings *)self matchDomains];
      if ([v5 count] == 1)
      {
        v6 = [(NEDNSSettings *)self matchDomains];
        v7 = [v6 objectAtIndexedSubscript:0];
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

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = NEDNSSettings;
  v5 = [(NEDNSSettings *)&v34 init];
  if (v5)
  {
    v6 = *MEMORY[0x1E69823D8];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69823D8]];
    v8 = isa_nsarray(v7);

    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:v6];
      v10 = [v9 copy];
      servers = v5->_servers;
      v5->_servers = v10;
    }

    v12 = *MEMORY[0x1E69823D0];
    v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69823D0]];
    v14 = isa_nsarray(v13);

    if (v14)
    {
      v15 = [v4 objectForKeyedSubscript:v12];
      v16 = [v15 copy];
      searchDomains = v5->_searchDomains;
      v5->_searchDomains = v16;
    }

    v18 = *MEMORY[0x1E69823C8];
    v19 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69823C8]];
    v20 = isa_nsstring(v19);

    if (v20)
    {
      v21 = [v4 objectForKeyedSubscript:v18];
      domainName = v5->_domainName;
      v5->_domainName = v21;
    }

    v23 = *MEMORY[0x1E69823F0];
    v24 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69823F0]];
    v25 = isa_nsarray(v24);

    if (v25)
    {
      v26 = [v4 objectForKeyedSubscript:v23];
      v27 = [v26 copy];
      matchDomains = v5->_matchDomains;
      v5->_matchDomains = v27;
    }

    v29 = *MEMORY[0x1E69823F8];
    v30 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69823F8]];
    v31 = isa_nsnumber(v30);

    if (v31)
    {
      v32 = [v4 objectForKeyedSubscript:v29];
      v5->_matchDomainsNoSearch = [v32 BOOLValue];
    }
  }

  return v5;
}

- (id)copyLegacyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NEDNSSettings *)self servers];

  if (v4)
  {
    v5 = [(NEDNSSettings *)self servers];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69823D8]];
  }

  v6 = [(NEDNSSettings *)self searchDomains];

  if (v6)
  {
    v7 = [(NEDNSSettings *)self searchDomains];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69823D0]];
  }

  v8 = [(NEDNSSettings *)self domainName];

  if (v8)
  {
    v9 = [(NEDNSSettings *)self domainName];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69823C8]];
  }

  v10 = [(NEDNSSettings *)self matchDomains];

  if (v10)
  {
    v11 = [(NEDNSSettings *)self matchDomains];
    [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69823F0]];
  }

  if ([(NEDNSSettings *)self matchDomainsNoSearch])
  {
    [v3 setObject:&unk_1F38BA448 forKeyedSubscript:*MEMORY[0x1E69823F8]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NEDNSSettings *)self isMemberOfClass:objc_opt_class()])
  {
    v5 = [(NEDNSSettings *)self servers];
    if (v5)
    {
    }

    else
    {
      v6 = [(NEDNSSettings *)self searchDomains];

      if (!v6)
      {
        [NEConfiguration addError:v4 toList:?];
        v7 = 0;
        goto LABEL_6;
      }
    }
  }

  v7 = 1;
LABEL_6:
  v8 = [(NEDNSSettings *)self servers];

  if (!v8)
  {
    goto LABEL_21;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = self;
  v9 = [(NEDNSSettings *)self servers];
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
        objc_enumerationMutation(v9);
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
        [NEConfiguration addError:v15 toList:v4];
        v7 = 0;
        continue;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v11);
LABEL_20:

  self = v24;
LABEL_21:
  v16 = [(NEDNSSettings *)self searchDomains];

  if (v16)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = [(NEDNSSettings *)self searchDomains];
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v35 count:16];
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
            objc_enumerationMutation(v17);
          }

          if ((isa_nsstring(*(*(&v25 + 1) + 8 * j)) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            v7 = 0;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v19);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NEDNSSettings *)self servers];
  v6 = [v4 initWithServers:v5];

  [v6 setSearchDomains:self->_searchDomains];
  [v6 setDomainName:self->_domainName];
  [v6 setMatchDomains:self->_matchDomains];
  [v6 setMatchDomainsNoSearch:self->_matchDomainsNoSearch];
  [v6 setProxyAgentUUID:self->_proxyAgentUUID];
  [v6 setAllowFailover:self->_allowFailover];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(NEDNSSettings *)self servers];
  [v9 encodeObject:v4 forKey:@"Servers"];

  v5 = [(NEDNSSettings *)self searchDomains];
  [v9 encodeObject:v5 forKey:@"SearchDomains"];

  v6 = [(NEDNSSettings *)self domainName];
  [v9 encodeObject:v6 forKey:@"domainName"];

  v7 = [(NEDNSSettings *)self matchDomains];
  [v9 encodeObject:v7 forKey:@"matchDomains"];

  [v9 encodeBool:-[NEDNSSettings matchDomainsNoSearch](self forKey:{"matchDomainsNoSearch"), @"matchDomainsNoSearch"}];
  v8 = [(NEDNSSettings *)self proxyAgentUUID];
  [v9 encodeObject:v8 forKey:@"ProxyAgentUUID"];

  [v9 encodeBool:-[NEDNSSettings allowFailover](self forKey:{"allowFailover"), @"AllowFailover"}];
}

- (NEDNSSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = NEDNSSettings;
  v5 = [(NEDNSSettings *)&v26 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Servers"];
    servers = v5->_servers;
    v5->_servers = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"SearchDomains"];
    searchDomains = v5->_searchDomains;
    v5->_searchDomains = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainName"];
    domainName = v5->_domainName;
    v5->_domainName = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"matchDomains"];
    matchDomains = v5->_matchDomains;
    v5->_matchDomains = v21;

    v5->_matchDomainsNoSearch = [v4 decodeBoolForKey:@"matchDomainsNoSearch"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxyAgentUUID"];
    proxyAgentUUID = v5->_proxyAgentUUID;
    v5->_proxyAgentUUID = v23;

    v5->_allowFailover = [v4 decodeBoolForKey:@"AllowFailover"];
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