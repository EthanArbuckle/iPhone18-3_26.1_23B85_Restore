@interface ATXDefaultHomeScreenItemProducerUtilities
+ (BOOL)_isSpecialAvocadoDescriptor:(id)descriptor;
+ (BOOL)shouldConsiderSimilarThirdPartyWidgetsForPosition:(id)position;
+ (id)_defaultWidgetStackFromSmallStack:(id)stack mediumStack:(id)mediumStack largeStack:(id)largeStack extraLargeStack:(id)extraLargeStack suggestedSize:(unint64_t)size maxWidgetsPerStack:(unint64_t)perStack isiPad:(BOOL)pad;
+ (id)_specialAvocadoKindsConvertingFromAssetsString:(id)string;
+ (id)bundleIdentifierFromWidgetKey:(id)key;
+ (id)defaultWidgetStackFromSmallStack:(id)stack mediumStack:(id)mediumStack largeStack:(id)largeStack extraLargeStack:(id)extraLargeStack suggestedSize:(unint64_t)size maxWidgetsPerStack:(unint64_t)perStack isiPad:(BOOL)pad;
+ (id)eligibleThirdPartyWidgetFromSimilarWidgets:(id)widgets launchCounts:(id)counts;
+ (id)mergedDescriptorsFrom:(id)from withAdditional:(id)additional;
+ (id)personalitiesFromAssetsWithKey:(id)key;
+ (id)personalitiesFromAssetsWithKey:(id)key launchCounts:(id)counts;
+ (id)similarThirdPartyWidgetsForPosition:(id)position;
+ (id)specialWidgetDescriptorForPersonality:(id)personality size:(unint64_t)size;
+ (id)splitDescriptorsIntoFirstPartyAndThirdParty:(id)party;
+ (id)stackFromDefaultStackPersonalities:(id)personalities suggestedSize:(unint64_t)size maxWidgetsPerStack:(unint64_t)stack personalityToDescriptorDictionary:(id)dictionary isiPad:(BOOL)pad;
+ (id)widget:(id)widget filteredForSize:(unint64_t)size;
+ (id)widgetDescriptorFromChronoDescriptor:(id)descriptor appBundleId:(id)id rankType:(int64_t)type;
+ (id)widgetExtensionAndKindFromKey:(id)key;
+ (id)widgetFromPersonality:(id)personality size:(unint64_t)size personalityToDescriptorDictionary:(id)dictionary;
+ (id)widgets:(id)widgets filteredForSize:(unint64_t)size;
+ (id)widgetsFromPersonalities:(id)personalities size:(unint64_t)size personalityToDescriptorDictionary:(id)dictionary;
+ (unint64_t)_supportedSizeClassesForSpecialAvocadoKind:(id)kind;
+ (unint64_t)_widgetFamilyMaskForStackLayoutSize:(unint64_t)size;
@end

@implementation ATXDefaultHomeScreenItemProducerUtilities

+ (id)stackFromDefaultStackPersonalities:(id)personalities suggestedSize:(unint64_t)size maxWidgetsPerStack:(unint64_t)stack personalityToDescriptorDictionary:(id)dictionary isiPad:(BOOL)pad
{
  personalitiesCopy = personalities;
  dictionaryCopy = dictionary;
  v14 = [self widgetsFromPersonalities:personalitiesCopy size:0 personalityToDescriptorDictionary:dictionaryCopy];
  v15 = [self widgetsFromPersonalities:personalitiesCopy size:1 personalityToDescriptorDictionary:dictionaryCopy];
  v16 = [self widgetsFromPersonalities:personalitiesCopy size:2 personalityToDescriptorDictionary:dictionaryCopy];
  if (pad)
  {
    v17 = [self widgetsFromPersonalities:personalitiesCopy size:4 personalityToDescriptorDictionary:dictionaryCopy];
    LOBYTE(v20) = 1;
    v18 = [self _defaultWidgetStackFromSmallStack:v14 mediumStack:v15 largeStack:v16 extraLargeStack:v17 suggestedSize:size maxWidgetsPerStack:stack isiPad:v20];
  }

  else
  {
    LOBYTE(v20) = 0;
    v18 = [self _defaultWidgetStackFromSmallStack:v14 mediumStack:v15 largeStack:v16 extraLargeStack:0 suggestedSize:size maxWidgetsPerStack:stack isiPad:v20];
  }

  return v18;
}

