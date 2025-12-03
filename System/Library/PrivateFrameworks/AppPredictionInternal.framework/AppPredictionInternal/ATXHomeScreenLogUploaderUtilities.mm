@interface ATXHomeScreenLogUploaderUtilities
+ (BOOL)_isDwellLongEnoughForPseudoTap:(id)tap endingEventTime:(double)time;
+ (BOOL)isFirstPartyApp:(id)app;
+ (BOOL)isRotationSessionDueToProactive:(id)proactive;
+ (BOOL)isRotationSessionDueToUserScroll:(id)scroll;
+ (BOOL)isValidAppLaunch:(id)launch;
+ (id)_keyByConcatenatingAccumulatorKey:(id)key withString:(id)string;
+ (id)abGroup;
+ (id)countsForRotationEngagementStatusHistory:(id)history;
+ (id)keyByConcatenatingAccumulatorKey:(id)key withLocation:(unint64_t)location;
+ (id)keyByConcatenatingAccumulatorKey:(id)key withSize:(unint64_t)size;
+ (id)stackShownEventsForPseudoTapIfPossible:(id)possible currentEvent:(id)event;
+ (int)suggestionReasonForSuggestionLayout:(id)layout;
+ (void)add:(unint64_t)add toDictionary:(id)dictionary forKey:(id)key;
+ (void)add:(unint64_t)add toTwoLevelDictionary:(id)dictionary forKey1:(id)key1 key2:(id)key2;
@end

@implementation ATXHomeScreenLogUploaderUtilities

+ (BOOL)isFirstPartyApp:(id)app
{
  appCopy = app;
  if ([appCopy isEqualToString:@"Shortcuts"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [appCopy hasPrefix:@"com.apple."];
  }

  return v4;
}

+ (BOOL)isValidAppLaunch:(id)launch
{
  launchCopy = launch;
  bundleID = [launchCopy bundleID];
  if ([bundleID hasPrefix:@"com.apple.springboard."])
  {
    starting = 0;
  }

  else
  {
    starting = [launchCopy starting];
  }

  return starting;
}

+ (BOOL)isRotationSessionDueToProactive:(id)proactive
{
  startingStackChangeEvent = [proactive startingStackChangeEvent];
  reason = [startingStackChangeEvent reason];

  v5 = NSStringForATXHomeScreenStackChangeReason();
  v6 = [reason isEqualToString:v5];

  return v6;
}

+ (BOOL)isRotationSessionDueToUserScroll:(id)scroll
{
  startingStackChangeEvent = [scroll startingStackChangeEvent];
  reason = [startingStackChangeEvent reason];

  v5 = NSStringForATXHomeScreenStackChangeReason();
  v6 = [reason isEqualToString:v5];

  return v6;
}

+ (id)keyByConcatenatingAccumulatorKey:(id)key withLocation:(unint64_t)location
{
  keyCopy = key;
  v6 = ATXCAStringForStackLocation();
  v7 = [self _keyByConcatenatingAccumulatorKey:keyCopy withString:v6];

  return v7;
}

+ (id)keyByConcatenatingAccumulatorKey:(id)key withSize:(unint64_t)size
{
  keyCopy = key;
  v6 = ATXCAStringForStackLayoutSize();
  v7 = [self _keyByConcatenatingAccumulatorKey:keyCopy withString:v6];

  return v7;
}

+ (id)_keyByConcatenatingAccumulatorKey:(id)key withString:(id)string
{
  stringCopy = 0;
  if (key && string)
  {
    v6 = MEMORY[0x277CCACA8];
    stringCopy = string;
    keyCopy = key;
    stringCopy = [[v6 alloc] initWithFormat:@"%@%@", keyCopy, stringCopy];
  }

  return stringCopy;
}

+ (void)add:(unint64_t)add toDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  if (keyCopy)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:keyCopy];

    v9 = MEMORY[0x277CCABB0];
    if (v8)
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
      v11 = [v9 numberWithUnsignedInteger:{add + objc_msgSend(v10, "intValue")}];
      [dictionaryCopy setObject:v11 forKeyedSubscript:keyCopy];
    }

    else
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:add];
      [dictionaryCopy setObject:v10 forKeyedSubscript:keyCopy];
    }
  }
}

