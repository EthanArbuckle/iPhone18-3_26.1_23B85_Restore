@interface AVMediaPresentationSelector
- (AVMediaPresentationSelector)initWithFigAssetCustomMediaSelectionSchemeSelector:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_settingsSatisfiableByOptions:(id)a3 satisfiableLanguages:(id)a4;
- (void)dealloc;
@end

@implementation AVMediaPresentationSelector

- (AVMediaPresentationSelector)initWithFigAssetCustomMediaSelectionSchemeSelector:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AVMediaPresentationSelector;
  v4 = [(AVMediaPresentationSelector *)&v18 init];
  if (v4)
  {
    v4->_identifier = [objc_msgSend(a3 objectForKey:{@"CustomMediaSelectionSchemeSelector", "copy"}];
    v4->_displayNames = [a3 objectForKey:@"CustomMediaSelectionSchemeSelectorDisplayNames"];
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [a3 objectForKey:@"CustomMediaSelectionSchemeSelectorSettings"];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [[AVMediaPresentationSetting alloc] initWithFigAssetCustomMediaSelectionSchemeSetting:*(*(&v14 + 1) + 8 * v10)];
          if (v11)
          {
            v12 = v11;
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    v4->_mediaPresentationSettings = v5;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMediaPresentationSelector;
  [(AVMediaPresentationSelector *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  identifier = self->_identifier;
  v6 = [a3 identifier];

  return [(NSString *)identifier isEqualToString:v6];
}

- (id)_settingsSatisfiableByOptions:(id)a3 satisfiableLanguages:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v21 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(AVMediaPresentationSelector *)self settings];
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v31 = [v11 mediaCharacteristic];
        v12 = +[AVMediaSelectionGroup mediaSelectionOptionsFromArray:withMediaCharacteristics:](AVMediaSelectionGroup, "mediaSelectionOptionsFromArray:withMediaCharacteristics:", a3, [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1]);
        if ([(NSArray *)v12 count])
        {
          [v21 addObject:v11];
          if (a4)
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v23;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v23 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = [*(*(&v22 + 1) + 8 * j) extendedLanguageTag];
                  if (v17)
                  {
                    v18 = v17;
                    if (([a4 containsObject:v17] & 1) == 0)
                    {
                      [a4 addObject:v18];
                    }
                  }
                }

                v14 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v14);
            }
          }
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  return v21;
}

@end