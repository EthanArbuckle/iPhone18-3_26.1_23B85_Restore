@interface ATXDefaultHomeScreenItemProducerUtilities
+ (BOOL)_isSpecialAvocadoDescriptor:(id)a3;
+ (BOOL)shouldConsiderSimilarThirdPartyWidgetsForPosition:(id)a3;
+ (id)_defaultWidgetStackFromSmallStack:(id)a3 mediumStack:(id)a4 largeStack:(id)a5 extraLargeStack:(id)a6 suggestedSize:(unint64_t)a7 maxWidgetsPerStack:(unint64_t)a8 isiPad:(BOOL)a9;
+ (id)_specialAvocadoKindsConvertingFromAssetsString:(id)a3;
+ (id)bundleIdentifierFromWidgetKey:(id)a3;
+ (id)defaultWidgetStackFromSmallStack:(id)a3 mediumStack:(id)a4 largeStack:(id)a5 extraLargeStack:(id)a6 suggestedSize:(unint64_t)a7 maxWidgetsPerStack:(unint64_t)a8 isiPad:(BOOL)a9;
+ (id)eligibleThirdPartyWidgetFromSimilarWidgets:(id)a3 launchCounts:(id)a4;
+ (id)mergedDescriptorsFrom:(id)a3 withAdditional:(id)a4;
+ (id)personalitiesFromAssetsWithKey:(id)a3;
+ (id)personalitiesFromAssetsWithKey:(id)a3 launchCounts:(id)a4;
+ (id)similarThirdPartyWidgetsForPosition:(id)a3;
+ (id)specialWidgetDescriptorForPersonality:(id)a3 size:(unint64_t)a4;
+ (id)splitDescriptorsIntoFirstPartyAndThirdParty:(id)a3;
+ (id)stackFromDefaultStackPersonalities:(id)a3 suggestedSize:(unint64_t)a4 maxWidgetsPerStack:(unint64_t)a5 personalityToDescriptorDictionary:(id)a6 isiPad:(BOOL)a7;
+ (id)widget:(id)a3 filteredForSize:(unint64_t)a4;
+ (id)widgetDescriptorFromChronoDescriptor:(id)a3 appBundleId:(id)a4 rankType:(int64_t)a5;
+ (id)widgetExtensionAndKindFromKey:(id)a3;
+ (id)widgetFromPersonality:(id)a3 size:(unint64_t)a4 personalityToDescriptorDictionary:(id)a5;
+ (id)widgets:(id)a3 filteredForSize:(unint64_t)a4;
+ (id)widgetsFromPersonalities:(id)a3 size:(unint64_t)a4 personalityToDescriptorDictionary:(id)a5;
+ (unint64_t)_supportedSizeClassesForSpecialAvocadoKind:(id)a3;
+ (unint64_t)_widgetFamilyMaskForStackLayoutSize:(unint64_t)a3;
@end

@implementation ATXDefaultHomeScreenItemProducerUtilities

+ (id)stackFromDefaultStackPersonalities:(id)a3 suggestedSize:(unint64_t)a4 maxWidgetsPerStack:(unint64_t)a5 personalityToDescriptorDictionary:(id)a6 isiPad:(BOOL)a7
{
  v12 = a3;
  v13 = a6;
  v14 = [a1 widgetsFromPersonalities:v12 size:0 personalityToDescriptorDictionary:v13];
  v15 = [a1 widgetsFromPersonalities:v12 size:1 personalityToDescriptorDictionary:v13];
  v16 = [a1 widgetsFromPersonalities:v12 size:2 personalityToDescriptorDictionary:v13];
  if (a7)
  {
    v17 = [a1 widgetsFromPersonalities:v12 size:4 personalityToDescriptorDictionary:v13];
    LOBYTE(v20) = 1;
    v18 = [a1 _defaultWidgetStackFromSmallStack:v14 mediumStack:v15 largeStack:v16 extraLargeStack:v17 suggestedSize:a4 maxWidgetsPerStack:a5 isiPad:v20];
  }

  else
  {
    LOBYTE(v20) = 0;
    v18 = [a1 _defaultWidgetStackFromSmallStack:v14 mediumStack:v15 largeStack:v16 extraLargeStack:0 suggestedSize:a4 maxWidgetsPerStack:a5 isiPad:v20];
  }

  return v18;
}

