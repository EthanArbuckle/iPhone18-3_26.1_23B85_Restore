@interface RCRecordingsCollectionViewController
- (BOOL)_isDownloadingAtIndex:(id)a3;
- (BOOL)_supportsSwipeActionsForIndexPath:(id)a3 swipeActionsType:(unint64_t)a4;
- (BOOL)accessibilityPerformEscape;
- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)isSearching;
- (BOOL)presentsRecordingWithUUID:(id)a3;
- (BOOL)selectedCellIsEditingTitle;
- (BOOL)selectedCellIsInFlightEditing;
- (RCCloudRecording)selectedRecording;
- (RCFolderSelectionDelegate)folderSelectionDelegate;
- (RCLibraryActionHandler)libraryActionHandler;
- (RCLibraryEditStateHandler)editStateHandler;
- (RCRecordingsCollectionViewController)initWithBuiltInFolderType:(int64_t)a3 folderUUID:(id)a4;
- (RCRecordingsCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (RCRecordingsCollectionViewController)initWithUserFolderNamed:(id)a3 folderUUID:(id)a4;
- (id)_createCollectionViewLayout;
- (id)_createDiffableDataSource;
- (id)_createSwipeActionWithConfiguration:(id)a3;
- (id)_deleteSwipeActionForUUID:(id)a3 shouldExecuteCompletionBeforeAction:(BOOL)a4;
- (id)_eraseSwipeActionForUUID:(id)a3 shouldExecuteCompletionBeforeAction:(BOOL)a4;
- (id)_favoriteSwipeAction:(BOOL)a3 forUUID:(id)a4;
- (id)_leadingSwipeActionsConfigurationProvider;
- (id)_moreOptionsSwipeActionForUUID:(id)a3 shouldExecuteCompletionBeforeAction:(BOOL)a4;
- (id)_moveToFolderSwipeActionForUUID:(id)a3 shouldExecuteCompletionBeforeAction:(BOOL)a4;
- (id)_scopeBarTitleFor:(int64_t)a3;
- (id)_trailingSwipeActionsConfigurationProvider;
- (id)_uuidForItemAtIndexPath:(id)a3;
- (id)allUUIDs;
- (id)cellForUUID:(id)a3;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)contentUnavailableConfigurationState;
- (id)dataArray;
- (id)selectedUUIDs;
- (id)uuidOfSelectedRecording;
- (int64_t)_expectedNumberOfItems;
- (int64_t)_searchScopeForScopeButtonIndex:(int64_t)a3;
- (void)_addCollectionViewCellToCellsMapTable:(id)a3;
- (void)_animateContentUnavailableUpdateWithCompletion:(id)a3;
- (void)_commonInit;
- (void)_configureCell:(id)a3 usingDisplayModel:(id)a4;
- (void)_handleEditModeFooterAndNavigationItem;
- (void)_handleMove;
- (void)_logHashTable;
- (void)_logWhetherVisibleCellsHaveIntegrity;
- (void)_notifyDelegatesThatSelectionChanged;
- (void)_pauseSelecteditem;
- (void)_performFolderTypeUpdatesOnRecording:(id)a3;
- (void)_removeCollectionViewCellFromCellsMapTable:(id)a3;
- (void)_restyleAllExtantCells;
- (void)_scrollDownToItemAtIndexPathIfNeeded:(id)a3;
- (void)_scrollUpToItemAtIndexPathIfNeeded:(id)a3;
- (void)_setEditing:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)_setSearchString:(id)a3;
- (void)_setupCollectionView;
- (void)_setupSearchController;
- (void)_styleView;
- (void)_toggleEdit;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateCollectionViewContent:(BOOL)a3;
- (void)_updateEditButton;
- (void)_updateEditButtonStateForRecordingsCount:(unint64_t)a3;
- (void)_updateScopeBarTitles;
- (void)_updateSearchBarPlaceholder;
- (void)_updateSearchString:(id)a3;
- (void)_updateUUIDOfSelectedItem;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4 folder:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)contentChangesComplete;
- (void)contentSizeChanged;
- (void)deleteFolder:(id)a3 controller:(id)a4;
- (void)deleteItemAtIndexPath:(id)a3 withUUID:(id)a4;
- (void)deleteSelectedItems;
- (void)deselectSelectedItem;
- (void)didDismissSearchController:(id)a3;
- (void)didEndEditingTitle:(id)a3;
- (void)didPresentSearchController:(id)a3;
- (void)didProcessUpdatesWithRemainingItemCount:(unint64_t)a3;
- (void)didSelectCellWithUUID:(id)a3;
- (void)editSelectedItemTitle;
- (void)editingIsInFlight:(BOOL)a3 progress:(float)a4 forUUID:(id)a5;
- (void)endEditing;
- (void)finishLaunchTests;
- (void)handleDeleteForUUID:(id)a3;
- (void)moveFolder:(id)a3 toDestinationIndexPath:(id)a4;
- (void)performAction:(int64_t)a3 atPosition:(double)a4 forCellWithUUID:(id)a5 source:(id)a6;
- (void)performDropWithSession:(id)a3 folder:(id)a4;
- (void)performRenameWithNewTitle:(id)a3 forCellWithUUID:(id)a4;
- (void)prepareForAdditionOfNewRecordingWithUUID:(id)a3;
- (void)presentViewController:(id)a3 sourceController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)registerAppIntentInteractions;
- (void)reloadItemAtIndexPath:(id)a3 usingDisplayModel:(id)a4;
- (void)renameFolder:(id)a3 toName:(id)a4;
- (void)scrollToRevealPartiallyObscuredItemAtIndexPathIfNeeded:(id)a3;
- (void)scrollToTop;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scroll:(BOOL)a5;
- (void)selectItemWithUUID:(id)a3 animated:(BOOL)a4;
- (void)setCurrentTime:(double)a3 forItemWithUUID:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setRecordingsDataCoordinator:(id)a3;
- (void)setupAppIntentsDataSource;
- (void)showIdleForItemWithUUID:(id)a3;
- (void)showNewFolderUIFromController:(id)a3;
- (void)showPlayingForItemWithUUID:(id)a3;
- (void)showRenamingControllerWithFolderName:(id)a3 controller:(id)a4;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateEditButtonItemTitle;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateToolbarAndFooterView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)wasDeselectedForCellWithUUID:(id)a3;
- (void)willDismissSearchController:(id)a3;
- (void)willSelectItemWithUUID:(id)a3;
@end

@implementation RCRecordingsCollectionViewController

- (void)_commonInit
{
  [(RCRecordingsCollectionViewController *)self setClearsSelectionOnViewWillAppear:0];
  v3 = +[NSMapTable strongToWeakObjectsMapTable];
  cellsMapTable = self->_cellsMapTable;
  self->_cellsMapTable = v3;

  v5 = +[NSHashTable weakObjectsHashTable];
  cellsHashTable = self->_cellsHashTable;
  self->_cellsHashTable = v5;

  v7 = objc_opt_new();
  editingProgressItems = self->_editingProgressItems;
  self->_editingProgressItems = v7;

  v9 = objc_opt_new();
  recordingUUIDToEntityInteraction = self->_recordingUUIDToEntityInteraction;
  self->_recordingUUIDToEntityInteraction = v9;
}

- (id)_createCollectionViewLayout
{
  objc_initWeak(&location, self);
  v2 = [UICollectionViewCompositionalLayout alloc];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001EBC0;
  v5[3] = &unk_10028AA78;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = RCRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v14 viewDidLoad];
  [(RCRecordingsCollectionViewController *)self _setupCollectionView];
  [(RCRecordingsCollectionViewController *)self _updateEditButton];
  [(RCRecordingsCollectionViewController *)self _setupSearchController];
  [(RCRecordingsCollectionViewController *)self setupAppIntentsDataSource];
  [(RCRecordingsCollectionViewController *)self _updateCollectionViewContent:0];
  v3 = [(RCRecordingsCollectionViewController *)self navigationItem];
  v4 = [[UIBarButtonItem alloc] initWithImage:0 style:0 target:self action:"_toggleEdit"];
  [(RCRecordingsCollectionViewController *)self setEditButtonItem:v4];

  v5 = [(RCRecordingsCollectionViewController *)self editButtonItem];
  [v3 setRightBarButtonItem:v5];

  [(RCRecordingsCollectionViewController *)self updateEditButtonItemTitle];
  [v3 setLargeTitleDisplayMode:1];
  [(RCRecordingsCollectionViewController *)self registerAppIntentInteractions];
  [(RCRecordingsCollectionViewController *)self _styleView];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];

  v7 = objc_opt_self();
  v15[0] = v7;
  v8 = objc_opt_self();
  v15[1] = v8;
  v9 = objc_opt_self();
  v15[2] = v9;
  v10 = objc_opt_self();
  v15[3] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:4];
  v12 = [(RCRecordingsCollectionViewController *)self registerForTraitChanges:v11 withAction:"_traitCollectionDidChange:previousTraitCollection:"];

  v13 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
  [v13 registerObserver:self];
}

