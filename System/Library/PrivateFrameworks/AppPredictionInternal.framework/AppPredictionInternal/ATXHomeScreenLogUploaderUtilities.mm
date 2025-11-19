@interface ATXHomeScreenLogUploaderUtilities
+ (BOOL)_isDwellLongEnoughForPseudoTap:(id)a3 endingEventTime:(double)a4;
+ (BOOL)isFirstPartyApp:(id)a3;
+ (BOOL)isRotationSessionDueToProactive:(id)a3;
+ (BOOL)isRotationSessionDueToUserScroll:(id)a3;
+ (BOOL)isValidAppLaunch:(id)a3;
+ (id)_keyByConcatenatingAccumulatorKey:(id)a3 withString:(id)a4;
+ (id)abGroup;
+ (id)countsForRotationEngagementStatusHistory:(id)a3;
+ (id)keyByConcatenatingAccumulatorKey:(id)a3 withLocation:(unint64_t)a4;
+ (id)keyByConcatenatingAccumulatorKey:(id)a3 withSize:(unint64_t)a4;
+ (id)stackShownEventsForPseudoTapIfPossible:(id)a3 currentEvent:(id)a4;
+ (int)suggestionReasonForSuggestionLayout:(id)a3;
+ (void)add:(unint64_t)a3 toDictionary:(id)a4 forKey:(id)a5;
+ (void)add:(unint64_t)a3 toTwoLevelDictionary:(id)a4 forKey1:(id)a5 key2:(id)a6;
@end

@implementation ATXHomeScreenLogUploaderUtilities

+ (BOOL)isFirstPartyApp:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Shortcuts"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"com.apple."];
  }

  return v4;
}

+ (BOOL)isValidAppLaunch:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleID];
  if ([v4 hasPrefix:@"com.apple.springboard."])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 starting];
  }

  return v5;
}

+ (BOOL)isRotationSessionDueToProactive:(id)a3
{
  v3 = [a3 startingStackChangeEvent];
  v4 = [v3 reason];

  v5 = NSStringForATXHomeScreenStackChangeReason();
  v6 = [v4 isEqualToString:v5];

  return v6;
}

+ (BOOL)isRotationSessionDueToUserScroll:(id)a3
{
  v3 = [a3 startingStackChangeEvent];
  v4 = [v3 reason];

  v5 = NSStringForATXHomeScreenStackChangeReason();
  v6 = [v4 isEqualToString:v5];

  return v6;
}

+ (id)keyByConcatenatingAccumulatorKey:(id)a3 withLocation:(unint64_t)a4
{
  v5 = a3;
  v6 = ATXCAStringForStackLocation();
  v7 = [a1 _keyByConcatenatingAccumulatorKey:v5 withString:v6];

  return v7;
}

+ (id)keyByConcatenatingAccumulatorKey:(id)a3 withSize:(unint64_t)a4
{
  v5 = a3;
  v6 = ATXCAStringForStackLayoutSize();
  v7 = [a1 _keyByConcatenatingAccumulatorKey:v5 withString:v6];

  return v7;
}

+ (id)_keyByConcatenatingAccumulatorKey:(id)a3 withString:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = a4;
    v8 = a3;
    v4 = [[v6 alloc] initWithFormat:@"%@%@", v8, v7];
  }

  return v4;
}

+ (void)add:(unint64_t)a3 toDictionary:(id)a4 forKey:(id)a5
{
  v12 = a4;
  v7 = a5;
  if (v7)
  {
    v8 = [v12 objectForKeyedSubscript:v7];

    v9 = MEMORY[0x277CCABB0];
    if (v8)
    {
      v10 = [v12 objectForKeyedSubscript:v7];
      v11 = [v9 numberWithUnsignedInteger:{a3 + objc_msgSend(v10, "intValue")}];
      [v12 setObject:v11 forKeyedSubscript:v7];
    }

    else
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v12 setObject:v10 forKeyedSubscript:v7];
    }
  }
}

