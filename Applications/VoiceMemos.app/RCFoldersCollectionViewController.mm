@interface RCFoldersCollectionViewController
- (BOOL)_selectionFollowsFocus;
- (BOOL)_showsSeparators;
- (Class)_collectionViewCellClass;
- (RCFolderSelectionDelegate)selectionDelegate;
- (RCFolderViewController)currentFolderViewController;
- (RCFoldersCollectionViewController)init;
- (double)_builtInFolderSectionTopPadding;
- (id)_createCollectionViewLayout;
- (id)_trailingSwipeActionsConfigurationProvider;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)collectionViewIfLoaded;
- (id)createNewFolderItem;
- (id)currentActiveFolderViewController;
- (int64_t)_folderTypeAtIndexPath:(id)path;
- (int64_t)_layoutListAppearance;
- (unint64_t)_countOfRecordingsInUserFolderNamed:(id)named;
- (unint64_t)_countOfUserFolders;
- (unint64_t)_folderCount;
- (void)_configureCell:(id)cell withFolderDisplayModel:(id)model;
- (void)_handleNewFolder;
- (void)_restyleAllExtantCells;
- (void)_setupControllerAndDelegation;
- (void)_styleView;
- (void)_toggleFoldersEdit;
- (void)_updateEditButtonStateAndExitEditingIfNeeded;
- (void)controller:(id)controller didChangeContentWithSnapshot:(id)snapshot;
- (void)loadView;
- (void)restyle;
- (void)setSelectionDelegate:(id)delegate;
- (void)setupAppIntentsDataSource;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RCFoldersCollectionViewController

- (RCFoldersCollectionViewController)init
{
  _createCollectionViewLayout = [(RCFoldersCollectionViewController *)self _createCollectionViewLayout];
  v6.receiver = self;
  v6.super_class = RCFoldersCollectionViewController;
  v4 = [(RCFoldersCollectionViewController *)&v6 initWithCollectionViewLayout:_createCollectionViewLayout];

  return v4;
}

- (id)_createCollectionViewLayout
{
  objc_initWeak(&location, self);
  v2 = [UICollectionViewCompositionalLayout alloc];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100096920;
  v5[3] = &unk_10028AA78;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (id)currentActiveFolderViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFolderViewController);
  isInactive = [WeakRetained isInactive];

  if (isInactive)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_currentFolderViewController);
  }

  return v5;
}

- (id)collectionViewIfLoaded
{
  if ([(RCFoldersCollectionViewController *)self isViewLoaded])
  {
    collectionView = [(RCFoldersCollectionViewController *)self collectionView];
  }

  else
  {
    collectionView = 0;
  }

  return collectionView;
}

- (RCFolderSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (void)setSelectionDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_selectionDelegate, delegateCopy);
  diffableDataSource = [(RCFoldersCollectionViewController *)self diffableDataSource];
  [diffableDataSource setSelectionDelegate:delegateCopy];
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = RCFoldersCollectionViewController;
  [(RCFoldersCollectionViewController *)&v19 loadView];
  [(RCFoldersCollectionViewController *)self _setupControllerAndDelegation];
  objc_initWeak(&location, self);
  v3 = [RCFoldersDiffableDataSource alloc];
  collectionView = [(RCFoldersCollectionViewController *)self collectionView];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000966DC;
  v16 = &unk_10028BEF8;
  objc_copyWeak(&v17, &location);
  v5 = [(RCFoldersDiffableDataSource *)v3 initWithCollectionView:collectionView cellProvider:&v13];

  [(RCFoldersCollectionViewController *)self setDiffableDataSource:v5, v13, v14, v15, v16];
  v6 = +[NSHashTable weakObjectsHashTable];
  [(RCFoldersCollectionViewController *)self setCellsHashTable:v6];

  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  [(RCFoldersDiffableDataSource *)v5 setFoldersController:foldersController];

  selectionDelegate = [(RCFoldersCollectionViewController *)self selectionDelegate];
  [(RCFoldersDiffableDataSource *)v5 setSelectionDelegate:selectionDelegate];

  collectionView2 = [(RCFoldersCollectionViewController *)self collectionView];
  [collectionView2 setDataSource:v5];

  _selectionFollowsFocus = [(RCFoldersCollectionViewController *)self _selectionFollowsFocus];
  collectionView3 = [(RCFoldersCollectionViewController *)self collectionView];
  [collectionView3 setSelectionFollowsFocus:_selectionFollowsFocus];

  [(RCFoldersCollectionViewController *)self _classSpecificLoadView];
  collectionView4 = [(RCFoldersCollectionViewController *)self collectionView];
  [collectionView4 setAccessibilityIdentifier:@"FoldersList"];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_setupControllerAndDelegation
{
  if (!self->_foldersController)
  {
    v5 = +[RCApplicationModel sharedApplicationModel];
    foldersController = [v5 foldersController];
    foldersController = self->_foldersController;
    self->_foldersController = foldersController;

    [(RCFoldersFetchedResultsController *)self->_foldersController addContentObserver:self];
  }
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = RCFoldersCollectionViewController;
  [(RCFoldersCollectionViewController *)&v8 viewDidLoad];
  collectionView = [(RCFoldersCollectionViewController *)self collectionView];
  [collectionView registerClass:-[RCFoldersCollectionViewController _collectionViewCellClass](self forCellWithReuseIdentifier:{"_collectionViewCellClass"), @"kFolderCellReuseIdentifier"}];
  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"kFolderHeaderCellReuseIdentifier"];
  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kFolderCollectionElementKindSectionSpacer" withReuseIdentifier:@"kFolderSpacerCellReuseIdentifier"];
  [(RCFoldersCollectionViewController *)self setupAppIntentsDataSource];
  diffableDataSource = [(RCFoldersCollectionViewController *)self diffableDataSource];
  currentSnapshot = [(RCFoldersFetchedResultsController *)self->_foldersController currentSnapshot];
  [diffableDataSource applySnapshot:currentSnapshot animatingDifferences:0];

  editButtonItem = [(RCFoldersCollectionViewController *)self editButtonItem];
  navigationItem = [(RCFoldersCollectionViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:editButtonItem];
}

