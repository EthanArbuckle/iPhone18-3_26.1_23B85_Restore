@interface ATXUserEducationSuggestionSleepMigration(Internal)
- (id)server;
- (id)userDefaultsKeyForTrackingSuggestionState;
@end

@implementation ATXUserEducationSuggestionSleepMigration(Internal)

- (id)userDefaultsKeyForTrackingSuggestionState
{
  v1 = MEMORY[0x277CCACA8];
  v5.receiver = a1;
  v5.super_class = &off_283AFD810;
  v2 = objc_msgSendSuper2(&v5, sel_userDefaultsKeyForTrackingSuggestionState);
  v3 = [v1 stringWithFormat:@"%@.%@", v2, @"SleepMigration"];

  return v3;
}

- (id)server
{
  v0 = +[ATXUserEducationSuggestionServer sharedInstance];
  v1 = [v0 sleepMigrationServer];

  return v1;
}

@end