- (void)_setupCollectionView
{
  v3 = [(RCRecordingsCollectionViewController *)self collectionView];
  [v3 setAccessibilityIdentifier:@"RecordingsList"];

  v4 = [(RCRecordingsCollectionViewController *)self _createDiffableDataSource];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v4;

  v6 = self->_diffableDataSource;
  v7 = [(RCRecordingsCollectionViewController *)self collectionView];
  [v7 setDataSource:v6];

  v8 = [(RCRecordingsCollectionViewController *)self collectionView];
  [v8 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NormalRecordingCellReuseIdentifier"];

  v9 = [(RCRecordingsCollectionViewController *)self collectionView];
  [v9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"RecentlyDeletedRecordingCellReuseIdentifier"];

  v10 = [(RCRecordingsCollectionViewController *)self collectionView];
  [v10 setAllowsMultipleSelectionDuringEditing:1];

  v11 = [(RCRecordingsCollectionViewController *)self collectionView];
  [v11 setSelectionFollowsFocus:1];

  v12 = [(RCRecordingsCollectionViewController *)self collectionView];
  [v12 setDropDelegate:self];
}

- (id)_createDiffableDataSource
{
  objc_initWeak(&location, self);
  v3 = [UICollectionViewDiffableDataSource alloc];
  v4 = [(RCRecordingsCollectionViewController *)self collectionView];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F000;
  v7[3] = &unk_10028B588;
  objc_copyWeak(&v8, &location);
  v5 = [v3 initWithCollectionView:v4 cellProvider:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

- (void)_updateEditButton
{
  if (byte_1002D7088 == 1)
  {
    if (([(RCRecordingsCollectionViewController *)self isEditing]& 1) != 0)
    {
      v4 = [(RCRecordingsCollectionViewController *)self collectionView];
      v5 = [v4 indexPathsForSelectedItems];
      v6 = [v5 count];
    }

    else
    {
      v4 = [(RCRecordingsCollectionViewController *)self dataArray];
      v6 = [v4 count];
    }

    [(RCRecordingsCollectionViewController *)self _updateEditButtonStateForRecordingsCount:v6];
  }
}

- (void)_setupSearchController
{
  v7 = [(RCRecordingsCollectionViewController *)self searchController];
  if (!v7)
  {
    v7 = [[UISearchController alloc] initWithSearchResultsController:0];
    [(RCRecordingsCollectionViewController *)self setSearchController:v7];
    [v7 setDelegate:self];
    [v7 setSearchResultsUpdater:self];
    v3 = [v7 searchBar];
    [v3 setDelegate:self];

    v4 = [v7 searchBar];
    [v4 setClipsToBounds:1];

    v5 = [v7 searchBar];
    [v5 setUserInteractionEnabled:1];

    [v7 setObscuresBackgroundDuringPresentation:0];
    v6 = [v7 searchBar];
    [v6 setLookToDictateEnabled:1];
  }

  [(RCRecordingsCollectionViewController *)self _updateSearchBarPlaceholder];
  [(RCRecordingsCollectionViewController *)self _updateScopeBarTitles];
}

- (void)_updateSearchBarPlaceholder
{
  v3 = [(RCRecordingsCollectionViewController *)self searchController];

  if (v3)
  {
    v4 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
    v5 = [v4 deviceIsSupported];

    v6 = +[NSBundle mainBundle];
    v11 = v6;
    if (v5)
    {
      v7 = @"SEARCH_BAR_PLACEHOLDER_TRANSCRIPTION_SUPPORTED";
    }

    else
    {
      v7 = @"SEARCH_BAR_PLACEHOLDER_DEFAULT";
    }

    v8 = [v6 localizedStringForKey:v7 value:&stru_100295BB8 table:0];
    v9 = [(RCRecordingsCollectionViewController *)self searchController];
    v10 = [v9 searchBar];
    [v10 setPlaceholder:v8];
  }
}

- (void)_updateScopeBarTitles
{
  if ([(RCRecordingsCollectionViewController *)self folderType])
  {
    if ([(RCRecordingsCollectionViewController *)self folderType]!= 3)
    {
      v3 = [(RCRecordingsCollectionViewController *)self _scopeBarTitleFor:0];
      v4 = [(RCRecordingsCollectionViewController *)self _scopeBarTitleFor:1];
      v10[0] = v3;
      v10[1] = v4;
      v5 = [NSArray arrayWithObjects:v10 count:2];
      v6 = [(RCRecordingsCollectionViewController *)self searchController];
      v7 = [v6 searchBar];
      [v7 setScopeButtonTitles:v5];

      v8 = [(RCRecordingsCollectionViewController *)self searchController];
      v9 = [v8 searchBar];
      [v9 setSelectedScopeButtonIndex:1];
    }
  }
}

- (void)setupAppIntentsDataSource
{
  v4 = self;
  v2 = [(RCRecordingsCollectionViewController *)v4 collectionView];
  if (v2)
  {
    v3 = v2;
    sub_10001AE38();
    swift_unknownObjectRetain();
    UICollectionView.appIntentsDataSource.setter();
  }

  else
  {
    __break(1u);
  }
}

- (void)registerAppIntentInteractions
{
  v2 = self;
  sub_10001AF10();
}

- (void)_styleView
{
  v16 = +[RCRecorderStyleProvider sharedStyleProvider];
  [(RCRecordingsCollectionViewController *)self _restyleAllExtantCells];
  v3 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v4 = [v3 objectEnumerator];

  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [v7 UUID];
        v9 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          v11 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
          v12 = [v11 isPlayingForUUID:v8];

          if ((v12 & 1) == 0)
          {
            v13 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
            [v13 currentTime];
            [v7 setCurrentTime:?];
          }
        }
      }

      v14 = [v4 nextObject];

      v6 = v14;
    }

    while (v14);
  }

  if ([v16 pinsSearchBarInLibrary])
  {
    v15 = [(RCRecordingsCollectionViewController *)self navigationItem];
    [v15 setHidesSearchBarWhenScrolling:0];
  }
}

- (void)_restyleAllExtantCells
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(RCRecordingsCollectionViewController *)self cellsHashTable];
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

- (id)_leadingSwipeActionsConfigurationProvider
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100074E80;
  v4[3] = &unk_10028B600;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)_trailingSwipeActionsConfigurationProvider
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100075010;
  v4[3] = &unk_10028B600;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (id)contentUnavailableConfigurationState
{
  v7.receiver = self;
  v7.super_class = RCRecordingsCollectionViewController;
  v3 = [(RCRecordingsCollectionViewController *)&v7 contentUnavailableConfigurationState];
  v4 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v5 = [v4 searchString];
  [v3 setSearchText:v5];

  return v3;
}

- (int64_t)_expectedNumberOfItems
{
  v2 = [(RCRecordingsCollectionViewController *)self dataArray];
  v3 = [v2 count];

  return v3;
}

- (id)dataArray
{
  v2 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v3 = [v2 recordingDataArray];

  return v3;
}

- (RCLibraryActionHandler)libraryActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryActionHandler);

  return WeakRetained;
}

- (void)finishLaunchTests
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 isRunningTest];

  if (v3)
  {
    v5 = +[UIApplication sharedApplication];
    v4 = [v5 delegate];
    [v4 ppt_didShowVoiceMemosList];
  }
}

- (void)setRecordingsDataCoordinator:(id)a3
{
  objc_storeStrong(&self->_recordingsDataCoordinator, a3);
  v5 = a3;
  [v5 setDelegate:self];
}

