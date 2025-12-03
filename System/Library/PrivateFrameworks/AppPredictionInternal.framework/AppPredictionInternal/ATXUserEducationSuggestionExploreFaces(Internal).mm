@interface ATXUserEducationSuggestionExploreFaces(Internal)
- (id)server;
- (id)userDefaultsKeyForTrackingSuggestionState;
- (void)logFeedback:()Internal;
@end

@implementation ATXUserEducationSuggestionExploreFaces(Internal)

- (id)userDefaultsKeyForTrackingSuggestionState
{
  v1 = MEMORY[0x277CCACA8];
  v5.receiver = self;
  v5.super_class = &off_283AFD930;
  v2 = objc_msgSendSuper2(&v5, sel_userDefaultsKeyForTrackingSuggestionState);
  v3 = [v1 stringWithFormat:@"%@.%@", v2, @"ExploreFaces"];

  return v3;
}

- (id)server
{
  v0 = +[ATXUserEducationSuggestionServer sharedInstance];
  exploreFacesServer = [v0 exploreFacesServer];

  return exploreFacesServer;
}

- (void)logFeedback:()Internal
{
  v4 = a3;
  server = [self server];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ATXUserEducationSuggestionExploreFaces_Internal__logFeedback___block_invoke;
  v7[3] = &unk_278596C10;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  [server performBlockOnInternalSerialQueue:v7];
}

@end