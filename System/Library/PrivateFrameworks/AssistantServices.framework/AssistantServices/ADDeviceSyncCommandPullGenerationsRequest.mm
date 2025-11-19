@interface ADDeviceSyncCommandPullGenerationsRequest
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullGenerationsRequest)initWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullGenerationsRequest)initWithCoder:(id)a3;
- (ADDeviceSyncCommandPullGenerationsRequest)initWithDataTypes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation ADDeviceSyncCommandPullGenerationsRequest

- (ADDeviceSyncCommandPullGenerationsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"ADDeviceSyncCommandPullGenerationsRequest::dataTypes"];

  v8 = [(ADDeviceSyncCommandPullGenerationsRequest *)self initWithDataTypes:v7];
  return v8;
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
      v5 = [(ADDeviceSyncCommandPullGenerationsRequest *)v4 dataTypes];
      dataTypes = self->_dataTypes;
      v7 = dataTypes == v5 || [(NSArray *)dataTypes isEqual:v5];
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
  v8.super_class = ADDeviceSyncCommandPullGenerationsRequest;
  v5 = [(ADDeviceSyncCommandPullGenerationsRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {dataTypes = %@}", v5, self->_dataTypes];

  return v6;
}

- (ADDeviceSyncCommandPullGenerationsRequest)initWithDataTypes:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D11D4;
  v7[3] = &unk_100510D48;
  v8 = a3;
  v4 = v8;
  v5 = [(ADDeviceSyncCommandPullGenerationsRequest *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPullGenerationsRequest)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullGenerationsRequest;
  v5 = [(ADDeviceSyncCommandPullGenerationsRequest *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullGenerationsRequestMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncCommandPullGenerationsRequestMutation *)v7 isDirty])
    {
      v8 = [(_ADDeviceSyncCommandPullGenerationsRequestMutation *)v7 getDataTypes];
      v9 = [v8 copy];
      dataTypes = v6->_dataTypes;
      v6->_dataTypes = v9;
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
    v5 = [[_ADDeviceSyncCommandPullGenerationsRequestMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncCommandPullGenerationsRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullGenerationsRequest);
      v7 = [(_ADDeviceSyncCommandPullGenerationsRequestMutation *)v5 getDataTypes];
      v8 = [v7 copy];
      dataTypes = v6->_dataTypes;
      v6->_dataTypes = v8;
    }

    else
    {
      v6 = [(ADDeviceSyncCommandPullGenerationsRequest *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncCommandPullGenerationsRequest *)self copy];
  }

  return v6;
}

@end