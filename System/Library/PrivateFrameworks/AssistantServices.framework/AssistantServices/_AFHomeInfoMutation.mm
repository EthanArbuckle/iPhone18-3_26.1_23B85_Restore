@interface _AFHomeInfoMutation
- (BOOL)getActivityNotificationsEnabledForPersonalRequests;
- (_AFHomeInfoMutation)initWithBase:(id)a3;
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
    v2 = self->_homeIdentifier;
  }

  else
  {
    v2 = [(AFHomeInfo *)self->_base homeIdentifier];
  }

  return v2;
}

- (_AFHomeInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFHomeInfoMutation;
  v6 = [(_AFHomeInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end