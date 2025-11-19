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
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)collectionViewIfLoaded;
- (id)createNewFolderItem;
- (id)currentActiveFolderViewController;
- (int64_t)_folderTypeAtIndexPath:(id)a3;
- (int64_t)_layoutListAppearance;
- (unint64_t)_countOfRecordingsInUserFolderNamed:(id)a3;
- (unint64_t)_countOfUserFolders;
- (unint64_t)_folderCount;
- (void)_configureCell:(id)a3 withFolderDisplayModel:(id)a4;
- (void)_handleNewFolder;
- (void)_restyleAllExtantCells;
- (void)_setupControllerAndDelegation;
- (void)_styleView;
- (void)_toggleFoldersEdit;
- (void)_updateEditButtonStateAndExitEditingIfNeeded;
- (void)controller:(id)a3 didChangeContentWithSnapshot:(id)a4;
- (void)loadView;
- (void)restyle;
- (void)setSelectionDelegate:(id)a3;
- (void)setupAppIntentsDataSource;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RCFoldersCollectionViewController

- (RCFoldersCollectionViewController)init
{
  v3 = [(RCFoldersCollectionViewController *)self _createCollectionViewLayout];
  v6.receiver = self;
  v6.super_class = RCFoldersCollectionViewController;
  v4 = [(RCFoldersCollectionViewController *)&v6 initWithCollectionViewLayout:v3];

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
  v4 = [WeakRetained isInactive];

  if (v4)
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
    v3 = [(RCFoldersCollectionViewController *)self collectionView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RCFolderSelectionDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (void)setSelectionDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_selectionDelegate, v4);
  v5 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  [v5 setSelectionDelegate:v4];
}

