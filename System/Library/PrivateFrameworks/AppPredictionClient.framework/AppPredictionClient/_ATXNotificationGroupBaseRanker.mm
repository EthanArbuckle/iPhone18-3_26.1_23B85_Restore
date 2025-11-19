@interface _ATXNotificationGroupBaseRanker
- (id)_initialGroupComparisonValue:(id)a3;
- (id)rankNotificationGroups:(id)a3 modeId:(id)a4;
- (int64_t)compareGroups:(id)a3 group2:(id)a4;
@end

@implementation _ATXNotificationGroupBaseRanker

- (id)_initialGroupComparisonValue:(id)a3
{
  v3 = [a3 isCommunicationGroup];
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithUnsignedInteger:v3];
}

- (int64_t)compareGroups:(id)a3 group2:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_ATXNotificationGroupBaseRanker *)self _initialGroupComparisonValue:v7];
  v9 = [(_ATXNotificationGroupBaseRanker *)self _initialGroupComparisonValue:v6];
  v10 = [v8 compare:v9];

  if (!v10)
  {
    v11 = MEMORY[0x1E696AD98];
    [v7 priority];
    v12 = [v11 numberWithDouble:?];
    v13 = MEMORY[0x1E696AD98];
    [v6 priority];
    v14 = [v13 numberWithDouble:?];
    v10 = [v12 compare:v14];
  }

  return v10;
}

- (id)rankNotificationGroups:(id)a3 modeId:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___ATXNotificationGroupBaseRanker_rankNotificationGroups_modeId___block_invoke;
  v6[3] = &unk_1E80C52F8;
  v6[4] = self;
  v4 = [a3 sortedArrayUsingComparator:{v6, a4}];

  return v4;
}

@end