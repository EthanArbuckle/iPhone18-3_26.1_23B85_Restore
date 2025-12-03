@interface RCFolderSelectionCollectionViewController
- (BOOL)_showsSeparators;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (RCFolderSelectionPresenting)presentingDelegate;
- (double)_builtInFolderSectionTopPadding;
- (id)selectionDelegate;
- (int64_t)_layoutListAppearance;
- (void)_classSpecificLoadView;
- (void)_configureCell:(id)cell withFolderDisplayModel:(id)model;
- (void)_handleCancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation RCFolderSelectionCollectionViewController

- (void)_classSpecificLoadView
{
  diffableDataSource = [(RCFoldersCollectionViewController *)self diffableDataSource];
  [diffableDataSource setSupportsMove:0];

  selectionDelegate = [(RCFolderSelectionCollectionViewController *)self selectionDelegate];
  uuidsToMove = [(RCFolderSelectionCollectionViewController *)self uuidsToMove];
  v5 = [selectionDelegate folderUUIDsToExcludeWhenMovingRecordingUUIDs:uuidsToMove];
  excludedFolderUUIDsForMove = self->_excludedFolderUUIDsForMove;
  self->_excludedFolderUUIDsForMove = v5;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  v7 = [foldersController folderAtIndexPath:pathCopy];

  v8 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v7];
  selectionDelegate = [(RCFolderSelectionCollectionViewController *)self selectionDelegate];
  uuidOfSourceFolder = [(RCFolderSelectionCollectionViewController *)self uuidOfSourceFolder];
  LOBYTE(self) = [selectionDelegate canMoveSelectedRecordingsFromFolderWithUUID:uuidOfSourceFolder toFolderWithDisplayModel:v8 excludedFolderUUIDsForSelection:self->_excludedFolderUUIDsForMove];

  return self;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  v7 = [foldersController folderAtIndexPath:pathCopy];

  v8 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v7];
  selectionDelegate = [(RCFolderSelectionCollectionViewController *)self selectionDelegate];
  uuidOfSourceFolder = [(RCFolderSelectionCollectionViewController *)self uuidOfSourceFolder];
  LOBYTE(self) = [selectionDelegate canMoveSelectedRecordingsFromFolderWithUUID:uuidOfSourceFolder toFolderWithDisplayModel:v8 excludedFolderUUIDsForSelection:self->_excludedFolderUUIDsForMove];

  return self;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  v14 = [foldersController folderAtIndexPath:pathCopy];

  folderType = [v14 folderType];
  selectionDelegate = [(RCFolderSelectionCollectionViewController *)self selectionDelegate];
  uuidsToMove = [(RCFolderSelectionCollectionViewController *)self uuidsToMove];
  if (folderType == 4)
  {
    uuid = [v14 uuid];
    [selectionDelegate moveRecordingsWithUUIDs:uuidsToMove toFolderWithUUID:uuid];
  }

  else
  {
    [selectionDelegate moveRecordingsWithUUIDs:uuidsToMove fromFolderOfType:-[RCFolderSelectionCollectionViewController folderTypeOfSourceFolder](self toBuiltInFolderOfType:{"folderTypeOfSourceFolder"), folderType}];
  }

  presentingDelegate = [(RCFolderSelectionCollectionViewController *)self presentingDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    presentingDelegate2 = [(RCFolderSelectionCollectionViewController *)self presentingDelegate];
    [presentingDelegate2 didCompleteFolderSelection];
  }
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = RCFolderSelectionCollectionViewController;
  [(RCFoldersCollectionViewController *)&v16 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"SELECT_A_FOLDER" value:&stru_100295BB8 table:0];
  navigationItem = [(RCFolderSelectionCollectionViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_handleCancel"];
  navigationItem2 = [(RCFolderSelectionCollectionViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v6];

  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  navigationController = [(RCFolderSelectionCollectionViewController *)self navigationController];
  [navigationController setToolbarHidden:0];

  createNewFolderImage = [v8 createNewFolderImage];
  v11 = [[UIBarButtonItem alloc] initWithImage:createNewFolderImage style:0 target:self action:"_handleNewFolder"];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"AX_NEW_FOLDER" value:&stru_100295BB8 table:0];
  [v11 setAccessibilityLabel:v13];

  v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:self action:0];
  v17[0] = v14;
  v17[1] = v11;
  v15 = [NSArray arrayWithObjects:v17 count:2];
  [(RCFolderSelectionCollectionViewController *)self setToolbarItems:v15 animated:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = RCFolderSelectionCollectionViewController;
  [(RCFolderSelectionCollectionViewController *)&v15 viewDidAppear:appear];
  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  builtinFolders = [foldersController builtinFolders];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = builtinFolders;
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

  _countOfUserFolders = [(RCFoldersCollectionViewController *)self _countOfUserFolders];
  if ((v7 & 1) == 0 && !_countOfUserFolders)
  {
    [(RCFoldersCollectionViewController *)self _handleNewFolder];
  }
}

- (void)_handleCancel
{
  presentingDelegate = [(RCFolderSelectionCollectionViewController *)self presentingDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    presentingDelegate2 = [(RCFolderSelectionCollectionViewController *)self presentingDelegate];
    [presentingDelegate2 didCancelFolderSelection];
  }
}

- (void)_configureCell:(id)cell withFolderDisplayModel:(id)model
{
  cellCopy = cell;
  v13.receiver = self;
  v13.super_class = RCFolderSelectionCollectionViewController;
  modelCopy = model;
  [(RCFoldersCollectionViewController *)&v13 _configureCell:cellCopy withFolderDisplayModel:modelCopy];
  v8 = [(RCFolderSelectionCollectionViewController *)self selectionDelegate:v13.receiver];
  uuidOfSourceFolder = [(RCFolderSelectionCollectionViewController *)self uuidOfSourceFolder];
  v10 = [v8 canMoveSelectedRecordingsFromFolderWithUUID:uuidOfSourceFolder toFolderWithDisplayModel:modelCopy excludedFolderUUIDsForSelection:self->_excludedFolderUUIDsForMove];

  [cellCopy setEnabled:v10];
  if (v10)
  {
    [cellCopy setAccessibilityValue:&stru_100295BB8];
  }

  else
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"AX_CELL_DIMMED_VALUE" value:&stru_100295BB8 table:0];
    [cellCopy setAccessibilityValue:v12];
  }
}

- (BOOL)_showsSeparators
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  folderSelectionCollectionViewShowsSeparators = [v2 folderSelectionCollectionViewShowsSeparators];

  return folderSelectionCollectionViewShowsSeparators;
}

- (int64_t)_layoutListAppearance
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  folderSelectionCollectionViewListAppearance = [v2 folderSelectionCollectionViewListAppearance];

  return folderSelectionCollectionViewListAppearance;
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