+ (id)widgetFromPersonality:(id)a3 size:(unint64_t)a4 personalityToDescriptorDictionary:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [ATXDefaultHomeScreenItemProducerUtilities specialWidgetDescriptorForPersonality:v7 size:a4];
  if (v9)
  {
    v10 = v9;
LABEL_4:
    v12 = [objc_opt_class() widget:v10 filteredForSize:a4];

    goto LABEL_5;
  }

  v11 = [v8 objectForKeyedSubscript:v7];
  v10 = [v11 copy];

  if (v10)
  {
    goto LABEL_4;
  }

  v12 = 0;
LABEL_5:

  return v12;
}

+ (id)widgetsFromPersonalities:(id)a3 size:(unint64_t)a4 personalityToDescriptorDictionary:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __109__ATXDefaultHomeScreenItemProducerUtilities_widgetsFromPersonalities_size_personalityToDescriptorDictionary___block_invoke;
  v12[3] = &unk_1E80C68C0;
  v14 = a1;
  v15 = a4;
  v13 = v8;
  v9 = v8;
  v10 = [a3 _pas_mappedArrayWithTransform:v12];

  return v10;
}

+ (id)mergedDescriptorsFrom:(id)a3 withAdditional:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 mutableCopy];
  v8 = [MEMORY[0x1E695DFA8] setWithArray:v5];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
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

+ (id)personalitiesFromAssetsWithKey:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = [ATXAssets2 dictionaryForClassName:@"ATXDefaultHomeScreenItemUpdater"];
  v7 = [v6 objectForKeyedSubscript:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v3;
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
            v13 = [a1 _specialAvocadoKindsConvertingFromAssetsString:v12];
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

    v3 = v23;
    v7 = v22;
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (id)personalitiesFromAssetsWithKey:(id)a3 launchCounts:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DFA8] set];
  v11 = [ATXAssets2 dictionaryForClassName:@"ATXDefaultHomeScreenItemUpdater"];
  v12 = [v11 objectForKeyedSubscript:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v8;
    v32 = v6;
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
    v34 = v7;
    v35 = *v45;
    v33 = a1;
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
          if ([a1 shouldConsiderSimilarThirdPartyWidgetsForPosition:v16])
          {
            v17 = [a1 similarThirdPartyWidgetsForPosition:v16];
            v18 = [a1 eligibleThirdPartyWidgetFromSimilarWidgets:v17 launchCounts:v7];
            v19 = [a1 widgetExtensionAndKindFromKey:v18];
            if (v19 && ([v10 containsObject:v19] & 1) == 0)
            {
              v20 = [[ATXWidgetPersonality alloc] initWithStringRepresentation:v19];
              if (v20)
              {
                [v9 addObject:v20];
                [v10 addObject:v19];
              }
            }

            v13 = v35;
            goto LABEL_15;
          }

          v21 = [a1 _specialAvocadoKindsConvertingFromAssetsString:v16];
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
                    [v9 addObject:v27];
                    [v10 addObject:v26];
                  }
                }

                v23 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
              }

              while (v23);
              a1 = v33;
              v7 = v34;
              v13 = v35;
            }
          }

          else if (([v10 containsObject:v16] & 1) == 0)
          {
            v18 = [[ATXWidgetPersonality alloc] initWithStringRepresentation:v16];
            if (v18)
            {
              [v9 addObject:v18];
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
        v6 = v32;
        v12 = v30;
        break;
      }
    }
  }

  objc_autoreleasePoolPop(v8);

  return v9;
}

+ (BOOL)shouldConsiderSimilarThirdPartyWidgetsForPosition:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"anyCalendarWidget"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"anyMedia_MusicBooksPodcast_Widget") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"anyToDoWidget") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"anyElectricCarAppWidget"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"anyHomeMonitoringAppWidget"];
  }

  return v4;
}

