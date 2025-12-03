@interface _ADDeviceSyncCommandPullGenerationsResponseMutation
- (_ADDeviceSyncCommandPullGenerationsResponseMutation)initWithBase:(id)base;
- (id)getGenerationsByDataType;
@end

@implementation _ADDeviceSyncCommandPullGenerationsResponseMutation

- (id)getGenerationsByDataType
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    generationsByDataType = self->_generationsByDataType;
  }

  else
  {
    generationsByDataType = [(ADDeviceSyncCommandPullGenerationsResponse *)self->_base generationsByDataType];
  }

  return generationsByDataType;
}

- (_ADDeviceSyncCommandPullGenerationsResponseMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPullGenerationsResponseMutation;
  v6 = [(_ADDeviceSyncCommandPullGenerationsResponseMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end