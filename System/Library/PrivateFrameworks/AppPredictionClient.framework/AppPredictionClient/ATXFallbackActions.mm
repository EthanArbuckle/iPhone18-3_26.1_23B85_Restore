@interface ATXFallbackActions
+ (id)dateWithoutMinutesAndSeconds:(id)a3;
+ (id)fallbackActionsBundle;
+ (id)stringForFallbackActionType:(unint64_t)a3;
+ (unint64_t)fallbackActionTypeForString:(id)a3;
+ (void)fallbackActionsBundle;
- (ATXFallbackActions)initWithClientModelSpec:(id)a3;
- (id)createAnEventForCurrentDate:(id)a3;
- (id)proactiveSuggestionForAction:(id)a3;
- (id)searchSafari;
- (id)sendAMessage;
- (id)startATimer;
- (id)suggestionforSpecifiedFallbackActionType:(unint64_t)a3;
- (id)suggestionsForAllFallbackActions;
- (id)viewPhotos;
@end

@implementation ATXFallbackActions

- (ATXFallbackActions)initWithClientModelSpec:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ATXFallbackActions;
  v6 = [(ATXFallbackActions *)&v10 init];
  if (v6)
  {
    v7 = +[ATXFallbackActions fallbackActionsBundle];
    bundle = v6->_bundle;
    v6->_bundle = v7;

    objc_storeStrong(&v6->_clientModelSpec, a3);
  }

  return v6;
}

+ (id)fallbackActionsBundle
{
  v2 = [ATXAssets2 pathForResource:@"ATXFallbackActions" ofType:&stru_1F3E050C8 isDirectory:1];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithPath:v2];
    v4 = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v4;
    }

    else
    {
      v6 = __atxlog_handle_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        +[ATXFallbackActions fallbackActionsBundle];
      }

      v5 = 0;
    }
  }

  else
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      +[ATXFallbackActions fallbackActionsBundle];
    }

    v5 = 0;
  }

  return v5;
}

- (id)viewPhotos
{
  v3 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.placeholder.activity.type"];
  v4 = [(ATXFallbackActions *)self localizedStringForKey:@"VIEW_PHOTOS_TITLE"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"View photos";
  }

  [v3 setTitle:v6];

  [v3 setUserInfo:MEMORY[0x1E695E0F8]];
  v7 = [ATXAction alloc];
  v8 = objc_opt_new();
  LOBYTE(v12) = 0;
  v9 = [(ATXAction *)v7 initWithNSUserActivity:v3 actionUUID:v8 bundleId:@"com.apple.mobileslideshow" contentAttributeSet:0 itemIdentifier:0 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v12 title:0 subtitle:0];

  v10 = [(ATXFallbackActions *)self proactiveSuggestionForAction:v9];

  return v10;
}

- (id)searchSafari
{
  v3 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"NSUserActivityTypeBrowsingWeb"];
  v4 = [(ATXFallbackActions *)self localizedStringForKey:@"SEARCH_SAFARI_TITLE"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"Search Safari";
  }

  [v3 setTitle:v6];

  [v3 setUserInfo:MEMORY[0x1E695E0F8]];
  v7 = [ATXAction alloc];
  v8 = objc_opt_new();
  LOBYTE(v12) = 0;
  v9 = [(ATXAction *)v7 initWithNSUserActivity:v3 actionUUID:v8 bundleId:@"com.apple.mobilesafari" contentAttributeSet:0 itemIdentifier:0 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v12 title:0 subtitle:0];

  v10 = [(ATXFallbackActions *)self proactiveSuggestionForAction:v9];

  return v10;
}

- (id)startATimer
{
  v3 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.clock.timer"];
  v4 = [(ATXFallbackActions *)self localizedStringForKey:@"START_TIMER_TITLE"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"Start a timer";
  }

  [v3 setTitle:v6];

  [v3 setUserInfo:MEMORY[0x1E695E0F8]];
  v7 = [ATXAction alloc];
  v8 = objc_opt_new();
  LOBYTE(v12) = 0;
  v9 = [(ATXAction *)v7 initWithNSUserActivity:v3 actionUUID:v8 bundleId:@"com.apple.mobiletimer" contentAttributeSet:0 itemIdentifier:0 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v12 title:0 subtitle:0];

  v10 = [(ATXFallbackActions *)self proactiveSuggestionForAction:v9];

  return v10;
}

- (id)createAnEventForCurrentDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() dateWithoutMinutesAndSeconds:v4];

  v6 = [v5 dateByAddingTimeInterval:3600.0];
  v7 = [MEMORY[0x1E696E880] atx_createEventIntentWithStartDate:v5 endDate:v6];
  if (!v7)
  {
    v16 = __atxlog_handle_default();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ATXFallbackActions createAnEventForCurrentDate:];
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXFallbackActions createAnEventForCurrentDate:];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Generic intent created from EKUICreateEventIntent is not an INIntent object."];
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v8 = [(ATXFallbackActions *)self localizedStringForKey:@"CREATE_CALENDAR_EVENT_TITLE"];
  v9 = v8;
  v10 = @"Create a new calendar event";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [ATXAction alloc];
  v13 = objc_opt_new();
  LOBYTE(v19) = 0;
  v14 = [(ATXAction *)v12 initWithIntent:v7 actionUUID:v13 bundleId:@"com.apple.mobilecal" heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v19 title:v11 subtitle:@" "];

  v15 = [(ATXFallbackActions *)self proactiveSuggestionForAction:v14];

