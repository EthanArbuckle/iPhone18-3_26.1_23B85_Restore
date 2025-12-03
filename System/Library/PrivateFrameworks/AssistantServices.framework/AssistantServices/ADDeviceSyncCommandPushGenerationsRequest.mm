@interface ADDeviceSyncCommandPushGenerationsRequest
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncCommandPushGenerationsRequest)initWithBuilder:(id)builder;
- (ADDeviceSyncCommandPushGenerationsRequest)initWithCoder:(id)coder;
- (ADDeviceSyncCommandPushGenerationsRequest)initWithGenerationsByDataType:(id)type;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation ADDeviceSyncCommandPushGenerationsRequest

- (ADDeviceSyncCommandPushGenerationsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v5, v6, objc_opt_class(), 0];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"ADDeviceSyncCommandPushGenerationsRequest::generationsByDataType"];

  v9 = [(ADDeviceSyncCommandPushGenerationsRequest *)self initWithGenerationsByDataType:v8];
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
      generationsByDataType = [(ADDeviceSyncCommandPushGenerationsRequest *)equalCopy generationsByDataType];
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
  v8.super_class = ADDeviceSyncCommandPushGenerationsRequest;
  v5 = [(ADDeviceSyncCommandPushGenerationsRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generationsByDataType = %@}", v5, self->_generationsByDataType];

  return v6;
}

- (ADDeviceSyncCommandPushGenerationsRequest)initWithGenerationsByDataType:(id)type
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002299FC;
  v7[3] = &unk_100517258;
  typeCopy = type;
  v4 = typeCopy;
  v5 = [(ADDeviceSyncCommandPushGenerationsRequest *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPushGenerationsRequest)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPushGenerationsRequest;
  v5 = [(ADDeviceSyncCommandPushGenerationsRequest *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncCommandPushGenerationsRequestMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncCommandPushGenerationsRequestMutation *)v7 isDirty])
    {
      getGenerationsByDataType = [(_ADDeviceSyncCommandPushGenerationsRequestMutation *)v7 getGenerationsByDataType];
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
    v5 = [[_ADDeviceSyncCommandPushGenerationsRequestMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncCommandPushGenerationsRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPushGenerationsRequest);
      getGenerationsByDataType = [(_ADDeviceSyncCommandPushGenerationsRequestMutation *)v5 getGenerationsByDataType];
      v8 = [getGenerationsByDataType copy];
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