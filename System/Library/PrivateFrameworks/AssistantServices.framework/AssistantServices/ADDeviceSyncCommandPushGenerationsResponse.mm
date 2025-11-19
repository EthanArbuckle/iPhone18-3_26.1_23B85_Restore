@interface ADDeviceSyncCommandPushGenerationsResponse
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncCommandPushGenerationsResponse)initWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
@end

@implementation ADDeviceSyncCommandPushGenerationsResponse

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = ADDeviceSyncCommandPushGenerationsResponse;
  return [(ADDeviceSyncCommandPushGenerationsResponse *)&v4 isEqual:a3];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = ADDeviceSyncCommandPushGenerationsResponse;
  return [(ADDeviceSyncCommandPushGenerationsResponse *)&v3 hash];
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ADDeviceSyncCommandPushGenerationsResponse;
  v3 = [(ADDeviceSyncCommandPushGenerationsResponse *)&v5 description];

  return v3;
}

- (ADDeviceSyncCommandPushGenerationsResponse)initWithBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ADDeviceSyncCommandPushGenerationsResponse;
  v5 = [(ADDeviceSyncCommandPushGenerationsResponse *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncCommandPushGenerationsResponseMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    [(_ADDeviceSyncCommandPushGenerationsResponseMutation *)v7 isDirty];
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_ADDeviceSyncCommandPushGenerationsResponseMutation alloc] initWithBase:self];
    v4[2](v4, v5);
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