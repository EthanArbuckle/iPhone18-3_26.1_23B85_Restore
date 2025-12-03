@interface ADDeviceSyncCommandPullDeltaResponse
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullDeltaResponse)initWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullDeltaResponse)initWithCoder:(id)coder;
- (ADDeviceSyncCommandPullDeltaResponse)initWithIncrementalChanges:(id)changes;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation ADDeviceSyncCommandPullDeltaResponse

- (ADDeviceSyncCommandPullDeltaResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"ADDeviceSyncCommandPullDeltaResponse::incrementalChanges"];

  v8 = [(ADDeviceSyncCommandPullDeltaResponse *)self initWithIncrementalChanges:v7];
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
      incrementalChanges = [(ADDeviceSyncCommandPullDeltaResponse *)equalCopy incrementalChanges];
      incrementalChanges = self->_incrementalChanges;
      v7 = incrementalChanges == incrementalChanges || [(NSArray *)incrementalChanges isEqual:incrementalChanges];
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
  v8.super_class = ADDeviceSyncCommandPullDeltaResponse;
  v5 = [(ADDeviceSyncCommandPullDeltaResponse *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {incrementalChanges = %@}", v5, self->_incrementalChanges];

  return v6;
}

- (ADDeviceSyncCommandPullDeltaResponse)initWithIncrementalChanges:(id)changes
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D9578;
  v7[3] = &unk_100510EC8;
  changesCopy = changes;
  v4 = changesCopy;
  v5 = [(ADDeviceSyncCommandPullDeltaResponse *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPullDeltaResponse)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullDeltaResponse;
  v5 = [(ADDeviceSyncCommandPullDeltaResponse *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullDeltaResponseMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncCommandPullDeltaResponseMutation *)v7 isDirty])
    {
      getIncrementalChanges = [(_ADDeviceSyncCommandPullDeltaResponseMutation *)v7 getIncrementalChanges];
      v9 = [getIncrementalChanges copy];
      incrementalChanges = v6->_incrementalChanges;
      v6->_incrementalChanges = v9;
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
    v5 = [[_ADDeviceSyncCommandPullDeltaResponseMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncCommandPullDeltaResponseMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullDeltaResponse);
      getIncrementalChanges = [(_ADDeviceSyncCommandPullDeltaResponseMutation *)v5 getIncrementalChanges];
      v8 = [getIncrementalChanges copy];
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