+ (void)add:(unint64_t)a3 toTwoLevelDictionary:(id)a4 forKey1:(id)a5 key2:(id)a6
{
  v15 = a4;
  v10 = a5;
  if (v10 && a6)
  {
    v11 = a6;
    v12 = [v15 objectForKeyedSubscript:v10];

    if (!v12)
    {
      v13 = objc_opt_new();
      [v15 setObject:v13 forKeyedSubscript:v10];
    }

    v14 = [v15 objectForKeyedSubscript:v10];
    [a1 add:a3 toDictionary:v14 forKey:v11];
  }
}

+ (BOOL)_isDwellLongEnoughForPseudoTap:(id)a3 endingEventTime:(double)a4
{
  if (!a3)
  {
    return 0;
  }

  [a3 timestamp];
  return a4 - v5 >= 3.0;
}

+ (id)stackShownEventsForPseudoTapIfPossible:(id)a3 currentEvent:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 eventBody];
  v9 = [v8 homeScreenEvent];

  v10 = [v9 eventTypeString];
  if ([v10 isEqualToString:@"Unknown"])
  {
    v11 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if ([v10 isEqualToString:@"HomeScreenPageShown"])
  {
    v11 = 1;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"HomeScreenDisappeared"])
  {
    v11 = 2;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"StackChanged"])
  {
    v11 = 3;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"WidgetTapped"])
  {
    v11 = 4;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"WidgetLongLook"])
  {
    v11 = 5;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"WidgetUserFeedback"])
  {
    v11 = 6;
    goto LABEL_17;
  }

  if ([v10 isEqualToString:@"UserStackConfigChanged"])
  {
    v11 = 7;
    goto LABEL_17;
  }

  if (([v10 isEqualToString:@"DeviceLocked"] & 1) == 0)
  {
    if ([v10 isEqualToString:@"DeviceUnlocked"])
    {
      v11 = 9;
    }

    else if ([v10 isEqualToString:@"PinnedWidgetAdded"])
    {
      v11 = 10;
    }

    else if ([v10 isEqualToString:@"PinnedWidgetDeleted"])
    {
      v11 = 11;
    }

    else if ([v10 isEqualToString:@"SpecialPageAppeared"])
    {
      v11 = 12;
    }

    else if ([v10 isEqualToString:@"SpecialPageDisappeared"])
    {
      v11 = 13;
    }

    else if ([v10 isEqualToString:@"StackShown"])
    {
      v11 = 14;
    }

    else if ([v10 isEqualToString:@"StackDisappeared"])
    {
      v11 = 15;
    }

    else if ([v10 isEqualToString:@"StackCreated"])
    {
      v11 = 16;
    }

    else if ([v10 isEqualToString:@"StackDeleted"])
    {
      v11 = 17;
    }

    else if ([v10 isEqualToString:@"WidgetAddedToStack"])
    {
      v11 = 18;
    }

    else if ([v10 isEqualToString:@"WidgetRemovedFromStack"])
    {
      v11 = 19;
    }

    else if ([v10 isEqualToString:@"StackVisibilityChanged"])
    {
      v11 = 20;
    }

    else if ([v10 isEqualToString:@"AppAdded"])
    {
      v11 = 21;
    }

    else if ([v10 isEqualToString:@"AppRemoved"])
    {
      v11 = 22;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_17;
  }

  v31 = v9;

  v15 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = v6;
  v22 = v6;
  v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [v22 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * i)];
        [v7 timestamp];
        if ([a1 _isDwellLongEnoughForPseudoTap:v27 endingEventTime:?])
        {
          v28 = [v27 eventBody];
          [v28 homeScreenEvent];
          v30 = v29 = a1;
          [v15 addObject:v30];

          a1 = v29;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v24);
  }

  [v22 removeAllObjects];
  if (![v15 count])
  {

    v11 = 8;
    v9 = v31;
    v6 = v32;
LABEL_18:
    v12 = [v9 stackId];
    if (!v12)
    {
      v15 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v13 = [v6 objectForKeyedSubscript:v12];
    v14 = v13;
    if (v11 == 15)
    {
      v16 = [v6 objectForKeyedSubscript:v12];
      v17 = [v16 eventBody];
      v18 = [v17 homeScreenEvent];

      [v6 removeObjectForKey:v12];
    }

    else
    {
      if (v11 == 14)
      {
        [v6 setObject:v7 forKeyedSubscript:v12];
        goto LABEL_30;
      }

      v15 = 0;
      if (v11 != 3 || !v13)
      {
        goto LABEL_31;
      }

      v19 = [v13 eventBody];
      v18 = [v19 homeScreenEvent];

      [v6 setObject:v7 forKeyedSubscript:v12];
    }

    [v7 timestamp];
    if ([a1 _isDwellLongEnoughForPseudoTap:v14 endingEventTime:?])
    {
      v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v18, 0}];

LABEL_31:
      goto LABEL_32;
    }

