@interface ADDeviceSyncCommandPullDeltaRequest
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullDeltaRequest)initWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullDeltaRequest)initWithCoder:(id)a3;
- (ADDeviceSyncCommandPullDeltaRequest)initWithDataType:(id)a3 generation:(unint64_t)a4 limit:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADDeviceSyncCommandPullDeltaRequest

- (void)encodeWithCoder:(id)a3
{
  dataType = self->_dataType;
  v5 = a3;
  [v5 encodeObject:dataType forKey:@"ADDeviceSyncCommandPullDeltaRequest::dataType"];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_generation];
  [v5 encodeObject:v6 forKey:@"ADDeviceSyncCommandPullDeltaRequest::generation"];

  v7 = [NSNumber numberWithUnsignedLongLong:self->_limit];
  [v5 encodeObject:v7 forKey:@"ADDeviceSyncCommandPullDeltaRequest::limit"];
}

- (ADDeviceSyncCommandPullDeltaRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncCommandPullDeltaRequest::dataType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncCommandPullDeltaRequest::generation"];
  v7 = [v6 unsignedLongLongValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncCommandPullDeltaRequest::limit"];

  v9 = [v8 unsignedLongLongValue];
  v10 = [(ADDeviceSyncCommandPullDeltaRequest *)self initWithDataType:v5 generation:v7 limit:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      generation = self->_generation;
      if (generation == [(ADDeviceSyncCommandPullDeltaRequest *)v5 generation]&& (limit = self->_limit, limit == [(ADDeviceSyncCommandPullDeltaRequest *)v5 limit]))
      {
        v8 = [(ADDeviceSyncCommandPullDeltaRequest *)v5 dataType];
        dataType = self->_dataType;
        v10 = dataType == v8 || [(NSString *)dataType isEqual:v8];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceSyncCommandPullDeltaRequest;
  v5 = [(ADDeviceSyncCommandPullDeltaRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {dataType = %@, generation = %llu, limit = %llu}", v5, self->_dataType, self->_generation, self->_limit];

  return v6;
}

- (ADDeviceSyncCommandPullDeltaRequest)initWithDataType:(id)a3 generation:(unint64_t)a4 limit:(unint64_t)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10036FD20;
  v11[3] = &unk_10051DF50;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v8 = v12;
  v9 = [(ADDeviceSyncCommandPullDeltaRequest *)self initWithBuilder:v11];

  return v9;
}

- (ADDeviceSyncCommandPullDeltaRequest)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullDeltaRequest;
  v5 = [(ADDeviceSyncCommandPullDeltaRequest *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullDeltaRequestMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncCommandPullDeltaRequestMutation *)v7 isDirty])
    {
      v8 = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)v7 getDataType];
      v9 = [v8 copy];
      dataType = v6->_dataType;
      v6->_dataType = v9;

      v6->_generation = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)v7 getGeneration];
      v6->_limit = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)v7 getLimit];
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
    v5 = [[_ADDeviceSyncCommandPullDeltaRequestMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncCommandPullDeltaRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullDeltaRequest);
      v7 = [(_ADDeviceSyncCommandPullDeltaRequestMutation *)v5 getDataType];
      v8 = [v7 copy];
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