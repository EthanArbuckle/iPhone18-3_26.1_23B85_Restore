@interface ADDeviceSyncCommandPullSnapshotResponse
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullSnapshotResponse)initWithBuilder:(id)builder;
- (ADDeviceSyncCommandPullSnapshotResponse)initWithCoder:(id)coder;
- (ADDeviceSyncCommandPullSnapshotResponse)initWithSnapshot:(id)snapshot;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation ADDeviceSyncCommandPullSnapshotResponse

- (ADDeviceSyncCommandPullSnapshotResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncCommandPullSnapshotResponse::snapshot"];

  v6 = [(ADDeviceSyncCommandPullSnapshotResponse *)self initWithSnapshot:v5];
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
      snapshot = [(ADDeviceSyncCommandPullSnapshotResponse *)equalCopy snapshot];
      snapshot = self->_snapshot;
      v7 = snapshot == snapshot || [(ADDeviceSyncSnapshot *)snapshot isEqual:snapshot];
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
  v8.super_class = ADDeviceSyncCommandPullSnapshotResponse;
  v5 = [(ADDeviceSyncCommandPullSnapshotResponse *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {snapshot = %@}", v5, self->_snapshot];

  return v6;
}

- (ADDeviceSyncCommandPullSnapshotResponse)initWithSnapshot:(id)snapshot
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029B254;
  v7[3] = &unk_100519598;
  snapshotCopy = snapshot;
  v4 = snapshotCopy;
  v5 = [(ADDeviceSyncCommandPullSnapshotResponse *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPullSnapshotResponse)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullSnapshotResponse;
  v5 = [(ADDeviceSyncCommandPullSnapshotResponse *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullSnapshotResponseMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncCommandPullSnapshotResponseMutation *)v7 isDirty])
    {
      getSnapshot = [(_ADDeviceSyncCommandPullSnapshotResponseMutation *)v7 getSnapshot];
      v9 = [getSnapshot copy];
      snapshot = v6->_snapshot;
      v6->_snapshot = v9;
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
    v5 = [[_ADDeviceSyncCommandPullSnapshotResponseMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncCommandPullSnapshotResponseMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullSnapshotResponse);
      getSnapshot = [(_ADDeviceSyncCommandPullSnapshotResponseMutation *)v5 getSnapshot];
      v8 = [getSnapshot copy];
      snapshot = v6->_snapshot;
      v6->_snapshot = v8;
    }

    else
    {
      v6 = [(ADDeviceSyncCommandPullSnapshotResponse *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncCommandPullSnapshotResponse *)self copy];
  }

  return v6;
}

@end