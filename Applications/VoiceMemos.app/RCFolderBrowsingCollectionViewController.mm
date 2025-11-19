@interface RCFolderBrowsingCollectionViewController
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)isShowingRecentlyDeleted;
- (RCCloudRecording)selectedRecording;
- (RCFolderBrowsingDelegate)browsingDelegate;
- (RCLibraryActionHandler)libraryActionHandler;
- (RCRecordingViewController)recordingViewController;
- (RCRecordingViewControllerDelegate)recordingViewControllerDelegate;
- (RCRecordingsCollectionViewController)activeRecordingsCollectionViewController;
- (id)_allRecordingsIndexPath;
- (id)_currentFolder:(BOOL)a3;
- (id)_uuidArrayFromItemArray:(id)a3;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)undoManager;
- (void)_classSpecificLoadView;
- (void)_configureCell:(id)a3 withFolderDisplayModel:(id)a4;
- (void)_dropLocalRecordingsWithUUIDArray:(id)a3 intoDestinationFolder:(id)a4 fromFolderType:(int64_t)a5 fromFolderUUID:(id)a6;
- (void)_pushViewControllerForFolderAtIndexPath:(id)a3;
- (void)_pushViewControllerForFolderOfType:(int64_t)a3 withName:(id)a4 folderUUID:(id)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)_selectActiveFolderIfNeeded;
- (void)_selectAllRecordingsFolderForActiveFolderDeletion;
- (void)_updateCellSelectionForActiveFolder;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)deleteFolderWithFolderName:(id)a3;
- (void)goToBuiltInFolderOfType:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)goToUserFolderWithName:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)restyle;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setLibraryActionHandler:(id)a3;
- (void)setRecordingViewControllerDelegate:(id)a3;
- (void)showRenamingControllerWithFolderName:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RCFolderBrowsingCollectionViewController

- (RCLibraryActionHandler)libraryActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryActionHandler);

  return WeakRetained;
}

- (RCRecordingViewControllerDelegate)recordingViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recordingViewControllerDelegate);

  return WeakRetained;
}

- (RCFolderBrowsingDelegate)browsingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_browsingDelegate);

  return WeakRetained;
}

- (void)_selectActiveFolderIfNeeded
{
  if ([(RCFolderBrowsingCollectionViewController *)self isViewLoaded])
  {
    v3 = [(RCFolderBrowsingCollectionViewController *)self splitViewController];
    v4 = [v3 isCollapsed];

    if ((v4 & 1) == 0)
    {
      v5 = [(RCFolderBrowsingCollectionViewController *)self _currentActiveFolder];
      if (v5)
      {
        v12 = v5;
        v6 = [(RCFoldersCollectionViewController *)self foldersController];
        v7 = [v6 indexPathForFolder:v12];

        v8 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
        v9 = [v8 indexPathsForSelectedItems];
        v10 = [v9 firstObject];

        if (([v10 isEqual:v7] & 1) == 0)
        {
          if (([(RCFolderBrowsingCollectionViewController *)self isEditing]& 1) != 0)
          {
            [(RCFoldersCollectionViewController *)self setIndexPathOfSelectionDuringEditing:v7];
          }

          else
          {
            v11 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
            [v11 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
          }
        }

        v5 = v12;
      }
    }
  }
}

- (RCRecordingsCollectionViewController)activeRecordingsCollectionViewController
{
  v2 = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  v3 = [v2 recordingsCollectionViewController];

  return v3;
}

- (RCRecordingViewController)recordingViewController
{
  v2 = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  v3 = [v2 recordingViewController];

  return v3;
}

- (RCCloudRecording)selectedRecording
{
  v2 = [(RCFolderBrowsingCollectionViewController *)self activeRecordingsCollectionViewController];
  v3 = [v2 selectedRecording];

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v25 = [(RCFolderBrowsingCollectionViewController *)self isEditing];
  if (!v25 && v5)
  {
    v7 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
    v8 = [v7 indexPathsForSelectedItems];
    v9 = [v8 firstObject];
    [(RCFoldersCollectionViewController *)self setIndexPathOfSelectionDuringEditing:v9];
  }

  v31.receiver = self;
  v31.super_class = RCFolderBrowsingCollectionViewController;
  v26 = v5;
  [(RCFolderBrowsingCollectionViewController *)&v31 setEditing:v5 animated:v4];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
  v11 = [v10 visibleCells];

  v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
        v18 = [v17 indexPathForCell:v16];

        if ([(RCFolderBrowsingCollectionViewController *)self isEditing])
        {
          v19 = [v18 section] == 1;
        }

        else
        {
          v19 = 1;
        }

        [v16 setEnabled:v19];
        if ([v16 enabled])
        {
          [v16 setAccessibilityValue:&stru_100295BB8];
        }

        else
        {
          v20 = +[NSBundle mainBundle];
          v21 = [v20 localizedStringForKey:@"AX_CELL_DIMMED_VALUE" value:&stru_100295BB8 table:0];
          [v16 setAccessibilityValue:v21];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v13);
  }

  if ((v25 & !v26) == 1)
  {
    v22 = [(RCFoldersCollectionViewController *)self indexPathOfSelectionDuringEditing];

    if (v22)
    {
      v23 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
      v24 = [(RCFoldersCollectionViewController *)self indexPathOfSelectionDuringEditing];
      [v23 selectItemAtIndexPath:v24 animated:0 scrollPosition:0];

      [(RCFoldersCollectionViewController *)self setIndexPathOfSelectionDuringEditing:0];
    }
  }
}

