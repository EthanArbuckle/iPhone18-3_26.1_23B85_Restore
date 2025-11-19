@interface NEPathController
+ (id)copyAggregatePathRules;
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)hasNonDefaultRules;
- (BOOL)removePathRuleBySigningIdentifier:(id)a3;
- (NEPathController)initWithCoder:(id)a3;
- (id)copyPathRuleBySigningIdentifier:(id)a3;
- (id)copyPathRuleSigningIdentifiers;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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
  v2 = [(NEPathController *)self pathRules];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 cellularBehavior] != 2 || objc_msgSend(v7, "wifiBehavior") != 2 && objc_msgSend(v7, "wifiBehavior") || (objc_msgSend(v7, "denyMulticast") & 1) != 0 || (objc_msgSend(v7, "denyAll") & 1) != 0)
        {
          v8 = 1;
          goto LABEL_16;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(NEPathController *)self pathRules];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NEPathController *)self pathRules];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) matchSigningIdentifier];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)removePathRuleBySigningIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [(NEPathController *)self pathRules];
  v7 = [v5 initWithArray:v6];

  if ([v7 count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [v7 objectAtIndex:v8];
      v10 = [v9 matchSigningIdentifier];
      v11 = [v10 isEqualToString:v4];

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

- (id)copyPathRuleBySigningIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NEPathController *)self pathRules];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 matchSigningIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEPathController *)self pathRules];

  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(NEPathController *)self pathRules];
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
  v4 = [[NEPathController allocWithZone:?]];
  [(NEPathController *)v4 setEnabled:[(NEPathController *)self isEnabled]];
  v5 = [(NEPathController *)self pathRules];

  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E695DEC8]);
    v8 = [(NEPathController *)self pathRules];
    v9 = [v7 initWithArray:v8 copyItems:1];
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

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeBool:-[NEPathController isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  v4 = [(NEPathController *)self pathRules];
  [v7 encodeObject:v4 forKey:@"Rules"];

  if (self)
  {
    Property = objc_getProperty(self, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  [v7 encodeObject:Property forKey:@"PayloadAppRules"];
  [v7 encodeInteger:-[NEPathController cellularFallbackFlags](self forKey:{"cellularFallbackFlags"), @"cellularFallbackFlags"}];
  [v7 encodeBool:-[NEPathController ignoreRouteRules](self forKey:{"ignoreRouteRules"), @"IgnoreRouteRules"}];
  [v7 encodeBool:-[NEPathController ignoreFallback](self forKey:{"ignoreFallback"), @"IgnoreFallback"}];
}

- (NEPathController)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NEPathController;
  v5 = [(NEPathController *)&v19 init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"Enabled"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Rules"];
    pathRules = v5->_pathRules;
    v5->_pathRules = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"PayloadAppRules"];
    payloadAppRules = v5->_payloadAppRules;
    v5->_payloadAppRules = v16;

    v5->_cellularFallbackFlags = [v4 decodeIntegerForKey:@"cellularFallbackFlags"];
    v5->_ignoreRouteRules = [v4 decodeBoolForKey:@"IgnoreRouteRules"];
    v5->_ignoreFallback = [v4 decodeBoolForKey:@"IgnoreFallback"];
  }

  return v5;
}

@end