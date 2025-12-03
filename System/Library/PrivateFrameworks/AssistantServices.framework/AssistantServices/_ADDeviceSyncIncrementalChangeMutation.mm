@interface _ADDeviceSyncIncrementalChangeMutation
- (_ADDeviceSyncIncrementalChangeMutation)initWithBase:(id)base;
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
    deletedItemUUIDs = self->_deletedItemUUIDs;
  }

  else
  {
    deletedItemUUIDs = [(ADDeviceSyncIncrementalChange *)self->_base deletedItemUUIDs];
  }

  return deletedItemUUIDs;
}

- (id)getInsertedOrUpdatedItems
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    insertedOrUpdatedItems = self->_insertedOrUpdatedItems;
  }

  else
  {
    insertedOrUpdatedItems = [(ADDeviceSyncIncrementalChange *)self->_base insertedOrUpdatedItems];
  }

  return insertedOrUpdatedItems;
}

- (id)getDate
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    date = self->_date;
  }

  else
  {
    date = [(ADDeviceSyncIncrementalChange *)self->_base date];
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
    return [(ADDeviceSyncIncrementalChange *)self->_base generation];
  }
}

- (_ADDeviceSyncIncrementalChangeMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _ADDeviceSyncIncrementalChangeMutation;
  v6 = [(_ADDeviceSyncIncrementalChangeMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end