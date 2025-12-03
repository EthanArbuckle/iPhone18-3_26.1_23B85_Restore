@interface MPStoreSocialPendingFollowRequestOperationDataSource
- (MPStoreSocialPendingFollowRequestOperationDataSource)initWithAction:(int64_t)action;
- (id)_actionTypeString;
- (id)httpBody;
@end

@implementation MPStoreSocialPendingFollowRequestOperationDataSource

- (id)httpBody
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _actionTypeString = [(MPStoreSocialPendingFollowRequestOperationDataSource *)self _actionTypeString];
  [dictionary setObject:_actionTypeString forKey:@"actionType"];

  identifiers = [(MPModelObject *)self->_person identifiers];
  universalStore = [identifiers universalStore];
  socialProfileID = [universalStore socialProfileID];

  if (socialProfileID)
  {
    [dictionary setObject:socialProfileID forKey:@"id"];
  }

  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:0];

  return v8;
}

- (id)_actionTypeString
{
  action = self->_action;
  if (action > 3)
  {
    return 0;
  }

  else
  {
    return off_1E767D278[action];
  }
}

- (MPStoreSocialPendingFollowRequestOperationDataSource)initWithAction:(int64_t)action
{
  v5.receiver = self;
  v5.super_class = MPStoreSocialPendingFollowRequestOperationDataSource;
  result = [(MPStoreSocialPendingFollowRequestOperationDataSource *)&v5 init];
  if (result)
  {
    result->_action = action;
  }

  return result;
}

@end