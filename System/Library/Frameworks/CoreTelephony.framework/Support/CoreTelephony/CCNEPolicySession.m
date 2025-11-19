@interface CCNEPolicySession
- (BOOL)apply;
- (CCNEPolicySession)init;
@end

@implementation CCNEPolicySession

- (CCNEPolicySession)init
{
  v7.receiver = self;
  v7.super_class = CCNEPolicySession;
  v2 = [(CCNEPolicySession *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NEPolicySession);
    session = v2->session;
    v2->session = v3;

    v5 = v2->session;
    if (v5)
    {
      [(NEPolicySession *)v5 setPriority:301];
    }
  }

  return v2;
}

- (BOOL)apply
{
  if (!self->_dirty)
  {
    return 1;
  }

  self->_dirty = 0;
  return [(NEPolicySession *)self->session apply];
}

@end