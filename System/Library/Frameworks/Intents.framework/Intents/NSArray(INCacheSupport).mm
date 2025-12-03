@interface NSArray(INCacheSupport)
- (void)_intents_cacheableObjects;
- (void)_intents_updateContainerWithCache:()INCacheSupport;
@end

@implementation NSArray(INCacheSupport)

- (void)_intents_cacheableObjects
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 conformsToProtocol:{&unk_1F02E1EC8, v14}])
        {
          _intents_cacheableObjects = [v8 _intents_cacheableObjects];
          if ([_intents_cacheableObjects count])
          {
            [v2 unionSet:_intents_cacheableObjects];
          }
        }

        else if ([v8 conformsToProtocol:&unk_1F02FF8D8])
        {
          [v2 addObject:v8];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v10 = v2;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_intents_updateContainerWithCache:()INCacheSupport
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 conformsToProtocol:{&unk_1F02E1EC8, v17}])
        {
          [v10 _intents_updateContainerWithCache:v4];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            _identifier = [v11 _identifier];
            v13 = [v4 cacheableObjectForIdentifier:_identifier];

            if (v13)
            {
              _identifier2 = [v11 _identifier];
              v15 = [v4 cacheableObjectForIdentifier:_identifier2];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v15 _imageSize];
                [v11 _setImageSize:?];
              }
            }
          }
        }
      }

      v7 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end