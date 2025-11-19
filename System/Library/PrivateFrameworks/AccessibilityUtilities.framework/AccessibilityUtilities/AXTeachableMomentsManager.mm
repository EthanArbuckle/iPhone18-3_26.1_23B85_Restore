@interface AXTeachableMomentsManager
+ (BOOL)teachableMomentSeenForNotification:(id)a3;
+ (id)_majorBuildVersion;
+ (id)_systemBuildVersion;
+ (id)nameForFeature:(id)a3;
+ (id)notificationTitleForFeature:(id)a3;
+ (id)sharedManager;
+ (id)summaryForFeature:(id)a3;
+ (id)teachableItemsForFeature:(id)a3;
+ (void)markTeachableMomentSeenForNotification:(id)a3;
- (id)_teachableItemsForFeature:(id)a3;
- (id)_teachableItemsFromItems:(id)a3 feature:(id)a4;
- (id)voiceControlNewLocalesDescriptionForDataItem:(id)a3 version:(id)a4;
@end

@implementation AXTeachableMomentsManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_2 != -1)
  {
    +[AXTeachableMomentsManager sharedManager];
  }

  v3 = sharedManager_Manager_0;

  return v3;
}

uint64_t __42__AXTeachableMomentsManager_sharedManager__block_invoke()
{
  sharedManager_Manager_0 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_majorBuildVersion
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = v4;
  if (v4)
  {
    [v4 operatingSystemVersion];
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 numberWithInteger:v6];
  v8 = [v2 stringWithFormat:@"%@.0", v7];

  return v8;
}

+ (id)_systemBuildVersion
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v5 = v4;
  if (v4)
  {
    [v4 operatingSystemVersion];
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 numberWithInteger:v6];
  v8 = MEMORY[0x1E696AD98];
  v9 = [MEMORY[0x1E696AE30] processInfo];
  v10 = v9;
  if (v9)
  {
    [v9 operatingSystemVersion];
    v11 = v15;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v8 numberWithInteger:v11];
  v13 = [v2 stringWithFormat:@"%@.%@", v7, v12];

  return v13;
}

- (id)_teachableItemsForFeature:(id)a3
{
  v4 = a3;
  data = self->_data;
  if (!data)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = MEMORY[0x1E696AEC0];
    v9 = [objc_opt_class() _majorBuildVersion];
    v10 = [v8 stringWithFormat:@"TeachableMoments-%@-%@", v9, @"iOS"];
    v11 = [v7 URLForResource:v10 withExtension:@"plist"];
    v12 = [v6 dictionaryWithContentsOfURL:v11];
    v13 = self->_data;
    self->_data = v12;

    data = self->_data;
  }

  v14 = [(NSDictionary *)data objectForKey:v4];
  v15 = __UIAccessibilitySafeClass();

  v16 = [v15 objectForKey:@"items"];
  v17 = __UIAccessibilitySafeClass();

  v18 = [(AXTeachableMomentsManager *)self _teachableItemsFromItems:v17 feature:v4];

  return v18;
}

+ (id)summaryForFeature:(id)a3
{
  v4 = a3;
  v5 = [a1 _majorBuildVersion];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_SUMMARY_%@", v4, v5];

  v7 = LocalizedString(v6);

  return v7;
}

+ (id)nameForFeature:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_FEATURE_TITLE", a3];
  v4 = LocalizedString(v3);

  return v4;
}

+ (id)notificationTitleForFeature:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 _majorBuildVersion];
  v7 = [v4 stringWithFormat:@"WhatsNew_%@_%@", v5, v6];

  v8 = AXLocStringKeyForModel(v7);
  v9 = LocalizedString(v8);

  return v9;
}