- (RCCloudRecording)selectedRecording
{
  v3 = [(RCRecordingsCollectionViewController *)self collectionView];
  v4 = [v3 indexPathForSelectedItem];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 item];
    v7 = [(RCRecordingsCollectionViewController *)self dataArray];
    if (v6 >= [v7 count])
    {
      v8 = 0;
    }

    else
    {
      v8 = [v7 objectAtIndexedSubscript:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)uuidOfSelectedRecording
{
  v2 = [(RCRecordingsCollectionViewController *)self selectedRecording];
  v3 = [v2 uuid];

  return v3;
}

- (BOOL)isSearching
{
  v2 = [(RCRecordingsCollectionViewController *)self searchController];
  v3 = [v2 isActive];

  return v3;
}

- (RCRecordingsCollectionViewController)initWithBuiltInFolderType:(int64_t)a3 folderUUID:(id)a4
{
  v6 = a4;
  v7 = [(RCRecordingsCollectionViewController *)self _createCollectionViewLayout];
  v8 = [(RCRecordingsCollectionViewController *)self initWithCollectionViewLayout:v7];

  if (v8)
  {
    [(RCRecordingsCollectionViewController *)v8 setFolderType:a3];
    [(RCRecordingsCollectionViewController *)v8 setFolderUUID:v6];
    v9 = [[RCRecordingsCollectionViewControllerDataCoordinator alloc] initWithFolderType:a3 delegate:v8];
    recordingsDataCoordinator = v8->_recordingsDataCoordinator;
    v8->_recordingsDataCoordinator = v9;
  }

  return v8;
}

- (RCRecordingsCollectionViewController)initWithUserFolderNamed:(id)a3 folderUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RCRecordingsCollectionViewController *)self _createCollectionViewLayout];
  v9 = [(RCRecordingsCollectionViewController *)self initWithCollectionViewLayout:v8];

  if (v9)
  {
    [(RCRecordingsCollectionViewController *)v9 setFolderType:4];
    [(RCRecordingsCollectionViewController *)v9 setUserFolderName:v6];
    [(RCRecordingsCollectionViewController *)v9 setFolderUUID:v7];
    v10 = [[RCRecordingsCollectionViewControllerDataCoordinator alloc] initWithUserFolderNamed:v6 delegate:v9];
    recordingsDataCoordinator = v9->_recordingsDataCoordinator;
    v9->_recordingsDataCoordinator = v10;
  }

  return v9;
}

- (RCRecordingsCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  v6.receiver = self;
  v6.super_class = RCRecordingsCollectionViewController;
  v3 = [(RCRecordingsCollectionViewController *)&v6 initWithCollectionViewLayout:a3];
  v4 = v3;
  if (v3)
  {
    [(RCRecordingsCollectionViewController *)v3 setDefinesPresentationContext:1];
    [(RCRecordingsCollectionViewController *)v4 _commonInit];
    [(RCRecordingsCollectionViewController *)v4 _classSpecificInit];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RCRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v5 viewWillAppear:a3];
  [(RCRecordingsCollectionViewController *)self _updateEditButton];
  [(RCRecordingsCollectionViewController *)self _classSpecificViewWillAppear];
  v4 = [(RCRecordingsCollectionViewController *)self collectionView];
  [v4 setDragDelegate:self];
}

- (void)_updateCollectionViewContent:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  v6 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v7 = [v6 recordingDataArray];

  [v5 appendSectionsWithIdentifiers:&off_10029ABD8];
  [v5 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:&off_10029AA78];
  v8 = [(RCRecordingsCollectionViewController *)self diffableDataSource];
  v9 = [v8 snapshot];
  v10 = [v9 isEqual:v5];

  if ((v10 & 1) == 0)
  {
    if (v3)
    {
      v11 = [(RCRecordingsCollectionViewController *)self diffableDataSource];
      v12 = [v11 snapshot];
      if ([v12 numberOfItems])
      {
      }

      else
      {
        v14 = [v5 numberOfItems];

        if (v14 >= 1)
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_10007214C;
          v17[3] = &unk_10028B5B0;
          v17[4] = self;
          v18 = v5;
          v19 = v3;
          [(RCRecordingsCollectionViewController *)self _animateContentUnavailableUpdateWithCompletion:v17];
          v13 = v18;
          goto LABEL_6;
        }
      }
    }

    v13 = [(RCRecordingsCollectionViewController *)self diffableDataSource];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100072260;
    v15[3] = &unk_10028A988;
    v16 = v3;
    v15[4] = self;
    [v13 applySnapshot:v5 animatingDifferences:v3 completion:v15];
LABEL_6:
  }
}

- (id)_scopeBarTitleFor:(int64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = @"CURRENT_FOLDER";
  }

  else
  {
    v4 = @"ALL_RECORDINGS";
  }

  v5 = +[NSBundle mainBundle];
  v3 = [v5 localizedStringForKey:v4 value:&stru_100295BB8 table:0];

