@interface _ATXNotificationGroupBaseRanker
- (id)_initialGroupComparisonValue:(id)value;
- (id)rankNotificationGroups:(id)groups modeId:(id)id;
- (int64_t)compareGroups:(id)groups group2:(id)group2;
@end

@implementation _ATXNotificationGroupBaseRanker

- (id)_initialGroupComparisonValue:(id)value
{
  isCommunicationGroup = [value isCommunicationGroup];
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithUnsignedInteger:isCommunicationGroup];
}

- (int64_t)compareGroups:(id)groups group2:(id)group2
{
  groupsCopy = groups;
  group2Copy = group2;
  v8 = [(_ATXNotificationGroupBaseRanker *)self _initialGroupComparisonValue:group2Copy];
  v9 = [(_ATXNotificationGroupBaseRanker *)self _initialGroupComparisonValue:groupsCopy];
  v10 = [v8 compare:v9];

  if (!v10)
  {
    v11 = MEMORY[0x1E696AD98];
    [group2Copy priority];
    v12 = [v11 numberWithDouble:?];
    v13 = MEMORY[0x1E696AD98];
    [groupsCopy priority];
    v14 = [v13 numberWithDouble:?];
    v10 = [v12 compare:v14];
  }

  return v10;
}

- (id)rankNotificationGroups:(id)groups modeId:(id)id
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___ATXNotificationGroupBaseRanker_rankNotificationGroups_modeId___block_invoke;
  v6[3] = &unk_1E80C52F8;
  v6[4] = self;
  v4 = [groups sortedArrayUsingComparator:{v6, id}];

  return v4;
}

@end