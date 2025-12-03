@interface _ADDeviceSyncCommandPullSnapshotResponseMutation
- (_ADDeviceSyncCommandPullSnapshotResponseMutation)initWithBase:(id)base;
- (id)getSnapshot;
@end

@implementation _ADDeviceSyncCommandPullSnapshotResponseMutation

- (id)getSnapshot
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    snapshot = self->_snapshot;
  }

  else
  {
    snapshot = [(ADDeviceSyncCommandPullSnapshotResponse *)self->_base snapshot];
  }

  return snapshot;
}

- (_ADDeviceSyncCommandPullSnapshotResponseMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullSnapshotResponseMutation;
  v6 = [(_ADDeviceSyncCommandPullSnapshotResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end