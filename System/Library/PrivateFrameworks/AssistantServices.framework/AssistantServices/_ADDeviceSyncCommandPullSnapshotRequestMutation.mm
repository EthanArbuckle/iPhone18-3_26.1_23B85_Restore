@interface _ADDeviceSyncCommandPullSnapshotRequestMutation
- (_ADDeviceSyncCommandPullSnapshotRequestMutation)initWithBase:(id)a3;
- (id)getDataType;
@end

@implementation _ADDeviceSyncCommandPullSnapshotRequestMutation

- (id)getDataType
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_dataType;
  }

  else
  {
    v2 = [(ADDeviceSyncCommandPullSnapshotRequest *)self->_base dataType];
  }

  return v2;
}

- (_ADDeviceSyncCommandPullSnapshotRequestMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullSnapshotRequestMutation;
  v6 = [(_ADDeviceSyncCommandPullSnapshotRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end