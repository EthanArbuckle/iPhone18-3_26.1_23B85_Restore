@interface _AFApplicationContextSnapshotMutation
- (_AFApplicationContextSnapshotMutation)initWithBase:(id)a3;
- (id)getApplicationContexts;
@end

@implementation _AFApplicationContextSnapshotMutation

- (id)getApplicationContexts
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_applicationContexts;
  }

  else
  {
    v2 = [(AFApplicationContextSnapshot *)self->_base applicationContexts];
  }

  return v2;
}

- (_AFApplicationContextSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFApplicationContextSnapshotMutation;
  v6 = [(_AFApplicationContextSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end