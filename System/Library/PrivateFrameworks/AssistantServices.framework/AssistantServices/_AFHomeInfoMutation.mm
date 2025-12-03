@interface _AFHomeInfoMutation
- (BOOL)getActivityNotificationsEnabledForPersonalRequests;
- (_AFHomeInfoMutation)initWithBase:(id)base;
- (id)getHomeIdentifier;
@end

@implementation _AFHomeInfoMutation

- (BOOL)getActivityNotificationsEnabledForPersonalRequests
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_activityNotificationsEnabledForPersonalRequests;
  }

  else
  {
    return [(AFHomeInfo *)self->_base activityNotificationsEnabledForPersonalRequests];
  }
}

- (id)getHomeIdentifier
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    homeIdentifier = self->_homeIdentifier;
  }

  else
  {
    homeIdentifier = [(AFHomeInfo *)self->_base homeIdentifier];
  }

  return homeIdentifier;
}

- (_AFHomeInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFHomeInfoMutation;
  v6 = [(_AFHomeInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end