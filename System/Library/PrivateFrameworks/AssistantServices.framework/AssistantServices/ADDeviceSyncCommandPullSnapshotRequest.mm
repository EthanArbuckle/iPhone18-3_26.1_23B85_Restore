@interface ADDeviceSyncCommandPullSnapshotRequest
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullSnapshotRequest)initWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullSnapshotRequest)initWithCoder:(id)coder;
- (ADDeviceSyncCommandPullSnapshotRequest)initWithDataType:(id)type;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation ADDeviceSyncCommandPullSnapshotRequest

- (ADDeviceSyncCommandPullSnapshotRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncCommandPullSnapshotRequest::dataType"];

  v6 = [(ADDeviceSyncCommandPullSnapshotRequest *)self initWithDataType:v5];
  return v6;
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
      dataType = [(ADDeviceSyncCommandPullSnapshotRequest *)equalCopy dataType];
      dataType = self->_dataType;
      v7 = dataType == dataType || [(NSString *)dataType isEqual:dataType];
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
  v8.super_class = ADDeviceSyncCommandPullSnapshotRequest;
  v5 = [(ADDeviceSyncCommandPullSnapshotRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {dataType = %@}", v5, self->_dataType];

  return v6;
}

- (ADDeviceSyncCommandPullSnapshotRequest)initWithDataType:(id)type
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008FE5C;
  v7[3] = &unk_10050FD78;
  typeCopy = type;
  v4 = typeCopy;
  v5 = [(ADDeviceSyncCommandPullSnapshotRequest *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPullSnapshotRequest)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullSnapshotRequest;
  v5 = [(ADDeviceSyncCommandPullSnapshotRequest *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullSnapshotRequestMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncCommandPullSnapshotRequestMutation *)v7 isDirty])
    {
      getDataType = [(_ADDeviceSyncCommandPullSnapshotRequestMutation *)v7 getDataType];
      v9 = [getDataType copy];
      dataType = v6->_dataType;
      v6->_dataType = v9;
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
    v5 = [[_ADDeviceSyncCommandPullSnapshotRequestMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncCommandPullSnapshotRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullSnapshotRequest);
      getDataType = [(_ADDeviceSyncCommandPullSnapshotRequestMutation *)v5 getDataType];
      v8 = [getDataType copy];
      dataType = v6->_dataType;
      v6->_dataType = v8;
    }

    else
    {
      v6 = [(ADDeviceSyncCommandPullSnapshotRequest *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncCommandPullSnapshotRequest *)self copy];
  }

  return v6;
}

@end