- (void)viewWillAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = RCFoldersCollectionViewController;
  [(RCFoldersCollectionViewController *)&v17 viewWillAppear:appear];
  editButtonItem = [(RCFoldersCollectionViewController *)self editButtonItem];
  [editButtonItem setAction:"_toggleFoldersEdit"];

  createNewFolderItem = [(RCFoldersCollectionViewController *)self createNewFolderItem];
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v6 showsEditAndNewFolderButtonsTogether])
  {
    editButtonItem2 = [(RCFoldersCollectionViewController *)self editButtonItem];
    v19[0] = editButtonItem2;
    v19[1] = createNewFolderItem;
    parentViewController3 = [NSArray arrayWithObjects:v19 count:2];
    parentViewController = [(RCFoldersCollectionViewController *)self parentViewController];
    navigationItem = [parentViewController navigationItem];
    [navigationItem setRightBarButtonItems:parentViewController3];
  }

  else
  {
    if ([v6 showsEditButtonInFoldersListView])
    {
      editButtonItem3 = [(RCFoldersCollectionViewController *)self editButtonItem];
      parentViewController2 = [(RCFoldersCollectionViewController *)self parentViewController];
      navigationItem2 = [parentViewController2 navigationItem];
      [navigationItem2 setLeftBarButtonItem:editButtonItem3];
    }

    v18 = createNewFolderItem;
    editButtonItem2 = [NSArray arrayWithObjects:&v18 count:1];
    parentViewController3 = [(RCFoldersCollectionViewController *)self parentViewController];
    parentViewController = [parentViewController3 navigationItem];
    [parentViewController setRightBarButtonItems:editButtonItem2];
  }

  collectionView = [(RCFoldersCollectionViewController *)self collectionView];
  indexPathForSelectedItem = [collectionView indexPathForSelectedItem];

  if (indexPathForSelectedItem)
  {
    collectionView2 = [(RCFoldersCollectionViewController *)self collectionView];
    [collectionView2 deselectItemAtIndexPath:indexPathForSelectedItem animated:0];
  }

  [(RCFoldersCollectionViewController *)self _styleView];
  [(RCFoldersCollectionViewController *)self _updateEditButtonStateAndExitEditingIfNeeded];
}

- (void)_toggleFoldersEdit
{
  v3 = [(RCFoldersCollectionViewController *)self isEditing]^ 1;

  [(RCFoldersCollectionViewController *)self setEditing:v3 animated:1];
}

- (void)_updateEditButtonStateAndExitEditingIfNeeded
{
  _countOfUserFolders = [(RCFoldersCollectionViewController *)self _countOfUserFolders];
  editButtonItem = [(RCFoldersCollectionViewController *)self editButtonItem];
  [editButtonItem setEnabled:_countOfUserFolders != 0];

  if (!_countOfUserFolders && [(RCFoldersCollectionViewController *)self isEditing])
  {

    [(RCFoldersCollectionViewController *)self setEditing:0 animated:1];
  }
}

