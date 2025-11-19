@interface ADDeviceSyncCommandPullSnapshotResponse
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullSnapshotResponse)initWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullSnapshotResponse)initWithCoder:(id)a3;
- (ADDeviceSyncCommandPullSnapshotResponse)initWithSnapshot:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation ADDeviceSyncCommandPullSnapshotResponse

- (ADDeviceSyncCommandPullSnapshotResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncCommandPullSnapshotResponse::snapshot"];

  v6 = [(ADDeviceSyncCommandPullSnapshotResponse *)self initWithSnapshot:v5];
  return v6;
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
      v5 = [(ADDeviceSyncCommandPullSnapshotResponse *)v4 snapshot];
      snapshot = self->_snapshot;
      v7 = snapshot == v5 || [(ADDeviceSyncSnapshot *)snapshot isEqual:v5];
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
  v8.super_class = ADDeviceSyncCommandPullSnapshotResponse;
  v5 = [(ADDeviceSyncCommandPullSnapshotResponse *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {snapshot = %@}", v5, self->_snapshot];

  return v6;
}

- (ADDeviceSyncCommandPullSnapshotResponse)initWithSnapshot:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10029B254;
  v7[3] = &unk_100519598;
  v8 = a3;
  v4 = v8;
  v5 = [(ADDeviceSyncCommandPullSnapshotResponse *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPullSnapshotResponse)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullSnapshotResponse;
  v5 = [(ADDeviceSyncCommandPullSnapshotResponse *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullSnapshotResponseMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncCommandPullSnapshotResponseMutation *)v7 isDirty])
    {
      v8 = [(_ADDeviceSyncCommandPullSnapshotResponseMutation *)v7 getSnapshot];
      v9 = [v8 copy];
      snapshot = v6->_snapshot;
      v6->_snapshot = v9;
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
    v5 = [[_ADDeviceSyncCommandPullSnapshotResponseMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncCommandPullSnapshotResponseMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullSnapshotResponse);
      v7 = [(_ADDeviceSyncCommandPullSnapshotResponseMutation *)v5 getSnapshot];
      v8 = [v7 copy];
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