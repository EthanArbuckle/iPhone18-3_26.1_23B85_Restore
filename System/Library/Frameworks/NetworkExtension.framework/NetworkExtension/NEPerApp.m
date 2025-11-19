@interface NEPerApp
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)removeAppRuleByID:(id)a3;
- (NEPerApp)init;
- (NEPerApp)initWithCoder:(id)a3;
- (id)copyAppRuleByID:(id)a3;
- (id)copyAppRuleIDs;
- (id)copyCachedMachOUUIDs;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEPerApp

- (id)copyCachedMachOUUIDs
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(NEPerApp *)self appRules];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 cachedMachOUUIDs];
        v11 = [v10 count];

        if (v11)
        {
          v12 = [v9 cachedMachOUUIDs];
          [v3 addObjectsFromArray:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
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

        v9 = [*(*(&v13 + 1) + 8 * v8) matchSigningIdentifier];
        [v3 addObject:v9];

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

- (BOOL)removeAppRuleByID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  appRules = self->_appRules;
  p_appRules = &self->_appRules;
  v8 = [v5 initWithArray:appRules];
  if ([v8 count])
  {
    v9 = 0;
    while (1)
    {
      v10 = [v8 objectAtIndex:v9];
      v11 = [v10 matchSigningIdentifier];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (++v9 >= [v8 count])
      {
        goto LABEL_5;
      }
    }

    [v8 removeObjectAtIndex:v9];
    objc_storeStrong(p_appRules, v8);

    v13 = 1;
  }

  else
  {
LABEL_5:
    v13 = 0;
  }

  return v13;
}

- (id)copyAppRuleByID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5->_appRules;
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
        v11 = [v10 matchSigningIdentifier];
        v12 = [v11 isEqualToString:v4];

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

  objc_sync_exit(v5);
  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEPerApp *)self appRules];

  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(NEPerApp *)self appRules];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 &= [v12 checkValidityAndCollectErrors:v4];
          }

          else
          {
            [NEConfiguration addError:v4 toList:?];
            v10 = 0;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NEPerApp *)self appRules];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    v7 = [(NEPerApp *)self appRules];
    v8 = [v6 initWithArray:v7 copyItems:1];
    [v4 setAppRules:v8];
  }

  v9 = objc_alloc(MEMORY[0x1E695DEC8]);
  v10 = [(NEPerApp *)self excludedDomains];
  v11 = [v9 initWithArray:v10 copyItems:1];
  [v4 setExcludedDomains:v11];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEPerApp *)self appRules];
  [v4 encodeObject:v5 forKey:@"Rules"];

  v6 = [(NEPerApp *)self excludedDomains];
  [v4 encodeObject:v6 forKey:@"ExcludedDomains"];
}

- (NEPerApp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEPerApp *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Rules"];
    appRules = v5->_appRules;
    v5->_appRules = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"ExcludedDomains"];
    excludedDomains = v5->_excludedDomains;
    v5->_excludedDomains = v14;
  }

  return v5;
}

- (NEPerApp)init
{
  v3.receiver = self;
  v3.super_class = NEPerApp;
  result = [(NEPerApp *)&v3 init];
  if (result)
  {
    result->_noRestriction = 1;
  }

  return result;
}

@end