- (void)_handleNewFolder
{
  selectionDelegate = [(RCFoldersCollectionViewController *)self selectionDelegate];
  [selectionDelegate showNewFolderUIFromController:self];
}

- (id)createNewFolderItem
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  createNewFolderImage = [v3 createNewFolderImage];

  v5 = [[UIBarButtonItem alloc] initWithImage:createNewFolderImage style:0 target:self action:"_handleNewFolder"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"NEW_FOLDER_MENU_ITEM" value:&stru_100295BB8 table:0];
  [v5 setTitle:v7];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"AX_NEW_FOLDER" value:&stru_100295BB8 table:0];
  [v5 setAccessibilityLabel:v9];

  [v5 setAccessibilityIdentifier:@"BrowseFoldersView/NewFolderButton"];

  return v5;
}

- (int64_t)_folderTypeAtIndexPath:(id)path
{
  pathCopy = path;
  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  v6 = [foldersController folderAtIndexPath:pathCopy];

  folderType = [v6 folderType];
  return folderType;
}

- (void)_configureCell:(id)cell withFolderDisplayModel:(id)model
{
  cellCopy = cell;
  modelCopy = model;
  displayName = [modelCopy displayName];
  recordingsCount = [modelCopy recordingsCount];
  iconImage = [modelCopy iconImage];
  uUID = [modelCopy UUID];
  [cellCopy configureWithFolderName:displayName recordingsCount:recordingsCount iconImage:iconImage UUID:uUID folderType:{objc_msgSend(modelCopy, "folderType")}];

  if ([(RCFoldersCollectionViewController *)self isEditing])
  {
    v11 = [modelCopy folderType] == 4;
  }

  else
  {
    v11 = 1;
  }

  [cellCopy setEnabled:v11];
}

- (unint64_t)_countOfUserFolders
{
  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  userFolders = [foldersController userFolders];
  v4 = [userFolders count];

  return v4;
}

