@interface ADDeviceSyncCommandPullGenerationsResponse
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullGenerationsResponse)initWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullGenerationsResponse)initWithCoder:(id)coder;
- (ADDeviceSyncCommandPullGenerationsResponse)initWithGenerationsByDataType:(id)type;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation ADDeviceSyncCommandPullGenerationsResponse

- (ADDeviceSyncCommandPullGenerationsResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v5, v6, objc_opt_class(), 0];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ADDeviceSyncCommandPullGenerationsResponse::generationsByDataType"];

  v9 = [(ADDeviceSyncCommandPullGenerationsResponse *)self initWithGenerationsByDataType:v8];
  return v9;
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
      generationsByDataType = [(ADDeviceSyncCommandPullGenerationsResponse *)equalCopy generationsByDataType];
      generationsByDataType = self->_generationsByDataType;
      v7 = generationsByDataType == generationsByDataType || [(NSDictionary *)generationsByDataType isEqual:generationsByDataType];
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
  v8.super_class = ADDeviceSyncCommandPullGenerationsResponse;
  v5 = [(ADDeviceSyncCommandPullGenerationsResponse *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generationsByDataType = %@}", v5, self->_generationsByDataType];

  return v6;
}

- (ADDeviceSyncCommandPullGenerationsResponse)initWithGenerationsByDataType:(id)type
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100375294;
  v7[3] = &unk_10051E250;
  typeCopy = type;
  v4 = typeCopy;
  v5 = [(ADDeviceSyncCommandPullGenerationsResponse *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPullGenerationsResponse)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullGenerationsResponse;
  v5 = [(ADDeviceSyncCommandPullGenerationsResponse *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullGenerationsResponseMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncCommandPullGenerationsResponseMutation *)v7 isDirty])
    {
      getGenerationsByDataType = [(_ADDeviceSyncCommandPullGenerationsResponseMutation *)v7 getGenerationsByDataType];
      v9 = [getGenerationsByDataType copy];
      generationsByDataType = v6->_generationsByDataType;
      v6->_generationsByDataType = v9;
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
    v5 = [[_ADDeviceSyncCommandPullGenerationsResponseMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncCommandPullGenerationsResponseMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullGenerationsResponse);
      getGenerationsByDataType = [(_ADDeviceSyncCommandPullGenerationsResponseMutation *)v5 getGenerationsByDataType];
      v8 = [getGenerationsByDataType copy];
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