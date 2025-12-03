@interface NEPathController
+ (id)copyAggregatePathRules;
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)hasNonDefaultRules;
- (BOOL)removePathRuleBySigningIdentifier:(id)identifier;
- (NEPathController)initWithCoder:(id)coder;
- (id)copyPathRuleBySigningIdentifier:(id)identifier;
- (id)copyPathRuleSigningIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEPathController

+ (id)copyAggregatePathRules
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&copyAggregatePathRules_lock);
  configuration_generation = ne_get_configuration_generation();
  v3 = configuration_generation;
  v4 = copyAggregatePathRules_cachedRules;
  if (copyAggregatePathRules_cachedRules)
  {
    if (configuration_generation && configuration_generation == copyAggregatePathRules_savedGeneration)
    {
      copyAggregatePathRules_savedGeneration = configuration_generation;
      goto LABEL_19;
    }

    copyAggregatePathRules_cachedRules = 0;

    v4 = copyAggregatePathRules_cachedRules;
    copyAggregatePathRules_savedGeneration = v3;
    if (copyAggregatePathRules_cachedRules)
    {
      goto LABEL_19;
    }
  }

  else
  {
    copyAggregatePathRules_savedGeneration = configuration_generation;
  }

  v5 = NEHelperCopyAggregatePathRules();
  v6 = v5;
  if (v5 && MEMORY[0x1BFAFC5E0](v5) == MEMORY[0x1E69E9E70])
  {
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    bytes_ptr = xpc_data_get_bytes_ptr(v6);
    v9 = [v7 initWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(v6) freeWhenDone:0];
    v23 = 0;
    v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v9 error:&v23];
    v11 = v23;
    if (v11)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v11;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Failed to create a unarchiver for the aggregate path rules: %@", buf, 0xCu);
      }
    }

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v10 decodeObjectOfClasses:v15 forKey:@"config-aggregate-rules"];
    v17 = copyAggregatePathRules_cachedRules;
    copyAggregatePathRules_cachedRules = v16;

    if ((isa_nsarray(copyAggregatePathRules_cachedRules) & 1) == 0)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "Failed to de-serialize the aggregate path rules", buf, 2u);
      }

      v19 = copyAggregatePathRules_cachedRules;
      copyAggregatePathRules_cachedRules = 0;
    }
  }

  v4 = copyAggregatePathRules_cachedRules;
LABEL_19:
  v20 = v4;
  os_unfair_lock_unlock(&copyAggregatePathRules_lock);
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)hasNonDefaultRules
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pathRules = [(NEPathController *)self pathRules];
  v3 = [pathRules countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(pathRules);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 cellularBehavior] != 2 || objc_msgSend(v7, "wifiBehavior") != 2 && objc_msgSend(v7, "wifiBehavior") || (objc_msgSend(v7, "denyMulticast") & 1) != 0 || (objc_msgSend(v7, "denyAll") & 1) != 0)
        {
          v8 = 1;
          goto LABEL_16;
        }
      }

      v4 = [pathRules countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)copyPathRuleSigningIdentifiers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  pathRules = [(NEPathController *)self pathRules];
  v5 = [v3 initWithCapacity:{objc_msgSend(pathRules, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  pathRules2 = [(NEPathController *)self pathRules];
  v7 = [pathRules2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(pathRules2);
        }

        matchSigningIdentifier = [*(*(&v15 + 1) + 8 * v10) matchSigningIdentifier];
        [v5 addObject:matchSigningIdentifier];

        ++v10;
      }

      while (v8 != v10);
      v8 = [pathRules2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)removePathRuleBySigningIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  pathRules = [(NEPathController *)self pathRules];
  v7 = [v5 initWithArray:pathRules];

  if ([v7 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [v7 objectAtIndex:v8];
      matchSigningIdentifier = [v9 matchSigningIdentifier];
      v11 = [matchSigningIdentifier isEqualToString:identifierCopy];

      if (v11)
      {
        break;
      }

      if (++v8 >= [v7 count])
      {
        goto LABEL_5;
      }
    }

    [v7 removeObjectAtIndex:v8];
    [(NEPathController *)self setPathRules:v7];

    v12 = 1;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (id)copyPathRuleBySigningIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  pathRules = [(NEPathController *)self pathRules];
  v6 = [pathRules countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(pathRules);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        matchSigningIdentifier = [v9 matchSigningIdentifier];
        v11 = [matchSigningIdentifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [pathRules countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v20 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  pathRules = [(NEPathController *)self pathRules];

  if (pathRules)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    pathRules2 = [(NEPathController *)self pathRules];
    v7 = [pathRules2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(pathRules2);
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

        v8 = [pathRules2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v4 = [[NEPathController allocWithZone:?]];
  [(NEPathController *)v4 setEnabled:[(NEPathController *)self isEnabled]];
  pathRules = [(NEPathController *)self pathRules];

  if (pathRules)
  {
    v7 = objc_alloc(MEMORY[0x1E695DEC8]);
    pathRules2 = [(NEPathController *)self pathRules];
    v9 = [v7 initWithArray:pathRules2 copyItems:1];
    [(NEPathController *)v4 setPathRules:v9];
  }

  if (self && objc_getProperty(self, v6, 32, 1))
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    v13 = [v10 initWithArray:objc_getProperty(self copyItems:{v11, 32, 1), 1}];
    if (v4)
    {
      objc_setProperty_atomic_copy(v4, v12, v13, 32);
    }
  }

  [(NEPathController *)v4 setCellularFallbackFlags:[(NEPathController *)self cellularFallbackFlags]];
  [(NEPathController *)v4 setIgnoreRouteRules:[(NEPathController *)self ignoreRouteRules]];
  [(NEPathController *)v4 setIgnoreFallback:[(NEPathController *)self ignoreFallback]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEPathController isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  pathRules = [(NEPathController *)self pathRules];
  [coderCopy encodeObject:pathRules forKey:@"Rules"];

  if (self)
  {
    Property = objc_getProperty(self, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  [coderCopy encodeObject:Property forKey:@"PayloadAppRules"];
  [coderCopy encodeInteger:-[NEPathController cellularFallbackFlags](self forKey:{"cellularFallbackFlags"), @"cellularFallbackFlags"}];
  [coderCopy encodeBool:-[NEPathController ignoreRouteRules](self forKey:{"ignoreRouteRules"), @"IgnoreRouteRules"}];
  [coderCopy encodeBool:-[NEPathController ignoreFallback](self forKey:{"ignoreFallback"), @"IgnoreFallback"}];
}

- (NEPathController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NEPathController;
  v5 = [(NEPathController *)&v19 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Rules"];
    pathRules = v5->_pathRules;
    v5->_pathRules = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"PayloadAppRules"];
    payloadAppRules = v5->_payloadAppRules;
    v5->_payloadAppRules = v16;

    v5->_cellularFallbackFlags = [coderCopy decodeIntegerForKey:@"cellularFallbackFlags"];
    v5->_ignoreRouteRules = [coderCopy decodeBoolForKey:@"IgnoreRouteRules"];
    v5->_ignoreFallback = [coderCopy decodeBoolForKey:@"IgnoreFallback"];
  }

  return v5;
}

@end