- (void)setRecordingViewControllerDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_recordingViewControllerDelegate, v4);
  v5 = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  [v5 setRecordingViewControllerDelegate:v4];
}

- (void)setLibraryActionHandler:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_libraryActionHandler, v4);
  v6 = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  v5 = [v6 recordingsCollectionViewController];
  [v5 setLibraryActionHandler:v4];
}

- (id)undoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_undoManager);

  return WeakRetained;
}

- (void)_classSpecificLoadView
{
  v2 = [(RCFoldersCollectionViewController *)self diffableDataSource];
  [v2 setSupportsMove:1];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = RCFolderBrowsingCollectionViewController;
  [(RCFoldersCollectionViewController *)&v4 viewDidLoad];
  v3 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
  [v3 setDropDelegate:self];
  [v3 setDragDelegate:self];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  [(RCFolderBrowsingCollectionViewController *)self _pushViewControllerForFolderAtIndexPath:a4];
  v5 = [(RCFolderBrowsingCollectionViewController *)self splitViewController];
  [v5 hidePrimaryColumnIfNeeded];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
  v7 = [v6 indexPathsForSelectedItems];
  v8 = [v7 firstObject];

  v9 = !v8 || ([v8 isEqual:v5] & 1) == 0;
  return v9;
}

- (void)_pushViewControllerForFolderAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RCFoldersCollectionViewController *)self foldersController];
  v10 = [v5 folderAtIndexPath:v4];

  v6 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v10];
  v7 = [v10 folderType];
  v8 = [v6 displayName];
  v9 = [v6 UUID];
  [(RCFolderBrowsingCollectionViewController *)self _pushViewControllerForFolderOfType:v7 withName:v8 folderUUID:v9 animated:1 completion:0];
}