+ (id)similarThirdPartyWidgetsForPosition:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [ATXAssets2 dictionaryForClassName:@"ATXDefaultHomeScreenItemUpdater"];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__ATXDefaultHomeScreenItemProducerUtilities_similarThirdPartyWidgetsForPosition___block_invoke;
    v10[3] = &__block_descriptor_40_e8_B16__0_8l;
    v10[4] = a1;
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

+ (id)bundleIdentifierFromWidgetKey:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 componentsSeparatedByString:@":"];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)widgetExtensionAndKindFromKey:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@":"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v4, v4 + v5 >= [v3 length]))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 substringFromIndex:v6 + 1];
  }

  return v7;
}

+ (id)eligibleThirdPartyWidgetFromSimilarWidgets:(id)a3 launchCounts:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (![v5 count])
  {
    v7 = 0;
    goto LABEL_42;
  }

  if ([v5 count] == 1)
  {
    v7 = [v5 firstObject];
    goto LABEL_42;
  }

  v31 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = v5;
  obj = v5;
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
      v15 = [v14 firstObject];

      v16 = [v6 objectForKeyedSubscript:v15];
      v17 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(ATXAggregatedAppLaunchData *)v16 rawLaunchCount];
        v19 = [(ATXAggregatedAppLaunchData *)v16 uniqueDaysLaunched];
        *buf = 136315906;
        v37 = "+[ATXDefaultHomeScreenItemProducerUtilities eligibleThirdPartyWidgetFromSimilarWidgets:launchCounts:]";
        v38 = 2112;
        v39 = v15;
        v40 = 2048;
        v41 = v18;
        v42 = 2048;
        v43 = v19;
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
          [v31 addObject:v13];
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
          [v31 removeAllObjects];
          [v31 addObject:v13];
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

  if ([v31 count])
  {
    v23 = [v31 count];
    v24 = __atxlog_handle_home_screen();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23 == 1)
    {
      v5 = v29;
      if (v25)
      {
        v26 = [v31 firstObject];
        *buf = 136315394;
        v37 = "+[ATXDefaultHomeScreenItemProducerUtilities eligibleThirdPartyWidgetFromSimilarWidgets:launchCounts:]";
        v38 = 2112;
        v39 = v26;
        _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "%s Returning the highest-ranked widget for stack based on app usage: %@", buf, 0x16u);
      }

      v27 = [v31 firstObject];
    }

    else
    {
      v5 = v29;
      if (v25)
      {
        *buf = 136315138;
        v37 = "+[ATXDefaultHomeScreenItemProducerUtilities eligibleThirdPartyWidgetFromSimilarWidgets:launchCounts:]";
        _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "%s Randomly selecting a widget from all equally ranked widgets for Stack", buf, 0xCu);
      }

      v27 = [v31 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v31, "count"))}];
    }

    v7 = v27;
  }

  else
  {
    v7 = 0;
    v5 = v29;
  }

LABEL_42:

  return v7;
}

+ (id)widget:(id)a3 filteredForSize:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 avocadoDescriptor];
  v7 = v6;
  if (v6 && (v8 = [v6 supportedFamilies], (objc_msgSend(objc_opt_class(), "_widgetFamilyMaskForStackLayoutSize:", a4) & v8) != 0))
  {
    v9 = [v5 copy];
    [v9 setSuggestedSize:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)widgets:(id)a3 filteredForSize:(unint64_t)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__ATXDefaultHomeScreenItemProducerUtilities_widgets_filteredForSize___block_invoke;
  v6[3] = &__block_descriptor_48_e39__16__0__ATXHomeScreenWidgetDescriptor_8l;
  v6[4] = a1;
  v6[5] = a4;
  v4 = [a3 _pas_mappedArrayWithTransform:v6];

  return v4;
}

+ (unint64_t)_widgetFamilyMaskForStackLayoutSize:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 2;
  }

  else
  {
    return qword_1BF6F5928[a3 - 1];
  }
}

