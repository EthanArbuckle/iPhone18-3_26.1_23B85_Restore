@interface _AFApplicationContextSnapshotMutation
- (_AFApplicationContextSnapshotMutation)initWithBase:(id)base;
- (id)getApplicationContexts;
@end

@implementation _AFApplicationContextSnapshotMutation

- (id)getApplicationContexts
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    applicationContexts = self->_applicationContexts;
  }

  else
  {
    applicationContexts = [(AFApplicationContextSnapshot *)self->_base applicationContexts];
  }

  return applicationContexts;
}

- (_AFApplicationContextSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFApplicationContextSnapshotMutation;
  v6 = [(_AFApplicationContextSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end