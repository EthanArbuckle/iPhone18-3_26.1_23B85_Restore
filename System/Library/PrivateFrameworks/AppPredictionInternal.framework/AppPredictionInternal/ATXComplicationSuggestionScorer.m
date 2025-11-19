@interface ATXComplicationSuggestionScorer
- (ATXComplicationSuggestionScorer)init;
- (BOOL)_isNewlyInstalledWidget:(id)a3 additionalData:(id)a4;
- (BOOL)_modularSetIsSuggestibleGivenAppScoreDictionary:(id)a3;
- (id)_appBundleIdsForComplicationDescriptors:(id)a3;
- (id)_decaySubsequentScoresFromSameBundleId:(id)a3 decayFactor:(double)a4;
- (id)_scoredComplicationsForInlineSetGivenDescriptors:(id)a3;
- (id)_scoredComplicationsForModularSetGivenDescriptors:(id)a3 appBundleIdScores:(id)a4 heuristicScores:(id)a5 widgetDescriptorsAdditionalData:(id)a6;
- (id)complicationDescriptorsForInlineSetGivenComplicationDescriptors:(id)a3;
- (id)complicationDescriptorsForModularSetGivenComplicationDescriptors:(id)a3 widgetDescriptorsAdditionalData:(id)a4 aggregatedAppLaunchData:(id)a5 bundleIdToCompanionBundleId:(id)a6;
- (id)inputDescriptionForSignal:(id)a3 complicationDescriptors:(id)a4;
- (id)scoredComplicationDescriptorsForModularSetGivenComplicationDescriptors:(id)a3 widgetDescriptorsAdditionalData:(id)a4 aggregatedAppLaunchData:(id)a5 bundleIdToCompanionBundleId:(id)a6 checkEligibility:(BOOL)a7;
@end

@implementation ATXComplicationSuggestionScorer

- (ATXComplicationSuggestionScorer)init
{
  v8.receiver = self;
  v8.super_class = ATXComplicationSuggestionScorer;
  v2 = [(ATXComplicationSuggestionScorer *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    bundleIdsScorer = v2->_bundleIdsScorer;
    v2->_bundleIdsScorer = v3;

    v5 = objc_opt_new();
    heuristics = v2->_heuristics;
    v2->_heuristics = v5;
  }

  return v2;
}

- (id)complicationDescriptorsForModularSetGivenComplicationDescriptors:(id)a3 widgetDescriptorsAdditionalData:(id)a4 aggregatedAppLaunchData:(id)a5 bundleIdToCompanionBundleId:(id)a6
{
  v6 = [(ATXComplicationSuggestionScorer *)self scoredComplicationDescriptorsForModularSetGivenComplicationDescriptors:a3 widgetDescriptorsAdditionalData:a4 aggregatedAppLaunchData:a5 bundleIdToCompanionBundleId:a6 checkEligibility:1];
  v7 = [v6 keysSortedByValueUsingComparator:&__block_literal_global_150];

  return v7;
}

- (id)complicationDescriptorsForInlineSetGivenComplicationDescriptors:(id)a3
{
  v3 = [(ATXComplicationSuggestionScorer *)self scoredComplicationDescriptorsForInlineSetGivenComplicationDescriptors:a3];
  v4 = [v3 keysSortedByValueUsingComparator:&__block_literal_global_19_0];

  return v4;
}

- (id)scoredComplicationDescriptorsForModularSetGivenComplicationDescriptors:(id)a3 widgetDescriptorsAdditionalData:(id)a4 aggregatedAppLaunchData:(id)a5 bundleIdToCompanionBundleId:(id)a6 checkEligibility:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a5;
  v16 = [(ATXComplicationSuggestionScorer *)self _appBundleIdsForComplicationDescriptors:v12];
  v17 = [(ATXComplicationAppBundleIdsScorer *)self->_bundleIdsScorer scoredComplicationBundleIdsForModularSet:v16 aggregatedAppLaunchData:v15 bundleIdToCompanionBundleId:v14];

  if (v7 && ![(ATXComplicationSuggestionScorer *)self _modularSetIsSuggestibleGivenAppScoreDictionary:v17])
  {
    v20 = MEMORY[0x277CBEC10];
  }

  else
  {
    v18 = [(ATXComplicationSuggestionHeuristics *)self->_heuristics complicationHeuristicsDictionary];
    v19 = [(ATXComplicationSuggestionScorer *)self _scoredComplicationsForModularSetGivenDescriptors:v12 appBundleIdScores:v17 heuristicScores:v18 widgetDescriptorsAdditionalData:v13];
    v20 = [(ATXComplicationSuggestionScorer *)self _decaySubsequentScoresFromSameBundleId:v19 decayFactor:0.2];
  }

  return v20;
}