+ (id)widgetFromPersonality:(id)personality size:(unint64_t)size personalityToDescriptorDictionary:(id)dictionary
{
  personalityCopy = personality;
  dictionaryCopy = dictionary;
  v9 = [ATXDefaultHomeScreenItemProducerUtilities specialWidgetDescriptorForPersonality:personalityCopy size:size];
  if (v9)
  {
    v10 = v9;
LABEL_4:
    v12 = [objc_opt_class() widget:v10 filteredForSize:size];

    goto LABEL_5;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:personalityCopy];
  v10 = [v11 copy];

  if (v10)
  {
    goto LABEL_4;
  }

  v12 = 0;
LABEL_5:

  return v12;
}

+ (id)widgetsFromPersonalities:(id)personalities size:(unint64_t)size personalityToDescriptorDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __109__ATXDefaultHomeScreenItemProducerUtilities_widgetsFromPersonalities_size_personalityToDescriptorDictionary___block_invoke;
  v12[3] = &unk_1E80C68C0;
  selfCopy = self;
  sizeCopy = size;
  v13 = dictionaryCopy;
  v9 = dictionaryCopy;
  v10 = [personalities _pas_mappedArrayWithTransform:v12];

  return v10;
}

+ (id)mergedDescriptorsFrom:(id)from withAdditional:(id)additional
{
  v22 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  additionalCopy = additional;
  v7 = [fromCopy mutableCopy];
  v8 = [MEMORY[0x1E695DFA8] setWithArray:fromCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = additionalCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (([v8 containsObject:{v14, v17}] & 1) == 0)
        {
          [v7 addObject:v14];
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v7 copy];

  return v15;
}

+ (id)personalitiesFromAssetsWithKey:(id)key
{
  v37 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = [ATXAssets2 dictionaryForClassName:@"ATXDefaultHomeScreenItemUpdater"];
  v7 = [v6 objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = keyCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      v24 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [self _specialAvocadoKindsConvertingFromAssetsString:v12];
            v14 = v13;
            if (v13)
            {
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v28;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v28 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = [[ATXWidgetPersonality alloc] initWithExtensionBundleId:&stru_1F3E050C8 kind:*(*(&v27 + 1) + 8 * j)];
                    [v5 addObject:v19];
                  }

                  v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
                }

                while (v16);
              }
            }

            else
            {
              v20 = [[ATXWidgetPersonality alloc] initWithStringRepresentation:v12];
              if (v20)
              {
                [v5 addObject:v20];
              }
            }

            v10 = v24;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    keyCopy = v23;
    v7 = v22;
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (id)personalitiesFromAssetsWithKey:(id)key launchCounts:(id)counts
{
  v50 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  countsCopy = counts;
  v8 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DFA8] set];
  v11 = [ATXAssets2 dictionaryForClassName:@"ATXDefaultHomeScreenItemUpdater"];
  v12 = [v11 objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v8;
    v32 = keyCopy;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v12;
    obj = v12;
    v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (!v38)
    {
      goto LABEL_34;
    }

    v13 = *v45;
    v34 = countsCopy;
    v35 = *v45;
    selfCopy = self;
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v14;
        v15 = *(*(&v44 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
          v37 = v16;
          if ([self shouldConsiderSimilarThirdPartyWidgetsForPosition:v16])
          {
            v17 = [self similarThirdPartyWidgetsForPosition:v16];
            v18 = [self eligibleThirdPartyWidgetFromSimilarWidgets:v17 launchCounts:countsCopy];
            v19 = [self widgetExtensionAndKindFromKey:v18];
            if (v19 && ([v10 containsObject:v19] & 1) == 0)
            {
              v20 = [[ATXWidgetPersonality alloc] initWithStringRepresentation:v19];
              if (v20)
              {
                [array addObject:v20];
                [v10 addObject:v19];
              }
            }

            v13 = v35;
            goto LABEL_15;
          }

          v21 = [self _specialAvocadoKindsConvertingFromAssetsString:v16];
          v17 = v21;
          if (v21)
          {
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v41;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v41 != v24)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v26 = *(*(&v40 + 1) + 8 * i);
                  if (([v10 containsObject:{v26, v30, v31, v32}] & 1) == 0)
                  {
                    v27 = [[ATXWidgetPersonality alloc] initWithExtensionBundleId:&stru_1F3E050C8 kind:v26];
                    [array addObject:v27];
                    [v10 addObject:v26];
                  }
                }

                v23 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
              }

              while (v23);
              self = selfCopy;
              countsCopy = v34;
              v13 = v35;
            }
          }

          else if (([v10 containsObject:v16] & 1) == 0)
          {
            v18 = [[ATXWidgetPersonality alloc] initWithStringRepresentation:v16];
            if (v18)
            {
              [array addObject:v18];
              [v10 addObject:v16];
            }

LABEL_15:
          }
        }

        v14 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v28 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      v38 = v28;
      if (!v28)
      {
LABEL_34:

        v8 = v31;
        keyCopy = v32;
        v12 = v30;
        break;
      }
    }
  }

  objc_autoreleasePoolPop(v8);

  return array;
}