LABEL_6:

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v18.receiver = self;
  v18.super_class = RCRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v18 viewDidAppear:a3];
  if (([(RCRecordingsCollectionViewController *)self isFirstResponder]& 1) == 0)
  {
    v4 = +[UIResponder currentFirstResponder];

    if (!v4)
    {
      [(RCRecordingsCollectionViewController *)self becomeFirstResponder];
    }
  }

  v5 = [(RCRecordingsCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForSelectedItem];

  v7 = [(RCRecordingsCollectionViewController *)self collectionView];
  v8 = v7;
  if (v6)
  {
    [v7 selectItemAtIndexPath:v6 animated:0 scrollPosition:0];
  }

  if (([(RCRecordingsCollectionViewController *)self isEditing]& 1) == 0)
  {
    v9 = [v8 indexPathForSelectedItem];
    if (v9)
    {
      v10 = [v8 cellForItemAtIndexPath:v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v12 = [v11 UUID];
        v13 = [RCRecordingCellDisplayModel recordingDisplayModelForUUID:v12];

        if (v13)
        {
          [(RCRecordingsCollectionViewController *)self _configureCell:v11 usingDisplayModel:v13];
        }
      }
    }
  }

  v14 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  v15 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  [v14 didSelectForUUID:v15 resetPosition:0 force:0];

  [(RCRecordingsCollectionViewController *)self finishLaunchTests];
  v16 = [(RCRecordingsCollectionViewController *)self viewDidAppearCompletionBlock];

  if (v16)
  {
    v17 = [(RCRecordingsCollectionViewController *)self viewDidAppearCompletionBlock];
    v17[2]();

    [(RCRecordingsCollectionViewController *)self setViewDidAppearCompletionBlock:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RCRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v5 viewWillDisappear:a3];
  v4 = [(RCRecordingsCollectionViewController *)self searchController];
  [v4 setActive:0];

  [(RCRecordingsCollectionViewController *)self _updateSearchString:&stru_100295BB8];
  if ([(RCRecordingsCollectionViewController *)self isFirstResponder])
  {
    [(RCRecordingsCollectionViewController *)self resignFirstResponder];
  }
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(RCRecordingsCollectionViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];
  v8 = [v5 userInterfaceStyle];

  if (v7 != v8)
  {

    [(RCRecordingsCollectionViewController *)self restyle];
  }
}

- (void)contentSizeChanged
{
  v3 = [(RCRecordingsCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v5 = [(RCRecordingsCollectionViewController *)self collectionView];
  [v5 reloadData];

  [(RCRecordingsCollectionViewController *)self restyle];
  v6 = [(RCRecordingsCollectionViewController *)self collectionView];
  v7 = [v6 isEditing];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = [(RCRecordingsCollectionViewController *)self collectionView];
          [v14 selectItemAtIndexPath:v13 animated:0 scrollPosition:0];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v15 = [(RCRecordingsCollectionViewController *)self collectionView];
    v16 = [v4 firstObject];
    [v15 selectItemAtIndexPath:v16 animated:0 scrollPosition:0];
  }
}

- (void)_toggleEdit
{
  if (![(RCRecordingsCollectionViewController *)self isUpdatingBottomLayoutForEditing])
  {
    [(RCRecordingsCollectionViewController *)self setEditing:[(RCRecordingsCollectionViewController *)self isEditing]^ 1 animated:1];
    v3 = [(RCRecordingsCollectionViewController *)self isEditing];
    v4 = [(RCRecordingsCollectionViewController *)self editStateHandler];
    [v4 updateBottomLayoutForEditing:v3 isSearching:-[RCRecordingsCollectionViewController isSearching](self delegate:{"isSearching"), self}];

    [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
  }
}

- (void)updateEditButtonItemTitle
{
  v5 = +[NSBundle mainBundle];
  v3 = [v5 localizedStringForKey:@"Select" value:&stru_100295BB8 table:0];
  v4 = [(RCRecordingsCollectionViewController *)self editButtonItem];
  [v4 setTitle:v3];
}

- (void)updateToolbarAndFooterView
{
  if ([(RCRecordingsCollectionViewController *)self isEditing])
  {

    [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
  }
}

- (void)endEditing
{
  if ([(RCRecordingsCollectionViewController *)self isEditing])
  {

    [(RCRecordingsCollectionViewController *)self _toggleEdit];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(RCRecordingsCollectionViewController *)self isEditing];
  v8 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [v8 libraryWillChangeEditingState:v5];

  v9 = [(RCRecordingsCollectionViewController *)self collectionView];
  v10 = 0;
  if (v7 && !v5)
  {
    v11 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
    v10 = v11 != 0;
  }

  [(RCRecordingsCollectionViewController *)self setWillSelectRecordingAfterExitingEditMode:v10];
  objc_initWeak(&location, self);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100072C14;
  v22 = &unk_10028B5D8;
  v25 = v10;
  objc_copyWeak(&v24, &location);
  v12 = v9;
  v23 = v12;
  [(RCRecordingsCollectionViewController *)self _setEditing:v5 animated:v4 withCompletionHandler:&v19];
  if (v5)
  {
    v13 = [(RCRecordingsCollectionViewController *)self editButtonItem:v19];
    [v13 setImage:0];

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];
    v16 = [(RCRecordingsCollectionViewController *)self editButtonItem];
    [v16 setTitle:v15];
  }

  else
  {
    [(RCRecordingsCollectionViewController *)self updateEditButtonItemTitle:v19];
    v14 = [(RCRecordingsCollectionViewController *)self dataArray];
    -[RCRecordingsCollectionViewController _updateEditButtonStateForRecordingsCount:](self, "_updateEditButtonStateForRecordingsCount:", [v14 count]);
  }

  [v12 setSelectionFollowsFocus:v5 ^ 1];
  if (!v5)
  {
    v17 = [(RCRecordingsCollectionViewController *)self editStateHandler];
    [v17 updateBottomLayoutForEditing:0 isSearching:-[RCRecordingsCollectionViewController isSearching](self delegate:{"isSearching"), self}];
  }

  v18 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [v18 libraryDidChangeEditingState];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_setEditing:(BOOL)a3 animated:(BOOL)a4 withCompletionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v15.receiver = self;
  v15.super_class = RCRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v15 setEditing:v6 animated:v5];
  if (v5)
  {
    v9 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v9 collectionViewEditModeAnimationDuration];
    v11 = v10;

    v12 = dispatch_time(0, (v11 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072E38;
    block[3] = &unk_10028A510;
    v14 = v8;
    dispatch_after(v12, &_dispatch_main_q, block);
  }

  else
  {
    v8[2](v8);
  }
}

- (void)_updateUUIDOfSelectedItem
{
  v5 = [(RCRecordingsCollectionViewController *)self collectionView];
  v3 = [v5 indexPathForSelectedItem];
  v4 = [(RCRecordingsCollectionViewController *)self _uuidForItemAtIndexPath:v3];
  [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:v4];
}

- (void)prepareForAdditionOfNewRecordingWithUUID:(id)a3
{
  [(RCRecordingsCollectionViewController *)self setUuidOfNewestRecording:a3];
  v5 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  v4 = [(RCRecordingsCollectionViewController *)self uuidOfNewestRecording];
  [v5 setUUIDToSelectAfterDismiss:v4];
}

- (void)didProcessUpdatesWithRemainingItemCount:(unint64_t)a3
{
  v3 = a3;
  if (!a3)
  {
    [(RCRecordingsCollectionViewController *)self setEditing:?];
  }

  if ([(RCRecordingsCollectionViewController *)self isEditing])
  {
    v5 = [(RCRecordingsCollectionViewController *)self collectionView];
    v6 = [v5 indexPathsForSelectedItems];
    v3 = [v6 count];
  }

  [(RCRecordingsCollectionViewController *)self _updateEditButtonStateForRecordingsCount:v3];
}

- (void)_updateEditButtonStateForRecordingsCount:(unint64_t)a3
{
  v5 = [(RCRecordingsCollectionViewController *)self collectionView];
  v6 = [v5 isEditing];

  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(RCRecordingsCollectionViewController *)self editButtonItem];
  [v8 setEnabled:v7];

  v9 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [v9 updateNavigationItemForCurrentState];
}

- (void)_logWhetherVisibleCellsHaveIntegrity
{
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [(RCRecordingsCollectionViewController *)self collectionView];
  v5 = [v4 visibleCells];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 UUID];
          [v3 addObject:v12];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v13 = objc_opt_new();
  v14 = [(RCRecordingsCollectionViewController *)self dataArray];
  if ([v14 count])
  {
    v15 = 0;
    do
    {
      if ([v3 count] <= v15)
      {
        break;
      }

      v16 = [v14 objectAtIndexedSubscript:v15];
      v17 = [v16 uuid];
      [v13 addObject:v17];

      ++v15;
    }

    while ([v14 count] > v15);
  }

  if ([v3 count])
  {
    v18 = 0;
    while ([v13 count] > v18)
    {
      v19 = [v3 objectAtIndexedSubscript:v18];
      v20 = [v13 objectAtIndexedSubscript:v18];
      v21 = [v19 isEqualToString:v20];

      if ((v21 & 1) == 0)
      {
        v23 = OSLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_1001B84FC();
        }

        v22 = 0;
        goto LABEL_23;
      }

      if ([v3 count] <= ++v18)
      {
        break;
      }
    }
  }

  v22 = 1;
LABEL_23:
  v24 = OSLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_1001B8578(v22, v24);
  }
}

- (void)deleteSelectedItems
{
  v3 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [v3 performAction:15 atPosition:0 forUUID:self sourceController:0 source:0.0];

  [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];

  [(RCRecordingsCollectionViewController *)self setEditing:0 animated:1];
}

- (void)reloadItemAtIndexPath:(id)a3 usingDisplayModel:(id)a4
{
  v13 = a4;
  v5 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [v5 refreshDisplayWithDisplayModel:v13];

  v6 = [(RCRecordingsCollectionViewController *)self collectionView];
  v7 = [v6 window];

  if (v7)
  {
    v8 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
    v9 = [v13 UUID];
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      v11 = [v13 title];
      [v10 setRecordingTitle:v11];

      [v13 duration];
      [v10 setRecordingDuration:?];
      v12 = [v13 creationDate];
      [v10 setCreationDate:v12];

      [v10 setRepresentsDownloadingFile:{objc_msgSend(v13, "representsDownloadingFile")}];
      [v10 setWasManuallyRenamed:{objc_msgSend(v13, "wasManuallyRenamed")}];
      [v10 setHasTranscription:{objc_msgSend(v13, "hasTranscription")}];
      [v10 setHasMultipleTracks:{objc_msgSend(v13, "hasMultipleTracks")}];
      [v10 setIsSpatialRecording:{objc_msgSend(v13, "isSpatialRecording")}];
    }
  }
}

- (void)deleteItemAtIndexPath:(id)a3 withUUID:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v11 = v6;
    v7 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
    v8 = [v11 isEqualToString:v7];

    if (v8)
    {
      [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:0];
    }

    v9 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    [v9 wasDeselectedForUUID:v11];

    v10 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
    [v10 removeObjectForKey:v11];

    v6 = v11;
  }
}

- (void)contentChangesComplete
{
  [(RCRecordingsCollectionViewController *)self _updateCollectionViewContent:[(RCRecordingsCollectionViewController *)self isSearching]^ 1];
  v3 = [(RCRecordingsCollectionViewController *)self dataArray];
  v4 = [v3 count];

  [(RCRecordingsCollectionViewController *)self didProcessUpdatesWithRemainingItemCount:v4];
  if (self->_didInsertItems)
  {
    v5 = [(RCRecordingsCollectionViewController *)self uuidOfNewestRecording];
    if (v5)
    {
      v6 = v5;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v8 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
        [v8 selectNewRecordingForDismiss];
      }
    }
  }
}

