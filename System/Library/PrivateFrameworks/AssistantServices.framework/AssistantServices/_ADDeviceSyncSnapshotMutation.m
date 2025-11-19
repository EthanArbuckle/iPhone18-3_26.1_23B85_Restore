@interface _ADDeviceSyncSnapshotMutation
- (_ADDeviceSyncSnapshotMutation)initWithBase:(id)a3;
- (id)getDate;
- (id)getItems;
- (unint64_t)getGeneration;
@end

@implementation _ADDeviceSyncSnapshotMutation

- (id)getItems
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_items;
  }

  else
  {
    v2 = [(ADDeviceSyncSnapshot *)self->_base items];
  }

  return v2;
}

- (id)getDate
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_date;
  }

  else
  {
    v2 = [(ADDeviceSyncSnapshot *)self->_base date];
  }

  return v2;
}

- (unint64_t)getGeneration
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_generation;
  }

  else
  {
    return [(ADDeviceSyncSnapshot *)self->_base generation];
  }
}

- (_ADDeviceSyncSnapshotMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncSnapshotMutation;
  v6 = [(_ADDeviceSyncSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end