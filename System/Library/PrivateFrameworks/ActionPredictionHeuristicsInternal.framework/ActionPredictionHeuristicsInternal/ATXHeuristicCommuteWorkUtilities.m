@interface ATXHeuristicCommuteWorkUtilities
+ (id)heuristicResultToWorkWithLocation:(id)a3 validStartDate:(id)a4 validEndDate:(id)a5 heuristicDevice:(id)a6;
+ (id)heuristicResultToWorkWithValidStartDate:(id)a3 validEndDate:(id)a4 heuristicDevice:(id)a5;
@end

@implementation ATXHeuristicCommuteWorkUtilities

+ (id)heuristicResultToWorkWithLocation:(id)a3 validStartDate:(id)a4 validEndDate:(id)a5 heuristicDevice:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  if ([v10 compare:v11] == 1)
  {
    v15 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      +[ATXHeuristicCommuteWorkUtilities heuristicResultToWorkWithLocation:validStartDate:validEndDate:heuristicDevice:];
    }

    v16 = objc_opt_new();
  }

  else
  {
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"DESTINATION_NAME_WORK" value:&stru_2850AD368 table:0];

    v19 = [MEMORY[0x277CBFC40] placemarkWithLocation:v9 name:v18 postalAddress:0];
    LOBYTE(v27) = 0;
    v20 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForDestination:v19 event:0 transportType:@"AUTOMOBILE" schemaForEvent:0 predictionReasons:0x1000000000 heuristicDevice:v12 score:50.0 shouldClearOnEngagement:v27 validStartDate:v10 validEndDate:v11];
    if (v20)
    {
      v28 = v18;
      v29 = v9;
      [v13 addObject:v20];
      v21 = [v20 atxShortcutsActionExecutableObject];
      v22 = [v21 contextualActionGetDirections];
      v23 = [v22 destination];

      if (v23)
      {
        v24 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
        [v23 coordinate];
        v25 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v24 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
        [v14 addObject:v25];
      }

      v18 = v28;
      v9 = v29;
    }

    v16 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v13 additionalRefreshTriggers:v14];
  }

  return v16;
}

+ (id)heuristicResultToWorkWithValidStartDate:(id)a3 validEndDate:(id)a4 heuristicDevice:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if ([v7 compare:v8] == 1)
  {
    v12 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      +[ATXHeuristicCommuteWorkUtilities heuristicResultToWorkWithLocation:validStartDate:validEndDate:heuristicDevice:];
    }

    v13 = objc_opt_new();
  }

  else
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DESTINATION_NAME_WORK" value:&stru_2850AD368 table:0];

    v16 = [ATXHeuristicNavigationUtilities navigationSuggestionActionForLOI:1 destinationName:v15 schemaForEvent:0 withScore:@"AUTOMOBILE" transportType:0x1000000000 predictionReason:v7 validStartDate:50.0 validEndDate:v8 heuristicDevice:v9];
    if (v16)
    {
      [v10 addObject:v16];
      v17 = [v16 atxShortcutsActionExecutableObject];
      v18 = [v17 contextualActionGetDirections];
      v19 = [v18 destination];

      if (v19)
      {
        v20 = [ATXInformationHeuristicRefreshLocationTrigger alloc];
        [v19 coordinate];
        v21 = [ATXInformationHeuristicRefreshLocationTrigger initWithEnteringLocation:v20 radiusInMeters:"initWithEnteringLocation:radiusInMeters:"];
        [v11 addObject:v21];
      }
    }

    v13 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v10 additionalRefreshTriggers:v11];
  }

  return v13;
}

+ (void)heuristicResultToWorkWithLocation:validStartDate:validEndDate:heuristicDevice:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_3_1(&dword_23E3EA000, v0, v1, "ATXHeuristicCommuteWorkUtilities: validStartDate %@ is after validEndDate %@. Skipping suggestion");
  v2 = *MEMORY[0x277D85DE8];
}

@end