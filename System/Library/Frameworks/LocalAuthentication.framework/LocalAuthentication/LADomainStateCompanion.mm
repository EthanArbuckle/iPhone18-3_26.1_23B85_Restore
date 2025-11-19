@interface LADomainStateCompanion
- (LADomainStateCompanion)initWithResult:(id)a3;
- (id)description;
- (id)stateHashForCompanionType:(int64_t)a3;
- (void)_resolveCombinedStateHash;
@end

@implementation LADomainStateCompanion

- (LADomainStateCompanion)initWithResult:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = LADomainStateCompanion;
  v5 = [(LADomainStateCompanion *)&v32 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v7 = [v6 bundleIdentifier];

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AD0D8]];
    v27 = v4;
    v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69AD0E8]];
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
          v21 = [v20 BOOLValue];

          if (v21)
          {
            [(NSMutableSet *)v5->_availableCompanions addObject:v19];
            v22 = MEMORY[0x1E69AD258];
            v23 = [v9 objectForKeyedSubscript:v19];
            v24 = [v22 saltHash:v23 withBundleID:v7];

            [(NSMutableDictionary *)v5->_stateHashForCompanionType setObject:v24 forKeyedSubscript:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v16);
    }

    [(LADomainStateCompanion *)v5 _resolveCombinedStateHash];
    v4 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)stateHashForCompanionType:(int64_t)a3
{
  stateHashForCompanionType = self->_stateHashForCompanionType;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)stateHashForCompanionType objectForKeyedSubscript:v4];

  return v5;
}

- (void)_resolveCombinedStateHash
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_stateHashForCompanionType allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  if ([v4 count] > 1)
  {
    v5 = objc_opt_new();
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
          [v5 appendData:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v6 = [MEMORY[0x1E69AD258] createHashForDomainState:v5];
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_stateHashForCompanionType allValues];
    v6 = [v5 firstObject];
  }

  stateHash = self->_stateHash;
  self->_stateHash = v6;

  v14 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(LADomainStateCompanion *)self availableCompanionTypes];
  v7 = [v5 stringWithFormat:@"availableCompanions: %@", v6];
  v16[0] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(LADomainStateCompanion *)self stateHash];
  v10 = [v8 stringWithFormat:@"stateHash: %@", v9];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end