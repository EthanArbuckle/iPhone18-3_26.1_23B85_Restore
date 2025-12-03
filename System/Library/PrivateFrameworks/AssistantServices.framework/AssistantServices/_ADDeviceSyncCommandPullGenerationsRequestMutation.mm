@interface _ADDeviceSyncCommandPullGenerationsRequestMutation
- (_ADDeviceSyncCommandPullGenerationsRequestMutation)initWithBase:(id)base;
- (id)getDataTypes;
@end

@implementation _ADDeviceSyncCommandPullGenerationsRequestMutation

- (id)getDataTypes
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    dataTypes = self->_dataTypes;
  }

  else
  {
    dataTypes = [(ADDeviceSyncCommandPullGenerationsRequest *)self->_base dataTypes];
  }

  return dataTypes;
}

- (_ADDeviceSyncCommandPullGenerationsRequestMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullGenerationsRequestMutation;
  v6 = [(_ADDeviceSyncCommandPullGenerationsRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end