@interface AVMediaPresentationSelector
- (AVMediaPresentationSelector)initWithFigAssetCustomMediaSelectionSchemeSelector:(id)selector;
- (BOOL)isEqual:(id)equal;
- (id)_settingsSatisfiableByOptions:(id)options satisfiableLanguages:(id)languages;
- (void)dealloc;
@end

@implementation AVMediaPresentationSelector

- (AVMediaPresentationSelector)initWithFigAssetCustomMediaSelectionSchemeSelector:(id)selector
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AVMediaPresentationSelector;
  v4 = [(AVMediaPresentationSelector *)&v18 init];
  if (v4)
  {
    v4->_identifier = [objc_msgSend(selector objectForKey:{@"CustomMediaSelectionSchemeSelector", "copy"}];
    v4->_displayNames = [selector objectForKey:@"CustomMediaSelectionSchemeSelectorDisplayNames"];
    array = [MEMORY[0x1E695DF70] array];
    v6 = [selector objectForKey:@"CustomMediaSelectionSchemeSelectorSettings"];
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
            [array addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    v4->_mediaPresentationSettings = array;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMediaPresentationSelector;
  [(AVMediaPresentationSelector *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  identifier = self->_identifier;
  identifier = [equal identifier];

  return [(NSString *)identifier isEqualToString:identifier];
}

- (id)_settingsSatisfiableByOptions:(id)options satisfiableLanguages:(id)languages
{
  v33 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
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
        mediaCharacteristic = [v11 mediaCharacteristic];
        v12 = +[AVMediaSelectionGroup mediaSelectionOptionsFromArray:withMediaCharacteristics:](AVMediaSelectionGroup, "mediaSelectionOptionsFromArray:withMediaCharacteristics:", options, [MEMORY[0x1E695DEC8] arrayWithObjects:&mediaCharacteristic count:1]);
        if ([(NSArray *)v12 count])
        {
          [array addObject:v11];
          if (languages)
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

                  extendedLanguageTag = [*(*(&v22 + 1) + 8 * j) extendedLanguageTag];
                  if (extendedLanguageTag)
                  {
                    v18 = extendedLanguageTag;
                    if (([languages containsObject:extendedLanguageTag] & 1) == 0)
                    {
                      [languages addObject:v18];
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

  return array;
}

@end