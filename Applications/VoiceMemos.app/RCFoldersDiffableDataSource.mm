@interface RCFoldersDiffableDataSource
- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path;
- (RCFolderSelectionDelegate)selectionDelegate;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
@end

@implementation RCFoldersDiffableDataSource

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v10 = [kindCopy isEqualToString:UICollectionElementKindSectionHeader];
  v11 = [kindCopy isEqualToString:@"kFolderCollectionElementKindSectionSpacer"];
  if ((v10 & 1) == 0 && (v11 & 1) == 0)
  {
    v12 = OSLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1001BA4F0(kindCopy, v12);
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

  v14 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v13 forIndexPath:pathCopy];

  return v14;
}

- (BOOL)collectionView:(id)view canMoveItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(RCFoldersDiffableDataSource *)self supportsMove])
  {
    v6 = [pathCopy section] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  foldersController = [(RCFoldersDiffableDataSource *)self foldersController];
  v11 = [foldersController folderAtIndexPath:pathCopy];

  [(RCFoldersDiffableDataSource *)self setIsDuringMove:1];
  selectionDelegate = [(RCFoldersDiffableDataSource *)self selectionDelegate];
  [selectionDelegate moveFolder:v11 toDestinationIndexPath:indexPathCopy];

  [(RCFoldersDiffableDataSource *)self setIsDuringMove:0];
}

- (RCFolderSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end