- (id)selectedUUIDs
{
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(RCRecordingsCollectionViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(RCRecordingsCollectionViewController *)self dataArray];
        v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v10, "item")}];
        v13 = [v12 uuid];

        [v3 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)allUUIDs
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(RCRecordingsCollectionViewController *)self dataArray];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) uuid];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)cellForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  if ([(RCRecordingsCollectionViewController *)self _expectedNumberOfItems]|| [(RCRecordingsCollectionViewController *)self captureIsUnderway])
  {
    goto LABEL_3;
  }

  v6 = [(RCRecordingsCollectionViewController *)self isSearching];
  if ([(RCRecordingsCollectionViewController *)self isSearching])
  {
    v7 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
    v8 = [v7 searchString];
    v9 = [v8 length];

    if (v6)
    {
      if (v9)
      {
        v4 = +[UIContentUnavailableConfiguration searchConfiguration];
        goto LABEL_4;
      }

LABEL_3:
      v4 = 0;
      goto LABEL_4;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  v10 = +[RCRecorderStyleProvider sharedStyleProvider];
  v17 = +[UIContentUnavailableConfiguration emptyConfiguration];
  v11 = [v10 recordingsContentUnavailableImage];
  [v17 setImage:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"RECORDINGS_CONTENT_UNAVAILABLE_TEXT" value:&stru_100295BB8 table:0];
  [v17 setText:v13];

  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"PLAYBACK_CONTENT_TAP_TO_RECORD_DESCRIPTION" value:&stru_100295BB8 table:0];
  [v17 setSecondaryText:v15];

  v4 = v17;
LABEL_4:
  v16 = v4;
  [(RCRecordingsCollectionViewController *)self setContentUnavailableConfiguration:v4];
  v5 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [v5 libraryChangedEmptyState];
}

- (void)_animateContentUnavailableUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v5 contentUnavailableViewAnimationDuration];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100073CDC;
  v6[3] = &unk_10028A3B8;
  v6[4] = self;
  [UIView animateWithDuration:v6 animations:v4 completion:?];
}

- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scroll:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v10 = a3;
  v8 = [(RCRecordingsCollectionViewController *)self collectionView];
  v9 = v8;
  if (v5)
  {
    [v8 scrollToItemAtIndexPath:v10 atScrollPosition:1 animated:v6];
  }

  [v9 selectItemAtIndexPath:v10 animated:v6 scrollPosition:0];
  [(RCRecordingsCollectionViewController *)self _updateUUIDOfSelectedItem];
  [(RCRecordingsCollectionViewController *)self _notifyDelegatesThatSelectionChanged];
}

- (void)deselectSelectedItem
{
  v6 = [(RCRecordingsCollectionViewController *)self collectionView];
  v3 = [v6 indexPathForSelectedItem];
  if (v3)
  {
    [v6 deselectItemAtIndexPath:v3 animated:0];
    v4 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    v5 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
    [v4 wasDeselectedForUUID:v5];

    [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:0];
  }
}

- (void)scrollToTop
{
  if ([(RCRecordingsCollectionViewController *)self _expectedNumberOfItems]>= 2)
  {
    v4 = [(RCRecordingsCollectionViewController *)self collectionView];
    v3 = [NSIndexPath indexPathForItem:0 inSection:0];
    [v4 scrollToItemAtIndexPath:v3 atScrollPosition:1 animated:0];
  }
}

- (BOOL)presentsRecordingWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v6 = [v5 indexOfUUID:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = [(RCRecordingsCollectionViewController *)self collectionView];
  v7 = v6 < [v8 numberOfItemsInSection:0];

  return v7;
}

- (void)willSelectItemWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v6 = [v5 indexOfUUID:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [NSIndexPath indexPathForItem:v6 inSection:0];
    [(RCRecordingsCollectionViewController *)self scrollToRevealPartiallyObscuredItemAtIndexPathIfNeeded:v7];
  }
}

- (void)selectItemWithUUID:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v8 = [v7 indexOfUUID:v6];

  LODWORD(v7) = [(RCRecordingsCollectionViewController *)self presentsRecordingWithUUID:v6];
  if (v7)
  {
    v12 = [NSIndexPath indexPathForItem:v8 inSection:0];
    v9 = [(RCRecordingsCollectionViewController *)self collectionView];
    v10 = [v9 cellForItemAtIndexPath:v12];

    [(RCRecordingsCollectionViewController *)self selectItemAtIndexPath:v12 animated:v4 scroll:v10 == 0];
  }

  else
  {
    v11 = OSLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B861C(v11);
    }
  }
}

- (void)_handleEditModeFooterAndNavigationItem
{
  v2 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [v2 updateNavigationItemForCurrentState];
}

- (void)handleDeleteForUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {

    [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:0];
  }
}

- (void)showNewFolderUIFromController:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [v5 showNewFolderUIFromController:v4];
}

- (void)showRenamingControllerWithFolderName:(id)a3 controller:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [v8 showRenamingControllerWithFolderName:v7 controller:v6];
}

- (void)moveFolder:(id)a3 toDestinationIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [v8 moveFolder:v7 toDestinationIndexPath:v6];
}

- (void)deleteFolder:(id)a3 controller:(id)a4
{
  v5 = a3;
  v6 = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [v6 deleteFolder:v5 controller:self completionBlock:0];
}

- (void)renameFolder:(id)a3 toName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [v8 renameFolder:v7 toName:v6];
}

- (void)presentViewController:(id)a3 sourceController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [v13 presentViewController:v12 sourceController:v11 animated:v6 completion:v10];
}

- (void)_handleMove
{
  v5 = objc_opt_new();
  v3 = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [v5 setSelectionDelegate:v3];

  v4 = [(RCRecordingsCollectionViewController *)self navigationController];
  [v4 pushViewController:v5 animated:1];
}

- (BOOL)collectionView:(id)a3 canHandleDropSession:(id)a4
{
  v4 = a4;
  v5 = [v4 localDragSession];

  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = +[RCCaptureFormat supportedFileTypeIdentifiers];
    v6 = [v4 hasItemsConformingToTypeIdentifiers:v7];
  }

  return v6;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4 folder:(id)a5
{
  v7 = a5;
  v8 = [a4 session];
  [(RCRecordingsCollectionViewController *)self performDropWithSession:v8 folder:v7];
}

- (void)performDropWithSession:(id)a3 folder:(id)a4
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [a3 items];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) itemProvider];
        v11 = [v10 rc_supportedFileTypesRepresented];
        v12 = [v11 firstObject];

        if (v10)
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10007483C;
          v15[3] = &unk_10028B260;
          v15[4] = self;
          v14 = [v10 loadFileRepresentationForTypeIdentifier:v12 completionHandler:v15];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_performFolderTypeUpdatesOnRecording:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self folderType];
  if (v5 == 1)
  {
    v10 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    v11 = [v4 uuid];
    [v10 setFavorite:1 forRecordingWithUUID:v11];
  }

  else if (v5 == 4)
  {
    v6 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    v7 = [v4 uuid];
    v12 = v7;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [(RCRecordingsCollectionViewController *)self userFolderName];
    [v6 moveRecordingsWithUUIDs:v8 toUserFolderNamed:v9 source:self];
  }
}

- (void)_configureCell:(id)a3 usingDisplayModel:(id)a4
{
  v19 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 UUID];
    v8 = v19;
    v9 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
    [v9 setObject:v8 forKey:v7];

    [v8 setCellDelegate:self];
    [v8 setUUID:v7];
    v10 = [v6 title];
    [v8 setRecordingTitle:v10];

    [v6 duration];
    [v8 setRecordingDuration:?];
    v11 = [v6 creationDate];
    [v8 setCreationDate:v11];

    [v8 setRepresentsDownloadingFile:{objc_msgSend(v6, "representsDownloadingFile")}];
    [v8 setWasManuallyRenamed:{objc_msgSend(v6, "wasManuallyRenamed")}];
    [v8 setHasTranscription:{objc_msgSend(v6, "hasTranscription")}];
    [v8 setHasMultipleTracks:{objc_msgSend(v6, "hasMultipleTracks")}];
    [v8 setIsRecentlyDeleted:{objc_msgSend(v6, "recentlyDeleted")}];
    [v8 setIsSpatialRecording:{objc_msgSend(v6, "isSpatialRecording")}];
    v12 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    v13 = [v12 isPlayingForUUID:v7];

    if (v13)
    {
      [v8 setPlayControlState:1];
    }

    else
    {
      [v8 setPlayControlState:0];
      v14 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
      [v14 currentTime];
      v16 = v15;

      [v8 setCurrentTime:v16];
    }

    v17 = [(RCRecordingsCollectionViewController *)self editingProgressItems];
    v18 = [v17 objectForKeyedSubscript:v7];

    if (v18)
    {
      [v8 setEditingInFlight:1];
      [v18 floatValue];
      [v8 setEditingProgress:?];
    }

    else
    {
      [v8 setEditingInFlight:0];
    }
  }
}

