@interface _ADDeviceSyncSnapshotMutation
- (_ADDeviceSyncSnapshotMutation)initWithBase:(id)base;
- (id)getDate;
- (id)getItems;
- (unint64_t)getGeneration;
@end

@implementation _ADDeviceSyncSnapshotMutation

- (id)getItems
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    items = self->_items;
  }

  else
  {
    items = [(ADDeviceSyncSnapshot *)self->_base items];
  }

  return items;
}

- (id)getDate
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    date = self->_date;
  }

  else
  {
    date = [(ADDeviceSyncSnapshot *)self->_base date];
  }

  return date;
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

- (_ADDeviceSyncSnapshotMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncSnapshotMutation;
  v6 = [(_ADDeviceSyncSnapshotMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end