+ (BOOL)shouldConsiderSimilarThirdPartyWidgetsForPosition:(id)position
{
  positionCopy = position;
  if ([positionCopy isEqualToString:@"anyCalendarWidget"] & 1) != 0 || (objc_msgSend(positionCopy, "isEqualToString:", @"anyMedia_MusicBooksPodcast_Widget") & 1) != 0 || (objc_msgSend(positionCopy, "isEqualToString:", @"anyToDoWidget") & 1) != 0 || (objc_msgSend(positionCopy, "isEqualToString:", @"anyElectricCarAppWidget"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [positionCopy isEqualToString:@"anyHomeMonitoringAppWidget"];
  }

  return v4;
}

+ (id)similarThirdPartyWidgetsForPosition:(id)position
{
  positionCopy = position;
  v5 = objc_opt_new();
  v6 = [ATXAssets2 dictionaryForClassName:@"ATXDefaultHomeScreenItemUpdater"];
  v7 = [v6 objectForKeyedSubscript:positionCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__ATXDefaultHomeScreenItemProducerUtilities_similarThirdPartyWidgetsForPosition___block_invoke;
    v10[3] = &__block_descriptor_40_e8_B16__0_8l;
    v10[4] = self;
    v8 = [v7 _pas_filteredArrayWithTest:v10];

    v5 = v8;
  }

  return v5;
}

BOOL __81__ATXDefaultHomeScreenItemProducerUtilities_similarThirdPartyWidgetsForPosition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) bundleIdentifierFromWidgetKey:v3];
    v5 = [ATXApplicationRecord isInstalledAndNotRestrictedForBundle:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)bundleIdentifierFromWidgetKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    v4 = [keyCopy componentsSeparatedByString:@":"];
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)widgetExtensionAndKindFromKey:(id)key
{
  keyCopy = key;
  v4 = [keyCopy rangeOfString:@":"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v4, v4 + v5 >= [keyCopy length]))
  {
    v7 = 0;
  }

  else
  {
    v7 = [keyCopy substringFromIndex:v6 + 1];
  }

  return v7;
}