- (void)_removeCollectionViewCellFromCellsMapTable:(id)a3
{
  v9 = a3;
  v4 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v9;
    v6 = [v5 UUID];
    if (v6)
    {
      v7 = [v4 objectForKey:v6];
      v8 = v7;
      if (v7 && v7 == v5)
      {
        [v4 removeObjectForKey:v6];
      }
    }
  }
}

- (id)_favoriteSwipeAction:(BOOL)a3 forUUID:(id)a4
{
  v6 = a4;
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  v8 = +[NSBundle mainBundle];
  v9 = v8;
  if (a3)
  {
    v10 = [v8 localizedStringForKey:@"ADD_TO_FAVORITES" value:&stru_100295BB8 table:0];

    v11 = [v7 notFavoriteImageForSwipeAction];
    v12 = 36;
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"REMOVE_FROM_FAVORITES" value:&stru_100295BB8 table:0];

    v11 = [v7 favoriteImageForSwipeAction];
    v12 = 37;
  }

  v13 = [[RCSwipeActionConfiguration alloc] initWithControlsAction:v12 recordingUUID:v6 actionTitle:v10];

  [(RCSwipeActionConfiguration *)v13 setActionImage:v11];
  [(RCSwipeActionConfiguration *)v13 setActionImageAxLabel:v10];
  v14 = [(RCSwipeActionConfiguration *)v13 actionImage];
  [v14 setAccessibilityIdentifier:@"RecordingsList/SwipeAction/Favorite"];

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100075458;
  v21 = &unk_10028B628;
  v23 = a3;
  v22 = v7;
  v15 = v7;
  [(RCSwipeActionConfiguration *)v13 setCustomCompletionBlock:&v18];
  v16 = [(RCRecordingsCollectionViewController *)self _createSwipeActionWithConfiguration:v13, v18, v19, v20, v21];

  return v16;
}

- (id)_deleteSwipeActionForUUID:(id)a3 shouldExecuteCompletionBeforeAction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [RCSwipeActionConfiguration alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];
  v10 = [(RCSwipeActionConfiguration *)v7 initWithControlsAction:14 recordingUUID:v6 actionTitle:v9];

  [(RCSwipeActionConfiguration *)v10 setActionStyle:1];
  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  v12 = [v11 swipeTrashImage];
  [(RCSwipeActionConfiguration *)v10 setActionImage:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"AX_DELETE" value:&stru_100295BB8 table:0];
  [(RCSwipeActionConfiguration *)v10 setActionImageAxLabel:v14];

  v15 = [(RCSwipeActionConfiguration *)v10 actionImage];
  [v15 setAccessibilityIdentifier:@"RecordingsList/SwipeAction/Delete"];

  v16 = [(RCRecordingsCollectionViewController *)self cellForUUID:v6];

  v17 = [v16 contentView];
  [(RCSwipeActionConfiguration *)v10 setSourceItem:v17];

  [(RCSwipeActionConfiguration *)v10 setShouldExecuteCompletionBeforeAction:v4];
  v18 = [(RCRecordingsCollectionViewController *)self _createSwipeActionWithConfiguration:v10];

  return v18;
}

- (id)_eraseSwipeActionForUUID:(id)a3 shouldExecuteCompletionBeforeAction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [RCSwipeActionConfiguration alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];
  v10 = [(RCSwipeActionConfiguration *)v7 initWithControlsAction:16 recordingUUID:v6 actionTitle:v9];

  [(RCSwipeActionConfiguration *)v10 setActionStyle:1];
  v11 = [(RCSwipeActionConfiguration *)v10 actionImage];
  [v11 setAccessibilityIdentifier:@"RecordingsList/SwipeAction/Erase"];

  v12 = [(RCRecordingsCollectionViewController *)self cellForUUID:v6];

  [(RCSwipeActionConfiguration *)v10 setSourceItem:v12];
  [(RCSwipeActionConfiguration *)v10 setShouldExecuteCompletionBeforeAction:v4];
  v13 = [(RCRecordingsCollectionViewController *)self _createSwipeActionWithConfiguration:v10];

  return v13;
}

- (id)_moveToFolderSwipeActionForUUID:(id)a3 shouldExecuteCompletionBeforeAction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [RCSwipeActionConfiguration alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"MOVE_TO_FOLDER" value:&stru_100295BB8 table:0];
  v10 = [(RCSwipeActionConfiguration *)v7 initWithControlsAction:40 recordingUUID:v6 actionTitle:v9];

  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  v12 = [v11 filledMoveToFolderImage];
  [(RCSwipeActionConfiguration *)v10 setActionImage:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"AX_MOVE_TO_FOLDER" value:&stru_100295BB8 table:0];
  [(RCSwipeActionConfiguration *)v10 setActionImageAxLabel:v14];

  v15 = [(RCSwipeActionConfiguration *)v10 actionImage];
  [v15 setAccessibilityIdentifier:@"RecordingsList/SwipeAction/MoveToFolder"];

  v16 = +[UIColor systemBlueColor];
  [(RCSwipeActionConfiguration *)v10 setActionBackgroundColor:v16];

  v17 = [(RCRecordingsCollectionViewController *)self cellForUUID:v6];

  v18 = [v17 contentView];
  [(RCSwipeActionConfiguration *)v10 setSourceItem:v18];

  [(RCSwipeActionConfiguration *)v10 setShouldExecuteCompletionBeforeAction:v4];
  v19 = [(RCRecordingsCollectionViewController *)self _createSwipeActionWithConfiguration:v10];

  return v19;
}

- (id)_moreOptionsSwipeActionForUUID:(id)a3 shouldExecuteCompletionBeforeAction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [RCSwipeActionConfiguration alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"MORE_ACTIONS" value:&stru_100295BB8 table:0];
  v10 = [(RCSwipeActionConfiguration *)v7 initWithControlsAction:27 recordingUUID:v6 actionTitle:v9];

  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  v12 = [v11 ellipsisImage];
  [(RCSwipeActionConfiguration *)v10 setActionImage:v12];

  v13 = [(RCSwipeActionConfiguration *)v10 actionImage];
  [v13 setAccessibilityIdentifier:@"RecordingsList/SwipeAction/MoreActions"];

  v14 = [(RCRecordingsCollectionViewController *)self cellForUUID:v6];

  [(RCSwipeActionConfiguration *)v10 setSourceItem:v14];
  [(RCSwipeActionConfiguration *)v10 setShouldExecuteCompletionBeforeAction:v4];
  v15 = [(RCRecordingsCollectionViewController *)self _createSwipeActionWithConfiguration:v10];

  return v15;
}

- (id)_createSwipeActionWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 actionStyle];
  v6 = [v4 actionTitle];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100075CD0;
  v20 = &unk_10028B650;
  v7 = v4;
  v21 = v7;
  v22 = self;
  v8 = [UIContextualAction contextualActionWithStyle:v5 title:v6 handler:&v17];

  v9 = [v7 actionImage];

  if (v9)
  {
    v10 = [v7 actionImage];
    [v8 setImage:v10];
  }

  v11 = [v7 actionImageAxLabel];

  if (v11)
  {
    v12 = [v7 actionImageAxLabel];
    v13 = [v8 image];
    [v13 setAccessibilityLabel:v12];
  }

  v14 = [v7 actionBackgroundColor];

  if (v14)
  {
    v15 = [v7 actionBackgroundColor];
    [v8 setBackgroundColor:v15];
  }

  return v8;
}

