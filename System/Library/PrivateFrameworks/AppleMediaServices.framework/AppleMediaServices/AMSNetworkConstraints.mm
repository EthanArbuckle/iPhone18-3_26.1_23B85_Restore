@interface AMSNetworkConstraints
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_networkConstraintsForMediaType:(id)type withArray:(id)array;
+ (id)createBagForSubProfile;
+ (id)networkConstraintsForMediaType:(id)type withBag:(id)bag;
- (AMSNetworkConstraints)init;
- (BOOL)hasSizeLimitForNetworkType:(id)type;
- (BOOL)isAnyNetworkTypeEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConstraints:(id)constraints;
- (NSString)description;
- (id)_initWithStoreConstraintDictionary:(id)dictionary;
- (int64_t)_sizeLimitForNetworkType:(id)type;
- (unint64_t)hash;
- (void)_disableAllNetworkTypes;
- (void)_setSizeLimit:(int64_t)limit forNetworkType:(id)type;
@end

@implementation AMSNetworkConstraints

- (AMSNetworkConstraints)init
{
  v5.receiver = self;
  v5.super_class = AMSNetworkConstraints;
  v2 = [(AMSNetworkConstraints *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AMSNetworkConstraints *)v2 _setSizeLimit:-1 forNetworkType:@"None"];
  }

  return v3;
}

+ (id)networkConstraintsForMediaType:(id)type withBag:(id)bag
{
  typeCopy = type;
  bagCopy = bag;
  v8 = objc_alloc_init(AMSMutablePromise);
  v9 = [bagCopy arrayForKey:@"mobile-network-constraints"];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__AMSNetworkConstraints_networkConstraintsForMediaType_withBag___block_invoke;
  v15[3] = &unk_1E73BA348;
  v10 = v8;
  v17 = typeCopy;
  selfCopy = self;
  v16 = v10;
  v11 = typeCopy;
  [v9 valueWithCompletion:v15];

  v12 = v17;
  v13 = v10;

  return v10;
}

void __64__AMSNetworkConstraints_networkConstraintsForMediaType_withBag___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);

    [v5 finishWithError:a4];
  }

  else
  {
    v6 = [*(a1 + 48) _networkConstraintsForMediaType:*(a1 + 40) withArray:a2];
    v7 = *(a1 + 32);
    v9 = v6;
    if (v6)
    {
      [v7 finishWithResult:v6];
    }

    else
    {
      v8 = AMSError(7, @"Media type not found", @"Could not find network constraints", 0);
      [v7 finishWithError:v8];
    }
  }
}

- (id)_initWithStoreConstraintDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(AMSNetworkConstraints *)self init];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = dictionaryCopy;
    v6 = dictionaryCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v6 objectForKey:v11];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
          {
            longLongValue = [v12 longLongValue];
            if (longLongValue == 1)
            {
              v14 = -1;
            }

            else
            {
              v14 = longLongValue;
            }

            [(AMSNetworkConstraints *)v5 _setSizeLimit:v14 forNetworkType:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    dictionaryCopy = v16;
  }

  return v5;
}

- (BOOL)isAnyNetworkTypeEnabled
{
  v21 = *MEMORY[0x1E69E9840];
  sizeLimits = [(AMSNetworkConstraints *)self sizeLimits];
  v4 = [sizeLimits count];

  if (!v4)
  {
    return 1;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  sizeLimits2 = [(AMSNetworkConstraints *)self sizeLimits];
  v6 = [sizeLimits2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(sizeLimits2);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        sizeLimits3 = [(AMSNetworkConstraints *)self sizeLimits];
        v12 = [sizeLimits3 objectForKeyedSubscript:v10];

        longLongValue = [v12 longLongValue];
        if ((longLongValue & 0x8000000000000000) == 0)
        {
          v14 = 1;
          goto LABEL_12;
        }
      }

      v7 = [sizeLimits2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)hasSizeLimitForNetworkType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_sizeLimits objectForKeyedSubscript:type];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isEqualToConstraints:(id)constraints
{
  constraintsCopy = constraints;
  sizeLimits = [(AMSNetworkConstraints *)self sizeLimits];
  if (!sizeLimits)
  {
    sizeLimits2 = [constraintsCopy sizeLimits];
    if (!sizeLimits2)
    {
      v9 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  sizeLimits3 = [(AMSNetworkConstraints *)self sizeLimits];
  sizeLimits4 = [constraintsCopy sizeLimits];
  v9 = [sizeLimits3 isEqual:sizeLimits4];

  if (!sizeLimits)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_138 != -1)
  {
    dispatch_once(&_MergedGlobals_138, &__block_literal_global_104);
  }

  v3 = qword_1ED6E2FD8;

  return v3;
}

void __38__AMSNetworkConstraints_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E2FD8;
  qword_1ED6E2FD8 = @"AMSNetworkConstraints";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E2FE0 != -1)
  {
    dispatch_once(&qword_1ED6E2FE0, &__block_literal_global_25);
  }

  v3 = qword_1ED6E2FE8;

  return v3;
}

