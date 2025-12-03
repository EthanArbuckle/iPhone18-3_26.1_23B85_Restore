@interface _ADDeviceSyncCommandPullDeltaResponseMutation
- (_ADDeviceSyncCommandPullDeltaResponseMutation)initWithBase:(id)base;
- (id)getIncrementalChanges;
@end

@implementation _ADDeviceSyncCommandPullDeltaResponseMutation

- (id)getIncrementalChanges
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    incrementalChanges = self->_incrementalChanges;
  }

  else
  {
    incrementalChanges = [(ADDeviceSyncCommandPullDeltaResponse *)self->_base incrementalChanges];
  }

  return incrementalChanges;
}

- (_ADDeviceSyncCommandPullDeltaResponseMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullDeltaResponseMutation;
  v6 = [(_ADDeviceSyncCommandPullDeltaResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end