- (void)_pushViewControllerForFolderOfType:(int64_t)a3 withName:(id)a4 folderUUID:(id)a5 animated:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v34 = a4;
  v12 = a5;
  v35 = a7;
  v13 = +[UIApplication sharedApplication];
  v14 = [v13 delegate];

  v15 = [v14 defaultSceneDelegate];
  v16 = [v15 rootSplitViewController];

  if (v16)
  {
    if (a3 >= 4)
    {
      if (a3 != 4)
      {
        p_super = 0;
LABEL_10:
        v19 = [(RCFoldersCollectionViewController *)self selectionDelegate];
        v20 = [p_super recordingsCollectionViewController];
        [v20 setFolderSelectionDelegate:v19];

        [(RCFoldersCollectionViewController *)self setCurrentFolderViewController:p_super];
        v21 = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];

        if (v21)
        {
          objc_initWeak(location, self);
          objc_initWeak(&from, p_super);
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_100098C5C;
          v40[3] = &unk_10028BF48;
          objc_copyWeak(&v43, &from);
          objc_copyWeak(&v44, location);
          v41 = v34;
          v42 = self;
          [p_super setSetupBlock:v40];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100098DFC;
          v38[3] = &unk_10028A6A0;
          objc_copyWeak(&v39, &from);
          [p_super setTeardownBlock:v38];
          v22 = [p_super setupBlock];

          if (v22)
          {
            v23 = [p_super setupBlock];
            v23[2]();
          }

          [v16 setViewController:p_super forColumn:1];
          v24 = [p_super navigationController];
          v25 = +[RCRecorderStyleProvider sharedStyleProvider];
          v26 = [v25 usesLargeTitles];
          v27 = [v24 navigationBar];
          [v27 setPrefersLargeTitles:v26];

          [v24 setToolbarHidden:1 animated:v8];
          v28 = +[UIView areAnimationsEnabled]&& !v8;
          if (v28 == 1)
          {
            [UIView setAnimationsEnabled:0];
          }

          [v16 showColumn:1];
          if (v35)
          {
            v29 = [v16 transitionCoordinator];
            if (v29)
            {
              v30 = v28;
            }

            else
            {
              v30 = 1;
            }

            if (v30)
            {
              v35[2]();
            }

            else
            {
              v31 = [v16 transitionCoordinator];
              v36[0] = _NSConcreteStackBlock;
              v36[1] = 3221225472;
              v36[2] = sub_100098EAC;
              v36[3] = &unk_10028BF70;
              v37 = v35;
              [v31 animateAlongsideTransition:0 completion:v36];
            }
          }

          if (v28)
          {
            [UIView setAnimationsEnabled:1];
          }

          v32 = [(RCFolderBrowsingCollectionViewController *)self browsingDelegate];
          [v32 didSelectFolderOfType:a3];

          objc_destroyWeak(&v39);
          objc_destroyWeak(&v44);
          objc_destroyWeak(&v43);
          objc_destroyWeak(&from);
          objc_destroyWeak(location);
        }

        [(RCFoldersCollectionViewController *)self setCurrentFolderViewController:p_super];
        [(RCFolderBrowsingCollectionViewController *)self _selectActiveFolderIfNeeded];
        v12 = v33;
        goto LABEL_27;
      }

      v17 = [[RCFolderViewController alloc] initWithUserFolderNamed:v34 folderUUID:v12];
    }

    else
    {
      v17 = [[RCFolderViewController alloc] initWithBuiltInFolderType:a3 folderUUID:v12];
    }

    p_super = &v17->super.super.super;
    goto LABEL_10;
  }

  p_super = OSLogForCategory();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
  {
    sub_1001BA57C(p_super);
  }

LABEL_27:
}

- (void)restyle
{
  v5.receiver = self;
  v5.super_class = RCFolderBrowsingCollectionViewController;
  [(RCFoldersCollectionViewController *)&v5 restyle];
  v3 = [(RCFoldersCollectionViewController *)self currentFolderViewController];
  v4 = [v3 recordingViewController];
  [v4 restyle];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = RCFolderBrowsingCollectionViewController;
  [(RCFolderBrowsingCollectionViewController *)&v8 viewDidAppear:a3];
  [(RCFolderBrowsingCollectionViewController *)self _updateCellSelectionForActiveFolder];
  v4 = [(RCFolderBrowsingCollectionViewController *)self _currentActiveFolder];
  if (!v4)
  {
    v5 = [(RCFolderBrowsingCollectionViewController *)self browsingDelegate];
    [v5 didReturnToFoldersList];
  }

  v6 = UIAccessibilityLayoutChangedNotification;
  v7 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
  UIAccessibilityPostNotification(v6, v7);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = RCFolderBrowsingCollectionViewController;
  [(RCFolderBrowsingCollectionViewController *)&v8 viewWillDisappear:?];
  [(RCFolderBrowsingCollectionViewController *)self setEditing:0 animated:v3];
  v5 = [(RCFolderBrowsingCollectionViewController *)self navigationController];
  [v5 setToolbarHidden:1 animated:v3];

  v6 = [(RCFolderBrowsingCollectionViewController *)self viewWillDisappearBlock];

  if (v6)
  {
    v7 = [(RCFolderBrowsingCollectionViewController *)self viewWillDisappearBlock];
    v7[2]();

    [(RCFolderBrowsingCollectionViewController *)self setViewWillDisappearBlock:0];
  }
}

