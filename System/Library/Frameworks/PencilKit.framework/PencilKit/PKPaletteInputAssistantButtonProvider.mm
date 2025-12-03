@interface PKPaletteInputAssistantButtonProvider
- (BOOL)_shouldIncludeBarButtonItem:(id)item;
- (PKPaletteInputAssistantButtonProvider)initWithInputAssistantItem:(id)item;
- (id)_nonSystemBarButtonItemGroups;
- (id)buttonsForCurrentConfiguration;
@end

@implementation PKPaletteInputAssistantButtonProvider

- (PKPaletteInputAssistantButtonProvider)initWithInputAssistantItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PKPaletteInputAssistantButtonProvider;
  v6 = [(PKPaletteInputAssistantButtonProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputAssistantItem, item);
  }

  return v7;
}

- (id)buttonsForCurrentConfiguration
{
  v34 = *MEMORY[0x1E69E9840];
  _nonSystemBarButtonItemGroups = [(PKPaletteInputAssistantButtonProvider *)self _nonSystemBarButtonItemGroups];
  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = _nonSystemBarButtonItemGroups;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        barButtonItems = [v8 barButtonItems];
        v10 = [barButtonItems countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(barButtonItems);
              }

              v14 = *(*(&v24 + 1) + 8 * j);
              if ([(PKPaletteInputAssistantButtonProvider *)self _shouldIncludeBarButtonItem:v14])
              {
                v15 = [[PKPaletteBarButton alloc] initWithBarButtonItem:v14];
                [array addObject:v15];
              }
            }

            v11 = [barButtonItems countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }

  if (_os_feature_enabled_impl() && [MEMORY[0x1E69DCBF0] dictationInputModeIsFunctional])
  {
    v16 = MEMORY[0x1E69DC6B8];
    inputAssistantItem = [(PKPaletteInputAssistantButtonProvider *)self inputAssistantItem];
    v18 = [v16 barButtonItemForAssistantItemStyle:12 target:inputAssistantItem];

    v19 = [[PKPaletteDictationBarButton alloc] initWithBarButtonItem:v18];
    [array addObject:v19];
  }

  v20 = [array copy];

  return v20;
}

- (id)_nonSystemBarButtonItemGroups
{
  v25 = *MEMORY[0x1E69E9840];
  inputAssistantItem = [(PKPaletteInputAssistantButtonProvider *)self inputAssistantItem];
  v3 = MEMORY[0x1E695E0F0];
  if (inputAssistantItem)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    leadingBarButtonGroups = [inputAssistantItem leadingBarButtonGroups];
    v6 = leadingBarButtonGroups;
    if (leadingBarButtonGroups)
    {
      v7 = leadingBarButtonGroups;
    }

    else
    {
      v7 = v3;
    }

    v8 = v7;

    trailingBarButtonGroups = [inputAssistantItem trailingBarButtonGroups];
    v10 = trailingBarButtonGroups;
    if (trailingBarButtonGroups)
    {
      v11 = trailingBarButtonGroups;
    }

    else
    {
      v11 = v3;
    }

    v12 = v11;

    v13 = [v8 arrayByAddingObjectsFromArray:v12];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * i);
          if (([v18 _isSystemGroup] & 1) == 0)
          {
            [v4 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    v3 = [v4 copy];
  }

  return v3;
}

- (BOOL)_shouldIncludeBarButtonItem:(id)item
{
  itemCopy = item;
  customView = [itemCopy customView];

  if (customView || ([itemCopy target], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    inclusionFilter = [(PKPaletteInputAssistantButtonProvider *)self inclusionFilter];
    v11 = inclusionFilter;
    if (inclusionFilter)
    {
      v8 = (*(inclusionFilter + 16))(inclusionFilter, self, itemCopy);
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

@end