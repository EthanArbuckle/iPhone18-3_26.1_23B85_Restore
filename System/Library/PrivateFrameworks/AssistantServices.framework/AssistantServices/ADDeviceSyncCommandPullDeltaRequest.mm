@interface ADDeviceSyncCommandPullDeltaRequest
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullDeltaRequest)initWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullDeltaRequest)initWithCoder:(id)coder;
- (ADDeviceSyncCommandPullDeltaRequest)initWithDataType:(id)type generation:(unint64_t)generation limit:(unint64_t)limit;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADDeviceSyncCommandPullDeltaRequest

- (void)encodeWithCoder:(id)coder
{
  dataType = self->_dataType;
  coderCopy = coder;
  [coderCopy encodeObject:dataType forKey:@"ADDeviceSyncCommandPullDeltaRequest::dataType"];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_generation];
  [coderCopy encodeObject:v6 forKey:@"ADDeviceSyncCommandPullDeltaRequest::generation"];

  v7 = [NSNumber numberWithUnsignedLongLong:self->_limit];
  [coderCopy encodeObject:v7 forKey:@"ADDeviceSyncCommandPullDeltaRequest::limit"];
}

- (ADDeviceSyncCommandPullDeltaRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncCommandPullDeltaRequest::dataType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncCommandPullDeltaRequest::generation"];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncCommandPullDeltaRequest::limit"];

  unsignedLongLongValue2 = [v8 unsignedLongLongValue];
  v10 = [(ADDeviceSyncCommandPullDeltaRequest *)self initWithDataType:v5 generation:unsignedLongLongValue limit:unsignedLongLongValue2];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      generation = self->_generation;
      if (generation == [(ADDeviceSyncCommandPullDeltaRequest *)v5 generation]&& (limit = self->_limit, limit == [(ADDeviceSyncCommandPullDeltaRequest *)v5 limit]))
      {
        dataType = [(ADDeviceSyncCommandPullDeltaRequest *)v5 dataType];
        dataType = self->_dataType;
        v10 = dataType == dataType || [(NSString *)dataType isEqual:dataType];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_dataType hash];
  v4 = [NSNumber numberWithUnsignedLongLong:self->_generation];
  v5 = [v4 hash] ^ v3;
  v6 = [NSNumber numberWithUnsignedLongLong:self->_limit];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceSyncCommandPullDeltaRequest;
  v5 = [(ADDeviceSyncCommandPullDeltaRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {dataType = %@, generation = %llu, limit = %llu}", v5, self->_dataType, self->_generation, self->_limit];

  return v6;
}

- (ADDeviceSyncCommandPullDeltaRequest)initWithDataType:(id)type generation:(unint64_t)generation limit:(unint64_t)limit
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10036FD20;
  v11[3] = &unk_10051DF50;
  typeCopy = type;
  generationCopy = generation;
  limitCopy = limit;
  v8 = typeCopy;
  v9 = [(ADDeviceSyncCommandPullDeltaRequest *)self initWithBuilder:v11];

  return v9;
}

- (ADDeviceSyncCommandPullDeltaRequest)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullDeltaRequest;
  v5 = [(ADDeviceSyncCommandPullDeltaRequest *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullDeltaRequestMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncCommandPullDeltaRequestMutation *)v7 isDirty])
    {
      getDataType = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)v7 getDataType];
      v9 = [getDataType copy];
      dataType = v6->_dataType;
      v6->_dataType = v9;

      v6->_generation = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)v7 getGeneration];
      v6->_limit = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)v7 getLimit];
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
    v5 = [[_ADDeviceSyncCommandPullDeltaRequestMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncCommandPullDeltaRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullDeltaRequest);
      getDataType = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)v5 getDataType];
      v8 = [getDataType copy];
      dataType = v6->_dataType;
      v6->_dataType = v8;

      v6->_generation = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)v5 getGeneration];
      v6->_limit = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)v5 getLimit];
    }

    else
    {
      v6 = [(ADDeviceSyncCommandPullDeltaRequest *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncCommandPullDeltaRequest *)self copy];
  }

  return v6;
}

@end