void __45__AMSNetworkConstraints_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E2FE8;
  qword_1ED6E2FE8 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

- (NSString)description
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_sizeLimits;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = MEMORY[0x1E696AEC0];
        v11 = [(NSMutableDictionary *)self->_sizeLimits objectForKeyedSubscript:v9];
        v12 = [v10 stringWithFormat:@"%@: %@", v9, v11];

        [v3 addObject:v12];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18.receiver = self;
    v18.super_class = AMSNetworkConstraints;
    v14 = [(AMSNetworkConstraints *)&v18 description];
    v15 = [v3 componentsJoinedByString:{@", "}];
    v16 = [v13 initWithFormat:@"%@: %@", v14, v15];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = AMSNetworkConstraints;
    v16 = [(AMSNetworkConstraints *)&v19 description];
  }

  return v16;
}

- (unint64_t)hash
{
  sizeLimits = [(AMSNetworkConstraints *)self sizeLimits];
  v3 = [sizeLimits hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSNetworkConstraints *)self isEqualToConstraints:equalCopy];
  }

  return v5;
}

- (void)_disableAllNetworkTypes
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (!self->_sizeLimits)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sizeLimits = self->_sizeLimits;
    self->_sizeLimits = v3;
  }

  v17[0] = @"None";
  v17[1] = @"2G";
  v17[2] = @"WiFi";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-1, v12}];
        [(NSMutableDictionary *)self->_sizeLimits setObject:v11 forKeyedSubscript:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

+ (id)_networkConstraintsForMediaType:(id)type withArray:(id)array
{
  v26 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  arrayCopy = array;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [arrayCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    v20 = typeCopy;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectForKey:@"kinds"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 count] && objc_msgSend(v13, "containsObject:", typeCopy))
          {
            v14 = v9;
            v15 = [v12 objectForKey:@"enabled"];
            if (!v15 || (objc_opt_respondsToSelector() & 1) != 0 && ([v15 BOOLValue] & 1) != 0)
            {
              v16 = [v12 objectForKey:{@"size-limits", v20}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = [[AMSNetworkConstraints alloc] _initWithStoreConstraintDictionary:v16];
              }

              else
              {
                v17 = objc_alloc_init(AMSNetworkConstraints);
              }

              v18 = v17;
            }

            else
            {
              v18 = objc_alloc_init(AMSNetworkConstraints);

              [(AMSNetworkConstraints *)v18 _disableAllNetworkTypes];
            }

            v9 = v18;
            typeCopy = v20;
          }
        }
      }

      v8 = [arrayCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_setSizeLimit:(int64_t)limit forNetworkType:(id)type
{
  typeCopy = type;
  if (!self->_sizeLimits)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sizeLimits = self->_sizeLimits;
    self->_sizeLimits = v6;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:limit];
  [(NSMutableDictionary *)self->_sizeLimits setObject:v8 forKeyedSubscript:typeCopy];
}

- (int64_t)_sizeLimitForNetworkType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_sizeLimits objectForKeyedSubscript:type];
  v4 = v3;
  if (v3)
  {
    longLongValue = [v3 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end