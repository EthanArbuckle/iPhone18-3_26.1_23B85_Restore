@interface ATXUserEducationSuggestion(Internal)
- (id)userDefaults;
- (uint64_t)readSuggestionState;
- (void)logFeedback:()Internal;
- (void)writeSuggestionState:()Internal;
@end

@implementation ATXUserEducationSuggestion(Internal)

- (id)userDefaults
{
  v0 = objc_alloc(MEMORY[0x277CBEBD0]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x277CEBD00]];

  return v1;
}

- (void)writeSuggestionState:()Internal
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [a1 userDefaults];
  v6 = [a1 userDefaultsKeyForTrackingSuggestionState];
  [v5 setInteger:a3 forKey:v6];

  v7 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = ATXUserEducationSuggestionStateToString(a3);
    v10 = 136315650;
    v11 = "[ATXUserEducationSuggestion(Internal) writeSuggestionState:]";
    v12 = 2114;
    v13 = a1;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: Recorded suggestion %{public}@ as %{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (uint64_t)readSuggestionState
{
  v2 = [a1 userDefaults];
  v3 = [a1 userDefaultsKeyForTrackingSuggestionState];
  v4 = [v2 integerForKey:v3];

  return v4;
}

- (void)logFeedback:()Internal
{
  v4 = a3;
  v5 = [a1 server];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ATXUserEducationSuggestion_Internal__logFeedback___block_invoke;
  v7[3] = &unk_278596C10;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v5 performBlockOnInternalSerialQueue:v7];
}

@end