- (BOOL)_supportsSwipeActionsForIndexPath:(id)a3 swipeActionsType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v8 = [v7 uuidAtIndexPath:v6];

  v9 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v10 = [v9 objectForKey:v8];

  v11 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  v12 = [v11 isEditingInFlightForUUID:v8];

  LOBYTE(v11) = [v10 isEditingTitle];
  objc_opt_class();
  LOBYTE(a4) = v12 | v11 | (a4 == 0) & objc_opt_isKindOfClass();

  return (a4 & 1) == 0;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v9 = [v8 uuidAtIndexPath:v7];

  v10 = [v6 indexPathForSelectedItem];
  v11 = [(RCRecordingsCollectionViewController *)self _isDownloadingAtIndex:v7];
  if ([v6 isEditing])
  {
    v12 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    v13 = [v12 isEditingInFlightForUUID:v9];

    v14 = v13 ^ 1;
    if (v10)
    {
LABEL_3:
      v15 = [v10 compare:v7] != 0;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 1;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = 1;
LABEL_6:
  v16 = (v11 ^ 1) & v14 & v15;
  if (v16 == 1)
  {
    v17 = [v6 cellForItemAtIndexPath:v7];
    -[RCRecordingsCollectionViewController setIsSelectingCellForFocusUpdate:](self, "setIsSelectingCellForFocusUpdate:", [v17 isFocused]);
  }

  return v16;
}

- (void)scrollToRevealPartiallyObscuredItemAtIndexPathIfNeeded:(id)a3
{
  v7 = a3;
  v4 = [(RCRecordingsCollectionViewController *)self collectionView];
  v5 = [v4 indexPathsForVisibleItems];
  v6 = [v5 containsObject:v7];

  if (v6)
  {
    [(RCRecordingsCollectionViewController *)self _scrollDownToItemAtIndexPathIfNeeded:v7];
    [(RCRecordingsCollectionViewController *)self _scrollUpToItemAtIndexPathIfNeeded:v7];
  }
}

- (void)_scrollUpToItemAtIndexPathIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];
  [v6 frame];
  v8 = v7;
  [v5 contentOffset];
  v10 = v9;
  [v5 safeAreaInsets];
  v12 = v11;
  v13 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v13 explicitlyScrollsToRecordingsCollectionViewItemOnSelection])
  {
    v14 = v8 < v10 + v12;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    +[CATransaction begin];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100076290;
    v18 = &unk_10028A650;
    v19 = v5;
    v20 = v4;
    [CATransaction setCompletionBlock:&v15];
    [CATransaction commit:v15];
  }
}

- (void)_scrollDownToItemAtIndexPathIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  [v5 contentOffset];
  v12 = v11;
  [v5 frame];
  v14 = v13;
  [v5 contentInset];
  v16 = v15;
  [v5 contentInset];
  v18 = v17;
  v19 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v19 explicitlyScrollsToRecordingsCollectionViewItemOnSelection] && v8 + v10 > v12 + v14 - v16 - v18)
  {
    +[CATransaction begin];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100076424;
    v23 = &unk_10028A650;
    v24 = v5;
    v25 = v4;
    [CATransaction setCompletionBlock:&v20];
    [CATransaction commit:v20];
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RCRecordingsCollectionViewController *)self _addCollectionViewCellToCellsMapTable:v6];
  }
}

- (void)_addCollectionViewCellToCellsMapTable:(id)a3
{
  v8 = a3;
  v4 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v8;
    v6 = [v5 UUID];
    if (v6)
    {
      v7 = [v4 objectForKey:v6];
      if (!v7)
      {
        [v4 setObject:v5 forKey:v6];
      }
    }
  }
}

- (BOOL)_isDownloadingAtIndex:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v6 = [v5 isDownloadingAtIndexPath:v4];

  return v6;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v11 = a4;
  v6 = a3;
  v7 = [(RCRecordingsCollectionViewController *)self searchController];
  if ([v7 isActive] && !-[RCRecordingsCollectionViewController isSelectingCellForFocusUpdate](self, "isSelectingCellForFocusUpdate"))
  {
    v8 = [v7 searchBar];
    [v8 resignFirstResponder];
  }

  [(RCRecordingsCollectionViewController *)self setInDidSelect:1];
  v9 = [v6 cellForItemAtIndexPath:v11];

  [(RCRecordingsCollectionViewController *)self setInDidSelect:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(RCRecordingsCollectionViewController *)self isEditing]& 1) == 0)
  {
    v10 = [v9 UUID];
    [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:v10];
  }

  [(RCRecordingsCollectionViewController *)self scrollToRevealPartiallyObscuredItemAtIndexPathIfNeeded:v11];
  [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, v9);
  [(RCRecordingsCollectionViewController *)self setIsSelectingCellForFocusUpdate:0];
  [(RCRecordingsCollectionViewController *)self _notifyDelegatesThatSelectionChanged];
}

- (void)_notifyDelegatesThatSelectionChanged
{
  if (([(RCRecordingsCollectionViewController *)self isEditing]& 1) == 0)
  {
    v3 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];

    if (v3)
    {
      v4 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
      [(RCRecordingsCollectionViewController *)self didSelectCellWithUUID:v4];
    }
  }
}

- (void)_pauseSelecteditem
{
  v4 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  v3 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  [v4 performAction:1 atPosition:v3 forUUID:0 sourceController:0 source:0.0];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v5 = [(RCRecordingsCollectionViewController *)self _uuidForItemAtIndexPath:a4];
  [(RCRecordingsCollectionViewController *)self wasDeselectedForCellWithUUID:v5];
  [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  if (([(RCRecordingsCollectionViewController *)self isEditing:a3]& 1) == 0)
  {

    [(RCRecordingsCollectionViewController *)self _toggleEdit];
  }
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  v10 = [v9 showsMoreActionsContextMenu];

  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000769D0;
    v13[3] = &unk_10028B678;
    v14 = v8;
    v15 = self;
    v16 = x;
    v17 = y;
    v11 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)performAction:(int64_t)a3 atPosition:(double)a4 forCellWithUUID:(id)a5 source:(id)a6
{
  if (a5)
  {
    v10 = a6;
    v11 = a5;
    v12 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    [v12 performAction:a3 atPosition:v11 forUUID:self sourceController:v10 source:a4];
  }
}

- (void)showPlayingForItemWithUUID:(id)a3
{
  v8 = a3;
  v4 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v5 = [v4 indexOfUUID:v8];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
    v7 = [v6 objectForKey:v8];

    [v7 setPlayControlState:1];
  }
}

- (void)showIdleForItemWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v8 = [v5 objectForKey:v4];

  if (v8)
  {
    v6 = [(RCRecordingsCollectionViewController *)self collectionView];
    v7 = [v6 indexPathForCell:v8];

    if (v7)
    {
      [v8 setPlayControlState:0];
    }
  }
}

- (void)setCurrentTime:(double)a3 forItemWithUUID:(id)a4
{
  v12 = a4;
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  v7 = [v6 expandsRecordingsCollectionViewItemOnSelection];

  if (v7)
  {
    v8 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
    v9 = [v8 indexOfUUID:v12];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
      v11 = [v10 objectForKey:v12];

      [v11 setCurrentTime:a3];
    }
  }
}

- (void)editingIsInFlight:(BOOL)a3 progress:(float)a4 forUUID:(id)a5
{
  v6 = a3;
  v18 = a5;
  if (v6)
  {
    *&v8 = a4;
    v9 = [NSNumber numberWithFloat:v8];
    v10 = [(RCRecordingsCollectionViewController *)self editingProgressItems];
    [v10 setObject:v9 forKeyedSubscript:v18];
  }

  else
  {
    v9 = [(RCRecordingsCollectionViewController *)self editingProgressItems];
    [v9 setObject:0 forKeyedSubscript:v18];
  }

  v11 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v12 = [v11 objectForKey:v18];

  if (v12)
  {
    v13 = +[RCRecorderStyleProvider sharedStyleProvider];
    v14 = [v13 expandsRecordingsCollectionViewItemOnSelection];

    [v12 setEditingInFlight:v6];
    *&v15 = a4;
    [v12 setEditingProgress:v15];
    if (!v6)
    {
      if (v14)
      {
        v16 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
        v17 = [v16 isEqualToString:v18];

        if (v17)
        {
          [(RCRecordingsCollectionViewController *)self selectItemWithUUID:v18];
        }
      }
    }
  }
}

- (void)performRenameWithNewTitle:(id)a3 forCellWithUUID:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    [v8 performRenameWithNewTitle:v7 forUUID:v6];
  }
}

