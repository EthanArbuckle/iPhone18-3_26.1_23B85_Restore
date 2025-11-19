@interface RCFolderSelectionCollectionViewController
- (BOOL)_showsSeparators;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (RCFolderSelectionPresenting)presentingDelegate;
- (double)_builtInFolderSectionTopPadding;
- (id)selectionDelegate;
- (int64_t)_layoutListAppearance;
- (void)_classSpecificLoadView;
- (void)_configureCell:(id)a3 withFolderDisplayModel:(id)a4;
- (void)_handleCancel;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation RCFolderSelectionCollectionViewController

- (void)_classSpecificLoadView
{
  v3 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  [v3 setSupportsMove:0];

  v7 = [(RCFolderSelectionCollectionViewController *)self selectionDelegate];
  v4 = [(RCFolderSelectionCollectionViewController *)self uuidsToMove];
  v5 = [v7 folderUUIDsToExcludeWhenMovingRecordingUUIDs:v4];
  excludedFolderUUIDsForMove = self->_excludedFolderUUIDsForMove;
  self->_excludedFolderUUIDsForMove = v5;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RCFoldersCollectionViewController *)self foldersController];
  v7 = [v6 folderAtIndexPath:v5];

  v8 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v7];
  v9 = [(RCFolderSelectionCollectionViewController *)self selectionDelegate];
  v10 = [(RCFolderSelectionCollectionViewController *)self uuidOfSourceFolder];
  LOBYTE(self) = [v9 canMoveSelectedRecordingsFromFolderWithUUID:v10 toFolderWithDisplayModel:v8 excludedFolderUUIDsForSelection:self->_excludedFolderUUIDsForMove];

  return self;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RCFoldersCollectionViewController *)self foldersController];
  v7 = [v6 folderAtIndexPath:v5];

  v8 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v7];
  v9 = [(RCFolderSelectionCollectionViewController *)self selectionDelegate];
  v10 = [(RCFolderSelectionCollectionViewController *)self uuidOfSourceFolder];
  LOBYTE(self) = [v9 canMoveSelectedRecordingsFromFolderWithUUID:v10 toFolderWithDisplayModel:v8 excludedFolderUUIDsForSelection:self->_excludedFolderUUIDsForMove];

  return self;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RCFoldersCollectionViewController *)self foldersController];
  v14 = [v6 folderAtIndexPath:v5];

  v7 = [v14 folderType];
  v8 = [(RCFolderSelectionCollectionViewController *)self selectionDelegate];
  v9 = [(RCFolderSelectionCollectionViewController *)self uuidsToMove];
  if (v7 == 4)
  {
    v10 = [v14 uuid];
    [v8 moveRecordingsWithUUIDs:v9 toFolderWithUUID:v10];
  }

  else
  {
    [v8 moveRecordingsWithUUIDs:v9 fromFolderOfType:-[RCFolderSelectionCollectionViewController folderTypeOfSourceFolder](self toBuiltInFolderOfType:{"folderTypeOfSourceFolder"), v7}];
  }

  v11 = [(RCFolderSelectionCollectionViewController *)self presentingDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(RCFolderSelectionCollectionViewController *)self presentingDelegate];
    [v13 didCompleteFolderSelection];
  }
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = RCFolderSelectionCollectionViewController;
  [(RCFoldersCollectionViewController *)&v16 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SELECT_A_FOLDER" value:&stru_100295BB8 table:0];
  v5 = [(RCFolderSelectionCollectionViewController *)self navigationItem];
  [v5 setTitle:v4];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_handleCancel"];
  v7 = [(RCFolderSelectionCollectionViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  v9 = [(RCFolderSelectionCollectionViewController *)self navigationController];
  [v9 setToolbarHidden:0];

  v10 = [v8 createNewFolderImage];
  v11 = [[UIBarButtonItem alloc] initWithImage:v10 style:0 target:self action:"_handleNewFolder"];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"AX_NEW_FOLDER" value:&stru_100295BB8 table:0];
  [v11 setAccessibilityLabel:v13];

  v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:self action:0];
  v17[0] = v14;
  v17[1] = v11;
  v15 = [NSArray arrayWithObjects:v17 count:2];
  [(RCFolderSelectionCollectionViewController *)self setToolbarItems:v15 animated:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = RCFolderSelectionCollectionViewController;
  [(RCFolderSelectionCollectionViewController *)&v15 viewDidAppear:a3];
  v4 = [(RCFoldersCollectionViewController *)self foldersController];
  v5 = [v4 builtinFolders];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v11 + 1) + 8 * i) folderType] == 1)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = [(RCFoldersCollectionViewController *)self _countOfUserFolders];
  if ((v7 & 1) == 0 && !v10)
  {
    [(RCFoldersCollectionViewController *)self _handleNewFolder];
  }
}

- (void)_handleCancel
{
  v3 = [(RCFolderSelectionCollectionViewController *)self presentingDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RCFolderSelectionCollectionViewController *)self presentingDelegate];
    [v5 didCancelFolderSelection];
  }
}

- (void)_configureCell:(id)a3 withFolderDisplayModel:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = RCFolderSelectionCollectionViewController;
  v7 = a4;
  [(RCFoldersCollectionViewController *)&v13 _configureCell:v6 withFolderDisplayModel:v7];
  v8 = [(RCFolderSelectionCollectionViewController *)self selectionDelegate:v13.receiver];
  v9 = [(RCFolderSelectionCollectionViewController *)self uuidOfSourceFolder];
  v10 = [v8 canMoveSelectedRecordingsFromFolderWithUUID:v9 toFolderWithDisplayModel:v7 excludedFolderUUIDsForSelection:self->_excludedFolderUUIDsForMove];

  [v6 setEnabled:v10];
  if (v10)
  {
    [v6 setAccessibilityValue:&stru_100295BB8];
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"AX_CELL_DIMMED_VALUE" value:&stru_100295BB8 table:0];
    [v6 setAccessibilityValue:v12];
  }
}

- (BOOL)_showsSeparators
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 folderSelectionCollectionViewShowsSeparators];

  return v3;
}

- (int64_t)_layoutListAppearance
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 folderSelectionCollectionViewListAppearance];

  return v3;
}

- (double)_builtInFolderSectionTopPadding
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v2 folderSelectionCollectionViewTopPadding];
  v4 = v3;

  return v4;
}

- (id)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (RCFolderSelectionPresenting)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

@end