- (unint64_t)_countOfRecordingsInUserFolderNamed:(id)named
{
  namedCopy = named;
  v4 = +[RCApplicationModel sharedApplicationModel];
  v5 = [v4 folderWithName:namedCopy];

  if (v5)
  {
    v6 = [v4 playableCountForFolder:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_trailingSwipeActionsConfigurationProvider
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000973F0;
  v4[3] = &unk_10028B600;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  proposedIndexPathCopy = proposedIndexPath;
  if ([proposedIndexPathCopy section] == 1)
  {
    v7 = proposedIndexPathCopy;
  }

  else
  {
    v7 = [NSIndexPath indexPathForRow:0 inSection:1];
  }

  v8 = v7;

  return v8;
}

- (Class)_collectionViewCellClass
{
  [(RCFoldersCollectionViewController *)self doesNotRecognizeSelector:a2];

  return objc_opt_class();
}

- (void)controller:(id)controller didChangeContentWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  collectionView = [(RCFoldersCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    goto LABEL_2;
  }

  collectionView2 = [(RCFoldersCollectionViewController *)self collectionView];
  isEditing = [collectionView2 isEditing];

  if (isEditing)
  {
    firstObject = [(RCFoldersCollectionViewController *)self indexPathOfSelectionDuringEditing];
    if (firstObject)
    {
LABEL_2:
      diffableDataSource = [(RCFoldersCollectionViewController *)self diffableDataSource];
      v9 = [diffableDataSource itemIdentifierForIndexPath:firstObject];

      goto LABEL_7;
    }

    v9 = 0;
  }

  else
  {
    v9 = 0;
    firstObject = 0;
  }

LABEL_7:
  diffableDataSource2 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  snapshot = [diffableDataSource2 snapshot];

  diffableDataSource3 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  diffableDataSource4 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  [diffableDataSource3 applySnapshot:snapshotCopy animatingDifferences:{objc_msgSend(diffableDataSource4, "isDuringMove") ^ 1}];

  diffableDataSource5 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  snapshot2 = [diffableDataSource5 snapshot];
  numberOfItems = [snapshot2 numberOfItems];
  if (numberOfItems != [snapshot numberOfItems])
  {

LABEL_13:
    if (!v9)
    {
      goto LABEL_24;
    }

    _builtInSectionIdentifier = [(RCFoldersCollectionViewController *)self _builtInSectionIdentifier];
    v26 = [snapshot numberOfItemsInSection:_builtInSectionIdentifier];
    v27 = [snapshotCopy numberOfItemsInSection:_builtInSectionIdentifier];
    _userFolderSectionIdentifier = [(RCFoldersCollectionViewController *)self _userFolderSectionIdentifier];
    if ([snapshot indexOfSectionIdentifier:_userFolderSectionIdentifier] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = 0;
    }

    else
    {
      v29 = [snapshot numberOfItemsInSection:_userFolderSectionIdentifier];
      if ([snapshotCopy indexOfSectionIdentifier:_userFolderSectionIdentifier] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v28 = v29 > [snapshotCopy numberOfItemsInSection:_userFolderSectionIdentifier];
    }

    if (v26 <= v27 && !v28)
    {
LABEL_22:

      goto LABEL_23;
    }

LABEL_20:
    if ([snapshotCopy indexOfItemIdentifier:v9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(RCFoldersCollectionViewController *)self handleFolderDeletion];
    }

    goto LABEL_22;
  }

  diffableDataSource6 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  snapshot3 = [diffableDataSource6 snapshot];
  numberOfSections = [snapshot3 numberOfSections];
  numberOfSections2 = [snapshot numberOfSections];

  if (numberOfSections != numberOfSections2)
  {
    goto LABEL_13;
  }

  _builtInSectionIdentifier = [(RCFoldersCollectionViewController *)self diffableDataSource];
  if ([_builtInSectionIdentifier isDuringMove])
  {
    indexPathOfSelectionDuringEditing = [(RCFoldersCollectionViewController *)self indexPathOfSelectionDuringEditing];

    if (!indexPathOfSelectionDuringEditing)
    {
      goto LABEL_24;
    }

    _builtInSectionIdentifier = [(RCFoldersCollectionViewController *)self diffableDataSource];
    _userFolderSectionIdentifier = [_builtInSectionIdentifier indexPathForItemIdentifier:v9];
    [(RCFoldersCollectionViewController *)self setIndexPathOfSelectionDuringEditing:_userFolderSectionIdentifier];
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  [(RCFoldersCollectionViewController *)self _updateEditButtonStateAndExitEditingIfNeeded];
}

- (unint64_t)_folderCount
{
  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  builtinFolders = [foldersController builtinFolders];
  v5 = [builtinFolders count];

  foldersController2 = [(RCFoldersCollectionViewController *)self foldersController];
  userFolders = [foldersController2 userFolders];
  v8 = [userFolders count];

  return v5 + v8;
}

- (void)restyle
{
  [(RCFoldersCollectionViewController *)self _styleView];
  currentActiveFolderViewController = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  [currentActiveFolderViewController restyle];
}

- (void)_styleView
{
  [(RCFoldersCollectionViewController *)self _restyleAllExtantCells];
  _selectionFollowsFocus = [(RCFoldersCollectionViewController *)self _selectionFollowsFocus];
  collectionView = [(RCFoldersCollectionViewController *)self collectionView];
  [collectionView setSelectionFollowsFocus:_selectionFollowsFocus];
}

- (void)_restyleAllExtantCells
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  cellsHashTable = [(RCFoldersCollectionViewController *)self cellsHashTable];
  v3 = [cellsHashTable countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(cellsHashTable);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 conformsToProtocol:&OBJC_PROTOCOL___RCRestylableProtocol])
        {
          [v7 restyle];
        }
      }

      v4 = [cellsHashTable countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)_showsSeparators
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  sidebarCollectionViewShowsSeparators = [v2 sidebarCollectionViewShowsSeparators];

  return sidebarCollectionViewShowsSeparators;
}

- (int64_t)_layoutListAppearance
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  sidebarCollectionViewListAppearance = [v2 sidebarCollectionViewListAppearance];

  return sidebarCollectionViewListAppearance;
}

- (double)_builtInFolderSectionTopPadding
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v2 sidebarCollectionViewTopPadding];
  v4 = v3;

  return v4;
}

- (BOOL)_selectionFollowsFocus
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  sidebarSelectionFollowsFocus = [v2 sidebarSelectionFollowsFocus];

  return sidebarSelectionFollowsFocus;
}

- (RCFolderViewController)currentFolderViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFolderViewController);

  return WeakRetained;
}

- (void)setupAppIntentsDataSource
{
  selfCopy = self;
  collectionView = [(RCFoldersCollectionViewController *)selfCopy collectionView];
  if (collectionView)
  {
    v3 = collectionView;
    sub_1001639E4();
    swift_unknownObjectRetain();
    UICollectionView.appIntentsDataSource.setter();
  }

  else
  {
    __break(1u);
  }
}

@end