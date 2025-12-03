@interface RCFolderBrowsingCollectionViewController
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)isShowingRecentlyDeleted;
- (RCCloudRecording)selectedRecording;
- (RCFolderBrowsingDelegate)browsingDelegate;
- (RCLibraryActionHandler)libraryActionHandler;
- (RCRecordingViewController)recordingViewController;
- (RCRecordingViewControllerDelegate)recordingViewControllerDelegate;
- (RCRecordingsCollectionViewController)activeRecordingsCollectionViewController;
- (id)_allRecordingsIndexPath;
- (id)_currentFolder:(BOOL)folder;
- (id)_uuidArrayFromItemArray:(id)array;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)undoManager;
- (void)_classSpecificLoadView;
- (void)_configureCell:(id)cell withFolderDisplayModel:(id)model;
- (void)_dropLocalRecordingsWithUUIDArray:(id)array intoDestinationFolder:(id)folder fromFolderType:(int64_t)type fromFolderUUID:(id)d;
- (void)_pushViewControllerForFolderAtIndexPath:(id)path;
- (void)_pushViewControllerForFolderOfType:(int64_t)type withName:(id)name folderUUID:(id)d animated:(BOOL)animated completion:(id)completion;
- (void)_selectActiveFolderIfNeeded;
- (void)_selectAllRecordingsFolderForActiveFolderDeletion;
- (void)_updateCellSelectionForActiveFolder;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)deleteFolderWithFolderName:(id)name;
- (void)goToBuiltInFolderOfType:(int64_t)type animated:(BOOL)animated completion:(id)completion;
- (void)goToUserFolderWithName:(id)name animated:(BOOL)animated completion:(id)completion;
- (void)restyle;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setLibraryActionHandler:(id)handler;
- (void)setRecordingViewControllerDelegate:(id)delegate;
- (void)showRenamingControllerWithFolderName:(id)name;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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
    splitViewController = [(RCFolderBrowsingCollectionViewController *)self splitViewController];
    isCollapsed = [splitViewController isCollapsed];

    if ((isCollapsed & 1) == 0)
    {
      _currentActiveFolder = [(RCFolderBrowsingCollectionViewController *)self _currentActiveFolder];
      if (_currentActiveFolder)
      {
        v12 = _currentActiveFolder;
        foldersController = [(RCFoldersCollectionViewController *)self foldersController];
        v7 = [foldersController indexPathForFolder:v12];

        collectionView = [(RCFolderBrowsingCollectionViewController *)self collectionView];
        indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
        firstObject = [indexPathsForSelectedItems firstObject];

        if (([firstObject isEqual:v7] & 1) == 0)
        {
          if (([(RCFolderBrowsingCollectionViewController *)self isEditing]& 1) != 0)
          {
            [(RCFoldersCollectionViewController *)self setIndexPathOfSelectionDuringEditing:v7];
          }

          else
          {
            collectionView2 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
            [collectionView2 selectItemAtIndexPath:v7 animated:0 scrollPosition:0];
          }
        }

        _currentActiveFolder = v12;
      }
    }
  }
}

- (RCRecordingsCollectionViewController)activeRecordingsCollectionViewController
{
  currentActiveFolderViewController = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  recordingsCollectionViewController = [currentActiveFolderViewController recordingsCollectionViewController];

  return recordingsCollectionViewController;
}

- (RCRecordingViewController)recordingViewController
{
  currentActiveFolderViewController = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  recordingViewController = [currentActiveFolderViewController recordingViewController];

  return recordingViewController;
}

