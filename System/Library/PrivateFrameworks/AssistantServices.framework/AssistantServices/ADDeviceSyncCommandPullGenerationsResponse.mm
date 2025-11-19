@interface ADDeviceSyncCommandPullGenerationsResponse
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullGenerationsResponse)initWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullGenerationsResponse)initWithCoder:(id)a3;
- (ADDeviceSyncCommandPullGenerationsResponse)initWithGenerationsByDataType:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation ADDeviceSyncCommandPullGenerationsResponse

- (ADDeviceSyncCommandPullGenerationsResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v5, v6, objc_opt_class(), 0];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"ADDeviceSyncCommandPullGenerationsResponse::generationsByDataType"];

  v9 = [(ADDeviceSyncCommandPullGenerationsResponse *)self initWithGenerationsByDataType:v8];
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
      v5 = [(ADDeviceSyncCommandPullGenerationsResponse *)v4 generationsByDataType];
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
  v8.super_class = ADDeviceSyncCommandPullGenerationsResponse;
  v5 = [(ADDeviceSyncCommandPullGenerationsResponse *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generationsByDataType = %@}", v5, self->_generationsByDataType];

  return v6;
}

- (ADDeviceSyncCommandPullGenerationsResponse)initWithGenerationsByDataType:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100375294;
  v7[3] = &unk_10051E250;
  v8 = a3;
  v4 = v8;
  v5 = [(ADDeviceSyncCommandPullGenerationsResponse *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPullGenerationsResponse)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullGenerationsResponse;
  v5 = [(ADDeviceSyncCommandPullGenerationsResponse *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullGenerationsResponseMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncCommandPullGenerationsResponseMutation *)v7 isDirty])
    {
      v8 = [(_ADDeviceSyncCommandPullGenerationsResponseMutation *)v7 getGenerationsByDataType];
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
    v5 = [[_ADDeviceSyncCommandPullGenerationsResponseMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncCommandPullGenerationsResponseMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullGenerationsResponse);
      v7 = [(_ADDeviceSyncCommandPullGenerationsResponseMutation *)v5 getGenerationsByDataType];
      v8 = [v7 copy];
      generationsByDataType = v6->_generationsByDataType;
      v6->_generationsByDataType = v8;
    }

    else
    {
      v6 = [(ADDeviceSyncCommandPullGenerationsResponse *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncCommandPullGenerationsResponse *)self copy];
  }

  return v6;
}

@end