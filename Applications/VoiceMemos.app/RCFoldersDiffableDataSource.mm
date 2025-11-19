@interface RCFoldersDiffableDataSource
- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4;
- (RCFolderSelectionDelegate)selectionDelegate;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
@end

@implementation RCFoldersDiffableDataSource

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 isEqualToString:UICollectionElementKindSectionHeader];
  v11 = [v8 isEqualToString:@"kFolderCollectionElementKindSectionSpacer"];
  if ((v10 & 1) == 0 && (v11 & 1) == 0)
  {
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA4F0(v8, v12);
    }
  }

  if (v10)
  {
    v13 = @"kFolderHeaderCellReuseIdentifier";
  }

  else
  {
    v13 = @"kFolderSpacerCellReuseIdentifier";
  }

  v14 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v13 forIndexPath:v9];

  return v14;
}

- (BOOL)collectionView:(id)a3 canMoveItemAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(RCFoldersDiffableDataSource *)self supportsMove])
  {
    v6 = [v5 section] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(RCFoldersDiffableDataSource *)self foldersController];
  v11 = [v9 folderAtIndexPath:v8];

  [(RCFoldersDiffableDataSource *)self setIsDuringMove:1];
  v10 = [(RCFoldersDiffableDataSource *)self selectionDelegate];
  [v10 moveFolder:v11 toDestinationIndexPath:v7];

  [(RCFoldersDiffableDataSource *)self setIsDuringMove:0];
}

- (RCFolderSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end