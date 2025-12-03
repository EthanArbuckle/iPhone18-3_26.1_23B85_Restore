@interface _ADDeviceSyncCommandPullDeltaRequestMutation
- (_ADDeviceSyncCommandPullDeltaRequestMutation)initWithBase:(id)base;
- (id)getDataType;
- (unint64_t)getGeneration;
- (unint64_t)getLimit;
@end

@implementation _ADDeviceSyncCommandPullDeltaRequestMutation

- (unint64_t)getLimit
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_limit;
  }

  else
  {
    return [(ADDeviceSyncCommandPullDeltaRequest *)self->_base limit];
  }
}

- (unint64_t)getGeneration
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_generation;
  }

  else
  {
    return [(ADDeviceSyncCommandPullDeltaRequest *)self->_base generation];
  }
}

- (id)getDataType
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    dataType = self->_dataType;
  }

  else
  {
    dataType = [(ADDeviceSyncCommandPullDeltaRequest *)self->_base dataType];
  }

  return dataType;
}

- (_ADDeviceSyncCommandPullDeltaRequestMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullDeltaRequestMutation;
  v6 = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end