+ (id)_specialAvocadoKindsConvertingFromAssetsString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"suggestions"])
  {
    v4 = &unk_1F3E60D20;
  }

  else if ([v3 isEqualToString:@"shortcuts"])
  {
    v4 = &unk_1F3E60D38;
  }

  else if ([v3 isEqualToString:@"files"])
  {
    v4 = &unk_1F3E60D50;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)specialWidgetDescriptorForPersonality:(id)a3 size:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = [a3 kind];
  v7 = [a1 _supportedSizeClassesForSpecialAvocadoKind:v6];
  if (([a1 _widgetFamilyMaskForStackLayoutSize:a4] & v7) == 0)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v8 = objc_alloc(MEMORY[0x1E6994388]);
  v9 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:&stru_1F3E050C8 containerBundleIdentifier:0 deviceIdentifier:0];
  v10 = [v8 initWithExtensionIdentity:v9 kind:v6 supportedFamilies:v7 intentType:0];

  if (!v10)
  {
    v12 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXDefaultHomeScreenItemProducerUtilities specialWidgetDescriptorForPersonality:v6 size:v12];
    }

    goto LABEL_12;
  }

  if ([v6 isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsSingle"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsFolder"))
  {
    v11 = @"com.apple.shortcuts";
  }

  else
  {
    if (![v6 isEqualToString:@"SBHSpecialAvocadoDescriptorKindFiles"])
    {
      v11 = 0;
      goto LABEL_16;
    }

    v11 = @"com.apple.DocumentsApp";
  }

  if ([ATXApplicationRecord isInstalledForBundle:v11])
  {
LABEL_16:
    v13 = [a1 widgetDescriptorFromChronoDescriptor:v10 appBundleId:v11 rankType:1];
    [v13 setSuggestedSize:a4];
    goto LABEL_17;
  }

  v12 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: could not add %@ widget to default stack because app is not installed on device", &v15, 0xCu);
  }

LABEL_12:

  v13 = 0;
LABEL_17:

LABEL_18:

  return v13;
}

+ (unint64_t)_supportedSizeClassesForSpecialAvocadoKind:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SBHSpecialAvocadoDescriptorKindSiri"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"SBHSpecialAvocadoDescriptorKindFiles"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsFolder"))
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SBHSpecialAvocadoDescriptorKindShortcutsSingle"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_defaultWidgetStackFromSmallStack:(id)a3 mediumStack:(id)a4 largeStack:(id)a5 extraLargeStack:(id)a6 suggestedSize:(unint64_t)a7 maxWidgetsPerStack:(unint64_t)a8 isiPad:(BOOL)a9
{
  v42 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if ([v14 count] < 2 || objc_msgSend(v15, "count") < 2 || objc_msgSend(v16, "count") <= 1)
  {
    v18 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v34 = 136315906;
      v35 = "+[ATXDefaultHomeScreenItemProducerUtilities _defaultWidgetStackFromSmallStack:mediumStack:largeStack:extraLargeStack:suggestedSize:maxWidgetsPerStack:isiPad:]";
      v36 = 2048;
      v37 = [v14 count];
      v38 = 2048;
      v39 = [v15 count];
      v40 = 2048;
      v41 = [v16 count];
      _os_log_error_impl(&dword_1BF549000, v18, OS_LOG_TYPE_ERROR, "%s: default stack does not have enough widgets (small: %lu, med: %lu, large: %lu)", &v34, 0x2Au);
    }
  }

  if (a9 && [v17 count] <= 1)
  {
    v19 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXDefaultHomeScreenItemProducerUtilities _defaultWidgetStackFromSmallStack:v17 mediumStack:v19 largeStack:? extraLargeStack:? suggestedSize:? maxWidgetsPerStack:? isiPad:?];
    }
  }

  v20 = [v14 count];
  if (v20 >= a8)
  {
    v21 = a8;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v14 subarrayWithRange:{0, v21}];

  v23 = [v15 count];
  if (v23 >= a8)
  {
    v24 = a8;
  }

  else
  {
    v24 = v23;
  }

  v25 = [v15 subarrayWithRange:{0, v24}];

  v26 = [v16 count];
  if (v26 >= a8)
  {
    v27 = a8;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v16 subarrayWithRange:{0, v27}];

  v29 = [v17 count];
  if (v29 >= a8)
  {
    v30 = a8;
  }

  else
  {
    v30 = v29;
  }

  v31 = [v17 subarrayWithRange:{0, v30}];

  v32 = objc_opt_new();
  [v32 setSmallDefaultStack:v22];
  [v32 setMediumDefaultStack:v25];
  [v32 setLargeDefaultStack:v28];
  [v32 setExtraLargeDefaultStack:v31];
  [v32 setSuggestedSize:a7];

  return v32;
}

