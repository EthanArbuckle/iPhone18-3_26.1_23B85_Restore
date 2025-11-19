@interface _ADDeviceSyncCommandPullGenerationsRequestMutation
- (_ADDeviceSyncCommandPullGenerationsRequestMutation)initWithBase:(id)a3;
- (id)getDataTypes;
@end

@implementation _ADDeviceSyncCommandPullGenerationsRequestMutation

- (id)getDataTypes
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_dataTypes;
  }

  else
  {
    v2 = [(ADDeviceSyncCommandPullGenerationsRequest *)self->_base dataTypes];
  }

  return v2;
}

- (_ADDeviceSyncCommandPullGenerationsRequestMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullGenerationsRequestMutation;
  v6 = [(_ADDeviceSyncCommandPullGenerationsRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end