- (void)didSelectCellWithUUID:(id)a3
{
  v20 = a3;
  v4 = [(RCRecordingsCollectionViewController *)self uuidOfNewestRecording];
  if (v4)
  {
    v5 = [(RCRecordingsCollectionViewController *)self uuidOfNewestRecording];
    v6 = [v20 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  if (v20)
  {
    v7 = [(RCRecordingsCollectionViewController *)self uuidOfNewestRecording];
    v8 = (v7 == 0) | v6;

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 1;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  v10 = [v9 expandsRecordingsCollectionViewItemOnSelection];

  if (v10)
  {
    v11 = [(RCRecordingsCollectionViewController *)self diffableDataSource];
    v12 = [(RCRecordingsCollectionViewController *)self diffableDataSource];
    v13 = [v12 snapshot];
    [v11 applySnapshot:v13 animatingDifferences:1];
  }

  [(RCRecordingsCollectionViewController *)self setUuidOfNewestRecording:0];
  v8 = 0;
LABEL_11:
  v14 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v15 = [v14 objectForKey:v20];

  if ((v6 & 1) == 0)
  {
    if (([v15 isSelected] & 1) != 0 || (objc_msgSend(v15, "configurationState"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEditing"), v16, v17))
    {
      v8 = 0;
    }
  }

  v18 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [v18 didSelectForUUID:v20 resetPosition:v8 & 1 force:0];

  if (![(RCRecordingsCollectionViewController *)self willSelectRecordingAfterExitingEditMode])
  {
    v19 = [(RCRecordingsCollectionViewController *)self splitViewController];
    [v19 hidePrimaryColumnIfNeeded];
  }
}

- (void)wasDeselectedForCellWithUUID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    [v5 wasDeselectedForUUID:v4];
  }
}

- (void)didEndEditingTitle:(id)a3
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [(RCRecordingsCollectionViewController *)self cellWhoseTitleIsBeingEdited];
  v7 = [v6 UUID];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    [(RCRecordingsCollectionViewController *)self setCellWhoseTitleIsBeingEdited:0];
  }

  else
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001B879C(self, v4, v9);
    }
  }
}

- (id)_uuidForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self dataArray];
  if (!v4)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = 0;
  if ([v4 item] != 0x7FFFFFFFFFFFFFFFLL && v5)
  {
    v7 = [v4 item];
    if (v7 < [v5 count])
    {
      v8 = [(RCRecordingsCollectionViewController *)self dataArray];
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
      v6 = [v9 uuid];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (void)didPresentSearchController:(id)a3
{
  v6 = a3;
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v3 = [v6 searchBar];
    v4 = [v3 searchField];

    v5 = +[UIColor blackColor];
    [v4 setTextColor:v5];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v5 = [v4 text];

  [(RCRecordingsCollectionViewController *)self _updateSearchString:v5];
}

- (void)willDismissSearchController:(id)a3
{
  [(RCRecordingsCollectionViewController *)self _updateSearchString:&stru_100295BB8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(RCRecordingsCollectionViewController *)self collectionView];
  v5 = [v4 visibleCells];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 resignFirstResponderForTitleEditing];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)didDismissSearchController:(id)a3
{
  v4 = [(RCRecordingsCollectionViewController *)self collectionView];
  [v4 becomeFirstResponder];

  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v6 = [v5 supportsHideRecordButtonDuringSearch];

  if (v6)
  {
    v7 = [(RCRecordingsCollectionViewController *)self editStateHandler];
    [v7 updateBottomLayoutForEditing:-[RCRecordingsCollectionViewController isEditing](self isSearching:"isEditing") delegate:{0, self}];
  }
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  v6 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v9 = [v6 searchString];

  v7 = [(RCRecordingsCollectionViewController *)self _searchScopeForScopeButtonIndex:a4];
  v8 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  [v8 setSearchString:v9 inScope:v7];
}

- (int64_t)_searchScopeForScopeButtonIndex:(int64_t)a3
{
  result = a3;
  if (a3 >= 2)
  {
    v4 = OSLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8850(v4);
    }

    return 1;
  }

  return result;
}

- (void)_updateSearchString:(id)a3
{
  v4 = a3;
  v5 = [(RCRecordingsCollectionViewController *)self searchController];
  v9 = [v5 searchBar];

  v6 = [v9 scopeButtonTitles];

  if (v6)
  {
    v7 = -[RCRecordingsCollectionViewController _searchScopeForScopeButtonIndex:](self, "_searchScopeForScopeButtonIndex:", [v9 selectedScopeButtonIndex]);
  }

  else
  {
    v7 = 1;
  }

  v8 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  [v8 setSearchString:v4 inScope:v7];

  [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
  [(RCRecordingsCollectionViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_setSearchString:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingsCollectionViewController *)self searchController];
  v5 = [v6 searchBar];
  [v5 setText:v4];
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = [a5 item];
  v9 = [(RCRecordingsCollectionViewController *)self dataArray];
  if (v8 >= [v9 count])
  {
    goto LABEL_6;
  }

  v10 = [v9 objectAtIndexedSubscript:v8];
  v11 = [RCComposition compositionLoadedForSavedRecording:v10];
  if (![v11 compositionIsShareable])
  {

LABEL_6:
    v26 = &__NSArray0__struct;
    goto LABEL_11;
  }

  v12 = [[RCShareableComposition alloc] initWithComposition:v11];
  v13 = objc_opt_new();
  v30 = 0;
  v14 = [(RCShareableComposition *)v12 registerAudioFileRepresentationWithItemProvider:v13 error:&v30];
  v15 = v30;
  if (v14)
  {
    v16 = [v10 title];
    [v10 url];
    v17 = v28 = v15;
    [v17 pathExtension];
    v18 = v29 = v12;
    v19 = [v16 stringByAppendingPathExtension:v18];

    [v13 setSuggestedName:v19];
    v20 = [[UIDragItem alloc] initWithItemProvider:v13];
    v21 = [v10 uuid];
    [v20 setLocalObject:v21];

    v22 = [(RCRecordingsCollectionViewController *)self folderType];
    v23 = [(RCRecordingsCollectionViewController *)self folderUUID];
    v24 = v22;
    v15 = v28;
    v25 = [RCLocalDropContext dropContextWithFolderType:v24 folderUUID:v23 folderIndexPath:0 payloadType:0];

    [v7 setLocalContext:v25];
    v31 = v20;
    v26 = [NSArray arrayWithObjects:&v31 count:1];

    v12 = v29;
  }

  else
  {
    v19 = OSLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1001B88D4();
    }

    v26 = &__NSArray0__struct;
  }

LABEL_11:

  return v26;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v4 = [(RCRecordingsCollectionViewController *)self libraryActionHandler:a3];
  [v4 willBeginDragSession];
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  v4 = [(RCRecordingsCollectionViewController *)self libraryActionHandler:a3];
  [v4 didEndDragSession];
}

- (BOOL)accessibilityPerformEscape
{
  if ([(RCRecordingsCollectionViewController *)self isEditing])
  {
    [(RCRecordingsCollectionViewController *)self _toggleEdit];
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"ENDED_EDITING" value:&stru_100295BB8 table:0];

    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v4);
    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = RCRecordingsCollectionViewController;
    return [(RCRecordingsCollectionViewController *)&v6 accessibilityPerformEscape];
  }
}

- (BOOL)selectedCellIsEditingTitle
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [(RCRecordingsCollectionViewController *)self cellWhoseTitleIsBeingEdited];

    if (!v3)
    {
      v5 = [(RCRecordingsCollectionViewController *)self recentlyDeletedCollectionViewController];
      v7 = [v5 selectedCellIsEditingTitle];
      goto LABEL_12;
    }
  }

  v4 = [(RCRecordingsCollectionViewController *)self cellWhoseTitleIsBeingEdited];
  v5 = v4;
  if (v4 && ([v4 isEditingTitle] & 1) == 0)
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8954();
    }
  }

  if ([v5 isEditingTitle])
  {
    v7 = [v5 isSelected];
LABEL_12:
    v8 = v7;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (BOOL)selectedCellIsInFlightEditing
{
  v3 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  if (v3)
  {
    v4 = [(RCRecordingsCollectionViewController *)self editingProgressItems];
    v5 = [v4 objectForKeyedSubscript:v3];

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)editSelectedItemTitle
{
  v3 = [(RCRecordingsCollectionViewController *)self collectionView];
  if ([v3 numberOfItemsInSection:0] >= 1)
  {
    v4 = [v3 indexPathForSelectedItem];
    if (v4)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100077FE8;
      v7[3] = &unk_10028A650;
      v8 = v3;
      v9 = v4;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100077FFC;
      v5[3] = &unk_10028B6A0;
      v5[4] = self;
      v6 = v9;
      [UIView animateWithDuration:v7 animations:v5 completion:0.3];
    }
  }
}

- (void)_logHashTable
{
  v2 = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v8 = [v2 objectEnumerator];

  v3 = [v8 nextObject];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v4 UUID];
        NSLog(@"cell at index %d has UUID: %@", v5, v6);

        v5 = (v5 + 1);
      }

      v7 = [v8 nextObject];

      v4 = v7;
    }

    while (v7);
  }
}

- (RCLibraryEditStateHandler)editStateHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_editStateHandler);

  return WeakRetained;
}

- (RCFolderSelectionDelegate)folderSelectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_folderSelectionDelegate);

  return WeakRetained;
}

@end