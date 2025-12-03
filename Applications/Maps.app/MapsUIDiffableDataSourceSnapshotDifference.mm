@interface MapsUIDiffableDataSourceSnapshotDifference
- (MapsUIDiffableDataSourceSnapshotDifference)initWithReloadedItems:(id)items insertedItems:(id)insertedItems deletedItems:(id)deletedItems;
- (id)differenceUnionWithDifference:(id)difference;
@end

@implementation MapsUIDiffableDataSourceSnapshotDifference

- (id)differenceUnionWithDifference:(id)difference
{
  reloadedItems = self->_reloadedItems;
  differenceCopy = difference;
  v6 = [NSMutableArray arrayWithArray:reloadedItems];
  reloadedItems = [differenceCopy reloadedItems];
  [v6 addObjectsFromArray:reloadedItems];

  v8 = [NSMutableArray arrayWithArray:self->_insertedItems];
  insertedItems = [differenceCopy insertedItems];
  [v8 addObjectsFromArray:insertedItems];

  v10 = [NSMutableArray arrayWithArray:self->_deletedItems];
  deletedItems = [differenceCopy deletedItems];

  [v10 addObjectsFromArray:deletedItems];
  v12 = [objc_alloc(objc_opt_class()) initWithReloadedItems:v6 insertedItems:v8 deletedItems:v10];

  return v12;
}

- (MapsUIDiffableDataSourceSnapshotDifference)initWithReloadedItems:(id)items insertedItems:(id)insertedItems deletedItems:(id)deletedItems
{
  itemsCopy = items;
  insertedItemsCopy = insertedItems;
  deletedItemsCopy = deletedItems;
  v19.receiver = self;
  v19.super_class = MapsUIDiffableDataSourceSnapshotDifference;
  v11 = [(MapsUIDiffableDataSourceSnapshotDifference *)&v19 init];
  if (v11)
  {
    v12 = [itemsCopy copy];
    reloadedItems = v11->_reloadedItems;
    v11->_reloadedItems = v12;

    v14 = [insertedItemsCopy copy];
    insertedItems = v11->_insertedItems;
    v11->_insertedItems = v14;

    v16 = [deletedItemsCopy copy];
    deletedItems = v11->_deletedItems;
    v11->_deletedItems = v16;
  }

  return v11;
}

@end