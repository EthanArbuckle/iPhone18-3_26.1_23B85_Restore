@interface ATXHeuristicOngoingCallContactInfo
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicOngoingCallContactInfo

- (id)permanentRefreshTriggers
{
  v2 = [ATXInformationHeuristicRefreshContextChangeTrigger alloc];
  keyPathForActiveCall = [MEMORY[0x277CFE338] keyPathForActiveCall];
  v4 = [(ATXInformationHeuristicRefreshContextChangeTrigger *)v2 initWithCDContextualKeyPath:keyPathForActiveCall];

  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v4, 0}];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "ATXOngoingCall: producing ongoing call suggestions", buf, 2u);
  }

  v5 = objc_opt_new();
  keyPathForActiveCall = [MEMORY[0x277CFE338] keyPathForActiveCall];
  v7 = [v5 fetchDataDictionaryForKeyPath:keyPathForActiveCall];

  calleeContactIDsKey = [MEMORY[0x277CFE338] calleeContactIDsKey];
  v9 = [v7 valueForKey:calleeContactIDsKey];

  v10 = objc_opt_new();
  if ([v9 count])
  {
    v11 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, "ATXOngoingCall: Found a donation in the context store on an active call where either calleeContactIDsKey or calleeHandlesKey is set", v18, 2u);
    }

    v12 = [[ATXOngoingCallSuggestionProducer alloc] initWithEnvironment:environmentCopy];
    v13 = [(ATXOngoingCallSuggestionProducer *)v12 suggestionsForOngoingCall:v9];

    v10 = v13;
  }

  v14 = [ATXContextHeuristicResult alloc];
  v15 = [MEMORY[0x277CBEB98] set];
  v16 = [(ATXContextHeuristicResult *)v14 initWithSuggestions:v10 additionalRefreshTriggers:v15];

  return v16;
}

@end