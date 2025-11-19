@interface ASTIdentity
+ (ASTIdentity)identityWithIdentityAliases:(id)a3;
+ (ASTIdentity)identityWithSerialNumber:(id)a3;
- (ASTIdentity)initWithCoder:(id)a3;
- (ASTIdentity)initWithIdentityAliases:(id)a3;
- (id)_dictionariesFromIdentityAliases:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)userAgent;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASTIdentity

- (ASTIdentity)initWithIdentityAliases:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v39.receiver = self;
  v39.super_class = ASTIdentity;
  v6 = [(ASTIdentity *)&v39 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(ASTIdentity *)v6 _dictionariesFromIdentityAliases:v5];
    if ([MEMORY[0x277CCAAA0] isValidJSONObject:v8])
    {
      obj = a3;
      v33 = v5;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v36;
        v34 = v7;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v36 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v35 + 1) + 8 * i);
            v15 = [v14 objectForKeyedSubscript:{@"serialNumber", obj}];
            if (v15)
            {
              v16 = v15;
              v17 = [v14 objectForKeyedSubscript:@"type"];
              v18 = [v17 isEqualToString:@"FGSN"];

              if (v18)
              {
                v20 = [v14 objectForKeyedSubscript:@"serialNumber"];
                v7 = v34;
                [(ASTIdentity *)v34 setSerialNumber:v20];

                goto LABEL_15;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
          v7 = v34;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      objc_storeStrong(&v7->_aliases, obj);
      objc_storeStrong(&v7->_json, v8);
      v21 = [MEMORY[0x277CCA8D8] mainBundle];
      v22 = [v21 infoDictionary];
      v23 = [v22 objectForKeyedSubscript:@"CFBundleShortVersionString"];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = @"unknown";
      }

      objc_storeStrong(&v7->_hostAppVersion, v25);

      v19 = [MEMORY[0x277CCA8D8] mainBundle];
      v26 = [v19 infoDictionary];
      v27 = [v26 objectForKeyedSubscript:@"CFBundleVersion"];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = @"unknown";
      }

      objc_storeStrong(&v7->_hostAppBuild, v29);

      v5 = v33;
    }

    else
    {
      v19 = v7;
      v7 = 0;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (ASTIdentity)identityWithIdentityAliases:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentityAliases:v4];

  return v5;
}

+ (ASTIdentity)identityWithSerialNumber:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [ASTIdentityAlias identityAliasWithSerialNumber:a3];
  v5 = [a1 alloc];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [v5 initWithIdentityAliases:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)userAgent
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__ASTIdentity_userAgent__block_invoke;
  block[3] = &unk_278CBCFB0;
  block[4] = self;
  if (userAgent_onceToken != -1)
  {
    dispatch_once(&userAgent_onceToken, block);
  }

  return userAgent_userAgent;
}

void __24__ASTIdentity_userAgent__block_invoke(uint64_t a1)
{
  v16 = MGCopyAnswer();
  v2 = MGCopyAnswer();
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 infoDictionary];
  v5 = [v4 objectForKeyedSubscript:@"CFBundleExecutable"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x277CCAC38] processInfo];
    v7 = [v8 processName];
  }

  v9 = MGCopyAnswer();
  v10 = MGCopyAnswer();
  v11 = MEMORY[0x277CCACA8];
  v12 = +[ASTEnvironment protocolVersion];
  v13 = [*(a1 + 32) hostAppVersion];
  v14 = [v11 stringWithFormat:@"OS/%@ osVersion/%@ Device/%@; AST/%@; BuildVersion/%@; %@/%@", v10, v16, v9, v12, v2, v7, v13];;
  v15 = userAgent_userAgent;
  userAgent_userAgent = v14;
}

- (ASTIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ASTIdentity;
  v5 = [(ASTIdentity *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostAppVersion"];
    hostAppVersion = v5->_hostAppVersion;
    v5->_hostAppVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostAppBuild"];
    hostAppBuild = v5->_hostAppBuild;
    v5->_hostAppBuild = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"aliases"];
    aliases = v5->_aliases;
    v5->_aliases = v14;

    v16 = [(ASTIdentity *)v5 _dictionariesFromIdentityAliases:v5->_aliases];
    if ([MEMORY[0x277CCAAA0] isValidJSONObject:v16])
    {
      objc_storeStrong(&v5->_json, v16);
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTIdentity *)self hostAppVersion];
  [v4 encodeObject:v5 forKey:@"hostAppVersion"];

  v6 = [(ASTIdentity *)self hostAppBuild];
  [v4 encodeObject:v6 forKey:@"hostAppBuild"];

  v7 = [(ASTIdentity *)self aliases];
  [v4 encodeObject:v7 forKey:@"aliases"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_hostAppVersion copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_hostAppBuild copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSArray *)self->_aliases copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (id)_dictionariesFromIdentityAliases:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) dictionary];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end