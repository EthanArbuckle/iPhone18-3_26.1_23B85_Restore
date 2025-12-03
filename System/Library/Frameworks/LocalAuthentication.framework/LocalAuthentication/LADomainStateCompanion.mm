@interface LADomainStateCompanion
- (LADomainStateCompanion)initWithResult:(id)result;
- (id)description;
- (id)stateHashForCompanionType:(int64_t)type;
- (void)_resolveCombinedStateHash;
@end

@implementation LADomainStateCompanion

- (LADomainStateCompanion)initWithResult:(id)result
{
  v34 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v32.receiver = self;
  v32.super_class = LADomainStateCompanion;
  v5 = [(LADomainStateCompanion *)&v32 init];
  if (v5)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v8 = [resultCopy objectForKeyedSubscript:*MEMORY[0x1E69AD0D8]];
    v27 = resultCopy;
    v9 = [resultCopy objectForKeyedSubscript:*MEMORY[0x1E69AD0E8]];
    v10 = objc_opt_new();
    availableCompanions = v5->_availableCompanions;
    v5->_availableCompanions = v10;

    v12 = objc_opt_new();
    stateHashForCompanionType = v5->_stateHashForCompanionType;
    v5->_stateHashForCompanionType = v12;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [v14 objectForKeyedSubscript:v19];
          bOOLValue = [v20 BOOLValue];

          if (bOOLValue)
          {
            [(NSMutableSet *)v5->_availableCompanions addObject:v19];
            v22 = MEMORY[0x1E69AD258];
            v23 = [v9 objectForKeyedSubscript:v19];
            v24 = [v22 saltHash:v23 withBundleID:bundleIdentifier];

            [(NSMutableDictionary *)v5->_stateHashForCompanionType setObject:v24 forKeyedSubscript:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }

    [(LADomainStateCompanion *)v5 _resolveCombinedStateHash];
    resultCopy = v27;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)stateHashForCompanionType:(int64_t)type
{
  stateHashForCompanionType = self->_stateHashForCompanionType;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSMutableDictionary *)stateHashForCompanionType objectForKeyedSubscript:v4];

  return v5;
}

- (void)_resolveCombinedStateHash
{
  v20 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_stateHashForCompanionType allKeys];
  v4 = [allKeys sortedArrayUsingSelector:sel_compare_];

  if ([v4 count] > 1)
  {
    allValues = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(NSMutableDictionary *)self->_stateHashForCompanionType objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v11), v15];
          [allValues appendData:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    firstObject = [MEMORY[0x1E69AD258] createHashForDomainState:allValues];
  }

  else
  {
    allValues = [(NSMutableDictionary *)self->_stateHashForCompanionType allValues];
    firstObject = [allValues firstObject];
  }

  stateHash = self->_stateHash;
  self->_stateHash = firstObject;

  v14 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  availableCompanionTypes = [(LADomainStateCompanion *)self availableCompanionTypes];
  v7 = [v5 stringWithFormat:@"availableCompanions: %@", availableCompanionTypes];
  v16[0] = v7;
  v8 = MEMORY[0x1E696AEC0];
  stateHash = [(LADomainStateCompanion *)self stateHash];
  v10 = [v8 stringWithFormat:@"stateHash: %@", stateHash];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end