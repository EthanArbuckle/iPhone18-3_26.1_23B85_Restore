@interface ADDeviceSyncCommandPushGenerationsRequest
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncCommandPushGenerationsRequest)initWithBuilder:(id)a3;
- (ADDeviceSyncCommandPushGenerationsRequest)initWithCoder:(id)a3;
- (ADDeviceSyncCommandPushGenerationsRequest)initWithGenerationsByDataType:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation ADDeviceSyncCommandPushGenerationsRequest

- (ADDeviceSyncCommandPushGenerationsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v5, v6, objc_opt_class(), 0];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"ADDeviceSyncCommandPushGenerationsRequest::generationsByDataType"];

  v9 = [(ADDeviceSyncCommandPushGenerationsRequest *)self initWithGenerationsByDataType:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ADDeviceSyncCommandPushGenerationsRequest *)v4 generationsByDataType];
      generationsByDataType = self->_generationsByDataType;
      v7 = generationsByDataType == v5 || [(NSDictionary *)generationsByDataType isEqual:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceSyncCommandPushGenerationsRequest;
  v5 = [(ADDeviceSyncCommandPushGenerationsRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generationsByDataType = %@}", v5, self->_generationsByDataType];

  return v6;
}

- (ADDeviceSyncCommandPushGenerationsRequest)initWithGenerationsByDataType:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002299FC;
  v7[3] = &unk_100517258;
  v8 = a3;
  v4 = v8;
  v5 = [(ADDeviceSyncCommandPushGenerationsRequest *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPushGenerationsRequest)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPushGenerationsRequest;
  v5 = [(ADDeviceSyncCommandPushGenerationsRequest *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncCommandPushGenerationsRequestMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncCommandPushGenerationsRequestMutation *)v7 isDirty])
    {
      v8 = [(_ADDeviceSyncCommandPushGenerationsRequestMutation *)v7 getGenerationsByDataType];
      v9 = [v8 copy];
      generationsByDataType = v6->_generationsByDataType;
      v6->_generationsByDataType = v9;
    }
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
    v5 = [[_ADDeviceSyncCommandPushGenerationsRequestMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncCommandPushGenerationsRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPushGenerationsRequest);
      v7 = [(_ADDeviceSyncCommandPushGenerationsRequestMutation *)v5 getGenerationsByDataType];
      v8 = [v7 copy];
      generationsByDataType = v6->_generationsByDataType;
      v6->_generationsByDataType = v8;
    }

    else
    {
      v6 = [(ADDeviceSyncCommandPushGenerationsRequest *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncCommandPushGenerationsRequest *)self copy];
  }

  return v6;
}

@end