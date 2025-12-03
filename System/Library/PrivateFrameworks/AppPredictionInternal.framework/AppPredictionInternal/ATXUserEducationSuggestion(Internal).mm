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
  userDefaults = [self userDefaults];
  userDefaultsKeyForTrackingSuggestionState = [self userDefaultsKeyForTrackingSuggestionState];
  [userDefaults setInteger:a3 forKey:userDefaultsKeyForTrackingSuggestionState];

  v7 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = ATXUserEducationSuggestionStateToString(a3);
    v10 = 136315650;
    v11 = "[ATXUserEducationSuggestion(Internal) writeSuggestionState:]";
    v12 = 2114;
    selfCopy = self;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: Recorded suggestion %{public}@ as %{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (uint64_t)readSuggestionState
{
  userDefaults = [self userDefaults];
  userDefaultsKeyForTrackingSuggestionState = [self userDefaultsKeyForTrackingSuggestionState];
  v4 = [userDefaults integerForKey:userDefaultsKeyForTrackingSuggestionState];

  return v4;
}

- (void)logFeedback:()Internal
{
  v4 = a3;
  server = [self server];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ATXUserEducationSuggestion_Internal__logFeedback___block_invoke;
  v7[3] = &unk_278596C10;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  [server performBlockOnInternalSerialQueue:v7];
}

@end