+ (void)add:(unint64_t)add toTwoLevelDictionary:(id)dictionary forKey1:(id)key1 key2:(id)key2
{
  dictionaryCopy = dictionary;
  key1Copy = key1;
  if (key1Copy && key2)
  {
    key2Copy = key2;
    v12 = [dictionaryCopy objectForKeyedSubscript:key1Copy];

    if (!v12)
    {
      v13 = objc_opt_new();
      [dictionaryCopy setObject:v13 forKeyedSubscript:key1Copy];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:key1Copy];
    [self add:add toDictionary:v14 forKey:key2Copy];
  }
}

+ (BOOL)_isDwellLongEnoughForPseudoTap:(id)tap endingEventTime:(double)time
{
  if (!tap)
  {
    return 0;
  }

  [tap timestamp];
  return time - v5 >= 3.0;
}

+ (id)stackShownEventsForPseudoTapIfPossible:(id)possible currentEvent:(id)event
{
  v38 = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  eventCopy = event;
  eventBody = [eventCopy eventBody];
  homeScreenEvent = [eventBody homeScreenEvent];

  eventTypeString = [homeScreenEvent eventTypeString];
  if ([eventTypeString isEqualToString:@"Unknown"])
  {
    v11 = 0;
LABEL_17:

    goto LABEL_18;
  }

  if ([eventTypeString isEqualToString:@"HomeScreenPageShown"])
  {
    v11 = 1;
    goto LABEL_17;
  }

  if ([eventTypeString isEqualToString:@"HomeScreenDisappeared"])
  {
    v11 = 2;
    goto LABEL_17;
  }

  if ([eventTypeString isEqualToString:@"StackChanged"])
  {
    v11 = 3;
    goto LABEL_17;
  }

  if ([eventTypeString isEqualToString:@"WidgetTapped"])
  {
    v11 = 4;
    goto LABEL_17;
  }

  if ([eventTypeString isEqualToString:@"WidgetLongLook"])
  {
    v11 = 5;
    goto LABEL_17;
  }

  if ([eventTypeString isEqualToString:@"WidgetUserFeedback"])
  {
    v11 = 6;
    goto LABEL_17;
  }

  if ([eventTypeString isEqualToString:@"UserStackConfigChanged"])
  {
    v11 = 7;
    goto LABEL_17;
  }

  if (([eventTypeString isEqualToString:@"DeviceLocked"] & 1) == 0)
  {
    if ([eventTypeString isEqualToString:@"DeviceUnlocked"])
    {
      v11 = 9;
    }

    else if ([eventTypeString isEqualToString:@"PinnedWidgetAdded"])
    {
      v11 = 10;
    }

    else if ([eventTypeString isEqualToString:@"PinnedWidgetDeleted"])
    {
      v11 = 11;
    }

    else if ([eventTypeString isEqualToString:@"SpecialPageAppeared"])
    {
      v11 = 12;
    }

    else if ([eventTypeString isEqualToString:@"SpecialPageDisappeared"])
    {
      v11 = 13;
    }

    else if ([eventTypeString isEqualToString:@"StackShown"])
    {
      v11 = 14;
    }

    else if ([eventTypeString isEqualToString:@"StackDisappeared"])
    {
      v11 = 15;
    }

    else if ([eventTypeString isEqualToString:@"StackCreated"])
    {
      v11 = 16;
    }

    else if ([eventTypeString isEqualToString:@"StackDeleted"])
    {
      v11 = 17;
    }

    else if ([eventTypeString isEqualToString:@"WidgetAddedToStack"])
    {
      v11 = 18;
    }

    else if ([eventTypeString isEqualToString:@"WidgetRemovedFromStack"])
    {
      v11 = 19;
    }

    else if ([eventTypeString isEqualToString:@"StackVisibilityChanged"])
    {
      v11 = 20;
    }

    else if ([eventTypeString isEqualToString:@"AppAdded"])
    {
      v11 = 21;
    }

    else if ([eventTypeString isEqualToString:@"AppRemoved"])
    {
      v11 = 22;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_17;
  }

  v31 = homeScreenEvent;

  v15 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = possibleCopy;
  v22 = possibleCopy;
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
        [eventCopy timestamp];
        if ([self _isDwellLongEnoughForPseudoTap:v27 endingEventTime:?])
        {
          eventBody2 = [v27 eventBody];
          [eventBody2 homeScreenEvent];
          v30 = v29 = self;
          [v15 addObject:v30];

          self = v29;
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
    homeScreenEvent = v31;
    possibleCopy = v32;
LABEL_18:
    stackId = [homeScreenEvent stackId];
    if (!stackId)
    {
      v15 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v13 = [possibleCopy objectForKeyedSubscript:stackId];
    v14 = v13;
    if (v11 == 15)
    {
      v16 = [possibleCopy objectForKeyedSubscript:stackId];
      eventBody3 = [v16 eventBody];
      homeScreenEvent2 = [eventBody3 homeScreenEvent];

      [possibleCopy removeObjectForKey:stackId];
    }

    else
    {
      if (v11 == 14)
      {
        [possibleCopy setObject:eventCopy forKeyedSubscript:stackId];
        goto LABEL_30;
      }

      v15 = 0;
      if (v11 != 3 || !v13)
      {
        goto LABEL_31;
      }

      eventBody4 = [v13 eventBody];
      homeScreenEvent2 = [eventBody4 homeScreenEvent];

      [possibleCopy setObject:eventCopy forKeyedSubscript:stackId];
    }

    [eventCopy timestamp];
    if ([self _isDwellLongEnoughForPseudoTap:v14 endingEventTime:?])
    {
      v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{homeScreenEvent2, 0}];

LABEL_31:
      goto LABEL_32;
    }

LABEL_30:
    v15 = 0;
    goto LABEL_31;
  }

  homeScreenEvent = v31;
  possibleCopy = v32;
LABEL_33:

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (int)suggestionReasonForSuggestionLayout:(id)layout
{
  layoutCopy = layout;
  allSuggestionsInLayout = [layoutCopy allSuggestionsInLayout];
  if (![allSuggestionsInLayout count])
  {
    firstObject = __atxlog_handle_home_screen();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLogUploaderUtilities suggestionReasonForSuggestionLayout:firstObject];
    }

    goto LABEL_6;
  }

  if (([layoutCopy isValidForSuggestionsWidget] & 1) == 0)
  {
    if ([allSuggestionsInLayout count] >= 2)
    {
      v7 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(ATXHomeScreenLogUploaderUtilities *)allSuggestionsInLayout suggestionReasonForSuggestionLayout:layoutCopy, v7];
      }
    }

    firstObject = [allSuggestionsInLayout firstObject];
    v8 = MEMORY[0x277D42070];
    clientModelSpecification = [firstObject clientModelSpecification];
    clientModelId = [clientModelSpecification clientModelId];
    v11 = [v8 clientModelTypeFromClientModelId:clientModelId];

    if ([layoutCopy isLowConfidenceStackRotationForStaleStack])
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

    if ([layoutCopy isShortcutConversion])
    {
      v5 = 1;
      goto LABEL_17;
    }

    executableSpecification = [firstObject executableSpecification];
    executableType = [executableSpecification executableType];

    if (executableType == 3)
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
        [(ATXHomeScreenLogUploaderUtilities *)firstObject suggestionReasonForSuggestionLayout:v15];
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

+ (id)countsForRotationEngagementStatusHistory:(id)history
{
  v19 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  engagementStatusHistory = [historyCopy engagementStatusHistory];
  v7 = [engagementStatusHistory countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(engagementStatusHistory);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 unsignedIntValue];
        if ([v11 unsignedIntValue] <= 4)
        {
          [self incrementDictionary:v5 forKey:v11];
        }
      }

      v8 = [engagementStatusHistory countByEnumeratingWithState:&v14 objects:v18 count:16];
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