@interface ATXDemoStackAndWidgetProvider
+ (BOOL)_shouldShowStackInGallery;
+ (BOOL)isDemoModeEnabled;
+ (id)_widgetArrayForPrefixKey:(id)key countKey:(id)countKey defaults:(id)defaults descriptors:(id)descriptors;
+ (id)_widgetFromDictionary:(id)dictionary descriptors:(id)descriptors;
+ (id)demoStackAndWidgets;
+ (void)startYourEngines;
@end

@implementation ATXDemoStackAndWidgetProvider

+ (BOOL)isDemoModeEnabled
{
  isInternalBuild = [MEMORY[0x1E69C5CF8] isInternalBuild];
  if (isInternalBuild)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.DuetExpertCenter.AppPredictionExpert"];
    v4 = [v3 BOOLForKey:@"ATXWidgetsDemoModeEnabled"];

    LOBYTE(isInternalBuild) = v4;
  }

  return isInternalBuild;
}

+ (void)startYourEngines
{
  v2 = objc_alloc_init(MEMORY[0x1E6994390]);
  v3 = sDescriptorProvider;
  sDescriptorProvider = v2;

  MEMORY[0x1EEE66BB8](v2, v3);
}

+ (id)demoStackAndWidgets
{
  v44 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    selfCopy = self;
    v3 = objc_alloc(MEMORY[0x1E695DF90]);
    descriptors = [sDescriptorProvider descriptors];
    v31 = [v3 initWithCapacity:{objc_msgSend(descriptors, "count")}];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    descriptors2 = [sDescriptorProvider descriptors];
    v6 = [descriptors2 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(descriptors2);
          }

          v10 = *(*(&v36 + 1) + 8 * i);
          v11 = MEMORY[0x1E696AEC0];
          extensionBundleIdentifier = [v10 extensionBundleIdentifier];
          kind = [v10 kind];
          v14 = [v11 stringWithFormat:@"%@-%@", extensionBundleIdentifier, kind];

          [v31 setObject:v10 forKeyedSubscript:v14];
        }

        v7 = [descriptors2 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v7);
    }

    v15 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.DuetExpertCenter.AppPredictionExpert"];
    v41[0] = @"ATXWidgetsDemoNumberOfWidgetsInStack";
    v41[1] = @"ATXWidgetsDemoStackWidget1";
    v42[0] = &unk_1F3E5FEF8;
    v42[1] = &unk_1F3E60DA0;
    v41[2] = @"ATXWidgetsDemoStackWidget2";
    v41[3] = @"ATXWidgetsDemoStackWidget3";
    v42[2] = &unk_1F3E60DC8;
    v42[3] = &unk_1F3E60DF0;
    v41[4] = @"ATXWidgetsDemoStackWidget4";
    v41[5] = @"ATXWidgetsDemoNumberOfWidgetsInGallery";
    v42[4] = &unk_1F3E60E18;
    v42[5] = &unk_1F3E5FEF8;
    v41[6] = @"ATXWidgetsDemoGalleryWidget1";
    v41[7] = @"ATXWidgetsDemoGalleryWidget2";
    v42[6] = &unk_1F3E60DC8;
    v42[7] = &unk_1F3E60E18;
    v41[8] = @"ATXWidgetsDemoGalleryWidget3";
    v41[9] = @"ATXWidgetsDemoGalleryWidget4";
    v42[8] = &unk_1F3E60DF0;
    v42[9] = &unk_1F3E60DA0;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:10];
    [v15 registerDefaults:v16];

    v17 = [selfCopy _widgetArrayForPrefixKey:@"ATXWidgetsDemoStackWidget" countKey:@"ATXWidgetsDemoNumberOfWidgetsInStack" defaults:v15 descriptors:v31];
    v18 = [selfCopy _widgetArrayForPrefixKey:@"ATXWidgetsDemoGalleryWidget" countKey:@"ATXWidgetsDemoNumberOfWidgetsInGallery" defaults:v15 descriptors:v31];
    v19 = objc_opt_new();
    if (+[ATXDemoStackAndWidgetProvider _shouldShowStackInGallery])
    {
      v20 = objc_opt_new();
      v21 = [v17 copy];
      [v20 setSmallDefaultStack:v21];

      v22 = [v17 copy];
      [v20 setMediumDefaultStack:v22];

      [v20 setSuggestedSize:1];
      [v19 addObject:v20];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = v18;
    v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v33;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [v19 addObject:*(*(&v32 + 1) + 8 * j)];
        }

        v25 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v25);
    }

    v28 = [v19 copy];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)_widgetArrayForPrefixKey:(id)key countKey:(id)countKey defaults:(id)defaults descriptors:(id)descriptors
{
  keyCopy = key;
  defaultsCopy = defaults;
  descriptorsCopy = descriptors;
  v12 = [defaultsCopy integerForKey:countKey];
  v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v12];
  if (v12 >= 1)
  {
    v13 = 1;
    do
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%ld", keyCopy, v13];
      v15 = [defaultsCopy dictionaryForKey:v14];
      if (v15)
      {
        v16 = [self _widgetFromDictionary:v15 descriptors:descriptorsCopy];
        if (v16)
        {
          [v18 addObject:v16];
        }
      }

      ++v13;
      --v12;
    }

    while (v12);
  }

  return v18;
}

+ (id)_widgetFromDictionary:(id)dictionary descriptors:(id)descriptors
{
  dictionaryCopy = dictionary;
  v6 = MEMORY[0x1E696AEC0];
  descriptorsCopy = descriptors;
  v8 = [dictionaryCopy objectForKey:@"extensionBundleId"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F3E050C8;
  }

  v11 = [dictionaryCopy objectForKey:@"kind"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F3E050C8;
  }

  v14 = [v6 stringWithFormat:@"%@-%@", v10, v13];

  v15 = [descriptorsCopy objectForKeyedSubscript:v14];

  if (v15)
  {
    v16 = objc_opt_new();
    [v16 setAvocadoDescriptor:v15];
    v17 = [dictionaryCopy objectForKey:@"appBundleId"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_1F3E050C8;
    }

    [v16 setAppBundleId:v19];

    v20 = 1;
    [v16 setRankType:1];
    v21 = [dictionaryCopy objectForKey:@"size"];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_1F3E050C8;
    }

    v24 = v23;

    if (([(__CFString *)v24 isEqualToString:@"medium"]& 1) == 0)
    {
      if (([(__CFString *)v24 isEqualToString:@"large"]& 1) != 0)
      {
        v20 = 2;
      }

      else if ([(__CFString *)v24 isEqualToString:@"extraLarge"])
      {
        v20 = 4;
      }

      else
      {
        v20 = 0;
      }
    }

    [v16 setSuggestedSize:v20];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)_shouldShowStackInGallery
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.DuetExpertCenter.AppPredictionExpert"];
  v3 = [v2 BOOLForKey:@"ATXWidgetsDemoShouldShowStackInGallery"];

  return v3;
}

@end