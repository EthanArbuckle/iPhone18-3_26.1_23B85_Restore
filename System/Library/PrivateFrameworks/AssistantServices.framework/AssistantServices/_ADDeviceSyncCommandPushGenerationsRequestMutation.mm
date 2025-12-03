@interface _ADDeviceSyncCommandPushGenerationsRequestMutation
- (_ADDeviceSyncCommandPushGenerationsRequestMutation)initWithBase:(id)base;
- (id)getGenerationsByDataType;
@end

@implementation _ADDeviceSyncCommandPushGenerationsRequestMutation

- (id)getGenerationsByDataType
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    generationsByDataType = self->_generationsByDataType;
  }

  else
  {
    generationsByDataType = [(ADDeviceSyncCommandPushGenerationsRequest *)self->_base generationsByDataType];
  }

  return generationsByDataType;
}

- (_ADDeviceSyncCommandPushGenerationsRequestMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncCommandPushGenerationsRequestMutation;
  v6 = [(_ADDeviceSyncCommandPushGenerationsRequestMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end