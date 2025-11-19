@interface ADDeviceSyncCommandPullDeltaResponse
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullDeltaResponse)initWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullDeltaResponse)initWithCoder:(id)a3;
- (ADDeviceSyncCommandPullDeltaResponse)initWithIncrementalChanges:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation ADDeviceSyncCommandPullDeltaResponse

- (ADDeviceSyncCommandPullDeltaResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"ADDeviceSyncCommandPullDeltaResponse::incrementalChanges"];

  v8 = [(ADDeviceSyncCommandPullDeltaResponse *)self initWithIncrementalChanges:v7];
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
      v5 = [(ADDeviceSyncCommandPullDeltaResponse *)v4 incrementalChanges];
      incrementalChanges = self->_incrementalChanges;
      v7 = incrementalChanges == v5 || [(NSArray *)incrementalChanges isEqual:v5];
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
  v8.super_class = ADDeviceSyncCommandPullDeltaResponse;
  v5 = [(ADDeviceSyncCommandPullDeltaResponse *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {incrementalChanges = %@}", v5, self->_incrementalChanges];

  return v6;
}

- (ADDeviceSyncCommandPullDeltaResponse)initWithIncrementalChanges:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D9578;
  v7[3] = &unk_100510EC8;
  v8 = a3;
  v4 = v8;
  v5 = [(ADDeviceSyncCommandPullDeltaResponse *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPullDeltaResponse)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullDeltaResponse;
  v5 = [(ADDeviceSyncCommandPullDeltaResponse *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullDeltaResponseMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncCommandPullDeltaResponseMutation *)v7 isDirty])
    {
      v8 = [(_ADDeviceSyncCommandPullDeltaResponseMutation *)v7 getIncrementalChanges];
      v9 = [v8 copy];
      incrementalChanges = v6->_incrementalChanges;
      v6->_incrementalChanges = v9;
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
    v5 = [[_ADDeviceSyncCommandPullDeltaResponseMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncCommandPullDeltaResponseMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullDeltaResponse);
      v7 = [(_ADDeviceSyncCommandPullDeltaResponseMutation *)v5 getIncrementalChanges];
      v8 = [v7 copy];
      incrementalChanges = v6->_incrementalChanges;
      v6->_incrementalChanges = v8;
    }

    else
    {
      v6 = [(ADDeviceSyncCommandPullDeltaResponse *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncCommandPullDeltaResponse *)self copy];
  }

  return v6;
}

@end