- (void)loadView
{
  v19.receiver = self;
  v19.super_class = RCFoldersCollectionViewController;
  [(RCFoldersCollectionViewController *)&v19 loadView];
  [(RCFoldersCollectionViewController *)self _setupControllerAndDelegation];
  objc_initWeak(&location, self);
  v3 = [RCFoldersDiffableDataSource alloc];
  v4 = [(RCFoldersCollectionViewController *)self collectionView];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000966DC;
  v16 = &unk_10028BEF8;
  objc_copyWeak(&v17, &location);
  v5 = [(RCFoldersDiffableDataSource *)v3 initWithCollectionView:v4 cellProvider:&v13];

  [(RCFoldersCollectionViewController *)self setDiffableDataSource:v5, v13, v14, v15, v16];
  v6 = +[NSHashTable weakObjectsHashTable];
  [(RCFoldersCollectionViewController *)self setCellsHashTable:v6];

  v7 = [(RCFoldersCollectionViewController *)self foldersController];
  [(RCFoldersDiffableDataSource *)v5 setFoldersController:v7];

  v8 = [(RCFoldersCollectionViewController *)self selectionDelegate];
  [(RCFoldersDiffableDataSource *)v5 setSelectionDelegate:v8];

  v9 = [(RCFoldersCollectionViewController *)self collectionView];
  [v9 setDataSource:v5];

  v10 = [(RCFoldersCollectionViewController *)self _selectionFollowsFocus];
  v11 = [(RCFoldersCollectionViewController *)self collectionView];
  [v11 setSelectionFollowsFocus:v10];

  [(RCFoldersCollectionViewController *)self _classSpecificLoadView];
  v12 = [(RCFoldersCollectionViewController *)self collectionView];
  [v12 setAccessibilityIdentifier:@"FoldersList"];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_setupControllerAndDelegation
{
  if (!self->_foldersController)
  {
    v5 = +[RCApplicationModel sharedApplicationModel];
    v3 = [v5 foldersController];
    foldersController = self->_foldersController;
    self->_foldersController = v3;

    [(RCFoldersFetchedResultsController *)self->_foldersController addContentObserver:self];
  }
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = RCFoldersCollectionViewController;
  [(RCFoldersCollectionViewController *)&v8 viewDidLoad];
  v3 = [(RCFoldersCollectionViewController *)self collectionView];
  [v3 registerClass:-[RCFoldersCollectionViewController _collectionViewCellClass](self forCellWithReuseIdentifier:{"_collectionViewCellClass"), @"kFolderCellReuseIdentifier"}];
  [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"kFolderHeaderCellReuseIdentifier"];
  [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kFolderCollectionElementKindSectionSpacer" withReuseIdentifier:@"kFolderSpacerCellReuseIdentifier"];
  [(RCFoldersCollectionViewController *)self setupAppIntentsDataSource];
  v4 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  v5 = [(RCFoldersFetchedResultsController *)self->_foldersController currentSnapshot];
  [v4 applySnapshot:v5 animatingDifferences:0];

  v6 = [(RCFoldersCollectionViewController *)self editButtonItem];
  v7 = [(RCFoldersCollectionViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = RCFoldersCollectionViewController;
  [(RCFoldersCollectionViewController *)&v17 viewWillAppear:a3];
  v4 = [(RCFoldersCollectionViewController *)self editButtonItem];
  [v4 setAction:"_toggleFoldersEdit"];

  v5 = [(RCFoldersCollectionViewController *)self createNewFolderItem];
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v6 showsEditAndNewFolderButtonsTogether])
  {
    v7 = [(RCFoldersCollectionViewController *)self editButtonItem];
    v19[0] = v7;
    v19[1] = v5;
    v8 = [NSArray arrayWithObjects:v19 count:2];
    v9 = [(RCFoldersCollectionViewController *)self parentViewController];
    v10 = [v9 navigationItem];
    [v10 setRightBarButtonItems:v8];
  }

  else
  {
    if ([v6 showsEditButtonInFoldersListView])
    {
      v11 = [(RCFoldersCollectionViewController *)self editButtonItem];
      v12 = [(RCFoldersCollectionViewController *)self parentViewController];
      v13 = [v12 navigationItem];
      [v13 setLeftBarButtonItem:v11];
    }

    v18 = v5;
    v7 = [NSArray arrayWithObjects:&v18 count:1];
    v8 = [(RCFoldersCollectionViewController *)self parentViewController];
    v9 = [v8 navigationItem];
    [v9 setRightBarButtonItems:v7];
  }

  v14 = [(RCFoldersCollectionViewController *)self collectionView];
  v15 = [v14 indexPathForSelectedItem];

  if (v15)
  {
    v16 = [(RCFoldersCollectionViewController *)self collectionView];
    [v16 deselectItemAtIndexPath:v15 animated:0];
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
  v3 = [(RCFoldersCollectionViewController *)self _countOfUserFolders];
  v4 = [(RCFoldersCollectionViewController *)self editButtonItem];
  [v4 setEnabled:v3 != 0];

  if (!v3 && [(RCFoldersCollectionViewController *)self isEditing])
  {

    [(RCFoldersCollectionViewController *)self setEditing:0 animated:1];
  }
}

- (void)_handleNewFolder
{
  v3 = [(RCFoldersCollectionViewController *)self selectionDelegate];
  [v3 showNewFolderUIFromController:self];
}

- (id)createNewFolderItem
{
  v3 = +[RCRecorderStyleProvider sharedStyleProvider];
  v4 = [v3 createNewFolderImage];

  v5 = [[UIBarButtonItem alloc] initWithImage:v4 style:0 target:self action:"_handleNewFolder"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"NEW_FOLDER_MENU_ITEM" value:&stru_100295BB8 table:0];
  [v5 setTitle:v7];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"AX_NEW_FOLDER" value:&stru_100295BB8 table:0];
  [v5 setAccessibilityLabel:v9];

  [v5 setAccessibilityIdentifier:@"BrowseFoldersView/NewFolderButton"];

  return v5;
}

- (int64_t)_folderTypeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RCFoldersCollectionViewController *)self foldersController];
  v6 = [v5 folderAtIndexPath:v4];

  v7 = [v6 folderType];
  return v7;
}

- (void)_configureCell:(id)a3 withFolderDisplayModel:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 displayName];
  v8 = [v6 recordingsCount];
  v9 = [v6 iconImage];
  v10 = [v6 UUID];
  [v12 configureWithFolderName:v7 recordingsCount:v8 iconImage:v9 UUID:v10 folderType:{objc_msgSend(v6, "folderType")}];

  if ([(RCFoldersCollectionViewController *)self isEditing])
  {
    v11 = [v6 folderType] == 4;
  }

  else
  {
    v11 = 1;
  }

  [v12 setEnabled:v11];
}