- (id)_appBundleIdsForComplicationDescriptors:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) extensionIdentity];
        v11 = [v10 containerBundleIdentifier];

        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_decaySubsequentScoresFromSameBundleId:(id)a3 decayFactor:(double)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        if (v13)
        {
          v14 = [v12 extensionIdentity];
          v15 = [v14 containerBundleIdentifier];

          if (v15)
          {
            v16 = [v6 valueForKey:v15];
            if (v16)
            {
              v17 = v16;
              [v16 insertObject:v13 atIndex:{objc_msgSend(v16, "indexOfObject:inSortedRange:options:usingComparator:", v13, 0, objc_msgSend(v16, "count"), 1024, &__block_literal_global_23_5)}];
            }

            else
            {
              v17 = objc_opt_new();
              [v17 addObject:v13];
              [v6 setObject:v17 forKeyedSubscript:v15];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v9);
  }

  v35 = v6;

  v18 = [v7 mutableCopy];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v19 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v36 + 1) + 8 * j);
        v24 = [v23 extensionIdentity];
        v25 = [v24 containerBundleIdentifier];

        if (v25)
        {
          v26 = [v18 objectForKeyedSubscript:v23];
          v27 = [v35 valueForKey:v25];
          v28 = [v27 indexOfObject:v26];
          v29 = MEMORY[0x277CCABB0];
          [v26 doubleValue];
          v31 = [v29 numberWithDouble:{(v30 * pow(a4, v28))}];
          [v18 setObject:v31 forKeyedSubscript:v23];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v20);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)inputDescriptionForSignal:(id)a3 complicationDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  if (([v6 isEqualToString:@"appLaunchUniqueDays"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"appLaunchTotalCount") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"preConfiguredWidgets") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"appPriors"))
  {
    v9 = [(ATXComplicationSuggestionScorer *)self _appBundleIdsForComplicationDescriptors:v7];
    v10 = [(ATXComplicationAppBundleIdsScorer *)self->_bundleIdsScorer inputDescriptionForSignal:v6 complicationAppBundleIds:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_2839A6058;
    }

    [v8 appendString:v12];
LABEL_9:

    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"heuristics"])
  {
    [(ATXComplicationSuggestionHeuristics *)self->_heuristics flushCache];
    v14 = [(ATXComplicationSuggestionHeuristics *)self->_heuristics description];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_2839A6058;
    }

    [v8 appendString:v16];
LABEL_26:

    goto LABEL_10;
  }

  if ([v6 isEqualToString:@"complicationPriors"])
  {
    v15 = +[ATXComplicationSuggestionParameters sharedInstance];
    v17 = [v15 modularComplicationsToPriorsMapping];
    v18 = [v15 inlineComplicationsToPriorsMapping];
    [v8 appendString:@"Prior values for Modular Complications:\n"];
    v19 = [v17 description];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = &stru_2839A6058;
    }

    [v8 appendString:v21];

    [v8 appendString:@"\n\nPrior values for Inline Complications:\n"];
    v22 = [v18 description];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &stru_2839A6058;
    }

    [v8 appendString:v24];

    goto LABEL_26;
  }

  if ([v6 isEqualToString:@"hyperRecency"])
  {
    v25 = [MEMORY[0x277CEB998] sharedInstance];
    v30 = 0;
    v11 = [v25 fetchAccessoryWidgetDescriptorMetadataWithError:&v30];
    v9 = v30;

    if (v9 || !v11)
    {
      [v8 appendString:@"Error while fetching widget install dates: "];
      v26 = [v9 description];
      v27 = v26;
      v28 = @"<Unknown error>";
    }

    else
    {
      [v8 appendString:@"Install Dates for Complication Descriptors:\n%"];
      v26 = [v11 description];
      v27 = v26;
      v28 = &stru_2839A6058;
    }

    if (v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = v28;
    }

    [v8 appendString:v29];

    goto LABEL_9;
  }

  [v8 appendString:@"Unrecognized Signal"];
