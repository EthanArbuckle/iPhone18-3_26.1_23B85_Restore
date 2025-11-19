@interface MapsUIDiffableDataSourceSectionSnapshotUpdateDifference
- (MapsUIDiffableDataSourceSectionSnapshotUpdateDifference)initWithReloadedItems:(id)a3 insertedItems:(id)a4 deletedItems:(id)a5 movedItems:(id)a6 expandedItems:(id)a7 collapsedItems:(id)a8;
@end

@implementation MapsUIDiffableDataSourceSectionSnapshotUpdateDifference

- (MapsUIDiffableDataSourceSectionSnapshotUpdateDifference)initWithReloadedItems:(id)a3 insertedItems:(id)a4 deletedItems:(id)a5 movedItems:(id)a6 expandedItems:(id)a7 collapsedItems:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = MapsUIDiffableDataSourceSectionSnapshotUpdateDifference;
  v20 = [(MapsUIDiffableDataSourceSectionSnapshotUpdateDifference *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    reloadedItems = v20->_reloadedItems;
    v20->_reloadedItems = v21;

    v23 = [v15 copy];
    insertedItems = v20->_insertedItems;
    v20->_insertedItems = v23;

    v25 = [v16 copy];
    deletedItems = v20->_deletedItems;
    v20->_deletedItems = v25;

    v27 = [v17 copy];
    movedItems = v20->_movedItems;
    v20->_movedItems = v27;

    v29 = [v18 copy];
    expandedItems = v20->_expandedItems;
    v20->_expandedItems = v29;

    v31 = [v19 copy];
    collapsedItems = v20->_collapsedItems;
    v20->_collapsedItems = v31;
  }

  return v20;
}

@end