+ (id)eligibleThirdPartyWidgetFromSimilarWidgets:(id)widgets launchCounts:(id)counts
{
  v45 = *MEMORY[0x1E69E9840];
  widgetsCopy = widgets;
  countsCopy = counts;
  if (![widgetsCopy count])
  {
    firstObject = 0;
    goto LABEL_42;
  }

  if ([widgetsCopy count] == 1)
  {
    firstObject = [widgetsCopy firstObject];
    goto LABEL_42;
  }

  array = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = widgetsCopy;
  obj = widgetsCopy;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_31;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v33;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v33 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v32 + 1) + 8 * i);
      v14 = [v13 componentsSeparatedByString:@":"];
      firstObject2 = [v14 firstObject];

      v16 = [countsCopy objectForKeyedSubscript:firstObject2];
      v17 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        rawLaunchCount = [(ATXAggregatedAppLaunchData *)v16 rawLaunchCount];
        uniqueDaysLaunched = [(ATXAggregatedAppLaunchData *)v16 uniqueDaysLaunched];
        *buf = 136315906;
        v37 = "+[ATXDefaultHomeScreenItemProducerUtilities eligibleThirdPartyWidgetFromSimilarWidgets:launchCounts:]";
        v38 = 2112;
        v39 = firstObject2;
        v40 = 2048;
        v41 = rawLaunchCount;
        v42 = 2048;
        v43 = uniqueDaysLaunched;
        _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "%s BundleID: %@; Raw launch Count: %lu; Unique days launched: %lu", buf, 0x2Au);
      }

      if (v16)
      {
        if (!v10)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = [[ATXAggregatedAppLaunchData alloc] initWithRawLaunchCount:0 uniqueDaysLaunched:0];
        if (!v10)
        {
LABEL_20:
          v10 = v16;
LABEL_21:
          [array addObject:v13];
          goto LABEL_27;
        }
      }

      if ([(ATXAggregatedAppLaunchData *)v16 isGreaterThanOrEqualToData:v10])
      {
        v20 = [(ATXAggregatedAppLaunchData *)v10 isGreaterThanOrEqualToData:v16];
        if (![(ATXAggregatedAppLaunchData *)v16 isGreaterThanOrEqualToData:v10])
        {
          if (v20)
          {
            goto LABEL_27;
          }

LABEL_26:
          [array removeAllObjects];
          [array addObject:v13];
          v22 = v16;

          v10 = v22;
          goto LABEL_27;
        }

        v21 = [(ATXAggregatedAppLaunchData *)v10 isGreaterThanOrEqualToData:v16];
        if (!v20)
        {
          goto LABEL_26;
        }

        if (v21)
        {
          goto LABEL_21;
        }
      }

      else if ([(ATXAggregatedAppLaunchData *)v16 isGreaterThanOrEqualToData:v10]&& [(ATXAggregatedAppLaunchData *)v10 isGreaterThanOrEqualToData:v16])
      {
        goto LABEL_21;
      }

LABEL_27:
    }

    v9 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  }

  while (v9);
LABEL_31:

  if ([array count])
  {
    v23 = [array count];
    v24 = __atxlog_handle_home_screen();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23 == 1)
    {
      widgetsCopy = v29;
      if (v25)
      {
        firstObject3 = [array firstObject];
        *buf = 136315394;
        v37 = "+[ATXDefaultHomeScreenItemProducerUtilities eligibleThirdPartyWidgetFromSimilarWidgets:launchCounts:]";
        v38 = 2112;
        v39 = firstObject3;
        _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "%s Returning the highest-ranked widget for stack based on app usage: %@", buf, 0x16u);
      }

      firstObject4 = [array firstObject];
    }

    else
    {
      widgetsCopy = v29;
      if (v25)
      {
        *buf = 136315138;
        v37 = "+[ATXDefaultHomeScreenItemProducerUtilities eligibleThirdPartyWidgetFromSimilarWidgets:launchCounts:]";
        _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "%s Randomly selecting a widget from all equally ranked widgets for Stack", buf, 0xCu);
      }

      firstObject4 = [array objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(array, "count"))}];
    }

    firstObject = firstObject4;
  }

  else
  {
    firstObject = 0;
    widgetsCopy = v29;
  }

LABEL_42:

  return firstObject;
}

