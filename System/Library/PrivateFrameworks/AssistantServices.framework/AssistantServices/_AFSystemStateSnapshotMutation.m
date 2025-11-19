@interface _AFSystemStateSnapshotMutation
- (_AFSystemStateSnapshotMutation)initWithBase:(id)a3;
- (int64_t)getSleepState;
@end

@implementation _AFSystemStateSnapshotMutation

- (int64_t)getSleepState
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_sleepState;
  }

  else
  {
    return [(AFSystemStateSnapshot *)self->_base sleepState];
  }
}

- (_AFSystemStateSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFSystemStateSnapshotMutation;
  v6 = [(_AFSystemStateSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end