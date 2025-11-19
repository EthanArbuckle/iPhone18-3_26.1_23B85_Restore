@interface _ADDeviceSyncCommandPullDeltaResponseMutation
- (_ADDeviceSyncCommandPullDeltaResponseMutation)initWithBase:(id)a3;
- (id)getIncrementalChanges;
@end

@implementation _ADDeviceSyncCommandPullDeltaResponseMutation

- (id)getIncrementalChanges
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_incrementalChanges;
  }

  else
  {
    v2 = [(ADDeviceSyncCommandPullDeltaResponse *)self->_base incrementalChanges];
  }

  return v2;
}

- (_ADDeviceSyncCommandPullDeltaResponseMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullDeltaResponseMutation;
  v6 = [(_ADDeviceSyncCommandPullDeltaResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end