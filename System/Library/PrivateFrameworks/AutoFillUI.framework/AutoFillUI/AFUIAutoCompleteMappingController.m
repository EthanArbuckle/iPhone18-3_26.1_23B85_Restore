@interface AFUIAutoCompleteMappingController
+ (id)sharedInstance;
- (id)heuristicStringsForTextContentTypes:(id)a3;
- (id)heuristicTextContentTypeForHints:(id)a3 textContentTypesToSkip:(id)a4;
- (void)_cachePlistMappings;
@end

@implementation AFUIAutoCompleteMappingController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AFUIAutoCompleteMappingController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___instance;

  return v2;
}

uint64_t __51__AFUIAutoCompleteMappingController_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (void)_cachePlistMappings
{
  if (!self->_cache)
  {
    v11[10] = v2;
    v11[11] = v3;
    v5 = [MEMORY[0x1E695DF90] dictionary];
    cache = self->_cache;
    self->_cache = v5;

    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 pathForResource:@"ABAutoCompleteMappings" ofType:@"plist"];

    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v8 options:1 error:0];
    v11[5] = 0;
    [MEMORY[0x1E695DFD8] setWithObject:@"Mappings"];
    _CFPropertyListCreateFiltered();
    v10 = [0 objectForKey:@"Mappings"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__AFUIAutoCompleteMappingController__cachePlistMappings__block_invoke;
    v11[3] = &unk_1E8424D20;
    v11[4] = self;
    [v10 enumerateObjectsUsingBlock:v11];
  }
}

void __56__AFUIAutoCompleteMappingController__cachePlistMappings__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"AutocompleteTokens"];
  v5 = [v3 objectForKey:@"FieldLabels"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(a1 + 32) + 8) setObject:v5 forKey:{*(*(&v12 + 1) + 8 * v10++), v12}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)heuristicStringsForTextContentTypes:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 mutableCopy];
    if (self->_cache)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v30;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v30 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v29 + 1) + 8 * i);
            v12 = [(NSMutableDictionary *)self->_cache objectForKey:v11];

            if (v12)
            {
              [v5 removeObject:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v8);
      }
    }

    if ([v5 count])
    {
      [(AFUIAutoCompleteMappingController *)self _cachePlistMappings];
    }

    v13 = [MEMORY[0x1E695DFA8] set];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v4;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      v18 = MEMORY[0x1E695E0F0];
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [(NSMutableDictionary *)self->_cache objectForKey:*(*(&v25 + 1) + 8 * j), v25];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v18;
          }

          [v13 addObjectsFromArray:v22];
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v13 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)heuristicTextContentTypeForHints:(id)a3 textContentTypesToSkip:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    [(AFUIAutoCompleteMappingController *)self _cachePlistMappings];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2;
    v19 = __Block_byref_object_dispose__2;
    v20 = 0;
    cache = self->_cache;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __93__AFUIAutoCompleteMappingController_heuristicTextContentTypeForHints_textContentTypesToSkip___block_invoke;
    v11[3] = &unk_1E8424D48;
    v12 = v7;
    v13 = v6;
    v14 = &v15;
    [(NSMutableDictionary *)cache enumerateKeysAndObjectsUsingBlock:v11];
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __93__AFUIAutoCompleteMappingController_heuristicTextContentTypeForHints_textContentTypesToSkip___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    v20 = v7;
    v21 = v6;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = *(a1 + 40);
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v25;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v25 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                if (![*(*(&v24 + 1) + 8 * j) compare:v13 options:{129, v20, v21}])
                {
                  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
                  *a4 = 1;
                  goto LABEL_17;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    v7 = v20;
    v6 = v21;
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end