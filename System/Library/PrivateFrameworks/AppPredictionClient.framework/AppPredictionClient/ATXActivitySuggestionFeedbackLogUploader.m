@interface ATXActivitySuggestionFeedbackLogUploader
+ (id)_arrayToStringOfClasses:(id)a3;
+ (id)_generateCADictionaryForEvent:(id)a3;
+ (void)sendActivitySuggestionEventToCoreAnalytics:(id)a3;
@end

@implementation ATXActivitySuggestionFeedbackLogUploader

+ (void)sendActivitySuggestionEventToCoreAnalytics:(id)a3
{
  v3 = [a1 _generateCADictionaryForEvent:a3];
  AnalyticsSendEvent();
}

+ (id)_generateCADictionaryForEvent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 acceptedTriggers];
  v7 = [a1 _arrayToStringOfClasses:v6];
  [v5 setObject:v7 forKeyedSubscript:@"acceptedTriggerClasses"];

  v8 = MEMORY[0x1E696AD98];
  v9 = [v4 activity];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "activityType")}];
  [v5 setObject:v10 forKeyedSubscript:@"activityType"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "eventType")}];
  [v5 setObject:v11 forKeyedSubscript:@"feedbackEventType"];

  v12 = MEMORY[0x1E696AD98];
  v13 = [v4 activity];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "origin")}];
  [v5 setObject:v14 forKeyedSubscript:@"origin"];

  v15 = [v4 activity];
  v16 = [v15 originAnchorType];
  [v5 setObject:v16 forKeyedSubscript:@"originAnchorType"];

  v17 = [v4 activity];
  v18 = [v17 triggers];
  v19 = [a1 _arrayToStringOfClasses:v18];
  [v5 setObject:v19 forKeyedSubscript:@"suggestedTriggerClasses"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "suggestionType")}];
  [v5 setObject:v20 forKeyedSubscript:@"suggestionType"];

  v21 = [v4 activity];
  v22 = [v21 suggestionUUID];
  [v5 setObject:v22 forKeyedSubscript:@"suggestionUUID"];

  v23 = MEMORY[0x1E696AD98];
  v24 = [v4 location];

  v25 = [v23 numberWithUnsignedInteger:v24];
  [v5 setObject:v25 forKeyedSubscript:@"uiLocation"];

  return v5;
}

+ (id)_arrayToStringOfClasses:(id)a3
{
  if (a3)
  {
    v3 = [a3 _pas_mappedArrayWithTransform:&__block_literal_global_85];
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