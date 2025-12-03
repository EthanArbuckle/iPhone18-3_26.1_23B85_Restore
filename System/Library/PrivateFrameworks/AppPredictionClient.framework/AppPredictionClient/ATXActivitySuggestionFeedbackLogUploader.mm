@interface ATXActivitySuggestionFeedbackLogUploader
+ (id)_arrayToStringOfClasses:(id)classes;
+ (id)_generateCADictionaryForEvent:(id)event;
+ (void)sendActivitySuggestionEventToCoreAnalytics:(id)analytics;
@end

@implementation ATXActivitySuggestionFeedbackLogUploader

+ (void)sendActivitySuggestionEventToCoreAnalytics:(id)analytics
{
  v3 = [self _generateCADictionaryForEvent:analytics];
  AnalyticsSendEvent();
}

+ (id)_generateCADictionaryForEvent:(id)event
{
  eventCopy = event;
  v5 = objc_opt_new();
  acceptedTriggers = [eventCopy acceptedTriggers];
  v7 = [self _arrayToStringOfClasses:acceptedTriggers];
  [v5 setObject:v7 forKeyedSubscript:@"acceptedTriggerClasses"];

  v8 = MEMORY[0x1E696AD98];
  activity = [eventCopy activity];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(activity, "activityType")}];
  [v5 setObject:v10 forKeyedSubscript:@"activityType"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "eventType")}];
  [v5 setObject:v11 forKeyedSubscript:@"feedbackEventType"];

  v12 = MEMORY[0x1E696AD98];
  activity2 = [eventCopy activity];
  v14 = [v12 numberWithInteger:{objc_msgSend(activity2, "origin")}];
  [v5 setObject:v14 forKeyedSubscript:@"origin"];

  activity3 = [eventCopy activity];
  originAnchorType = [activity3 originAnchorType];
  [v5 setObject:originAnchorType forKeyedSubscript:@"originAnchorType"];

  activity4 = [eventCopy activity];
  triggers = [activity4 triggers];
  v19 = [self _arrayToStringOfClasses:triggers];
  [v5 setObject:v19 forKeyedSubscript:@"suggestedTriggerClasses"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(eventCopy, "suggestionType")}];
  [v5 setObject:v20 forKeyedSubscript:@"suggestionType"];

  activity5 = [eventCopy activity];
  suggestionUUID = [activity5 suggestionUUID];
  [v5 setObject:suggestionUUID forKeyedSubscript:@"suggestionUUID"];

  v23 = MEMORY[0x1E696AD98];
  location = [eventCopy location];

  v25 = [v23 numberWithUnsignedInteger:location];
  [v5 setObject:v25 forKeyedSubscript:@"uiLocation"];

  return v5;
}

+ (id)_arrayToStringOfClasses:(id)classes
{
  if (classes)
  {
    v3 = [classes _pas_mappedArrayWithTransform:&__block_literal_global_85];
    v4 = [v3 componentsJoinedByString:@":"];
  }

  else
  {
    v4 = &stru_1F3E050C8;
  }

  return v4;
}

NSString *__68__ATXActivitySuggestionFeedbackLogUploader__arrayToStringOfClasses___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

@end