LABEL_10:

  return v8;
}

- (id)_scoredComplicationsForModularSetGivenDescriptors:(id)a3 appBundleIdScores:(id)a4 heuristicScores:(id)a5 widgetDescriptorsAdditionalData:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v50 = a4;
  v10 = a5;
  v11 = a6;
  v48 = objc_opt_new();
  v12 = +[ATXComplicationSuggestionParameters sharedInstance];
  v47 = [v12 modularComplicationsToPriorsMapping];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v53;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v52 + 1) + 8 * i);
        v18 = [v17 extensionIdentity];
        v19 = [v18 containerBundleIdentifier];

        v20 = 0.0;
        v21 = 0.0;
        if (v19)
        {
          v22 = [v17 extensionIdentity];
          v23 = [v22 containerBundleIdentifier];
          v24 = [v50 objectForKeyedSubscript:v23];
          [v24 doubleValue];
          v21 = v25;
        }

        v26 = [v17 extensionBundleIdentifier];
        if (v26)
        {
          v27 = v26;
          v28 = [v17 kind];

          if (v28)
          {
            v29 = objc_alloc(MEMORY[0x277CCACA8]);
            v30 = [v17 extensionBundleIdentifier];
            v31 = [v17 kind];
            v32 = [v29 initWithFormat:@"%@:%@", v30, v31];

            v33 = [v47 objectForKeyedSubscript:v32];
            [v33 doubleValue];
            v20 = v34 / 100.0;
          }
        }

        v35 = objc_alloc(MEMORY[0x277CEB9B0]);
        v36 = [v17 extensionBundleIdentifier];
        v37 = [v17 kind];
        v38 = [v35 initWithExtensionBundleId:v36 kind:v37];

        v39 = [v10 objectForKeyedSubscript:v38];
        LOBYTE(v37) = [v39 unsignedIntValue];

        v40 = v20 + [ATXComplicationSuggestionHeuristics scoreFromConfidence:v37];
        v41 = [(ATXComplicationSuggestionScorer *)self _isNewlyInstalledWidget:v17 additionalData:v11];
        v42 = v40 + 30.0;
        if (!v41)
        {
          v42 = v40;
        }

        v43 = v21 + v42;
        if (v43 > 0.0)
        {
          v44 = [MEMORY[0x277CCABB0] numberWithDouble:v43 + arc4random_uniform(0x64u) * 0.01];
          [v48 setObject:v44 forKeyedSubscript:v17];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v14);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)_scoredComplicationsForInlineSetGivenDescriptors:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[ATXComplicationSuggestionParameters sharedInstance];
  v26 = [v5 inlineComplicationsToPriorsMapping];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 extensionBundleIdentifier];
        v13 = 0.0;
        if (v12)
        {
          v14 = v12;
          v15 = [v11 kind];

          if (v15)
          {
            v16 = objc_alloc(MEMORY[0x277CCACA8]);
            v17 = [v11 extensionBundleIdentifier];
            v18 = [v11 kind];
            v19 = [v16 initWithFormat:@"%@:%@", v17, v18];

            v20 = [v26 objectForKeyedSubscript:v19];
            [v20 doubleValue];
            v22 = v21 / 10.0;

            v13 = v22 + 0.0;
          }
        }

        v23 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        [v4 setObject:v23 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_modularSetIsSuggestibleGivenAppScoreDictionary:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v3 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        [v8 doubleValue];
        v10 = v9;

        if (v10 > v6)
        {
          v6 = v10;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
    LOBYTE(v4) = v6 >= 11.0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_isNewlyInstalledWidget:(id)a3 additionalData:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = MEMORY[0x277CEB9B0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithDescriptor:v7];

  v9 = [v6 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v9 installDate];
    if (!v10)
    {
      goto LABEL_5;
    }

    v11 = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = [v11 dateByAddingUnit:16 value:-1 toDate:v12 options:0];

    v14 = [v13 compare:v10];
    if (v14 == -1)
    {
      v15 = 1;
    }

    else
    {
LABEL_5:
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end