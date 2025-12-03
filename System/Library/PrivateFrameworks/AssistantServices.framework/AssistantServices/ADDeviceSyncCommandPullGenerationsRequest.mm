@interface ADDeviceSyncCommandPullGenerationsRequest
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullGenerationsRequest)initWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullGenerationsRequest)initWithCoder:(id)coder;
- (ADDeviceSyncCommandPullGenerationsRequest)initWithDataTypes:(id)types;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation ADDeviceSyncCommandPullGenerationsRequest

- (ADDeviceSyncCommandPullGenerationsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"ADDeviceSyncCommandPullGenerationsRequest::dataTypes"];

  v8 = [(ADDeviceSyncCommandPullGenerationsRequest *)self initWithDataTypes:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dataTypes = [(ADDeviceSyncCommandPullGenerationsRequest *)equalCopy dataTypes];
      dataTypes = self->_dataTypes;
      v7 = dataTypes == dataTypes || [(NSArray *)dataTypes isEqual:dataTypes];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceSyncCommandPullGenerationsRequest;
  v5 = [(ADDeviceSyncCommandPullGenerationsRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {dataTypes = %@}", v5, self->_dataTypes];

  return v6;
}

- (ADDeviceSyncCommandPullGenerationsRequest)initWithDataTypes:(id)types
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D11D4;
  v7[3] = &unk_100510D48;
  typesCopy = types;
  v4 = typesCopy;
  v5 = [(ADDeviceSyncCommandPullGenerationsRequest *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPullGenerationsRequest)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullGenerationsRequest;
  v5 = [(ADDeviceSyncCommandPullGenerationsRequest *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullGenerationsRequestMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncCommandPullGenerationsRequestMutation *)v7 isDirty])
    {
      getDataTypes = [(_ADDeviceSyncCommandPullGenerationsRequestMutation *)v7 getDataTypes];
      v9 = [getDataTypes copy];
      dataTypes = v6->_dataTypes;
      v6->_dataTypes = v9;
    }
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
    v5 = [[_ADDeviceSyncCommandPullGenerationsRequestMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncCommandPullGenerationsRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullGenerationsRequest);
      getDataTypes = [(_ADDeviceSyncCommandPullGenerationsRequestMutation *)v5 getDataTypes];
      v8 = [getDataTypes copy];
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