+ (id)widget:(id)widget filteredForSize:(unint64_t)size
{
  widgetCopy = widget;
  avocadoDescriptor = [widgetCopy avocadoDescriptor];
  v7 = avocadoDescriptor;
  if (avocadoDescriptor && (v8 = [avocadoDescriptor supportedFamilies], (objc_msgSend(objc_opt_class(), "_widgetFamilyMaskForStackLayoutSize:", size) & v8) != 0))
  {
    v9 = [widgetCopy copy];
    [v9 setSuggestedSize:size];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)widgets:(id)widgets filteredForSize:(unint64_t)size
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__ATXDefaultHomeScreenItemProducerUtilities_widgets_filteredForSize___block_invoke;
  v6[3] = &__block_descriptor_48_e39__16__0__ATXHomeScreenWidgetDescriptor_8l;
  v6[4] = self;
  v6[5] = size;
  v4 = [widgets _pas_mappedArrayWithTransform:v6];

  return v4;
}

+ (unint64_t)_widgetFamilyMaskForStackLayoutSize:(unint64_t)size
{
  if (size - 1 > 3)
  {
    return 2;
  }

  else
  {
    return qword_1BF6F5928[size - 1];
  }
}

+ (id)_specialAvocadoKindsConvertingFromAssetsString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"suggestions"])
  {
    v4 = &unk_1F3E60D20;
  }

  else if ([stringCopy isEqualToString:@"shortcuts"])
  {
    v4 = &unk_1F3E60D38;
  }

  else if ([stringCopy isEqualToString:@"files"])
  {
    v4 = &unk_1F3E60D50;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)specialWidgetDescriptorForPersonality:(id)personality size:(unint64_t)size
{
  v17 = *MEMORY[0x1E69E9840];
  kind = [personality kind];
  v7 = [self _supportedSizeClassesForSpecialAvocadoKind:kind];
  if (([self _widgetFamilyMaskForStackLayoutSize:size] & v7) == 0)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v8 = objc_alloc(MEMORY[0x1E6994388]);
  v9 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:&stru_1F3E050C8 containerBundleIdentifier:0 deviceIdentifier:0];
  v10 = [v8 initWithExtensionIdentity:v9 kind:kind supportedFamilies:v7 intentType:0];

  if (!v10)
  {
    v12 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXDefaultHomeScreenItemProducerUtilities specialWidgetDescriptorForPersonality:kind size:v12];
    }

    goto LABEL_12;
  }

  if ([kind isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsSingle"] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsFolder"))
  {
    v11 = @"com.apple.shortcuts";
  }

  else
  {
    if (![kind isEqualToString:@"SBHSpecialAvocadoDescriptorKindFiles"])
    {
      v11 = 0;
      goto LABEL_16;
    }

    v11 = @"com.apple.DocumentsApp";
  }

  if ([ATXApplicationRecord isInstalledForBundle:v11])
  {
LABEL_16:
    v13 = [self widgetDescriptorFromChronoDescriptor:v10 appBundleId:v11 rankType:1];
    [v13 setSuggestedSize:size];
    goto LABEL_17;
  }

  v12 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = kind;
    _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: could not add %@ widget to default stack because app is not installed on device", &v15, 0xCu);
  }

LABEL_12:

  v13 = 0;
LABEL_17:

LABEL_18:

  return v13;
}

