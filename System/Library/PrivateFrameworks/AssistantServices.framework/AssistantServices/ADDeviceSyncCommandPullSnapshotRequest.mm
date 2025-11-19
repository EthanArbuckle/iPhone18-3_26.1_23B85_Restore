@interface ADDeviceSyncCommandPullSnapshotRequest
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullSnapshotRequest)initWithBuilder:(id)a3;
- (ADDeviceSyncCommandPullSnapshotRequest)initWithCoder:(id)a3;
- (ADDeviceSyncCommandPullSnapshotRequest)initWithDataType:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation ADDeviceSyncCommandPullSnapshotRequest

- (ADDeviceSyncCommandPullSnapshotRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncCommandPullSnapshotRequest::dataType"];

  v6 = [(ADDeviceSyncCommandPullSnapshotRequest *)self initWithDataType:v5];
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
      v5 = [(ADDeviceSyncCommandPullSnapshotRequest *)v4 dataType];
      dataType = self->_dataType;
      v7 = dataType == v5 || [(NSString *)dataType isEqual:v5];
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
  v8.super_class = ADDeviceSyncCommandPullSnapshotRequest;
  v5 = [(ADDeviceSyncCommandPullSnapshotRequest *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {dataType = %@}", v5, self->_dataType];

  return v6;
}

- (ADDeviceSyncCommandPullSnapshotRequest)initWithDataType:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008FE5C;
  v7[3] = &unk_10050FD78;
  v8 = a3;
  v4 = v8;
  v5 = [(ADDeviceSyncCommandPullSnapshotRequest *)self initWithBuilder:v7];

  return v5;
}

- (ADDeviceSyncCommandPullSnapshotRequest)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncCommandPullSnapshotRequest;
  v5 = [(ADDeviceSyncCommandPullSnapshotRequest *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncCommandPullSnapshotRequestMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncCommandPullSnapshotRequestMutation *)v7 isDirty])
    {
      v8 = [(_ADDeviceSyncCommandPullSnapshotRequestMutation *)v7 getDataType];
      v9 = [v8 copy];
      dataType = v6->_dataType;
      v6->_dataType = v9;
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
    v5 = [[_ADDeviceSyncCommandPullSnapshotRequestMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncCommandPullSnapshotRequestMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncCommandPullSnapshotRequest);
      v7 = [(_ADDeviceSyncCommandPullSnapshotRequestMutation *)v5 getDataType];
      v8 = [v7 copy];
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