- (RCCloudRecording)selectedRecording
{
  activeRecordingsCollectionViewController = [(RCFolderBrowsingCollectionViewController *)self activeRecordingsCollectionViewController];
  selectedRecording = [activeRecordingsCollectionViewController selectedRecording];

  return selectedRecording;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  isEditing = [(RCFolderBrowsingCollectionViewController *)self isEditing];
  if (!isEditing && editingCopy)
  {
    collectionView = [(RCFolderBrowsingCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    firstObject = [indexPathsForSelectedItems firstObject];
    [(RCFoldersCollectionViewController *)self setIndexPathOfSelectionDuringEditing:firstObject];
  }

  v31.receiver = self;
  v31.super_class = RCFolderBrowsingCollectionViewController;
  v26 = editingCopy;
  [(RCFolderBrowsingCollectionViewController *)&v31 setEditing:editingCopy animated:animatedCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  collectionView2 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
  visibleCells = [collectionView2 visibleCells];

  v12 = [visibleCells countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        collectionView3 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
        v18 = [collectionView3 indexPathForCell:v16];

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

      v13 = [visibleCells countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v13);
  }

  if ((isEditing & !v26) == 1)
  {
    indexPathOfSelectionDuringEditing = [(RCFoldersCollectionViewController *)self indexPathOfSelectionDuringEditing];

    if (indexPathOfSelectionDuringEditing)
    {
      collectionView4 = [(RCFolderBrowsingCollectionViewController *)self collectionView];
      indexPathOfSelectionDuringEditing2 = [(RCFoldersCollectionViewController *)self indexPathOfSelectionDuringEditing];
      [collectionView4 selectItemAtIndexPath:indexPathOfSelectionDuringEditing2 animated:0 scrollPosition:0];

      [(RCFoldersCollectionViewController *)self setIndexPathOfSelectionDuringEditing:0];
    }
  }
}

- (void)setRecordingViewControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_recordingViewControllerDelegate, delegateCopy);
  currentActiveFolderViewController = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  [currentActiveFolderViewController setRecordingViewControllerDelegate:delegateCopy];
}

- (void)setLibraryActionHandler:(id)handler
{
  handlerCopy = handler;
  objc_storeWeak(&self->_libraryActionHandler, handlerCopy);
  currentActiveFolderViewController = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  recordingsCollectionViewController = [currentActiveFolderViewController recordingsCollectionViewController];
  [recordingsCollectionViewController setLibraryActionHandler:handlerCopy];
}

- (id)undoManager
{
  WeakRetained = objc_loadWeakRetained(&self->_undoManager);

  return WeakRetained;
}

- (void)_classSpecificLoadView
{
  diffableDataSource = [(RCFoldersCollectionViewController *)self diffableDataSource];
  [diffableDataSource setSupportsMove:1];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = RCFolderBrowsingCollectionViewController;
  [(RCFoldersCollectionViewController *)&v4 viewDidLoad];
  collectionView = [(RCFolderBrowsingCollectionViewController *)self collectionView];
  [collectionView setDropDelegate:self];
  [collectionView setDragDelegate:self];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  [(RCFolderBrowsingCollectionViewController *)self _pushViewControllerForFolderAtIndexPath:path];
  splitViewController = [(RCFolderBrowsingCollectionViewController *)self splitViewController];
  [splitViewController hidePrimaryColumnIfNeeded];
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(RCFolderBrowsingCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  v9 = !firstObject || ([firstObject isEqual:pathCopy] & 1) == 0;
  return v9;
}

- (void)_pushViewControllerForFolderAtIndexPath:(id)path
{
  pathCopy = path;
  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  v10 = [foldersController folderAtIndexPath:pathCopy];

  v6 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v10];
  folderType = [v10 folderType];
  displayName = [v6 displayName];
  uUID = [v6 UUID];
  [(RCFolderBrowsingCollectionViewController *)self _pushViewControllerForFolderOfType:folderType withName:displayName folderUUID:uUID animated:1 completion:0];
}

- (void)_pushViewControllerForFolderOfType:(int64_t)type withName:(id)name folderUUID:(id)d animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  v13 = +[UIApplication sharedApplication];
  delegate = [v13 delegate];

  defaultSceneDelegate = [delegate defaultSceneDelegate];
  rootSplitViewController = [defaultSceneDelegate rootSplitViewController];

  if (rootSplitViewController)
  {
    if (type >= 4)
    {
      if (type != 4)
      {
        p_super = 0;
LABEL_10:
        selectionDelegate = [(RCFoldersCollectionViewController *)self selectionDelegate];
        recordingsCollectionViewController = [p_super recordingsCollectionViewController];
        [recordingsCollectionViewController setFolderSelectionDelegate:selectionDelegate];

        [(RCFoldersCollectionViewController *)self setCurrentFolderViewController:p_super];
        currentActiveFolderViewController = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];

        if (currentActiveFolderViewController)
        {
          objc_initWeak(location, self);
          objc_initWeak(&from, p_super);
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_100098C5C;
          v40[3] = &unk_10028BF48;
          objc_copyWeak(&v43, &from);
          objc_copyWeak(&v44, location);
          v41 = nameCopy;
          selfCopy = self;
          [p_super setSetupBlock:v40];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100098DFC;
          v38[3] = &unk_10028A6A0;
          objc_copyWeak(&v39, &from);
          [p_super setTeardownBlock:v38];
          setupBlock = [p_super setupBlock];

          if (setupBlock)
          {
            setupBlock2 = [p_super setupBlock];
            setupBlock2[2]();
          }

          [rootSplitViewController setViewController:p_super forColumn:1];
          navigationController = [p_super navigationController];
          v25 = +[RCRecorderStyleProvider sharedStyleProvider];
          usesLargeTitles = [v25 usesLargeTitles];
          navigationBar = [navigationController navigationBar];
          [navigationBar setPrefersLargeTitles:usesLargeTitles];

          [navigationController setToolbarHidden:1 animated:animatedCopy];
          v28 = +[UIView areAnimationsEnabled]&& !animatedCopy;
          if (v28 == 1)
          {
            [UIView setAnimationsEnabled:0];
          }

          [rootSplitViewController showColumn:1];
          if (completionCopy)
          {
            transitionCoordinator = [rootSplitViewController transitionCoordinator];
            if (transitionCoordinator)
            {
              v30 = v28;
            }

            else
            {
              v30 = 1;
            }

            if (v30)
            {
              completionCopy[2]();
            }

            else
            {
              transitionCoordinator2 = [rootSplitViewController transitionCoordinator];
              v36[0] = _NSConcreteStackBlock;
              v36[1] = 3221225472;
              v36[2] = sub_100098EAC;
              v36[3] = &unk_10028BF70;
              v37 = completionCopy;
              [transitionCoordinator2 animateAlongsideTransition:0 completion:v36];
            }
          }

          if (v28)
          {
            [UIView setAnimationsEnabled:1];
          }

          browsingDelegate = [(RCFolderBrowsingCollectionViewController *)self browsingDelegate];
          [browsingDelegate didSelectFolderOfType:type];

          objc_destroyWeak(&v39);
          objc_destroyWeak(&v44);
          objc_destroyWeak(&v43);
          objc_destroyWeak(&from);
          objc_destroyWeak(location);
        }

        [(RCFoldersCollectionViewController *)self setCurrentFolderViewController:p_super];
        [(RCFolderBrowsingCollectionViewController *)self _selectActiveFolderIfNeeded];
        dCopy = v33;
        goto LABEL_27;
      }

      v17 = [[RCFolderViewController alloc] initWithUserFolderNamed:nameCopy folderUUID:dCopy];
    }

    else
    {
      v17 = [[RCFolderViewController alloc] initWithBuiltInFolderType:type folderUUID:dCopy];
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
  currentFolderViewController = [(RCFoldersCollectionViewController *)self currentFolderViewController];
  recordingViewController = [currentFolderViewController recordingViewController];
  [recordingViewController restyle];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = RCFolderBrowsingCollectionViewController;
  [(RCFolderBrowsingCollectionViewController *)&v8 viewDidAppear:appear];
  [(RCFolderBrowsingCollectionViewController *)self _updateCellSelectionForActiveFolder];
  _currentActiveFolder = [(RCFolderBrowsingCollectionViewController *)self _currentActiveFolder];
  if (!_currentActiveFolder)
  {
    browsingDelegate = [(RCFolderBrowsingCollectionViewController *)self browsingDelegate];
    [browsingDelegate didReturnToFoldersList];
  }

  v6 = UIAccessibilityLayoutChangedNotification;
  collectionView = [(RCFolderBrowsingCollectionViewController *)self collectionView];
  UIAccessibilityPostNotification(v6, collectionView);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = RCFolderBrowsingCollectionViewController;
  [(RCFolderBrowsingCollectionViewController *)&v8 viewWillDisappear:?];
  [(RCFolderBrowsingCollectionViewController *)self setEditing:0 animated:disappearCopy];
  navigationController = [(RCFolderBrowsingCollectionViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:disappearCopy];

  viewWillDisappearBlock = [(RCFolderBrowsingCollectionViewController *)self viewWillDisappearBlock];

  if (viewWillDisappearBlock)
  {
    viewWillDisappearBlock2 = [(RCFolderBrowsingCollectionViewController *)self viewWillDisappearBlock];
    viewWillDisappearBlock2[2]();

    [(RCFolderBrowsingCollectionViewController *)self setViewWillDisappearBlock:0];
  }
}

- (void)_configureCell:(id)cell withFolderDisplayModel:(id)model
{
  v7.receiver = self;
  v7.super_class = RCFolderBrowsingCollectionViewController;
  cellCopy = cell;
  [(RCFoldersCollectionViewController *)&v7 _configureCell:cellCopy withFolderDisplayModel:model];
  [cellCopy setActionHandler:{self, v7.receiver, v7.super_class}];
}

- (void)_updateCellSelectionForActiveFolder
{
  _currentActiveFolder = [(RCFolderBrowsingCollectionViewController *)self _currentActiveFolder];
  if (_currentActiveFolder)
  {
    v7 = _currentActiveFolder;
    foldersController = [(RCFoldersCollectionViewController *)self foldersController];
    v5 = [foldersController indexPathForFolder:v7];

    collectionView = [(RCFolderBrowsingCollectionViewController *)self collectionView];
    [collectionView selectItemAtIndexPath:v5 animated:0 scrollPosition:0];

    _currentActiveFolder = v7;
  }
}

- (id)_currentFolder:(BOOL)folder
{
  if (folder)
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

  folderTitle = [v3 folderTitle];
  folderType = [v4 folderType];
  v7 = +[RCApplicationModel sharedApplicationModel];
  v8 = v7;
  v9 = 0;
  if (folderType <= 1)
  {
    if (!folderType)
    {
      voiceMemosRecordingsFolder = [v7 voiceMemosRecordingsFolder];
      goto LABEL_17;
    }

    if (folderType == 1)
    {
      voiceMemosRecordingsFolder = [v7 favoriteRecordingsFolder];
      goto LABEL_17;
    }
  }

  else
  {
    switch(folderType)
    {
      case 2:
        voiceMemosRecordingsFolder = [v7 capturedOnWatchRecordingsFolder];
        goto LABEL_17;
      case 3:
        voiceMemosRecordingsFolder = [v7 recentlyDeletedRecordingsFolder];
        goto LABEL_17;
      case 4:
        voiceMemosRecordingsFolder = [v7 existingFolderWithName:folderTitle];
LABEL_17:
        v9 = voiceMemosRecordingsFolder;
        break;
    }
  }

LABEL_19:

  return v9;
}

- (void)_selectAllRecordingsFolderForActiveFolderDeletion
{
  splitViewController = [(RCFolderBrowsingCollectionViewController *)self splitViewController];
  isCollapsed = [splitViewController isCollapsed];

  if (isCollapsed)
  {

    [(RCFolderBrowsingCollectionViewController *)self goToBuiltInFolderOfType:0 animated:0 completion:0];
  }

  else
  {
    _allRecordingsIndexPath = [(RCFolderBrowsingCollectionViewController *)self _allRecordingsIndexPath];
    [(RCFolderBrowsingCollectionViewController *)self _pushViewControllerForFolderAtIndexPath:?];
    indexPathOfSelectionDuringEditing = [(RCFoldersCollectionViewController *)self indexPathOfSelectionDuringEditing];

    if (indexPathOfSelectionDuringEditing)
    {
      [(RCFoldersCollectionViewController *)self setIndexPathOfSelectionDuringEditing:_allRecordingsIndexPath];
    }
  }
}

- (id)_allRecordingsIndexPath
{
  v3 = +[RCApplicationModel sharedApplicationModel];
  voiceMemosRecordingsFolder = [v3 voiceMemosRecordingsFolder];

  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  v6 = [foldersController indexPathForFolder:voiceMemosRecordingsFolder];

  return v6;
}

- (void)showRenamingControllerWithFolderName:(id)name
{
  nameCopy = name;
  selectionDelegate = [(RCFoldersCollectionViewController *)self selectionDelegate];
  [selectionDelegate showRenamingControllerWithFolderName:nameCopy controller:self];
}

- (void)deleteFolderWithFolderName:(id)name
{
  nameCopy = name;
  v7 = +[RCApplicationModel sharedApplicationModel];
  v5 = [v7 folderWithName:nameCopy];

  selectionDelegate = [(RCFoldersCollectionViewController *)self selectionDelegate];
  [selectionDelegate deleteFolder:v5 controller:self completionBlock:0];
}

- (void)goToBuiltInFolderOfType:(int64_t)type animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (type > 1)
  {
    if (type == 3)
    {
      v9 = +[RCApplicationModel sharedApplicationModel];
      recentlyDeletedRecordingsFolder = [v9 recentlyDeletedRecordingsFolder];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_12;
      }

      v9 = +[RCApplicationModel sharedApplicationModel];
      recentlyDeletedRecordingsFolder = [v9 capturedOnWatchRecordingsFolder];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_12;
    }

    v9 = +[RCApplicationModel sharedApplicationModel];
    recentlyDeletedRecordingsFolder = [v9 favoriteRecordingsFolder];
  }

  else
  {
    v9 = +[RCApplicationModel sharedApplicationModel];
    recentlyDeletedRecordingsFolder = [v9 voiceMemosRecordingsFolder];
  }

  v11 = recentlyDeletedRecordingsFolder;

  if (v11)
  {
    uuid = [v11 uuid];
    v13 = [RCFolderDisplayModel folderNameForBuiltInFolderOfType:type];
    [(RCFolderBrowsingCollectionViewController *)self _pushViewControllerForFolderOfType:type withName:v13 folderUUID:uuid animated:animatedCopy completion:completionCopy];

    goto LABEL_14;
  }

LABEL_12:
  v11 = OSLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BA600(type, v11);
  }