+ (unint64_t)_supportedSizeClassesForSpecialAvocadoKind:(id)kind
{
  kindCopy = kind;
  if ([kindCopy isEqualToString:@"SBHSpecialAvocadoDescriptorKindSiri"])
  {
    v4 = 14;
  }

  else if ([kindCopy isEqualToString:@"SBHSpecialAvocadoDescriptorKindFiles"] & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsFolder"))
  {
    v4 = 12;
  }

  else if ([kindCopy isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsSingle"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_defaultWidgetStackFromSmallStack:(id)stack mediumStack:(id)mediumStack largeStack:(id)largeStack extraLargeStack:(id)extraLargeStack suggestedSize:(unint64_t)size maxWidgetsPerStack:(unint64_t)perStack isiPad:(BOOL)pad
{
  v42 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  mediumStackCopy = mediumStack;
  largeStackCopy = largeStack;
  extraLargeStackCopy = extraLargeStack;
  if ([stackCopy count] < 2 || objc_msgSend(mediumStackCopy, "count") < 2 || objc_msgSend(largeStackCopy, "count") <= 1)
  {
    v18 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v34 = 136315906;
      v35 = "+[ATXDefaultHomeScreenItemProducerUtilities _defaultWidgetStackFromSmallStack:mediumStack:largeStack:extraLargeStack:suggestedSize:maxWidgetsPerStack:isiPad:]";
      v36 = 2048;
      v37 = [stackCopy count];
      v38 = 2048;
      v39 = [mediumStackCopy count];
      v40 = 2048;
      v41 = [largeStackCopy count];
      _os_log_error_impl(&dword_1BF549000, v18, OS_LOG_TYPE_ERROR, "%s: default stack does not have enough widgets (small: %lu, med: %lu, large: %lu)", &v34, 0x2Au);
    }
  }

  if (pad && [extraLargeStackCopy count] <= 1)
  {
    v19 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXDefaultHomeScreenItemProducerUtilities _defaultWidgetStackFromSmallStack:extraLargeStackCopy mediumStack:v19 largeStack:? extraLargeStack:? suggestedSize:? maxWidgetsPerStack:? isiPad:?];
    }
  }

  v20 = [stackCopy count];
  if (v20 >= perStack)
  {
    perStackCopy = perStack;
  }

  else
  {
    perStackCopy = v20;
  }

  v22 = [stackCopy subarrayWithRange:{0, perStackCopy}];

  v23 = [mediumStackCopy count];
  if (v23 >= perStack)
  {
    perStackCopy2 = perStack;
  }

  else
  {
    perStackCopy2 = v23;
  }

  v25 = [mediumStackCopy subarrayWithRange:{0, perStackCopy2}];

  v26 = [largeStackCopy count];
  if (v26 >= perStack)
  {
    perStackCopy3 = perStack;
  }

  else
  {
    perStackCopy3 = v26;
  }

  v28 = [largeStackCopy subarrayWithRange:{0, perStackCopy3}];

  v29 = [extraLargeStackCopy count];
  if (v29 >= perStack)
  {
    perStackCopy4 = perStack;
  }

  else
  {
    perStackCopy4 = v29;
  }

  v31 = [extraLargeStackCopy subarrayWithRange:{0, perStackCopy4}];

  v32 = objc_opt_new();
  [v32 setSmallDefaultStack:v22];
  [v32 setMediumDefaultStack:v25];
  [v32 setLargeDefaultStack:v28];
  [v32 setExtraLargeDefaultStack:v31];
  [v32 setSuggestedSize:size];

  return v32;
}

+ (id)widgetDescriptorFromChronoDescriptor:(id)descriptor appBundleId:(id)id rankType:(int64_t)type
{
  idCopy = id;
  descriptorCopy = descriptor;
  v9 = objc_opt_new();
  [v9 setAvocadoDescriptor:descriptorCopy];

  [v9 setAppBundleId:idCopy];
  [v9 setRankType:type];

  return v9;
}

+ (id)defaultWidgetStackFromSmallStack:(id)stack mediumStack:(id)mediumStack largeStack:(id)largeStack extraLargeStack:(id)extraLargeStack suggestedSize:(unint64_t)size maxWidgetsPerStack:(unint64_t)perStack isiPad:(BOOL)pad
{
  v42 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  mediumStackCopy = mediumStack;
  largeStackCopy = largeStack;
  extraLargeStackCopy = extraLargeStack;
  if ([stackCopy count] < 2 || objc_msgSend(mediumStackCopy, "count") < 2 || objc_msgSend(largeStackCopy, "count") <= 1)
  {
    v18 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v34 = 136315906;
      v35 = "+[ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:mediumStack:largeStack:extraLargeStack:suggestedSize:maxWidgetsPerStack:isiPad:]";
      v36 = 2048;
      v37 = [stackCopy count];
      v38 = 2048;
      v39 = [mediumStackCopy count];
      v40 = 2048;
      v41 = [largeStackCopy count];
      _os_log_debug_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEBUG, "%s: default stack does not have enough widgets (small: %lu, med: %lu, large: %lu)", &v34, 0x2Au);
    }
  }

  if (pad && [extraLargeStackCopy count] <= 1)
  {
    v19 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:extraLargeStackCopy mediumStack:v19 largeStack:? extraLargeStack:? suggestedSize:? maxWidgetsPerStack:? isiPad:?];
    }
  }

  v20 = [stackCopy count];
  if (v20 >= perStack)
  {
    perStackCopy = perStack;
  }

  else
  {
    perStackCopy = v20;
  }

  v22 = [stackCopy subarrayWithRange:{0, perStackCopy}];

  v23 = [mediumStackCopy count];
  if (v23 >= perStack)
  {
    perStackCopy2 = perStack;
  }

  else
  {
    perStackCopy2 = v23;
  }

  v25 = [mediumStackCopy subarrayWithRange:{0, perStackCopy2}];

  v26 = [largeStackCopy count];
  if (v26 >= perStack)
  {
    perStackCopy3 = perStack;
  }

  else
  {
    perStackCopy3 = v26;
  }

  v28 = [largeStackCopy subarrayWithRange:{0, perStackCopy3}];

  v29 = [extraLargeStackCopy count];
  if (v29 >= perStack)
  {
    perStackCopy4 = perStack;
  }

  else
  {
    perStackCopy4 = v29;
  }

  v31 = [extraLargeStackCopy subarrayWithRange:{0, perStackCopy4}];

  v32 = objc_opt_new();
  [v32 setSmallDefaultStack:v22];
  [v32 setMediumDefaultStack:v25];
  [v32 setLargeDefaultStack:v28];
  [v32 setExtraLargeDefaultStack:v31];
  [v32 setSuggestedSize:size];

  return v32;
}

