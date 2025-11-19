@interface MapsUIDiffableDataSourceSnapshotDifference
- (MapsUIDiffableDataSourceSnapshotDifference)initWithReloadedItems:(id)a3 insertedItems:(id)a4 deletedItems:(id)a5;
- (id)differenceUnionWithDifference:(id)a3;
@end

@implementation MapsUIDiffableDataSourceSnapshotDifference

- (id)differenceUnionWithDifference:(id)a3
{
  reloadedItems = self->_reloadedItems;
  v5 = a3;
  v6 = [NSMutableArray arrayWithArray:reloadedItems];
  v7 = [v5 reloadedItems];
  [v6 addObjectsFromArray:v7];

  v8 = [NSMutableArray arrayWithArray:self->_insertedItems];
  v9 = [v5 insertedItems];
  [v8 addObjectsFromArray:v9];

  v10 = [NSMutableArray arrayWithArray:self->_deletedItems];
  v11 = [v5 deletedItems];

  [v10 addObjectsFromArray:v11];
  v12 = [objc_alloc(objc_opt_class()) initWithReloadedItems:v6 insertedItems:v8 deletedItems:v10];

  return v12;
}

- (MapsUIDiffableDataSourceSnapshotDifference)initWithReloadedItems:(id)a3 insertedItems:(id)a4 deletedItems:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MapsUIDiffableDataSourceSnapshotDifference;
  v11 = [(MapsUIDiffableDataSourceSnapshotDifference *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    reloadedItems = v11->_reloadedItems;
    v11->_reloadedItems = v12;

    v14 = [v9 copy];
    insertedItems = v11->_insertedItems;
    v11->_insertedItems = v14;

    v16 = [v10 copy];
    deletedItems = v11->_deletedItems;
    v11->_deletedItems = v16;
  }

  return v11;
}

@end