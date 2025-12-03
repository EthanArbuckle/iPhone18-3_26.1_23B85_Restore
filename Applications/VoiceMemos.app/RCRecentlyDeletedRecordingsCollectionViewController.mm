@interface RCRecentlyDeletedRecordingsCollectionViewController
- (BOOL)canDelete;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canPlayRecording;
- (BOOL)canRenameRecording;
- (BOOL)isShowingRecentlyDeleted;
- (RCRecentlyDeletedRecordingsCollectionViewController)init;
- (void)_classSpecificInit;
- (void)_handleDelete:(id)delete;
- (void)contentSizeChanged;
- (void)handleEraseAll:(id)all;
- (void)handleEraseForUUID:(id)d;
- (void)handleRecover:(id)recover;
- (void)handleRecoverForUUID:(id)d;
- (void)renameRecording:(id)recording;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation RCRecentlyDeletedRecordingsCollectionViewController

- (RCRecentlyDeletedRecordingsCollectionViewController)init
{
  _createCollectionViewLayout = [(RCRecordingsCollectionViewController *)self _createCollectionViewLayout];
  v7.receiver = self;
  v7.super_class = RCRecentlyDeletedRecordingsCollectionViewController;
  v4 = [(RCRecordingsCollectionViewController *)&v7 initWithCollectionViewLayout:_createCollectionViewLayout];

  if (v4)
  {
    [(RCRecordingsCollectionViewController *)v4 setFolderType:3];
    v5 = [[RCRecordingsCollectionViewControllerDataCoordinator alloc] initWithFolderType:3 delegate:v4];
    [(RCRecordingsCollectionViewController *)v4 setRecordingsDataCoordinator:v5];

    [(RCRecordingsCollectionViewController *)v4 _commonInit];
    [(RCRecentlyDeletedRecordingsCollectionViewController *)v4 _classSpecificInit];
  }

  return v4;
}

- (void)_classSpecificInit
{
  v3 = [[RCRecordingsCollectionViewControllerDataCoordinator alloc] initWithFolderType:3 delegate:self];
  [(RCRecordingsCollectionViewController *)self setRecordingsDataCoordinator:v3];

  [(RCRecordingsCollectionViewController *)self setReuseIdentifier:@"RecentlyDeletedRecordingCellReuseIdentifier"];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RCRecentlyDeletedRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v5 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)contentSizeChanged
{
  collectionView = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  [collectionView reloadData];

  [(RCRecordingsCollectionViewController *)self restyle];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v9.receiver = self;
  v9.super_class = RCRecentlyDeletedRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v9 setEditing:editing animated:animated];
  navigationItem = [(RCRecentlyDeletedRecordingsCollectionViewController *)self navigationItem];
  [navigationItem setHidesBackButton:editingCopy];

  navigationController = [(RCRecentlyDeletedRecordingsCollectionViewController *)self navigationController];
  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:editingCopy ^ 1];
}

- (void)handleEraseAll:(id)all
{
  allCopy = all;
  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [libraryActionHandler performAction:18 atPosition:0 forUUID:self sourceController:allCopy source:0.0];
}

- (void)handleRecover:(id)recover
{
  recoverCopy = recover;
  collectionView = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v7 = [indexPathsForSelectedItems count];

  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  v9 = libraryActionHandler;
  if (v7)
  {
    v10 = 20;
  }

  else
  {
    v10 = 21;
  }

  [libraryActionHandler performAction:v10 atPosition:0 forUUID:self sourceController:recoverCopy source:0.0];

  [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
}

- (void)_handleDelete:(id)delete
{
  deleteCopy = delete;
  navigationController = [(RCRecentlyDeletedRecordingsCollectionViewController *)self navigationController];
  isToolbarHidden = [navigationController isToolbarHidden];

  v6 = deleteCopy;
  if (!isToolbarHidden)
  {
LABEL_7:
    collectionView = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v15 = [indexPathsForSelectedItems count];

    if (v15)
    {
      v16 = 17;
    }

    else
    {
      v16 = 18;
    }

    libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    [libraryActionHandler performAction:v16 atPosition:0 forUUID:self sourceController:v6 source:0.0];

    [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
    goto LABEL_11;
  }

  collectionView2 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];
  v9 = [indexPathsForSelectedItems2 count];

  v6 = deleteCopy;
  if (v9)
  {
    if (v9 == 1)
    {
      collectionView3 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
      collectionView4 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
      indexPathForSelectedItem = [collectionView4 indexPathForSelectedItem];
      v6 = [collectionView3 cellForItemAtIndexPath:indexPathForSelectedItem];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_7;
  }

LABEL_11:
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if ("delete:" == action)
  {
    return [(RCRecentlyDeletedRecordingsCollectionViewController *)self canDelete];
  }

  else
  {
    return 0;
  }
}

- (BOOL)canDelete
{
  if ([(RCRecordingsCollectionViewController *)self selectedCellIsEditingTitle])
  {
    return 0;
  }

  collectionView = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v3 = [indexPathsForSelectedItems count] != 0;

  return v3;
}

- (BOOL)canRenameRecording
{
  collectionView = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:0];

  if (v4 < 1)
  {
    return 0;
  }

  collectionView2 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  indexPathForSelectedItem = [collectionView2 indexPathForSelectedItem];

  v7 = indexPathForSelectedItem != 0;
  return v7;
}

- (void)renameRecording:(id)recording
{
  collectionView = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v5 = [collectionView numberOfItemsInSection:0];

  if (v5 >= 1)
  {
    collectionView2 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
    indexPathForSelectedItem = [collectionView2 indexPathForSelectedItem];

    collectionView3 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
    v8 = [collectionView3 cellForItemAtIndexPath:indexPathForSelectedItem];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 beginEditingTitle];
      }
    }
  }
}

- (BOOL)canPlayRecording
{
  collectionView = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:0];

  if (v4 < 1)
  {
    return 0;
  }

  collectionView2 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  indexPathForSelectedItem = [collectionView2 indexPathForSelectedItem];

  v7 = indexPathForSelectedItem != 0;
  return v7;
}

- (void)handleRecoverForUUID:(id)d
{
  dCopy = d;
  uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  v6 = [dCopy isEqualToString:uuidOfSelectedItem];

  if (v6)
  {

    [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:0];
  }
}

- (void)handleEraseForUUID:(id)d
{
  dCopy = d;
  uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  v6 = [dCopy isEqualToString:uuidOfSelectedItem];

  if (v6)
  {

    [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:0];
  }
}

- (BOOL)isShowingRecentlyDeleted
{
  selfCopy = self;
  navigationController = [(RCRecentlyDeletedRecordingsCollectionViewController *)self navigationController];
  childViewControllers = [navigationController childViewControllers];
  LOBYTE(selfCopy) = [childViewControllers containsObject:selfCopy];

  return selfCopy;
}

@end