- (void)_configureCell:(id)a3 withFolderDisplayModel:(id)a4
{
  v7.receiver = self;
  v7.super_class = RCFolderBrowsingCollectionViewController;
  v6 = a3;
  [(RCFoldersCollectionViewController *)&v7 _configureCell:v6 withFolderDisplayModel:a4];
  [v6 setActionHandler:{self, v7.receiver, v7.super_class}];
}

- (void)_updateCellSelectionForActiveFolder
{
  v3 = [(RCFolderBrowsingCollectionViewController *)self _currentActiveFolder];
  if (v3)
  {
    v7 = v3;
    v4 = [(RCFoldersCollectionViewController *)self foldersController];
    v5 = [v4 indexPathForFolder:v7];

    v6 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
    [v6 selectItemAtIndexPath:v5 animated:0 scrollPosition:0];

    v3 = v7;
  }
}

- (id)_currentFolder:(BOOL)a3
{
  if (a3)
  {
    [(RCFoldersCollectionViewController *)self currentFolderViewController];
  }

  else
  {
    [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  }
  v3 = ;
  v4 = v3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v5 = [v3 folderTitle];
  v6 = [v4 folderType];
  v7 = +[RCApplicationModel sharedApplicationModel];
  v8 = v7;
  v9 = 0;
  if (v6 <= 1)
  {
    if (!v6)
    {
      v10 = [v7 voiceMemosRecordingsFolder];
      goto LABEL_17;
    }

    if (v6 == 1)
    {
      v10 = [v7 favoriteRecordingsFolder];
      goto LABEL_17;
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        v10 = [v7 capturedOnWatchRecordingsFolder];
        goto LABEL_17;
      case 3:
        v10 = [v7 recentlyDeletedRecordingsFolder];
        goto LABEL_17;
      case 4:
        v10 = [v7 existingFolderWithName:v5];
LABEL_17:
        v9 = v10;
        break;
    }
  }

LABEL_19:

  return v9;
}

- (void)_selectAllRecordingsFolderForActiveFolderDeletion
{
  v3 = [(RCFolderBrowsingCollectionViewController *)self splitViewController];
  v4 = [v3 isCollapsed];

  if (v4)
  {

    [(RCFolderBrowsingCollectionViewController *)self goToBuiltInFolderOfType:0 animated:0 completion:0];
  }

  else
  {
    v6 = [(RCFolderBrowsingCollectionViewController *)self _allRecordingsIndexPath];
    [(RCFolderBrowsingCollectionViewController *)self _pushViewControllerForFolderAtIndexPath:?];
    v5 = [(RCFoldersCollectionViewController *)self indexPathOfSelectionDuringEditing];

    if (v5)
    {
      [(RCFoldersCollectionViewController *)self setIndexPathOfSelectionDuringEditing:v6];
    }
  }
}

- (id)_allRecordingsIndexPath
{
  v3 = +[RCApplicationModel sharedApplicationModel];
  v4 = [v3 voiceMemosRecordingsFolder];

  v5 = [(RCFoldersCollectionViewController *)self foldersController];
  v6 = [v5 indexPathForFolder:v4];

  return v6;
}

- (void)showRenamingControllerWithFolderName:(id)a3
{
  v4 = a3;
  v5 = [(RCFoldersCollectionViewController *)self selectionDelegate];
  [v5 showRenamingControllerWithFolderName:v4 controller:self];
}

- (void)deleteFolderWithFolderName:(id)a3
{
  v4 = a3;
  v7 = +[RCApplicationModel sharedApplicationModel];
  v5 = [v7 folderWithName:v4];

  v6 = [(RCFoldersCollectionViewController *)self selectionDelegate];
  [v6 deleteFolder:v5 controller:self completionBlock:0];
}

- (void)goToBuiltInFolderOfType:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = +[RCApplicationModel sharedApplicationModel];
      v10 = [v9 recentlyDeletedRecordingsFolder];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_12;
      }

      v9 = +[RCApplicationModel sharedApplicationModel];
      v10 = [v9 capturedOnWatchRecordingsFolder];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_12;
    }

    v9 = +[RCApplicationModel sharedApplicationModel];
    v10 = [v9 favoriteRecordingsFolder];
  }

  else
  {
    v9 = +[RCApplicationModel sharedApplicationModel];
    v10 = [v9 voiceMemosRecordingsFolder];
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v11 uuid];
    v13 = [RCFolderDisplayModel folderNameForBuiltInFolderOfType:a3];
    [(RCFolderBrowsingCollectionViewController *)self _pushViewControllerForFolderOfType:a3 withName:v13 folderUUID:v12 animated:v5 completion:v8];

    goto LABEL_14;
  }

