@interface AXTeachableMomentsManager
+ (BOOL)teachableMomentSeenForNotification:(id)notification;
+ (id)_majorBuildVersion;
+ (id)_systemBuildVersion;
+ (id)nameForFeature:(id)feature;
+ (id)notificationTitleForFeature:(id)feature;
+ (id)sharedManager;
+ (id)summaryForFeature:(id)feature;
+ (id)teachableItemsForFeature:(id)feature;
+ (void)markTeachableMomentSeenForNotification:(id)notification;
- (id)_teachableItemsForFeature:(id)feature;
- (id)_teachableItemsFromItems:(id)items feature:(id)feature;
- (id)voiceControlNewLocalesDescriptionForDataItem:(id)item version:(id)version;
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
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v5 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
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
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  v5 = processInfo;
  if (processInfo)
  {
    [processInfo operatingSystemVersion];
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 numberWithInteger:v6];
  v8 = MEMORY[0x1E696AD98];
  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  v10 = processInfo2;
  if (processInfo2)
  {
    [processInfo2 operatingSystemVersion];
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

- (id)_teachableItemsForFeature:(id)feature
{
  featureCopy = feature;
  data = self->_data;
  if (!data)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = MEMORY[0x1E696AEC0];
    _majorBuildVersion = [objc_opt_class() _majorBuildVersion];
    v10 = [v8 stringWithFormat:@"TeachableMoments-%@-%@", _majorBuildVersion, @"iOS"];
    v11 = [v7 URLForResource:v10 withExtension:@"plist"];
    v12 = [v6 dictionaryWithContentsOfURL:v11];
    v13 = self->_data;
    self->_data = v12;

    data = self->_data;
  }

  v14 = [(NSDictionary *)data objectForKey:featureCopy];
  v15 = __UIAccessibilitySafeClass();

  v16 = [v15 objectForKey:@"items"];
  v17 = __UIAccessibilitySafeClass();

  v18 = [(AXTeachableMomentsManager *)self _teachableItemsFromItems:v17 feature:featureCopy];

  return v18;
}

+ (id)summaryForFeature:(id)feature
{
  featureCopy = feature;
  _majorBuildVersion = [self _majorBuildVersion];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_SUMMARY_%@", featureCopy, _majorBuildVersion];

  v7 = LocalizedString(v6);

  return v7;
}

+ (id)nameForFeature:(id)feature
{
  feature = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_FEATURE_TITLE", feature];
  v4 = LocalizedString(feature);

  return v4;
}

+ (id)notificationTitleForFeature:(id)feature
{
  v4 = MEMORY[0x1E696AEC0];
  featureCopy = feature;
  _majorBuildVersion = [self _majorBuildVersion];
  v7 = [v4 stringWithFormat:@"WhatsNew_%@_%@", featureCopy, _majorBuildVersion];

  v8 = AXLocStringKeyForModel(v7);
  v9 = LocalizedString(v8);

  return v9;
}

- (id)_teachableItemsFromItems:(id)items feature:(id)feature
{
  v46 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  featureCopy = feature;
  selfCopy = self;
  _majorBuildVersion = [objc_opt_class() _majorBuildVersion];
  v30 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = itemsCopy;
  v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v34)
  {
    v32 = *v41;
    v28 = _majorBuildVersion;
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

        _majorBuildVersion = v28;
        v11 = v35;
        v9 = v33;
        if (v15)
        {
LABEL_21:
          v12 = objc_opt_new();
          v19 = [v9 objectForKeyedSubscript:@"title"];
          LocalizedItemString(v19, _majorBuildVersion);
          v20 = _majorBuildVersion;
          v22 = v21 = v9;
          [v12 setItemTitle:v22];

          v23 = [v21 objectForKeyedSubscript:@"description"];
          LODWORD(v22) = [v23 isEqualToString:@"VC_MORE_LANGUAGES_DESCRIPTION_LIST"];

          if (v22)
          {
            v24 = [(AXTeachableMomentsManager *)selfCopy voiceControlNewLocalesDescriptionForDataItem:v21 version:v20];
            [v12 setItemDescription:v24];
          }

          else
          {
            v24 = [v21 objectForKeyedSubscript:@"description"];
            v25 = LocalizedItemString(v24, v20);
            [v12 setItemDescription:v25];
          }

          _majorBuildVersion = v20;

          [v12 setVersion:v20];
          [v12 setFeature:featureCopy];
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

- (id)voiceControlNewLocalesDescriptionForDataItem:(id)item version:(id)version
{
  versionCopy = version;
  v6 = [item objectForKeyedSubscript:@"description"];
  v7 = LocalizedItemString(v6, versionCopy);

  array = [MEMORY[0x1E695DF70] array];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __82__AXTeachableMomentsManager_voiceControlNewLocalesDescriptionForDataItem_version___block_invoke;
  v17 = &unk_1E71EB6E0;
  v18 = array;
  v9 = array;
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

+ (BOOL)teachableMomentSeenForNotification:(id)notification
{
  notificationCopy = notification;
  v5 = +[AXSettings sharedInstance];
  teachableMomentsNotificationsSeen = [v5 teachableMomentsNotificationsSeen];

  v7 = [teachableMomentsNotificationsSeen objectForKeyedSubscript:notificationCopy];

  if (v7)
  {
    _majorBuildVersion = [self _majorBuildVersion];
    v9 = [_majorBuildVersion compare:v7 options:64] != -1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)markTeachableMomentSeenForNotification:(id)notification
{
  notificationCopy = notification;
  v5 = +[AXSettings sharedInstance];
  teachableMomentsNotificationsSeen = [v5 teachableMomentsNotificationsSeen];
  v9 = [teachableMomentsNotificationsSeen mutableCopy];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  _majorBuildVersion = [self _majorBuildVersion];
  [v9 setObject:_majorBuildVersion forKeyedSubscript:notificationCopy];

  v8 = +[AXSettings sharedInstance];
  [v8 setTeachableMomentsNotificationsSeen:v9];
}

+ (id)teachableItemsForFeature:(id)feature
{
  featureCopy = feature;
  sharedManager = [self sharedManager];
  v6 = [sharedManager _teachableItemsForFeature:featureCopy];

  return v6;
}

@end