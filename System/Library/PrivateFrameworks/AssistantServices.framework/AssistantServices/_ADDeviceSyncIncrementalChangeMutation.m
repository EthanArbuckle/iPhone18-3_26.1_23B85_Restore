@interface _ADDeviceSyncIncrementalChangeMutation
- (_ADDeviceSyncIncrementalChangeMutation)initWithBase:(id)a3;
- (id)getDate;
- (id)getDeletedItemUUIDs;
- (id)getInsertedOrUpdatedItems;
- (unint64_t)getGeneration;
@end

@implementation _ADDeviceSyncIncrementalChangeMutation

- (id)getDeletedItemUUIDs
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_deletedItemUUIDs;
  }

  else
  {
    v2 = [(ADDeviceSyncIncrementalChange *)self->_base deletedItemUUIDs];
  }

  return v2;
}

- (id)getInsertedOrUpdatedItems
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_insertedOrUpdatedItems;
  }

  else
  {
    v2 = [(ADDeviceSyncIncrementalChange *)self->_base insertedOrUpdatedItems];
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
    v2 = [(ADDeviceSyncIncrementalChange *)self->_base date];
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
    return [(ADDeviceSyncIncrementalChange *)self->_base generation];
  }
}

- (_ADDeviceSyncIncrementalChangeMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncIncrementalChangeMutation;
  v6 = [(_ADDeviceSyncIncrementalChangeMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end