LABEL_12:
  v11 = OSLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BA600(a3, v11);
  }

LABEL_14:
}

- (void)goToUserFolderWithName:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v14 = +[RCApplicationModel sharedApplicationModel];
  v10 = [v14 folderWithName:v9];

  v11 = [v10 folderType];
  v12 = [v10 name];
  v13 = [v10 uuid];
  [(RCFolderBrowsingCollectionViewController *)self _pushViewControllerForFolderOfType:v11 withName:v12 folderUUID:v13 animated:v5 completion:v8];
}

- (BOOL)isShowingRecentlyDeleted
{
  v2 = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  v3 = [v2 recordingsCollectionViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v8 section])
  {
    v9 = [(RCFoldersCollectionViewController *)self foldersController];
    v10 = [v9 folderAtIndexPath:v8];

    v11 = [v10 folderType];
    v12 = [v10 uuid];
    v13 = [RCLocalDropContext dropContextWithFolderType:v11 folderUUID:v12 folderIndexPath:v8 payloadType:1];

    [v7 setLocalContext:v13];
    v14 = objc_opt_new();
    v15 = [[UIDragItem alloc] initWithItemProvider:v14];
    v18 = v15;
    v16 = [NSArray arrayWithObjects:&v18 count:1];
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  return v16;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v4 = [(RCFolderBrowsingCollectionViewController *)self libraryActionHandler:a3];
  [v4 willBeginDragSession];
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v4 = [(RCFolderBrowsingCollectionViewController *)self libraryActionHandler:a3];
  [v4 didEndDragSession];
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v4 = a4;
  v5 = [v4 localDragSession];

  if (v5)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = +[RCCaptureFormat supportedFileTypeIdentifiers];
    v6 = [v4 hasItemsConformingToTypeIdentifiers:v7];
  }

  return v6;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [v6 session];
  v8 = [v7 localDragSession];

  v9 = [v6 destinationIndexPath];
  v10 = [(RCFoldersCollectionViewController *)self foldersController];
  v11 = [v10 folderAtIndexPath:v9];

  if (v8)
  {
    v12 = [v6 session];
    v13 = [v12 localDragSession];
    v14 = [v13 localContext];

    v15 = [v14 payloadType];
    if (v15 == 1)
    {
      v22 = [v14 folderIndexPath];
      v23 = [v22 isEqual:v9];

      if (v23)
      {
        goto LABEL_9;
      }

      v18 = [v24 dataSource];
      v20 = [v14 folderIndexPath];
      [v18 collectionView:v24 moveItemAtIndexPath:v20 toIndexPath:v9];
    }

    else
    {
      if (v15)
      {
        goto LABEL_9;
      }

      v16 = [v6 session];
      v17 = [v16 items];
      v18 = [(RCFolderBrowsingCollectionViewController *)self _uuidArrayFromItemArray:v17];

      v19 = [v14 folderType];
      v20 = [v14 folderUUID];
      [(RCFolderBrowsingCollectionViewController *)self _dropLocalRecordingsWithUUIDArray:v18 intoDestinationFolder:v11 fromFolderType:v19 fromFolderUUID:v20];
    }
  }

  else
  {
    v21 = [(RCFoldersCollectionViewController *)self foldersController];
    v14 = [v21 folderAtIndexPath:v9];

    [v24 selectItemAtIndexPath:v9 animated:0 scrollPosition:0];
    [(RCFolderBrowsingCollectionViewController *)self collectionView:v24 didSelectItemAtIndexPath:v9];
    v18 = [(RCFolderBrowsingCollectionViewController *)self activeRecordingsCollectionViewController];
    v20 = [v6 session];
    [v18 performDropWithSession:v20 folder:v14];
  }

