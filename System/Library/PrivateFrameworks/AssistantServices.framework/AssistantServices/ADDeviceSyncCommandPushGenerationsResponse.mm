@interface ADDeviceSyncCommandPushGenerationsResponse
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncCommandPushGenerationsResponse)initWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
@end

@implementation ADDeviceSyncCommandPushGenerationsResponse

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = ADDeviceSyncCommandPushGenerationsResponse;
  return [(ADDeviceSyncCommandPushGenerationsResponse *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = ADDeviceSyncCommandPushGenerationsResponse;
  return [(ADDeviceSyncCommandPushGenerationsResponse *)&v3 hash];
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v5.receiver = self;
  v5.super_class = ADDeviceSyncCommandPushGenerationsResponse;
  v3 = [(ADDeviceSyncCommandPushGenerationsResponse *)&v5 description];

  return v3;
}

- (ADDeviceSyncCommandPushGenerationsResponse)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = ADDeviceSyncCommandPushGenerationsResponse;
  v5 = [(ADDeviceSyncCommandPushGenerationsResponse *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncCommandPushGenerationsResponseMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    [(_ADDeviceSyncCommandPushGenerationsResponseMutation *)v7 isDirty];
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_ADDeviceSyncCommandPushGenerationsResponseMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncCommandPushGenerationsResponseMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPushGenerationsResponse);
    }

    else
    {
      v6 = [(ADDeviceSyncCommandPushGenerationsResponse *)self copy];
    }

    v7 = v6;
  }

  else
  {
    v7 = [(ADDeviceSyncCommandPushGenerationsResponse *)self copy];
  }

  return v7;
}

@end