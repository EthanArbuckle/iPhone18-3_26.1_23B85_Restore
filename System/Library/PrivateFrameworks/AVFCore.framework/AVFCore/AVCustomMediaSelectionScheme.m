@interface AVCustomMediaSelectionScheme
- (AVCustomMediaSelectionScheme)initWithGroup:(id)a3 figAssetMediaSelectionGroupCustomMediaSelectionScheme:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_selectorForSetting:(id)a3;
- (id)description;
- (id)mediaPresentationSettingsForSelector:(id)a3 complementaryToLanguage:(id)a4 settings:(id)a5;
- (void)dealloc;
@end

@implementation AVCustomMediaSelectionScheme

- (AVCustomMediaSelectionScheme)initWithGroup:(id)a3 figAssetMediaSelectionGroupCustomMediaSelectionScheme:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = AVCustomMediaSelectionScheme;
  v6 = [(AVCustomMediaSelectionScheme *)&v56 init];
  if (v6)
  {
    v6->_weakReferenceToGroup = [a3 _weakReference];
    v37 = v6;
    v6->_options = [objc_msgSend(a3 "options")];
    v7 = [MEMORY[0x1E695DF70] array];
    v39 = [MEMORY[0x1E695DF70] array];
    v36 = a4;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [a4 objectForKey:@"CustomMediaSelectionSchemeGroupSelectors"];
    v8 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v53;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v53 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = [[AVMediaPresentationSelector alloc] initWithFigAssetCustomMediaSelectionSchemeSelector:*(*(&v52 + 1) + 8 * i)];
          if (v12)
          {
            v13 = v12;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v14 = [(AVMediaPresentationSelector *)v12 settings];
            v15 = [(NSArray *)v14 countByEnumeratingWithState:&v48 objects:v59 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v49;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v49 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = [*(*(&v48 + 1) + 8 * j) mediaCharacteristic];
                  if (([v7 containsObject:v19] & 1) == 0)
                  {
                    [v7 addObject:v19];
                  }
                }

                v16 = [(NSArray *)v14 countByEnumeratingWithState:&v48 objects:v59 count:16];
              }

              while (v16);
            }

            [v39 addObject:v13];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v9);
    }

    v37->_mediaPresentationSelectors = v39;
    v20 = [MEMORY[0x1E695DF70] array];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    options = v37->_options;
    v22 = [(NSArray *)options countByEnumeratingWithState:&v44 objects:v58 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v45;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(options);
          }

          v26 = *(*(&v44 + 1) + 8 * k);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v27 = [v7 countByEnumeratingWithState:&v40 objects:v57 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v41;
            while (2)
            {
              for (m = 0; m != v28; ++m)
              {
                if (*v41 != v29)
                {
                  objc_enumerationMutation(v7);
                }

                if ([v26 hasMediaCharacteristic:*(*(&v40 + 1) + 8 * m)])
                {
                  v31 = [v26 extendedLanguageTag];
                  if (v31)
                  {
                    v32 = v31;
                    if (([v20 containsObject:v31] & 1) == 0)
                    {
                      [v20 addObject:v32];
                    }
                  }

                  goto LABEL_37;
                }
              }

              v28 = [v7 countByEnumeratingWithState:&v40 objects:v57 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

LABEL_37:
          ;
        }

        v23 = [(NSArray *)options countByEnumeratingWithState:&v44 objects:v58 count:16];
      }

      while (v23);
    }

    v6 = v37;
    v37->_availableLanguageTags = v20;
    v33 = [v36 objectForKey:@"CustomMediaSelectionSchemeGroupShouldDisplayLanguages"];
    if (v33)
    {
      v34 = [v33 BOOLValue];
    }

    else
    {
      v34 = 1;
    }

    v37->_shouldOfferLanguageSelection = v34;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCustomMediaSelectionScheme;
  [(AVCustomMediaSelectionScheme *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = -[NSArray isEqual:](self->_availableLanguageTags, "isEqual:", [a3 availableLanguages]);
    if (v5)
    {
      v5 = -[NSArray isEqual:](self->_mediaPresentationSelectors, "isEqual:", [a3 selectors]);
      if (v5)
      {
        shouldOfferLanguageSelection = self->_shouldOfferLanguageSelection;
        LOBYTE(v5) = shouldOfferLanguageSelection == [a3 shouldOfferLanguageSelection];
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)description
{
  if (self->_shouldOfferLanguageSelection)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"selectors = %@, languages = %@, offers language selection = %@", self->_mediaPresentationSelectors, self->_availableLanguageTags, v2];
}

- (id)_selectorForSetting:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mediaPresentationSelectors = self->_mediaPresentationSelectors;
  v5 = [(NSArray *)mediaPresentationSelectors countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(mediaPresentationSelectors);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "settings")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)mediaPresentationSelectors countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)mediaPresentationSettingsForSelector:(id)a3 complementaryToLanguage:(id)a4 settings:(id)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  options = self->_options;
  if (a4)
  {
    v27[0] = a4;
    v19 = +[AVMediaSelectionGroup mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:](AVMediaSelectionGroup, "mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:", options, [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1]);
    v8 = [MEMORY[0x1E695DF70] array];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
  }

  v9 = v8;
  v10 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [a5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(a5);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [(AVCustomMediaSelectionScheme *)self _selectorForSetting:v15];
          if (v16)
          {
            v17 = v16;
            if ([v10 containsObject:v16])
            {
              return [MEMORY[0x1E695DEC8] array];
            }

            [v10 addObject:v17];
            [v9 addObject:{objc_msgSend(v15, "mediaCharacteristic")}];
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [a5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  return [a3 _settingsSatisfiableByOptions:{+[AVMediaSelectionGroup mediaSelectionOptionsFromArray:withMediaCharacteristics:](AVMediaSelectionGroup, "mediaSelectionOptionsFromArray:withMediaCharacteristics:", v20, v9)}];
}

@end