@interface MapsUIDiffableDataSourceSectionSnapshotUpdateDifference
- (MapsUIDiffableDataSourceSectionSnapshotUpdateDifference)initWithReloadedItems:(id)items insertedItems:(id)insertedItems deletedItems:(id)deletedItems movedItems:(id)movedItems expandedItems:(id)expandedItems collapsedItems:(id)collapsedItems;
@end

@implementation MapsUIDiffableDataSourceSectionSnapshotUpdateDifference

- (MapsUIDiffableDataSourceSectionSnapshotUpdateDifference)initWithReloadedItems:(id)items insertedItems:(id)insertedItems deletedItems:(id)deletedItems movedItems:(id)movedItems expandedItems:(id)expandedItems collapsedItems:(id)collapsedItems
{
  itemsCopy = items;
  insertedItemsCopy = insertedItems;
  deletedItemsCopy = deletedItems;
  movedItemsCopy = movedItems;
  expandedItemsCopy = expandedItems;
  collapsedItemsCopy = collapsedItems;
  v34.receiver = self;
  v34.super_class = MapsUIDiffableDataSourceSectionSnapshotUpdateDifference;
  v20 = [(MapsUIDiffableDataSourceSectionSnapshotUpdateDifference *)&v34 init];
  if (v20)
  {
    v21 = [itemsCopy copy];
    reloadedItems = v20->_reloadedItems;
    v20->_reloadedItems = v21;

    v23 = [insertedItemsCopy copy];
    insertedItems = v20->_insertedItems;
    v20->_insertedItems = v23;

    v25 = [deletedItemsCopy copy];
    deletedItems = v20->_deletedItems;
    v20->_deletedItems = v25;

    v27 = [movedItemsCopy copy];
    movedItems = v20->_movedItems;
    v20->_movedItems = v27;

    v29 = [expandedItemsCopy copy];
    expandedItems = v20->_expandedItems;
    v20->_expandedItems = v29;

    v31 = [collapsedItemsCopy copy];
    collapsedItems = v20->_collapsedItems;
    v20->_collapsedItems = v31;
  }

  return v20;
}

@end