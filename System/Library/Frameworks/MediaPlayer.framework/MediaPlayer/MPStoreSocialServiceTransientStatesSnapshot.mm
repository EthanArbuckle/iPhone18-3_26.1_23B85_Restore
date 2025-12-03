@interface MPStoreSocialServiceTransientStatesSnapshot
- (MPStoreSocialServiceTransientStatesSnapshot)init;
- (int64_t)transientFollowPendingRequestStateForPerson:(id)person;
- (int64_t)transientFollowStateForPerson:(id)person;
- (void)_addTransientFollowState:(int64_t)state transientFollowPendingRequestState:(int64_t)requestState forPerson:(id)person;
@end

@implementation MPStoreSocialServiceTransientStatesSnapshot

- (void)_addTransientFollowState:(int64_t)state transientFollowPendingRequestState:(int64_t)requestState forPerson:(id)person
{
  identifiers = [person identifiers];
  universalStore = [identifiers universalStore];
  socialProfileID = [universalStore socialProfileID];

  if (socialProfileID)
  {
    transientFollowStatesPerProfileID = self->_transientFollowStatesPerProfileID;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [(NSMutableDictionary *)transientFollowStatesPerProfileID setObject:v11 forKey:socialProfileID];

    transientFollowPendingRequestStatesPerProfileID = self->_transientFollowPendingRequestStatesPerProfileID;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:requestState];
    [(NSMutableDictionary *)transientFollowPendingRequestStatesPerProfileID setObject:v13 forKey:socialProfileID];
  }
}

- (int64_t)transientFollowPendingRequestStateForPerson:(id)person
{
  identifiers = [person identifiers];
  universalStore = [identifiers universalStore];
  socialProfileID = [universalStore socialProfileID];

  if (socialProfileID)
  {
    v7 = [(NSMutableDictionary *)self->_transientFollowPendingRequestStatesPerProfileID objectForKey:socialProfileID];
    v8 = v7;
    if (v7)
    {
      integerValue = [v7 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)transientFollowStateForPerson:(id)person
{
  identifiers = [person identifiers];
  universalStore = [identifiers universalStore];
  socialProfileID = [universalStore socialProfileID];

  if (socialProfileID)
  {
    v7 = [(NSMutableDictionary *)self->_transientFollowStatesPerProfileID objectForKey:socialProfileID];
    v8 = v7;
    if (v7)
    {
      integerValue = [v7 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (MPStoreSocialServiceTransientStatesSnapshot)init
{
  v8.receiver = self;
  v8.super_class = MPStoreSocialServiceTransientStatesSnapshot;
  v2 = [(MPStoreSocialServiceTransientStatesSnapshot *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    transientFollowStatesPerProfileID = v2->_transientFollowStatesPerProfileID;
    v2->_transientFollowStatesPerProfileID = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    transientFollowPendingRequestStatesPerProfileID = v2->_transientFollowPendingRequestStatesPerProfileID;
    v2->_transientFollowPendingRequestStatesPerProfileID = v5;
  }

  return v2;
}

@end