LABEL_30:
    v15 = 0;
    goto LABEL_31;
  }

  v9 = v31;
  v6 = v32;
LABEL_33:

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (int)suggestionReasonForSuggestionLayout:(id)a3
{
  v3 = a3;
  v4 = [v3 allSuggestionsInLayout];
  if (![v4 count])
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLogUploaderUtilities suggestionReasonForSuggestionLayout:v6];
    }

    goto LABEL_6;
  }

  if (([v3 isValidForSuggestionsWidget] & 1) == 0)
  {
    if ([v4 count] >= 2)
    {
      v7 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(ATXHomeScreenLogUploaderUtilities *)v4 suggestionReasonForSuggestionLayout:v3, v7];
      }
    }

    v6 = [v4 firstObject];
    v8 = MEMORY[0x277D42070];
    v9 = [v6 clientModelSpecification];
    v10 = [v9 clientModelId];
    v11 = [v8 clientModelTypeFromClientModelId:v10];

    if ([v3 isLowConfidenceStackRotationForStaleStack])
    {
      if (v11 == 19)
      {
        v5 = 3;
      }

      else
      {
        v5 = 8 * (v11 == 20);
      }

      goto LABEL_17;
    }

    if ([v3 isShortcutConversion])
    {
      v5 = 1;
      goto LABEL_17;
    }

    v13 = [v6 executableSpecification];
    v14 = [v13 executableType];

    if (v14 == 3)
    {
      switch(v11)
      {
        case 18:
          v5 = 4;
          goto LABEL_17;
        case 20:
          v5 = 7;
          goto LABEL_17;
        case 19:
          v5 = 2;
          goto LABEL_17;
      }
    }

    else
    {
      v15 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [(ATXHomeScreenLogUploaderUtilities *)v6 suggestionReasonForSuggestionLayout:v15];
      }
    }

LABEL_6:
    v5 = 6;
LABEL_17:

    goto LABEL_18;
  }

  v5 = 5;
LABEL_18:

  return v5;
}

+ (id)countsForRotationEngagementStatusHistory:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 engagementStatusHistory];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 unsignedIntValue];
        if ([v11 unsignedIntValue] <= 4)
        {
          [a1 incrementDictionary:v5 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)abGroup
{
  if (abGroup_onceToken != -1)
  {
    +[ATXHomeScreenLogUploaderUtilities abGroup];
  }

  v3 = abGroup_abGroup;

  return v3;
}

void __44__ATXHomeScreenLogUploaderUtilities_abGroup__block_invoke()
{
  v5 = objc_opt_new();
  v0 = [v5 abGroupIdentifierForConsumerSubType:36];
  v1 = [v5 abGroupIdentifierForConsumerSubType:37];
  v2 = [v5 abGroupIdentifierForConsumerSubType:38];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu:%@:%@:%@", 0, v0, v1, v2];
  v4 = abGroup_abGroup;
  abGroup_abGroup = v3;
}

+ (void)suggestionReasonForSuggestionLayout:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 134218242;
  v7 = [a1 count];
  v8 = 2112;
  v9 = a2;
  _os_log_fault_impl(&dword_2263AA000, a3, OS_LOG_TYPE_FAULT, "ATXHomeScreenLogUploader: Unexpected behavior - %lu suggestions exist in a stackLayout that is not valid for a suggestions widget. Continuing to use first suggestion. Layout: %@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)suggestionReasonForSuggestionLayout:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXHomeScreenLogUploader: Suggestion is not of type widget: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end