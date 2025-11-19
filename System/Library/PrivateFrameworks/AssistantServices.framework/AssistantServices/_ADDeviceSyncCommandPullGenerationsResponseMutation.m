@interface _ADDeviceSyncCommandPullGenerationsResponseMutation
- (_ADDeviceSyncCommandPullGenerationsResponseMutation)initWithBase:(id)a3;
- (id)getGenerationsByDataType;
@end

@implementation _ADDeviceSyncCommandPullGenerationsResponseMutation

- (id)getGenerationsByDataType
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_generationsByDataType;
  }

  else
  {
    v2 = [(ADDeviceSyncCommandPullGenerationsResponse *)self->_base generationsByDataType];
  }

  return v2;
}

- (_ADDeviceSyncCommandPullGenerationsResponseMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullGenerationsResponseMutation;
  v6 = [(_ADDeviceSyncCommandPullGenerationsResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end