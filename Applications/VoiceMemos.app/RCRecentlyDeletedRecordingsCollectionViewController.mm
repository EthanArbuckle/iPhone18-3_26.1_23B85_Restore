@interface RCRecentlyDeletedRecordingsCollectionViewController
- (BOOL)canDelete;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canPlayRecording;
- (BOOL)canRenameRecording;
- (BOOL)isShowingRecentlyDeleted;
- (RCRecentlyDeletedRecordingsCollectionViewController)init;
- (void)_classSpecificInit;
- (void)_handleDelete:(id)a3;
- (void)contentSizeChanged;
- (void)handleEraseAll:(id)a3;
- (void)handleEraseForUUID:(id)a3;
- (void)handleRecover:(id)a3;
- (void)handleRecoverForUUID:(id)a3;
- (void)renameRecording:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation RCRecentlyDeletedRecordingsCollectionViewController

- (RCRecentlyDeletedRecordingsCollectionViewController)init
{
  v3 = [(RCRecordingsCollectionViewController *)self _createCollectionViewLayout];
  v7.receiver = self;
  v7.super_class = RCRecentlyDeletedRecordingsCollectionViewController;
  v4 = [(RCRecordingsCollectionViewController *)&v7 initWithCollectionViewLayout:v3];

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

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RCRecentlyDeletedRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v5 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)contentSizeChanged
{
  v3 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  [v3 reloadData];

  [(RCRecordingsCollectionViewController *)self restyle];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RCRecentlyDeletedRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v9 setEditing:a3 animated:a4];
  v6 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self navigationItem];
  [v6 setHidesBackButton:v4];

  v7 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self navigationController];
  v8 = [v7 interactivePopGestureRecognizer];
  [v8 setEnabled:v4 ^ 1];
}

- (void)handleEraseAll:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [v5 performAction:18 atPosition:0 forUUID:self sourceController:v4 source:0.0];
}

- (void)handleRecover:(id)a3
{
  v4 = a3;
  v5 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v7 = [v6 count];

  v8 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  v9 = v8;
  if (v7)
  {
    v10 = 20;
  }

  else
  {
    v10 = 21;
  }

  [v8 performAction:v10 atPosition:0 forUUID:self sourceController:v4 source:0.0];

  [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
}

- (void)_handleDelete:(id)a3
{
  v18 = a3;
  v4 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self navigationController];
  v5 = [v4 isToolbarHidden];

  v6 = v18;
  if (!v5)
  {
LABEL_7:
    v13 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
    v14 = [v13 indexPathsForSelectedItems];
    v15 = [v14 count];

    if (v15)
    {
      v16 = 17;
    }

    else
    {
      v16 = 18;
    }

    v17 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    [v17 performAction:v16 atPosition:0 forUUID:self sourceController:v6 source:0.0];

    [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
    goto LABEL_11;
  }

  v7 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v8 = [v7 indexPathsForSelectedItems];
  v9 = [v8 count];

  v6 = v18;
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
      v11 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
      v12 = [v11 indexPathForSelectedItem];
      v6 = [v10 cellForItemAtIndexPath:v12];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_7;
  }

LABEL_11:
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if ("delete:" == a3)
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

  v4 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];
  v3 = [v5 count] != 0;

  return v3;
}

- (BOOL)canRenameRecording
{
  v3 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v4 = [v3 numberOfItemsInSection:0];

  if (v4 < 1)
  {
    return 0;
  }

  v5 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForSelectedItem];

  v7 = v6 != 0;
  return v7;
}

- (void)renameRecording:(id)a3
{
  v4 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v5 = [v4 numberOfItemsInSection:0];

  if (v5 >= 1)
  {
    v6 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
    v9 = [v6 indexPathForSelectedItem];

    v7 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
    v8 = [v7 cellForItemAtIndexPath:v9];

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
  v3 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v4 = [v3 numberOfItemsInSection:0];

  if (v4 < 1)
  {
    return 0;
  }

  v5 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForSelectedItem];

  v7 = v6 != 0;
  return v7;
}

- (void)handleRecoverForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {

    [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:0];
  }
}

- (void)handleEraseForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {

    [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:0];
  }
}

- (BOOL)isShowingRecentlyDeleted
{
  v2 = self;
  v3 = [(RCRecentlyDeletedRecordingsCollectionViewController *)self navigationController];
  v4 = [v3 childViewControllers];
  LOBYTE(v2) = [v4 containsObject:v2];

  return v2;
}

@end