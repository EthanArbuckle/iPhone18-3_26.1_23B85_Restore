@interface MPStoreSocialPendingFollowRequestOperationDataSource
- (MPStoreSocialPendingFollowRequestOperationDataSource)initWithAction:(int64_t)a3;
- (id)_actionTypeString;
- (id)httpBody;
@end

@implementation MPStoreSocialPendingFollowRequestOperationDataSource

- (id)httpBody
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(MPStoreSocialPendingFollowRequestOperationDataSource *)self _actionTypeString];
  [v3 setObject:v4 forKey:@"actionType"];

  v5 = [(MPModelObject *)self->_person identifiers];
  v6 = [v5 universalStore];
  v7 = [v6 socialProfileID];

  if (v7)
  {
    [v3 setObject:v7 forKey:@"id"];
  }

  v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:0];

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

- (MPStoreSocialPendingFollowRequestOperationDataSource)initWithAction:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MPStoreSocialPendingFollowRequestOperationDataSource;
  result = [(MPStoreSocialPendingFollowRequestOperationDataSource *)&v5 init];
  if (result)
  {
    result->_action = a3;
  }

  return result;
}

@end