LABEL_9:
}

- (void)_dropLocalRecordingsWithUUIDArray:(id)a3 intoDestinationFolder:(id)a4 fromFolderType:(int64_t)a5 fromFolderUUID:(id)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a6;
  if (v20 && [v20 count])
  {
    v12 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v10];
    v13 = [v12 representsPossibleMoveDestination];
    v14 = [(RCFolderBrowsingCollectionViewController *)self browsingDelegate];
    v15 = [v10 uuid];
    v16 = [v14 canMoveRecordingsWithUUIDs:v20 toFolderWithUUID:v15 toFolderType:objc_msgSend(v12 fromFolderUUID:{"folderType"), v11}];

    if (v13 && v16)
    {
      v17 = [v12 folderType];
      v18 = [(RCFolderBrowsingCollectionViewController *)self browsingDelegate];
      if (v17 == 4)
      {
        v19 = [v12 UUID];
        [v18 moveRecordingsWithUUIDs:v20 toFolderWithUUID:v19];
      }

      else
      {
        [v18 moveRecordingsWithUUIDs:v20 fromFolderOfType:a5 toBuiltInFolderOfType:{objc_msgSend(v12, "folderType")}];
      }
    }
  }
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[UICollectionViewDropProposal alloc] initWithDropOperation:1 intent:0];
  v10 = v9;
  if (!v8)
  {
    v28 = v9;
    goto LABEL_25;
  }

  v11 = [v7 localDragSession];

  v12 = [(RCFoldersCollectionViewController *)self foldersController];
  v13 = [v12 folderAtIndexPath:v8];

  if (v13)
  {
    v14 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v13];
    v15 = v14;
    if (!v11)
    {
      v29 = [v14 folderType] & 0xFFFFFFFFFFFFFFFELL;
      v30 = [UICollectionViewDropProposal alloc];
      if (v29 == 2)
      {
        v31 = 1;
        v32 = 0;
      }

      else
      {
        v31 = 2;
        v32 = 2;
      }

      v17 = v10;
      v10 = [v30 initWithDropOperation:v31 intent:v32];
      goto LABEL_23;
    }

    v16 = [v7 localDragSession];
    v17 = [v16 localContext];

    v18 = [v17 payloadType];
    if (v18 != 1)
    {
      if (!v18)
      {
        v19 = [v7 items];
        v41 = [(RCFolderBrowsingCollectionViewController *)self _uuidArrayFromItemArray:v19];

        v39 = [v15 representsPossibleMoveDestination];
        v20 = [(RCFolderBrowsingCollectionViewController *)self browsingDelegate];
        v21 = [v15 UUID];
        v40 = v15;
        v22 = [v15 folderType];
        v23 = [v17 folderUUID];
        v24 = [v20 canMoveRecordingsWithUUIDs:v41 toFolderWithUUID:v21 toFolderType:v22 fromFolderUUID:v23];

        v25 = [UICollectionViewDropProposal alloc];
        if (v39 && (v24 & 1) != 0)
        {
          v26 = 3;
          v27 = 2;
        }

        else
        {
          v26 = 1;
          v27 = 0;
        }

        v37 = [v25 initWithDropOperation:v26 intent:v27];

        v15 = v40;
        v10 = v41;
        goto LABEL_22;
      }

LABEL_23:

      v28 = v10;
      goto LABEL_24;
    }

    v33 = [v8 section];
    if (v33 == 1)
    {
      v34 = [UICollectionViewDropProposal alloc];
      v35 = 3;
      v36 = 1;
    }

    else
    {
      if (v33)
      {
        goto LABEL_23;
      }

      v34 = [UICollectionViewDropProposal alloc];
      v35 = 1;
      v36 = 0;
    }

    v37 = [v34 initWithDropOperation:v35 intent:v36];
LABEL_22:

    v10 = v37;
    goto LABEL_23;
  }

  v28 = v10;
LABEL_24:

LABEL_25:

  return v28;
}

- (id)_uuidArrayFromItemArray:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) localObject];
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = [NSArray arrayWithArray:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end