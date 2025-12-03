@interface ATXHeuristicFlightEvent
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicFlightEvent

- (id)permanentRefreshTriggers
{
  v2 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v3 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v2 initWithNotification:*MEMORY[0x277CC5948] type:0];
  v4 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"ATXTravelTimeUpdated" type:0];
  v5 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"ATXCellularEnabledNotification" type:0];
  v6 = [ATXInformationHeuristicRefreshNotitifcationTrigger alloc];
  v7 = [(ATXInformationHeuristicRefreshNotitifcationTrigger *)v6 initWithNotification:*MEMORY[0x277CBE780] type:0];
  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v3, v4, v5, v7, 0}];
  objc_autoreleasePoolPop(v8);

  return v9;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_autoreleasePoolPush();
  heuristicDevice = [environmentCopy heuristicDevice];
  v8 = [ATXHeuristicUpcomingFlightEventUtilities suggestionsForFlightsWithHeuristicDevice:heuristicDevice];

  objc_autoreleasePoolPop(v6);
  suggestions = [v8 suggestions];
  [v4 addObjectsFromArray:suggestions];

  additionalRefreshTriggers = [v8 additionalRefreshTriggers];
  [v5 unionSet:additionalRefreshTriggers];

  v11 = objc_autoreleasePoolPush();
  heuristicDevice2 = [environmentCopy heuristicDevice];
  v13 = [ATXHeuristicOngoingFlightEventUtilities suggestionsForFlightsWithHeuristicDevice:heuristicDevice2];

  objc_autoreleasePoolPop(v11);
  suggestions2 = [v13 suggestions];
  [v4 addObjectsFromArray:suggestions2];

  additionalRefreshTriggers2 = [v13 additionalRefreshTriggers];
  [v5 unionSet:additionalRefreshTriggers2];

  v16 = objc_autoreleasePoolPush();
  heuristicDevice3 = [environmentCopy heuristicDevice];
  v18 = [ATXHeuristicConcludedFlightEventUtilities suggestionsForFlightsWithHeuristicDevice:heuristicDevice3];

  objc_autoreleasePoolPop(v16);
  suggestions3 = [v18 suggestions];
  [v4 addObjectsFromArray:suggestions3];

  additionalRefreshTriggers3 = [v18 additionalRefreshTriggers];
  [v5 unionSet:additionalRefreshTriggers3];

  v21 = [ATXInformationHeuristicRefreshTimeTrigger alloc];
  heuristicDevice4 = [environmentCopy heuristicDevice];
  v23 = [heuristicDevice4 now];
  v24 = [v23 dateByAddingTimeInterval:7200.0];
  v25 = [(ATXInformationHeuristicRefreshTimeTrigger *)v21 initWithFireDate:v24];

  [v5 addObject:v25];
  v26 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v4 additionalRefreshTriggers:v5];

  return v26;
}

@end