+ (id)splitDescriptorsIntoFirstPartyAndThirdParty:(id)party
{
  v24 = *MEMORY[0x1E69E9840];
  partyCopy = party;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = partyCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([self _isSpecialAvocadoDescriptor:{v12, v19}])
        {
          [v5 addObject:v12];
        }

        else
        {
          avocadoDescriptor = [v12 avocadoDescriptor];
          extensionBundleIdentifier = [avocadoDescriptor extensionBundleIdentifier];

          if (!extensionBundleIdentifier || (v15 = [extensionBundleIdentifier hasPrefix:@"com.apple."], v16 = v5, (v15 & 1) == 0))
          {
            v16 = v6;
          }

          [v16 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v5 second:v6];

  return v17;
}

+ (BOOL)_isSpecialAvocadoDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  avocadoDescriptor = [descriptorCopy avocadoDescriptor];
  extensionBundleIdentifier = [avocadoDescriptor extensionBundleIdentifier];
  v6 = [extensionBundleIdentifier isEqualToString:&stru_1F3E050C8];

  if (v6)
  {
    avocadoDescriptor2 = [descriptorCopy avocadoDescriptor];
    kind = [avocadoDescriptor2 kind];

    if ([kind isEqualToString:@"SBHSpecialAvocadoDescriptorKindSiri"] & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsSingle") & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsFolder") & 1) != 0 || (objc_msgSend(kind, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindFiles"))
    {
      v9 = 1;
    }

    else
    {
      v9 = [kind isEqualToString:@"SBHSpecialAvocadoDescriptorKindAppPredictions"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)specialWidgetDescriptorForPersonality:(uint64_t)a1 size:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXDefaultHomeScreenItemProducer: could not add the %@ widget to default stack due to issue initializing the special CHSWidgetDescriptor", &v2, 0xCu);
}

+ (void)_defaultWidgetStackFromSmallStack:(void *)a1 mediumStack:(NSObject *)a2 largeStack:extraLargeStack:suggestedSize:maxWidgetsPerStack:isiPad:.cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 count];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "%s: extra large default stack does not have enough widgets: %lu", v3, 0x16u);
}

+ (void)defaultWidgetStackFromSmallStack:(void *)a1 mediumStack:(NSObject *)a2 largeStack:extraLargeStack:suggestedSize:maxWidgetsPerStack:isiPad:.cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 count];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "%s: extra large default stack does not have enough widgets: %lu", v3, 0x16u);
}

@end