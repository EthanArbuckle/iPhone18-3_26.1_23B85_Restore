@interface NEPerApp
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)removeAppRuleByID:(id)d;
- (NEPerApp)init;
- (NEPerApp)initWithCoder:(id)coder;
- (id)copyAppRuleByID:(id)d;
- (id)copyAppRuleIDs;
- (id)copyCachedMachOUUIDs;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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
  appRules = [(NEPerApp *)self appRules];
  v5 = [appRules countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(appRules);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        cachedMachOUUIDs = [v9 cachedMachOUUIDs];
        v11 = [cachedMachOUUIDs count];

        if (v11)
        {
          cachedMachOUUIDs2 = [v9 cachedMachOUUIDs];
          [v3 addObjectsFromArray:cachedMachOUUIDs2];
        }
      }

      v6 = [appRules countByEnumeratingWithState:&v17 objects:v21 count:16];
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
      matchSigningIdentifier = [v10 matchSigningIdentifier];
      v12 = [matchSigningIdentifier isEqualToString:dCopy];

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

- (id)copyAppRuleByID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
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

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v20 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  appRules = [(NEPerApp *)self appRules];

  if (appRules)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    appRules2 = [(NEPerApp *)self appRules];
    v7 = [appRules2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(appRules2);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 &= [v12 checkValidityAndCollectErrors:errorsCopy];
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v10 = 0;
          }
        }

        v8 = [appRules2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  appRules = [(NEPerApp *)self appRules];

  if (appRules)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    appRules2 = [(NEPerApp *)self appRules];
    v8 = [v6 initWithArray:appRules2 copyItems:1];
    [v4 setAppRules:v8];
  }

  v9 = objc_alloc(MEMORY[0x1E695DEC8]);
  excludedDomains = [(NEPerApp *)self excludedDomains];
  v11 = [v9 initWithArray:excludedDomains copyItems:1];
  [v4 setExcludedDomains:v11];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appRules = [(NEPerApp *)self appRules];
  [coderCopy encodeObject:appRules forKey:@"Rules"];

  excludedDomains = [(NEPerApp *)self excludedDomains];
  [coderCopy encodeObject:excludedDomains forKey:@"ExcludedDomains"];
}

- (NEPerApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NEPerApp *)self init];
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