- (unint64_t)_countOfUserFolders
{
  v2 = [(RCFoldersCollectionViewController *)self foldersController];
  v3 = [v2 userFolders];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)_countOfRecordingsInUserFolderNamed:(id)a3
{
  v3 = a3;
  v4 = +[RCApplicationModel sharedApplicationModel];
  v5 = [v4 folderWithName:v3];

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

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v6 = a6;
  if ([v6 section] == 1)
  {
    v7 = v6;
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

- (void)controller:(id)a3 didChangeContentWithSnapshot:(id)a4
{
  v30 = a4;
  v5 = [(RCFoldersCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v7 = [v6 firstObject];

  if (v7)
  {
    goto LABEL_2;
  }

  v10 = [(RCFoldersCollectionViewController *)self collectionView];
  v11 = [v10 isEditing];

  if (v11)
  {
    v7 = [(RCFoldersCollectionViewController *)self indexPathOfSelectionDuringEditing];
    if (v7)
    {
LABEL_2:
      v8 = [(RCFoldersCollectionViewController *)self diffableDataSource];
      v9 = [v8 itemIdentifierForIndexPath:v7];

      goto LABEL_7;
    }

    v9 = 0;
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

LABEL_7:
  v12 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  v13 = [v12 snapshot];

  v14 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  v15 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  [v14 applySnapshot:v30 animatingDifferences:{objc_msgSend(v15, "isDuringMove") ^ 1}];

  v16 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  v17 = [v16 snapshot];
  v18 = [v17 numberOfItems];
  if (v18 != [v13 numberOfItems])
  {

LABEL_13:
    if (!v9)
    {
      goto LABEL_24;
    }

    v23 = [(RCFoldersCollectionViewController *)self _builtInSectionIdentifier];
    v26 = [v13 numberOfItemsInSection:v23];
    v27 = [v30 numberOfItemsInSection:v23];
    v25 = [(RCFoldersCollectionViewController *)self _userFolderSectionIdentifier];
    if ([v13 indexOfSectionIdentifier:v25] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = 0;
    }

    else
    {
      v29 = [v13 numberOfItemsInSection:v25];
      if ([v30 indexOfSectionIdentifier:v25] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      v28 = v29 > [v30 numberOfItemsInSection:v25];
    }

    if (v26 <= v27 && !v28)
    {
LABEL_22:

      goto LABEL_23;
    }

LABEL_20:
    if ([v30 indexOfItemIdentifier:v9] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(RCFoldersCollectionViewController *)self handleFolderDeletion];
    }

    goto LABEL_22;
  }

  v19 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  v20 = [v19 snapshot];
  v21 = [v20 numberOfSections];
  v22 = [v13 numberOfSections];

  if (v21 != v22)
  {
    goto LABEL_13;
  }

  v23 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  if ([v23 isDuringMove])
  {
    v24 = [(RCFoldersCollectionViewController *)self indexPathOfSelectionDuringEditing];

    if (!v24)
    {
      goto LABEL_24;
    }

    v23 = [(RCFoldersCollectionViewController *)self diffableDataSource];
    v25 = [v23 indexPathForItemIdentifier:v9];
    [(RCFoldersCollectionViewController *)self setIndexPathOfSelectionDuringEditing:v25];
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  [(RCFoldersCollectionViewController *)self _updateEditButtonStateAndExitEditingIfNeeded];
}

- (unint64_t)_folderCount
{
  v3 = [(RCFoldersCollectionViewController *)self foldersController];
  v4 = [v3 builtinFolders];
  v5 = [v4 count];

  v6 = [(RCFoldersCollectionViewController *)self foldersController];
  v7 = [v6 userFolders];
  v8 = [v7 count];

  return v5 + v8;
}

- (void)restyle
{
  [(RCFoldersCollectionViewController *)self _styleView];
  v3 = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  [v3 restyle];
}

- (void)_styleView
{
  [(RCFoldersCollectionViewController *)self _restyleAllExtantCells];
  v3 = [(RCFoldersCollectionViewController *)self _selectionFollowsFocus];
  v4 = [(RCFoldersCollectionViewController *)self collectionView];
  [v4 setSelectionFollowsFocus:v3];
}

- (void)_restyleAllExtantCells
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(RCFoldersCollectionViewController *)self cellsHashTable];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 conformsToProtocol:&OBJC_PROTOCOL___RCRestylableProtocol])
        {
          [v7 restyle];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)_showsSeparators
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 sidebarCollectionViewShowsSeparators];

  return v3;
}

- (int64_t)_layoutListAppearance
{
  v2 = +[RCRecorderStyleProvider sharedStyleProvider];
  v3 = [v2 sidebarCollectionViewListAppearance];

  return v3;
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
  v3 = [v2 sidebarSelectionFollowsFocus];

  return v3;
}

- (RCFolderViewController)currentFolderViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFolderViewController);

  return WeakRetained;
}

- (void)setupAppIntentsDataSource
{
  v4 = self;
  v2 = [(RCFoldersCollectionViewController *)v4 collectionView];
  if (v2)
  {
    v3 = v2;
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