LABEL_14:
}

- (void)goToUserFolderWithName:(id)name animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  nameCopy = name;
  v14 = +[RCApplicationModel sharedApplicationModel];
  v10 = [v14 folderWithName:nameCopy];

  folderType = [v10 folderType];
  name = [v10 name];
  uuid = [v10 uuid];
  [(RCFolderBrowsingCollectionViewController *)self _pushViewControllerForFolderOfType:folderType withName:name folderUUID:uuid animated:animatedCopy completion:completionCopy];
}

- (BOOL)isShowingRecentlyDeleted
{
  currentActiveFolderViewController = [(RCFoldersCollectionViewController *)self currentActiveFolderViewController];
  recordingsCollectionViewController = [currentActiveFolderViewController recordingsCollectionViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  sessionCopy = session;
  pathCopy = path;
  if ([pathCopy section])
  {
    foldersController = [(RCFoldersCollectionViewController *)self foldersController];
    v10 = [foldersController folderAtIndexPath:pathCopy];

    folderType = [v10 folderType];
    uuid = [v10 uuid];
    v13 = [RCLocalDropContext dropContextWithFolderType:folderType folderUUID:uuid folderIndexPath:pathCopy payloadType:1];

    [sessionCopy setLocalContext:v13];
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

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  v4 = [(RCFolderBrowsingCollectionViewController *)self libraryActionHandler:view];
  [v4 willBeginDragSession];
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  v4 = [(RCFolderBrowsingCollectionViewController *)self libraryActionHandler:view];
  [v4 didEndDragSession];
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  sessionCopy = session;
  localDragSession = [sessionCopy localDragSession];

  if (localDragSession)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = +[RCCaptureFormat supportedFileTypeIdentifiers];
    v6 = [sessionCopy hasItemsConformingToTypeIdentifiers:v7];
  }

  return v6;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  session = [coordinatorCopy session];
  localDragSession = [session localDragSession];

  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  v11 = [foldersController folderAtIndexPath:destinationIndexPath];

  if (localDragSession)
  {
    session2 = [coordinatorCopy session];
    localDragSession2 = [session2 localDragSession];
    localContext = [localDragSession2 localContext];

    payloadType = [localContext payloadType];
    if (payloadType == 1)
    {
      folderIndexPath = [localContext folderIndexPath];
      v23 = [folderIndexPath isEqual:destinationIndexPath];

      if (v23)
      {
        goto LABEL_9;
      }

      dataSource = [viewCopy dataSource];
      folderIndexPath2 = [localContext folderIndexPath];
      [dataSource collectionView:viewCopy moveItemAtIndexPath:folderIndexPath2 toIndexPath:destinationIndexPath];
    }

    else
    {
      if (payloadType)
      {
        goto LABEL_9;
      }

      session3 = [coordinatorCopy session];
      items = [session3 items];
      dataSource = [(RCFolderBrowsingCollectionViewController *)self _uuidArrayFromItemArray:items];

      folderType = [localContext folderType];
      folderIndexPath2 = [localContext folderUUID];
      [(RCFolderBrowsingCollectionViewController *)self _dropLocalRecordingsWithUUIDArray:dataSource intoDestinationFolder:v11 fromFolderType:folderType fromFolderUUID:folderIndexPath2];
    }
  }

  else
  {
    foldersController2 = [(RCFoldersCollectionViewController *)self foldersController];
    localContext = [foldersController2 folderAtIndexPath:destinationIndexPath];

    [viewCopy selectItemAtIndexPath:destinationIndexPath animated:0 scrollPosition:0];
    [(RCFolderBrowsingCollectionViewController *)self collectionView:viewCopy didSelectItemAtIndexPath:destinationIndexPath];
    dataSource = [(RCFolderBrowsingCollectionViewController *)self activeRecordingsCollectionViewController];
    folderIndexPath2 = [coordinatorCopy session];
    [dataSource performDropWithSession:folderIndexPath2 folder:localContext];
  }

LABEL_9:
}

- (void)_dropLocalRecordingsWithUUIDArray:(id)array intoDestinationFolder:(id)folder fromFolderType:(int64_t)type fromFolderUUID:(id)d
{
  arrayCopy = array;
  folderCopy = folder;
  dCopy = d;
  if (arrayCopy && [arrayCopy count])
  {
    v12 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:folderCopy];
    representsPossibleMoveDestination = [v12 representsPossibleMoveDestination];
    browsingDelegate = [(RCFolderBrowsingCollectionViewController *)self browsingDelegate];
    uuid = [folderCopy uuid];
    v16 = [browsingDelegate canMoveRecordingsWithUUIDs:arrayCopy toFolderWithUUID:uuid toFolderType:objc_msgSend(v12 fromFolderUUID:{"folderType"), dCopy}];

    if (representsPossibleMoveDestination && v16)
    {
      folderType = [v12 folderType];
      browsingDelegate2 = [(RCFolderBrowsingCollectionViewController *)self browsingDelegate];
      if (folderType == 4)
      {
        uUID = [v12 UUID];
        [browsingDelegate2 moveRecordingsWithUUIDs:arrayCopy toFolderWithUUID:uUID];
      }

      else
      {
        [browsingDelegate2 moveRecordingsWithUUIDs:arrayCopy fromFolderOfType:type toBuiltInFolderOfType:{objc_msgSend(v12, "folderType")}];
      }
    }
  }
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  pathCopy = path;
  v9 = [[UICollectionViewDropProposal alloc] initWithDropOperation:1 intent:0];
  v10 = v9;
  if (!pathCopy)
  {
    v28 = v9;
    goto LABEL_25;
  }

  localDragSession = [updateCopy localDragSession];

  foldersController = [(RCFoldersCollectionViewController *)self foldersController];
  v13 = [foldersController folderAtIndexPath:pathCopy];

  if (v13)
  {
    v14 = [RCFolderDisplayModel folderDisplayModelWithFolderModel:v13];
    v15 = v14;
    if (!localDragSession)
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

      localContext = v10;
      v10 = [v30 initWithDropOperation:v31 intent:v32];
      goto LABEL_23;
    }

    localDragSession2 = [updateCopy localDragSession];
    localContext = [localDragSession2 localContext];

    payloadType = [localContext payloadType];
    if (payloadType != 1)
    {
      if (!payloadType)
      {
        items = [updateCopy items];
        v41 = [(RCFolderBrowsingCollectionViewController *)self _uuidArrayFromItemArray:items];

        representsPossibleMoveDestination = [v15 representsPossibleMoveDestination];
        browsingDelegate = [(RCFolderBrowsingCollectionViewController *)self browsingDelegate];
        uUID = [v15 UUID];
        v40 = v15;
        folderType = [v15 folderType];
        folderUUID = [localContext folderUUID];
        v24 = [browsingDelegate canMoveRecordingsWithUUIDs:v41 toFolderWithUUID:uUID toFolderType:folderType fromFolderUUID:folderUUID];

        v25 = [UICollectionViewDropProposal alloc];
        if (representsPossibleMoveDestination && (v24 & 1) != 0)
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

    section = [pathCopy section];
    if (section == 1)
    {
      v34 = [UICollectionViewDropProposal alloc];
      v35 = 3;
      v36 = 1;
    }

    else
    {
      if (section)
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

- (id)_uuidArrayFromItemArray:(id)array
{
  arrayCopy = array;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = arrayCopy;
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

        localObject = [*(*(&v13 + 1) + 8 * i) localObject];
        if (localObject)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 addObject:localObject];
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