- (id)_teachableItemsFromItems:(id)a3 feature:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31 = a4;
  v27 = self;
  v7 = [objc_opt_class() _majorBuildVersion];
  v30 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v6;
  v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v34)
  {
    v32 = *v41;
    v28 = v7;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        v10 = [v9 objectForKeyedSubscript:@"supportedPlatforms"];
        v11 = __UIAccessibilityCastAsClass();

        v35 = v11;
        if (!v11)
        {
          goto LABEL_21;
        }

        v33 = v9;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (!v13)
        {
          goto LABEL_25;
        }

        v14 = v13;
        v15 = 0;
        v16 = *v37;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v37 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v36 + 1) + 8 * j);
            if ([v18 isEqualToString:@"ipad"])
            {
              v15 |= AXDeviceIsPad();
            }

            if ([v18 isEqualToString:@"iphone"])
            {
              v15 |= AXDeviceIsPhone();
            }

            if ([v18 isEqualToString:@"pwmdevice"])
            {
              v15 |= AXDeviceSupportsPulseWidthMaximization();
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v14);

        v7 = v28;
        v11 = v35;
        v9 = v33;
        if (v15)
        {
LABEL_21:
          v12 = objc_opt_new();
          v19 = [v9 objectForKeyedSubscript:@"title"];
          LocalizedItemString(v19, v7);
          v20 = v7;
          v22 = v21 = v9;
          [v12 setItemTitle:v22];

          v23 = [v21 objectForKeyedSubscript:@"description"];
          LODWORD(v22) = [v23 isEqualToString:@"VC_MORE_LANGUAGES_DESCRIPTION_LIST"];

          if (v22)
          {
            v24 = [(AXTeachableMomentsManager *)v27 voiceControlNewLocalesDescriptionForDataItem:v21 version:v20];
            [v12 setItemDescription:v24];
          }

          else
          {
            v24 = [v21 objectForKeyedSubscript:@"description"];
            v25 = LocalizedItemString(v24, v20);
            [v12 setItemDescription:v25];
          }

          v7 = v20;

          [v12 setVersion:v20];
          [v12 setFeature:v31];
          [v30 addObject:v12];
          v11 = v35;
LABEL_25:
        }
      }

      v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v34);
  }

  return v30;
}

- (id)voiceControlNewLocalesDescriptionForDataItem:(id)a3 version:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKeyedSubscript:@"description"];
  v7 = LocalizedItemString(v6, v5);

  v8 = [MEMORY[0x1E695DF70] array];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __82__AXTeachableMomentsManager_voiceControlNewLocalesDescriptionForDataItem_version___block_invoke;
  v17 = &unk_1E71EB6E0;
  v18 = v8;
  v9 = v8;
  [&unk_1EFE97180 enumerateObjectsUsingBlock:&v14];
  v10 = objc_alloc_init(MEMORY[0x1E696AD08]);
  v11 = [v10 stringFromItems:v9];
  v12 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v7, v11, v14, v15, v16, v17];

  return v12;
}

void __82__AXTeachableMomentsManager_voiceControlNewLocalesDescriptionForDataItem_version___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E695DF58];
  v4 = a2;
  v6 = [v3 currentLocale];
  v5 = [v6 localizedStringForLocaleIdentifier:v4];

  [v2 addObject:v5];
}

+ (BOOL)teachableMomentSeenForNotification:(id)a3
{
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 teachableMomentsNotificationsSeen];

  v7 = [v6 objectForKeyedSubscript:v4];

  if (v7)
  {
    v8 = [a1 _majorBuildVersion];
    v9 = [v8 compare:v7 options:64] != -1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)markTeachableMomentSeenForNotification:(id)a3
{
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 teachableMomentsNotificationsSeen];
  v9 = [v6 mutableCopy];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  v7 = [a1 _majorBuildVersion];
  [v9 setObject:v7 forKeyedSubscript:v4];

  v8 = +[AXSettings sharedInstance];
  [v8 setTeachableMomentsNotificationsSeen:v9];
}

+ (id)teachableItemsForFeature:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedManager];
  v6 = [v5 _teachableItemsForFeature:v4];

  return v6;
}

@end