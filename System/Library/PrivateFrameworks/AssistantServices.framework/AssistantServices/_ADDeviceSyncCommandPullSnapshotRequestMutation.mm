@interface _ADDeviceSyncCommandPullSnapshotRequestMutation
- (_ADDeviceSyncCommandPullSnapshotRequestMutation)initWithBase:(id)base;
- (id)getDataType;
@end

@implementation _ADDeviceSyncCommandPullSnapshotRequestMutation

- (id)getDataType
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    dataType = self->_dataType;
  }

  else
  {
    dataType = [(ADDeviceSyncCommandPullSnapshotRequest *)self->_base dataType];
  }

  return dataType;
}

- (_ADDeviceSyncCommandPullSnapshotRequestMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullSnapshotRequestMutation;
  v6 = [(_ADDeviceSyncCommandPullSnapshotRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end