LABEL_13:

  return v15;
}

+ (id)dateWithoutMinutesAndSeconds:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:62 fromDate:v4];

  v7 = [v5 dateFromComponents:v6];

  return v7;
}

- (id)sendAMessage
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696E948]) initWithValue:&stru_1F3E050C8 type:0];
  v4 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v3 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
  v5 = objc_alloc(MEMORY[0x1E696E9E8]);
  v18[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v7 = [v5 initWithRecipients:v6 outgoingMessageType:0 content:0 speakableGroupName:0 conversationIdentifier:0 serviceName:0 sender:0 attachments:0];

  v8 = [(ATXFallbackActions *)self localizedStringForKey:@"SEND_A_MESSAGE_TITLE"];
  v9 = v8;
  v10 = @"Send a message";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [ATXAction alloc];
  v13 = objc_opt_new();
  LOBYTE(v17) = 0;
  v14 = [(ATXAction *)v12 initWithIntent:v7 actionUUID:v13 bundleId:@"com.apple.MobileSMS" heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v17 title:v11 subtitle:@" "];

  v15 = [(ATXFallbackActions *)self proactiveSuggestionForAction:v14];

  return v15;
}

- (id)suggestionsForAllFallbackActions
{
  v3 = objc_opt_new();
  for (i = 0; i != 5; ++i)
  {
    v5 = [(ATXFallbackActions *)self suggestionforSpecifiedFallbackActionType:i];
    if (v5)
    {
      [v3 addObject:v5];
    }
  }

  v6 = [v3 copy];

  return v6;
}

- (id)suggestionforSpecifiedFallbackActionType:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v7 = objc_opt_new();
      v5 = [(ATXFallbackActions *)self createAnEventForCurrentDate:v7];

      goto LABEL_12;
    }

    if (a3 == 1)
    {
      v4 = [(ATXFallbackActions *)self sendAMessage];
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        v4 = [(ATXFallbackActions *)self startATimer];
        goto LABEL_11;
      case 4uLL:
        v4 = [(ATXFallbackActions *)self viewPhotos];
        goto LABEL_11;
      case 3uLL:
        v4 = [(ATXFallbackActions *)self searchSafari];
LABEL_11:
        v5 = v4;
        goto LABEL_12;
    }
  }

  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [ATXFallbackActions suggestionforSpecifiedFallbackActionType:];
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (id)proactiveSuggestionForAction:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69C5BD8]) initWithRawScore:2 suggestedConfidenceCategory:-1000.0];
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [v4 json];
    v8 = [v6 initWithFormat:@"%@", v7];

    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = [v4 actionKey];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "paramHash")}];
    v12 = [v9 initWithFormat:@"%@:%lld", v10, objc_msgSend(v11, "longLongValue")];

    v13 = [objc_alloc(MEMORY[0x1E69C5BC8]) initWithExecutableObject:v4 executableDescription:v8 executableIdentifier:v12 suggestionExecutableType:2];
    if (v13)
    {
      v14 = [MEMORY[0x1E69C5BD0] layoutConfigurationsForLayoutOptions:44];
      v15 = objc_alloc(MEMORY[0x1E69C5BE0]);
      v16 = [v4 actionTitle];
      v17 = [v4 actionSubtitle];
      LOWORD(v21) = 0;
      v18 = [v15 initWithTitle:v16 subtitle:v17 predictionReason:0 preferredLayoutConfigs:v14 allowedOnLockscreen:0 allowedOnHomeScreen:1 allowedOnSpotlight:v21 shouldClearOnEngagement:?];

      v19 = [objc_alloc(MEMORY[0x1E69C5BB0]) initWithClientModelSpecification:self->_clientModelSpec executableSpecification:v13 uiSpecification:v18 scoreSpecification:v5];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (unint64_t)fallbackActionTypeForString:(id)a3
{
  v4 = a3;
  v5 = 0;
  while (1)
  {
    v6 = [a1 stringForFallbackActionType:v5];
    v7 = [v4 isEqualToString:v6];

    if (v7)
    {
      break;
    }

    if (++v5 == 5)
    {
      v8 = __atxlog_handle_default();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        +[ATXFallbackActions fallbackActionTypeForString:];
      }

      v5 = 5;
      break;
    }
  }

  return v5;
}

+ (id)stringForFallbackActionType:(unint64_t)a3
{
  if (a3 < 5)
  {
    return off_1E80C4110[a3];
  }

  v5 = __atxlog_handle_default();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(ATXFallbackActions *)a3 stringForFallbackActionType:v5];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"stringForFallbackActionType called with invalid ATXFallbackActionType value of %lu", a3}];
  return @"Error";
}

+ (void)fallbackActionsBundle
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_12();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)stringForFallbackActionType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "stringForFallbackActionType called with invalid ATXFallbackActionType value of %lu", &v2, 0xCu);
}

@end