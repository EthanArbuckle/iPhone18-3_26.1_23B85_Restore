@interface _ADDeviceSyncCommandPullSnapshotResponseMutation
- (_ADDeviceSyncCommandPullSnapshotResponseMutation)initWithBase:(id)a3;
- (id)getSnapshot;
@end

@implementation _ADDeviceSyncCommandPullSnapshotResponseMutation

- (id)getSnapshot
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_snapshot;
  }

  else
  {
    v2 = [(ADDeviceSyncCommandPullSnapshotResponse *)self->_base snapshot];
  }

  return v2;
}

- (_ADDeviceSyncCommandPullSnapshotResponseMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullSnapshotResponseMutation;
  v6 = [(_ADDeviceSyncCommandPullSnapshotResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end