+ (id)widgetDescriptorFromChronoDescriptor:(id)a3 appBundleId:(id)a4 rankType:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setAvocadoDescriptor:v8];

  [v9 setAppBundleId:v7];
  [v9 setRankType:a5];

  return v9;
}

+ (id)defaultWidgetStackFromSmallStack:(id)a3 mediumStack:(id)a4 largeStack:(id)a5 extraLargeStack:(id)a6 suggestedSize:(unint64_t)a7 maxWidgetsPerStack:(unint64_t)a8 isiPad:(BOOL)a9
{
  v42 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if ([v14 count] < 2 || objc_msgSend(v15, "count") < 2 || objc_msgSend(v16, "count") <= 1)
  {
    v18 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v34 = 136315906;
      v35 = "+[ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:mediumStack:largeStack:extraLargeStack:suggestedSize:maxWidgetsPerStack:isiPad:]";
      v36 = 2048;
      v37 = [v14 count];
      v38 = 2048;
      v39 = [v15 count];
      v40 = 2048;
      v41 = [v16 count];
      _os_log_debug_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEBUG, "%s: default stack does not have enough widgets (small: %lu, med: %lu, large: %lu)", &v34, 0x2Au);
    }
  }

  if (a9 && [v17 count] <= 1)
  {
    v19 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:v17 mediumStack:v19 largeStack:? extraLargeStack:? suggestedSize:? maxWidgetsPerStack:? isiPad:?];
    }
  }

  v20 = [v14 count];
  if (v20 >= a8)
  {
    v21 = a8;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v14 subarrayWithRange:{0, v21}];

  v23 = [v15 count];
  if (v23 >= a8)
  {
    v24 = a8;
  }

  else
  {
    v24 = v23;
  }

  v25 = [v15 subarrayWithRange:{0, v24}];

  v26 = [v16 count];
  if (v26 >= a8)
  {
    v27 = a8;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v16 subarrayWithRange:{0, v27}];

  v29 = [v17 count];
  if (v29 >= a8)
  {
    v30 = a8;
  }

  else
  {
    v30 = v29;
  }

  v31 = [v17 subarrayWithRange:{0, v30}];

  v32 = objc_opt_new();
  [v32 setSmallDefaultStack:v22];
  [v32 setMediumDefaultStack:v25];
  [v32 setLargeDefaultStack:v28];
  [v32 setExtraLargeDefaultStack:v31];
  [v32 setSuggestedSize:a7];

  return v32;
}

+ (id)splitDescriptorsIntoFirstPartyAndThirdParty:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v4;
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
        if ([a1 _isSpecialAvocadoDescriptor:{v12, v19}])
        {
          [v5 addObject:v12];
        }

        else
        {
          v13 = [v12 avocadoDescriptor];
          v14 = [v13 extensionBundleIdentifier];

          if (!v14 || (v15 = [v14 hasPrefix:@"com.apple."], v16 = v5, (v15 & 1) == 0))
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

+ (BOOL)_isSpecialAvocadoDescriptor:(id)a3
{
  v3 = a3;
  v4 = [v3 avocadoDescriptor];
  v5 = [v4 extensionBundleIdentifier];
  v6 = [v5 isEqualToString:&stru_1F3E050C8];

  if (v6)
  {
    v7 = [v3 avocadoDescriptor];
    v8 = [v7 kind];

    if ([v8 isEqualToString:@"SBHSpecialAvocadoDescriptorKindSiri"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsSingle") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindShortcutsFolder") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"SBHSpecialAvocadoDescriptorKindFiles"))
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 isEqualToString:@"SBHSpecialAvocadoDescriptorKindAppPredictions"];
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