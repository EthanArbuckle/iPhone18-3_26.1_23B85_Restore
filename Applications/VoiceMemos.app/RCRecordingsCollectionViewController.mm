@interface RCRecordingsCollectionViewController
- (BOOL)_isDownloadingAtIndex:(id)index;
- (BOOL)_supportsSwipeActionsForIndexPath:(id)path swipeActionsType:(unint64_t)type;
- (BOOL)accessibilityPerformEscape;
- (BOOL)collectionView:(id)view canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)isSearching;
- (BOOL)presentsRecordingWithUUID:(id)d;
- (BOOL)selectedCellIsEditingTitle;
- (BOOL)selectedCellIsInFlightEditing;
- (RCCloudRecording)selectedRecording;
- (RCFolderSelectionDelegate)folderSelectionDelegate;
- (RCLibraryActionHandler)libraryActionHandler;
- (RCLibraryEditStateHandler)editStateHandler;
- (RCRecordingsCollectionViewController)initWithBuiltInFolderType:(int64_t)type folderUUID:(id)d;
- (RCRecordingsCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (RCRecordingsCollectionViewController)initWithUserFolderNamed:(id)named folderUUID:(id)d;
- (id)_createCollectionViewLayout;
- (id)_createDiffableDataSource;
- (id)_createSwipeActionWithConfiguration:(id)configuration;
- (id)_deleteSwipeActionForUUID:(id)d shouldExecuteCompletionBeforeAction:(BOOL)action;
- (id)_eraseSwipeActionForUUID:(id)d shouldExecuteCompletionBeforeAction:(BOOL)action;
- (id)_favoriteSwipeAction:(BOOL)action forUUID:(id)d;
- (id)_leadingSwipeActionsConfigurationProvider;
- (id)_moreOptionsSwipeActionForUUID:(id)d shouldExecuteCompletionBeforeAction:(BOOL)action;
- (id)_moveToFolderSwipeActionForUUID:(id)d shouldExecuteCompletionBeforeAction:(BOOL)action;
- (id)_scopeBarTitleFor:(int64_t)for;
- (id)_trailingSwipeActionsConfigurationProvider;
- (id)_uuidForItemAtIndexPath:(id)path;
- (id)allUUIDs;
- (id)cellForUUID:(id)d;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)contentUnavailableConfigurationState;
- (id)dataArray;
- (id)selectedUUIDs;
- (id)uuidOfSelectedRecording;
- (int64_t)_expectedNumberOfItems;
- (int64_t)_searchScopeForScopeButtonIndex:(int64_t)index;
- (void)_addCollectionViewCellToCellsMapTable:(id)table;
- (void)_animateContentUnavailableUpdateWithCompletion:(id)completion;
- (void)_commonInit;
- (void)_configureCell:(id)cell usingDisplayModel:(id)model;
- (void)_handleEditModeFooterAndNavigationItem;
- (void)_handleMove;
- (void)_logHashTable;
- (void)_logWhetherVisibleCellsHaveIntegrity;
- (void)_notifyDelegatesThatSelectionChanged;
- (void)_pauseSelecteditem;
- (void)_performFolderTypeUpdatesOnRecording:(id)recording;
- (void)_removeCollectionViewCellFromCellsMapTable:(id)table;
- (void)_restyleAllExtantCells;
- (void)_scrollDownToItemAtIndexPathIfNeeded:(id)needed;
- (void)_scrollUpToItemAtIndexPathIfNeeded:(id)needed;
- (void)_setEditing:(BOOL)editing animated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)_setSearchString:(id)string;
- (void)_setupCollectionView;
- (void)_setupSearchController;
- (void)_styleView;
- (void)_toggleEdit;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateCollectionViewContent:(BOOL)content;
- (void)_updateEditButton;
- (void)_updateEditButtonStateForRecordingsCount:(unint64_t)count;
- (void)_updateScopeBarTitles;
- (void)_updateSearchBarPlaceholder;
- (void)_updateSearchString:(id)string;
- (void)_updateUUIDOfSelectedItem;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator folder:(id)folder;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)contentChangesComplete;
- (void)contentSizeChanged;
- (void)deleteFolder:(id)folder controller:(id)controller;
- (void)deleteItemAtIndexPath:(id)path withUUID:(id)d;
- (void)deleteSelectedItems;
- (void)deselectSelectedItem;
- (void)didDismissSearchController:(id)controller;
- (void)didEndEditingTitle:(id)title;
- (void)didPresentSearchController:(id)controller;
- (void)didProcessUpdatesWithRemainingItemCount:(unint64_t)count;
- (void)didSelectCellWithUUID:(id)d;
- (void)editSelectedItemTitle;
- (void)editingIsInFlight:(BOOL)flight progress:(float)progress forUUID:(id)d;
- (void)endEditing;
- (void)finishLaunchTests;
- (void)handleDeleteForUUID:(id)d;
- (void)moveFolder:(id)folder toDestinationIndexPath:(id)path;
- (void)performAction:(int64_t)action atPosition:(double)position forCellWithUUID:(id)d source:(id)source;
- (void)performDropWithSession:(id)session folder:(id)folder;
- (void)performRenameWithNewTitle:(id)title forCellWithUUID:(id)d;
- (void)prepareForAdditionOfNewRecordingWithUUID:(id)d;
- (void)presentViewController:(id)controller sourceController:(id)sourceController animated:(BOOL)animated completion:(id)completion;
- (void)registerAppIntentInteractions;
- (void)reloadItemAtIndexPath:(id)path usingDisplayModel:(id)model;
- (void)renameFolder:(id)folder toName:(id)name;
- (void)scrollToRevealPartiallyObscuredItemAtIndexPathIfNeeded:(id)needed;
- (void)scrollToTop;
- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change;
- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scroll:(BOOL)scroll;
- (void)selectItemWithUUID:(id)d animated:(BOOL)animated;
- (void)setCurrentTime:(double)time forItemWithUUID:(id)d;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setRecordingsDataCoordinator:(id)coordinator;
- (void)setupAppIntentsDataSource;
- (void)showIdleForItemWithUUID:(id)d;
- (void)showNewFolderUIFromController:(id)controller;
- (void)showPlayingForItemWithUUID:(id)d;
- (void)showRenamingControllerWithFolderName:(id)name controller:(id)controller;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateEditButtonItemTitle;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateToolbarAndFooterView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)wasDeselectedForCellWithUUID:(id)d;
- (void)willDismissSearchController:(id)controller;
- (void)willSelectItemWithUUID:(id)d;
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
  navigationItem = [(RCRecordingsCollectionViewController *)self navigationItem];
  v4 = [[UIBarButtonItem alloc] initWithImage:0 style:0 target:self action:"_toggleEdit"];
  [(RCRecordingsCollectionViewController *)self setEditButtonItem:v4];

  editButtonItem = [(RCRecordingsCollectionViewController *)self editButtonItem];
  [navigationItem setRightBarButtonItem:editButtonItem];

  [(RCRecordingsCollectionViewController *)self updateEditButtonItemTitle];
  [navigationItem setLargeTitleDisplayMode:1];
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
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  [collectionView setAccessibilityIdentifier:@"RecordingsList"];

  _createDiffableDataSource = [(RCRecordingsCollectionViewController *)self _createDiffableDataSource];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = _createDiffableDataSource;

  v6 = self->_diffableDataSource;
  collectionView2 = [(RCRecordingsCollectionViewController *)self collectionView];
  [collectionView2 setDataSource:v6];

  collectionView3 = [(RCRecordingsCollectionViewController *)self collectionView];
  [collectionView3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"NormalRecordingCellReuseIdentifier"];

  collectionView4 = [(RCRecordingsCollectionViewController *)self collectionView];
  [collectionView4 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"RecentlyDeletedRecordingCellReuseIdentifier"];

  collectionView5 = [(RCRecordingsCollectionViewController *)self collectionView];
  [collectionView5 setAllowsMultipleSelectionDuringEditing:1];

  collectionView6 = [(RCRecordingsCollectionViewController *)self collectionView];
  [collectionView6 setSelectionFollowsFocus:1];

  collectionView7 = [(RCRecordingsCollectionViewController *)self collectionView];
  [collectionView7 setDropDelegate:self];
}

- (id)_createDiffableDataSource
{
  objc_initWeak(&location, self);
  v3 = [UICollectionViewDiffableDataSource alloc];
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F000;
  v7[3] = &unk_10028B588;
  objc_copyWeak(&v8, &location);
  v5 = [v3 initWithCollectionView:collectionView cellProvider:v7];
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
      collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
      indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
      v6 = [indexPathsForSelectedItems count];
    }

    else
    {
      collectionView = [(RCRecordingsCollectionViewController *)self dataArray];
      v6 = [collectionView count];
    }

    [(RCRecordingsCollectionViewController *)self _updateEditButtonStateForRecordingsCount:v6];
  }
}

- (void)_setupSearchController
{
  searchController = [(RCRecordingsCollectionViewController *)self searchController];
  if (!searchController)
  {
    searchController = [[UISearchController alloc] initWithSearchResultsController:0];
    [(RCRecordingsCollectionViewController *)self setSearchController:searchController];
    [searchController setDelegate:self];
    [searchController setSearchResultsUpdater:self];
    searchBar = [searchController searchBar];
    [searchBar setDelegate:self];

    searchBar2 = [searchController searchBar];
    [searchBar2 setClipsToBounds:1];

    searchBar3 = [searchController searchBar];
    [searchBar3 setUserInteractionEnabled:1];

    [searchController setObscuresBackgroundDuringPresentation:0];
    searchBar4 = [searchController searchBar];
    [searchBar4 setLookToDictateEnabled:1];
  }

  [(RCRecordingsCollectionViewController *)self _updateSearchBarPlaceholder];
  [(RCRecordingsCollectionViewController *)self _updateScopeBarTitles];
}

- (void)_updateSearchBarPlaceholder
{
  searchController = [(RCRecordingsCollectionViewController *)self searchController];

  if (searchController)
  {
    v4 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
    deviceIsSupported = [v4 deviceIsSupported];

    v6 = +[NSBundle mainBundle];
    v11 = v6;
    if (deviceIsSupported)
    {
      v7 = @"SEARCH_BAR_PLACEHOLDER_TRANSCRIPTION_SUPPORTED";
    }

    else
    {
      v7 = @"SEARCH_BAR_PLACEHOLDER_DEFAULT";
    }

    v8 = [v6 localizedStringForKey:v7 value:&stru_100295BB8 table:0];
    searchController2 = [(RCRecordingsCollectionViewController *)self searchController];
    searchBar = [searchController2 searchBar];
    [searchBar setPlaceholder:v8];
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
      searchController = [(RCRecordingsCollectionViewController *)self searchController];
      searchBar = [searchController searchBar];
      [searchBar setScopeButtonTitles:v5];

      searchController2 = [(RCRecordingsCollectionViewController *)self searchController];
      searchBar2 = [searchController2 searchBar];
      [searchBar2 setSelectedScopeButtonIndex:1];
    }
  }
}

- (void)setupAppIntentsDataSource
{
  selfCopy = self;
  collectionView = [(RCRecordingsCollectionViewController *)selfCopy collectionView];
  if (collectionView)
  {
    v3 = collectionView;
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
  selfCopy = self;
  sub_10001AF10();
}

- (void)_styleView
{
  v16 = +[RCRecorderStyleProvider sharedStyleProvider];
  [(RCRecordingsCollectionViewController *)self _restyleAllExtantCells];
  cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  objectEnumerator = [cellsMapTable objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        uUID = [v7 UUID];
        uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
        v10 = [uUID isEqualToString:uuidOfSelectedItem];

        if (v10)
        {
          libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
          v12 = [libraryActionHandler isPlayingForUUID:uUID];

          if ((v12 & 1) == 0)
          {
            libraryActionHandler2 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
            [libraryActionHandler2 currentTime];
            [v7 setCurrentTime:?];
          }
        }
      }

      nextObject2 = [objectEnumerator nextObject];

      v6 = nextObject2;
    }

    while (nextObject2);
  }

  if ([v16 pinsSearchBarInLibrary])
  {
    navigationItem = [(RCRecordingsCollectionViewController *)self navigationItem];
    [navigationItem setHidesSearchBarWhenScrolling:0];
  }
}

- (void)_restyleAllExtantCells
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  cellsHashTable = [(RCRecordingsCollectionViewController *)self cellsHashTable];
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
  contentUnavailableConfigurationState = [(RCRecordingsCollectionViewController *)&v7 contentUnavailableConfigurationState];
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  searchString = [recordingsDataCoordinator searchString];
  [contentUnavailableConfigurationState setSearchText:searchString];

  return contentUnavailableConfigurationState;
}

- (int64_t)_expectedNumberOfItems
{
  dataArray = [(RCRecordingsCollectionViewController *)self dataArray];
  v3 = [dataArray count];

  return v3;
}

- (id)dataArray
{
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  recordingDataArray = [recordingsDataCoordinator recordingDataArray];

  return recordingDataArray;
}

- (RCLibraryActionHandler)libraryActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryActionHandler);

  return WeakRetained;
}

- (void)finishLaunchTests
{
  v2 = +[UIApplication sharedApplication];
  isRunningTest = [v2 isRunningTest];

  if (isRunningTest)
  {
    v5 = +[UIApplication sharedApplication];
    delegate = [v5 delegate];
    [delegate ppt_didShowVoiceMemosList];
  }
}

- (void)setRecordingsDataCoordinator:(id)coordinator
{
  objc_storeStrong(&self->_recordingsDataCoordinator, coordinator);
  coordinatorCopy = coordinator;
  [coordinatorCopy setDelegate:self];
}

- (RCCloudRecording)selectedRecording
{
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  indexPathForSelectedItem = [collectionView indexPathForSelectedItem];
  v5 = indexPathForSelectedItem;
  if (indexPathForSelectedItem)
  {
    item = [indexPathForSelectedItem item];
    dataArray = [(RCRecordingsCollectionViewController *)self dataArray];
    if (item >= [dataArray count])
    {
      v8 = 0;
    }

    else
    {
      v8 = [dataArray objectAtIndexedSubscript:item];
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
  selectedRecording = [(RCRecordingsCollectionViewController *)self selectedRecording];
  uuid = [selectedRecording uuid];

  return uuid;
}

- (BOOL)isSearching
{
  searchController = [(RCRecordingsCollectionViewController *)self searchController];
  isActive = [searchController isActive];

  return isActive;
}

- (RCRecordingsCollectionViewController)initWithBuiltInFolderType:(int64_t)type folderUUID:(id)d
{
  dCopy = d;
  _createCollectionViewLayout = [(RCRecordingsCollectionViewController *)self _createCollectionViewLayout];
  v8 = [(RCRecordingsCollectionViewController *)self initWithCollectionViewLayout:_createCollectionViewLayout];

  if (v8)
  {
    [(RCRecordingsCollectionViewController *)v8 setFolderType:type];
    [(RCRecordingsCollectionViewController *)v8 setFolderUUID:dCopy];
    v9 = [[RCRecordingsCollectionViewControllerDataCoordinator alloc] initWithFolderType:type delegate:v8];
    recordingsDataCoordinator = v8->_recordingsDataCoordinator;
    v8->_recordingsDataCoordinator = v9;
  }

  return v8;
}

- (RCRecordingsCollectionViewController)initWithUserFolderNamed:(id)named folderUUID:(id)d
{
  namedCopy = named;
  dCopy = d;
  _createCollectionViewLayout = [(RCRecordingsCollectionViewController *)self _createCollectionViewLayout];
  v9 = [(RCRecordingsCollectionViewController *)self initWithCollectionViewLayout:_createCollectionViewLayout];

  if (v9)
  {
    [(RCRecordingsCollectionViewController *)v9 setFolderType:4];
    [(RCRecordingsCollectionViewController *)v9 setUserFolderName:namedCopy];
    [(RCRecordingsCollectionViewController *)v9 setFolderUUID:dCopy];
    v10 = [[RCRecordingsCollectionViewControllerDataCoordinator alloc] initWithUserFolderNamed:namedCopy delegate:v9];
    recordingsDataCoordinator = v9->_recordingsDataCoordinator;
    v9->_recordingsDataCoordinator = v10;
  }

  return v9;
}

- (RCRecordingsCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  v6.receiver = self;
  v6.super_class = RCRecordingsCollectionViewController;
  v3 = [(RCRecordingsCollectionViewController *)&v6 initWithCollectionViewLayout:layout];
  v4 = v3;
  if (v3)
  {
    [(RCRecordingsCollectionViewController *)v3 setDefinesPresentationContext:1];
    [(RCRecordingsCollectionViewController *)v4 _commonInit];
    [(RCRecordingsCollectionViewController *)v4 _classSpecificInit];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = RCRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v5 viewWillAppear:appear];
  [(RCRecordingsCollectionViewController *)self _updateEditButton];
  [(RCRecordingsCollectionViewController *)self _classSpecificViewWillAppear];
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  [collectionView setDragDelegate:self];
}

- (void)_updateCollectionViewContent:(BOOL)content
{
  contentCopy = content;
  v5 = objc_opt_new();
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  recordingDataArray = [recordingsDataCoordinator recordingDataArray];

  [v5 appendSectionsWithIdentifiers:&off_10029ABD8];
  [v5 appendItemsWithIdentifiers:recordingDataArray intoSectionWithIdentifier:&off_10029AA78];
  diffableDataSource = [(RCRecordingsCollectionViewController *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];
  v10 = [snapshot isEqual:v5];

  if ((v10 & 1) == 0)
  {
    if (contentCopy)
    {
      diffableDataSource2 = [(RCRecordingsCollectionViewController *)self diffableDataSource];
      snapshot2 = [diffableDataSource2 snapshot];
      if ([snapshot2 numberOfItems])
      {
      }

      else
      {
        numberOfItems = [v5 numberOfItems];

        if (numberOfItems >= 1)
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_10007214C;
          v17[3] = &unk_10028B5B0;
          v17[4] = self;
          v18 = v5;
          v19 = contentCopy;
          [(RCRecordingsCollectionViewController *)self _animateContentUnavailableUpdateWithCompletion:v17];
          diffableDataSource3 = v18;
          goto LABEL_6;
        }
      }
    }

    diffableDataSource3 = [(RCRecordingsCollectionViewController *)self diffableDataSource];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100072260;
    v15[3] = &unk_10028A988;
    v16 = contentCopy;
    v15[4] = self;
    [diffableDataSource3 applySnapshot:v5 animatingDifferences:contentCopy completion:v15];
LABEL_6:
  }
}

- (id)_scopeBarTitleFor:(int64_t)for
{
  if (for)
  {
    if (for != 1)
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

- (void)viewDidAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = RCRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v18 viewDidAppear:appear];
  if (([(RCRecordingsCollectionViewController *)self isFirstResponder]& 1) == 0)
  {
    v4 = +[UIResponder currentFirstResponder];

    if (!v4)
    {
      [(RCRecordingsCollectionViewController *)self becomeFirstResponder];
    }
  }

  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  indexPathForSelectedItem = [collectionView indexPathForSelectedItem];

  collectionView2 = [(RCRecordingsCollectionViewController *)self collectionView];
  v8 = collectionView2;
  if (indexPathForSelectedItem)
  {
    [collectionView2 selectItemAtIndexPath:indexPathForSelectedItem animated:0 scrollPosition:0];
  }

  if (([(RCRecordingsCollectionViewController *)self isEditing]& 1) == 0)
  {
    indexPathForSelectedItem2 = [v8 indexPathForSelectedItem];
    if (indexPathForSelectedItem2)
    {
      v10 = [v8 cellForItemAtIndexPath:indexPathForSelectedItem2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        uUID = [v11 UUID];
        v13 = [RCRecordingCellDisplayModel recordingDisplayModelForUUID:uUID];

        if (v13)
        {
          [(RCRecordingsCollectionViewController *)self _configureCell:v11 usingDisplayModel:v13];
        }
      }
    }
  }

  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  [libraryActionHandler didSelectForUUID:uuidOfSelectedItem resetPosition:0 force:0];

  [(RCRecordingsCollectionViewController *)self finishLaunchTests];
  viewDidAppearCompletionBlock = [(RCRecordingsCollectionViewController *)self viewDidAppearCompletionBlock];

  if (viewDidAppearCompletionBlock)
  {
    viewDidAppearCompletionBlock2 = [(RCRecordingsCollectionViewController *)self viewDidAppearCompletionBlock];
    viewDidAppearCompletionBlock2[2]();

    [(RCRecordingsCollectionViewController *)self setViewDidAppearCompletionBlock:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = RCRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v5 viewWillDisappear:disappear];
  searchController = [(RCRecordingsCollectionViewController *)self searchController];
  [searchController setActive:0];

  [(RCRecordingsCollectionViewController *)self _updateSearchString:&stru_100295BB8];
  if ([(RCRecordingsCollectionViewController *)self isFirstResponder])
  {
    [(RCRecordingsCollectionViewController *)self resignFirstResponder];
  }
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(RCRecordingsCollectionViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [collectionCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(RCRecordingsCollectionViewController *)self restyle];
  }
}

- (void)contentSizeChanged
{
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  collectionView2 = [(RCRecordingsCollectionViewController *)self collectionView];
  [collectionView2 reloadData];

  [(RCRecordingsCollectionViewController *)self restyle];
  collectionView3 = [(RCRecordingsCollectionViewController *)self collectionView];
  isEditing = [collectionView3 isEditing];

  if (isEditing)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = indexPathsForSelectedItems;
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
          collectionView4 = [(RCRecordingsCollectionViewController *)self collectionView];
          [collectionView4 selectItemAtIndexPath:v13 animated:0 scrollPosition:0];

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
    collectionView5 = [(RCRecordingsCollectionViewController *)self collectionView];
    firstObject = [indexPathsForSelectedItems firstObject];
    [collectionView5 selectItemAtIndexPath:firstObject animated:0 scrollPosition:0];
  }
}

- (void)_toggleEdit
{
  if (![(RCRecordingsCollectionViewController *)self isUpdatingBottomLayoutForEditing])
  {
    [(RCRecordingsCollectionViewController *)self setEditing:[(RCRecordingsCollectionViewController *)self isEditing]^ 1 animated:1];
    isEditing = [(RCRecordingsCollectionViewController *)self isEditing];
    editStateHandler = [(RCRecordingsCollectionViewController *)self editStateHandler];
    [editStateHandler updateBottomLayoutForEditing:isEditing isSearching:-[RCRecordingsCollectionViewController isSearching](self delegate:{"isSearching"), self}];

    [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
  }
}

- (void)updateEditButtonItemTitle
{
  v5 = +[NSBundle mainBundle];
  v3 = [v5 localizedStringForKey:@"Select" value:&stru_100295BB8 table:0];
  editButtonItem = [(RCRecordingsCollectionViewController *)self editButtonItem];
  [editButtonItem setTitle:v3];
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  isEditing = [(RCRecordingsCollectionViewController *)self isEditing];
  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [libraryActionHandler libraryWillChangeEditingState:editingCopy];

  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  v10 = 0;
  if (isEditing && !editingCopy)
  {
    uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
    v10 = uuidOfSelectedItem != 0;
  }

  [(RCRecordingsCollectionViewController *)self setWillSelectRecordingAfterExitingEditMode:v10];
  objc_initWeak(&location, self);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100072C14;
  v22 = &unk_10028B5D8;
  v25 = v10;
  objc_copyWeak(&v24, &location);
  v12 = collectionView;
  v23 = v12;
  [(RCRecordingsCollectionViewController *)self _setEditing:editingCopy animated:animatedCopy withCompletionHandler:&v19];
  if (editingCopy)
  {
    v13 = [(RCRecordingsCollectionViewController *)self editButtonItem:v19];
    [v13 setImage:0];

    dataArray = +[NSBundle mainBundle];
    v15 = [dataArray localizedStringForKey:@"CANCEL" value:&stru_100295BB8 table:0];
    editButtonItem = [(RCRecordingsCollectionViewController *)self editButtonItem];
    [editButtonItem setTitle:v15];
  }

  else
  {
    [(RCRecordingsCollectionViewController *)self updateEditButtonItemTitle:v19];
    dataArray = [(RCRecordingsCollectionViewController *)self dataArray];
    -[RCRecordingsCollectionViewController _updateEditButtonStateForRecordingsCount:](self, "_updateEditButtonStateForRecordingsCount:", [dataArray count]);
  }

  [v12 setSelectionFollowsFocus:editingCopy ^ 1];
  if (!editingCopy)
  {
    editStateHandler = [(RCRecordingsCollectionViewController *)self editStateHandler];
    [editStateHandler updateBottomLayoutForEditing:0 isSearching:-[RCRecordingsCollectionViewController isSearching](self delegate:{"isSearching"), self}];
  }

  libraryActionHandler2 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [libraryActionHandler2 libraryDidChangeEditingState];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_setEditing:(BOOL)editing animated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  editingCopy = editing;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = RCRecordingsCollectionViewController;
  [(RCRecordingsCollectionViewController *)&v15 setEditing:editingCopy animated:animatedCopy];
  if (animatedCopy)
  {
    v9 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v9 collectionViewEditModeAnimationDuration];
    v11 = v10;

    v12 = dispatch_time(0, (v11 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072E38;
    block[3] = &unk_10028A510;
    v14 = handlerCopy;
    dispatch_after(v12, &_dispatch_main_q, block);
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_updateUUIDOfSelectedItem
{
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  indexPathForSelectedItem = [collectionView indexPathForSelectedItem];
  v4 = [(RCRecordingsCollectionViewController *)self _uuidForItemAtIndexPath:indexPathForSelectedItem];
  [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:v4];
}

- (void)prepareForAdditionOfNewRecordingWithUUID:(id)d
{
  [(RCRecordingsCollectionViewController *)self setUuidOfNewestRecording:d];
  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  uuidOfNewestRecording = [(RCRecordingsCollectionViewController *)self uuidOfNewestRecording];
  [libraryActionHandler setUUIDToSelectAfterDismiss:uuidOfNewestRecording];
}

- (void)didProcessUpdatesWithRemainingItemCount:(unint64_t)count
{
  countCopy = count;
  if (!count)
  {
    [(RCRecordingsCollectionViewController *)self setEditing:?];
  }

  if ([(RCRecordingsCollectionViewController *)self isEditing])
  {
    collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    countCopy = [indexPathsForSelectedItems count];
  }

  [(RCRecordingsCollectionViewController *)self _updateEditButtonStateForRecordingsCount:countCopy];
}

- (void)_updateEditButtonStateForRecordingsCount:(unint64_t)count
{
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  isEditing = [collectionView isEditing];

  if (count)
  {
    v7 = 1;
  }

  else
  {
    v7 = isEditing;
  }

  editButtonItem = [(RCRecordingsCollectionViewController *)self editButtonItem];
  [editButtonItem setEnabled:v7];

  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [libraryActionHandler updateNavigationItemForCurrentState];
}

- (void)_logWhetherVisibleCellsHaveIntegrity
{
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v6 = [visibleCells countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          uUID = [v11 UUID];
          [v3 addObject:uUID];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [visibleCells countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v13 = objc_opt_new();
  dataArray = [(RCRecordingsCollectionViewController *)self dataArray];
  if ([dataArray count])
  {
    v15 = 0;
    do
    {
      if ([v3 count] <= v15)
      {
        break;
      }

      v16 = [dataArray objectAtIndexedSubscript:v15];
      uuid = [v16 uuid];
      [v13 addObject:uuid];

      ++v15;
    }

    while ([dataArray count] > v15);
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
  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [libraryActionHandler performAction:15 atPosition:0 forUUID:self sourceController:0 source:0.0];

  [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];

  [(RCRecordingsCollectionViewController *)self setEditing:0 animated:1];
}

- (void)reloadItemAtIndexPath:(id)path usingDisplayModel:(id)model
{
  modelCopy = model;
  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [libraryActionHandler refreshDisplayWithDisplayModel:modelCopy];

  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  window = [collectionView window];

  if (window)
  {
    cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
    uUID = [modelCopy UUID];
    v10 = [cellsMapTable objectForKey:uUID];

    if (v10)
    {
      title = [modelCopy title];
      [v10 setRecordingTitle:title];

      [modelCopy duration];
      [v10 setRecordingDuration:?];
      creationDate = [modelCopy creationDate];
      [v10 setCreationDate:creationDate];

      [v10 setRepresentsDownloadingFile:{objc_msgSend(modelCopy, "representsDownloadingFile")}];
      [v10 setWasManuallyRenamed:{objc_msgSend(modelCopy, "wasManuallyRenamed")}];
      [v10 setHasTranscription:{objc_msgSend(modelCopy, "hasTranscription")}];
      [v10 setHasMultipleTracks:{objc_msgSend(modelCopy, "hasMultipleTracks")}];
      [v10 setIsSpatialRecording:{objc_msgSend(modelCopy, "isSpatialRecording")}];
    }
  }
}

- (void)deleteItemAtIndexPath:(id)path withUUID:(id)d
{
  dCopy = d;
  if (path)
  {
    v11 = dCopy;
    uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
    v8 = [v11 isEqualToString:uuidOfSelectedItem];

    if (v8)
    {
      [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:0];
    }

    libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    [libraryActionHandler wasDeselectedForUUID:v11];

    cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
    [cellsMapTable removeObjectForKey:v11];

    dCopy = v11;
  }
}

- (void)contentChangesComplete
{
  [(RCRecordingsCollectionViewController *)self _updateCollectionViewContent:[(RCRecordingsCollectionViewController *)self isSearching]^ 1];
  dataArray = [(RCRecordingsCollectionViewController *)self dataArray];
  v4 = [dataArray count];

  [(RCRecordingsCollectionViewController *)self didProcessUpdatesWithRemainingItemCount:v4];
  if (self->_didInsertItems)
  {
    uuidOfNewestRecording = [(RCRecordingsCollectionViewController *)self uuidOfNewestRecording];
    if (uuidOfNewestRecording)
    {
      v6 = uuidOfNewestRecording;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
        [libraryActionHandler selectNewRecordingForDismiss];
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
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        dataArray = [(RCRecordingsCollectionViewController *)self dataArray];
        v12 = [dataArray objectAtIndexedSubscript:{objc_msgSend(v10, "item")}];
        uuid = [v12 uuid];

        [v3 addObject:uuid];
      }

      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  dataArray = [(RCRecordingsCollectionViewController *)self dataArray];
  v5 = [dataArray countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(dataArray);
        }

        uuid = [*(*(&v11 + 1) + 8 * i) uuid];
        [v3 addObject:uuid];
      }

      v6 = [dataArray countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)cellForUUID:(id)d
{
  dCopy = d;
  cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v6 = [cellsMapTable objectForKey:dCopy];

  return v6;
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  if ([(RCRecordingsCollectionViewController *)self _expectedNumberOfItems]|| [(RCRecordingsCollectionViewController *)self captureIsUnderway])
  {
    goto LABEL_3;
  }

  isSearching = [(RCRecordingsCollectionViewController *)self isSearching];
  if ([(RCRecordingsCollectionViewController *)self isSearching])
  {
    recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
    searchString = [recordingsDataCoordinator searchString];
    v9 = [searchString length];

    if (isSearching)
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

  else if (isSearching)
  {
    goto LABEL_3;
  }

  v10 = +[RCRecorderStyleProvider sharedStyleProvider];
  v17 = +[UIContentUnavailableConfiguration emptyConfiguration];
  recordingsContentUnavailableImage = [v10 recordingsContentUnavailableImage];
  [v17 setImage:recordingsContentUnavailableImage];

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
  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [libraryActionHandler libraryChangedEmptyState];
}

- (void)_animateContentUnavailableUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  [v5 contentUnavailableViewAnimationDuration];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100073CDC;
  v6[3] = &unk_10028A3B8;
  v6[4] = self;
  [UIView animateWithDuration:v6 animations:completionCopy completion:?];
}

- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scroll:(BOOL)scroll
{
  scrollCopy = scroll;
  animatedCopy = animated;
  pathCopy = path;
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  v9 = collectionView;
  if (scrollCopy)
  {
    [collectionView scrollToItemAtIndexPath:pathCopy atScrollPosition:1 animated:animatedCopy];
  }

  [v9 selectItemAtIndexPath:pathCopy animated:animatedCopy scrollPosition:0];
  [(RCRecordingsCollectionViewController *)self _updateUUIDOfSelectedItem];
  [(RCRecordingsCollectionViewController *)self _notifyDelegatesThatSelectionChanged];
}

- (void)deselectSelectedItem
{
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  indexPathForSelectedItem = [collectionView indexPathForSelectedItem];
  if (indexPathForSelectedItem)
  {
    [collectionView deselectItemAtIndexPath:indexPathForSelectedItem animated:0];
    libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
    [libraryActionHandler wasDeselectedForUUID:uuidOfSelectedItem];

    [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:0];
  }
}

- (void)scrollToTop
{
  if ([(RCRecordingsCollectionViewController *)self _expectedNumberOfItems]>= 2)
  {
    collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
    v3 = [NSIndexPath indexPathForItem:0 inSection:0];
    [collectionView scrollToItemAtIndexPath:v3 atScrollPosition:1 animated:0];
  }
}

- (BOOL)presentsRecordingWithUUID:(id)d
{
  dCopy = d;
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v6 = [recordingsDataCoordinator indexOfUUID:dCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  v7 = v6 < [collectionView numberOfItemsInSection:0];

  return v7;
}

- (void)willSelectItemWithUUID:(id)d
{
  dCopy = d;
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v6 = [recordingsDataCoordinator indexOfUUID:dCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [NSIndexPath indexPathForItem:v6 inSection:0];
    [(RCRecordingsCollectionViewController *)self scrollToRevealPartiallyObscuredItemAtIndexPathIfNeeded:v7];
  }
}

- (void)selectItemWithUUID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  dCopy = d;
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v8 = [recordingsDataCoordinator indexOfUUID:dCopy];

  LODWORD(recordingsDataCoordinator) = [(RCRecordingsCollectionViewController *)self presentsRecordingWithUUID:dCopy];
  if (recordingsDataCoordinator)
  {
    v12 = [NSIndexPath indexPathForItem:v8 inSection:0];
    collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
    v10 = [collectionView cellForItemAtIndexPath:v12];

    [(RCRecordingsCollectionViewController *)self selectItemAtIndexPath:v12 animated:animatedCopy scroll:v10 == 0];
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
  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [libraryActionHandler updateNavigationItemForCurrentState];
}

- (void)handleDeleteForUUID:(id)d
{
  dCopy = d;
  uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  v6 = [dCopy isEqualToString:uuidOfSelectedItem];

  if (v6)
  {

    [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:0];
  }
}

- (void)showNewFolderUIFromController:(id)controller
{
  controllerCopy = controller;
  folderSelectionDelegate = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [folderSelectionDelegate showNewFolderUIFromController:controllerCopy];
}

- (void)showRenamingControllerWithFolderName:(id)name controller:(id)controller
{
  controllerCopy = controller;
  nameCopy = name;
  folderSelectionDelegate = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [folderSelectionDelegate showRenamingControllerWithFolderName:nameCopy controller:controllerCopy];
}

- (void)moveFolder:(id)folder toDestinationIndexPath:(id)path
{
  pathCopy = path;
  folderCopy = folder;
  folderSelectionDelegate = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [folderSelectionDelegate moveFolder:folderCopy toDestinationIndexPath:pathCopy];
}

- (void)deleteFolder:(id)folder controller:(id)controller
{
  folderCopy = folder;
  folderSelectionDelegate = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [folderSelectionDelegate deleteFolder:folderCopy controller:self completionBlock:0];
}

- (void)renameFolder:(id)folder toName:(id)name
{
  nameCopy = name;
  folderCopy = folder;
  folderSelectionDelegate = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [folderSelectionDelegate renameFolder:folderCopy toName:nameCopy];
}

- (void)presentViewController:(id)controller sourceController:(id)sourceController animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  sourceControllerCopy = sourceController;
  controllerCopy = controller;
  folderSelectionDelegate = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [folderSelectionDelegate presentViewController:controllerCopy sourceController:sourceControllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)_handleMove
{
  v5 = objc_opt_new();
  folderSelectionDelegate = [(RCRecordingsCollectionViewController *)self folderSelectionDelegate];
  [v5 setSelectionDelegate:folderSelectionDelegate];

  navigationController = [(RCRecordingsCollectionViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (BOOL)collectionView:(id)view canHandleDropSession:(id)session
{
  sessionCopy = session;
  localDragSession = [sessionCopy localDragSession];

  if (localDragSession)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = +[RCCaptureFormat supportedFileTypeIdentifiers];
    v6 = [sessionCopy hasItemsConformingToTypeIdentifiers:v7];
  }

  return v6;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator folder:(id)folder
{
  folderCopy = folder;
  session = [coordinator session];
  [(RCRecordingsCollectionViewController *)self performDropWithSession:session folder:folderCopy];
}

- (void)performDropWithSession:(id)session folder:(id)folder
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  items = [session items];
  v6 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(items);
        }

        itemProvider = [*(*(&v16 + 1) + 8 * v9) itemProvider];
        rc_supportedFileTypesRepresented = [itemProvider rc_supportedFileTypesRepresented];
        firstObject = [rc_supportedFileTypesRepresented firstObject];

        if (itemProvider)
        {
          v13 = firstObject == 0;
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
          v14 = [itemProvider loadFileRepresentationForTypeIdentifier:firstObject completionHandler:v15];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_performFolderTypeUpdatesOnRecording:(id)recording
{
  recordingCopy = recording;
  folderType = [(RCRecordingsCollectionViewController *)self folderType];
  if (folderType == 1)
  {
    libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    uuid = [recordingCopy uuid];
    [libraryActionHandler setFavorite:1 forRecordingWithUUID:uuid];
  }

  else if (folderType == 4)
  {
    libraryActionHandler2 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    uuid2 = [recordingCopy uuid];
    v12 = uuid2;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    userFolderName = [(RCRecordingsCollectionViewController *)self userFolderName];
    [libraryActionHandler2 moveRecordingsWithUUIDs:v8 toUserFolderNamed:userFolderName source:self];
  }
}

- (void)_configureCell:(id)cell usingDisplayModel:(id)model
{
  cellCopy = cell;
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uUID = [modelCopy UUID];
    v8 = cellCopy;
    cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
    [cellsMapTable setObject:v8 forKey:uUID];

    [v8 setCellDelegate:self];
    [v8 setUUID:uUID];
    title = [modelCopy title];
    [v8 setRecordingTitle:title];

    [modelCopy duration];
    [v8 setRecordingDuration:?];
    creationDate = [modelCopy creationDate];
    [v8 setCreationDate:creationDate];

    [v8 setRepresentsDownloadingFile:{objc_msgSend(modelCopy, "representsDownloadingFile")}];
    [v8 setWasManuallyRenamed:{objc_msgSend(modelCopy, "wasManuallyRenamed")}];
    [v8 setHasTranscription:{objc_msgSend(modelCopy, "hasTranscription")}];
    [v8 setHasMultipleTracks:{objc_msgSend(modelCopy, "hasMultipleTracks")}];
    [v8 setIsRecentlyDeleted:{objc_msgSend(modelCopy, "recentlyDeleted")}];
    [v8 setIsSpatialRecording:{objc_msgSend(modelCopy, "isSpatialRecording")}];
    libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    v13 = [libraryActionHandler isPlayingForUUID:uUID];

    if (v13)
    {
      [v8 setPlayControlState:1];
    }

    else
    {
      [v8 setPlayControlState:0];
      libraryActionHandler2 = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
      [libraryActionHandler2 currentTime];
      v16 = v15;

      [v8 setCurrentTime:v16];
    }

    editingProgressItems = [(RCRecordingsCollectionViewController *)self editingProgressItems];
    v18 = [editingProgressItems objectForKeyedSubscript:uUID];

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

- (void)_removeCollectionViewCellFromCellsMapTable:(id)table
{
  tableCopy = table;
  cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = tableCopy;
    uUID = [v5 UUID];
    if (uUID)
    {
      v7 = [cellsMapTable objectForKey:uUID];
      v8 = v7;
      if (v7 && v7 == v5)
      {
        [cellsMapTable removeObjectForKey:uUID];
      }
    }
  }
}

- (id)_favoriteSwipeAction:(BOOL)action forUUID:(id)d
{
  dCopy = d;
  v7 = +[RCRecorderStyleProvider sharedStyleProvider];
  v8 = +[NSBundle mainBundle];
  v9 = v8;
  if (action)
  {
    v10 = [v8 localizedStringForKey:@"ADD_TO_FAVORITES" value:&stru_100295BB8 table:0];

    notFavoriteImageForSwipeAction = [v7 notFavoriteImageForSwipeAction];
    v12 = 36;
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"REMOVE_FROM_FAVORITES" value:&stru_100295BB8 table:0];

    notFavoriteImageForSwipeAction = [v7 favoriteImageForSwipeAction];
    v12 = 37;
  }

  v13 = [[RCSwipeActionConfiguration alloc] initWithControlsAction:v12 recordingUUID:dCopy actionTitle:v10];

  [(RCSwipeActionConfiguration *)v13 setActionImage:notFavoriteImageForSwipeAction];
  [(RCSwipeActionConfiguration *)v13 setActionImageAxLabel:v10];
  actionImage = [(RCSwipeActionConfiguration *)v13 actionImage];
  [actionImage setAccessibilityIdentifier:@"RecordingsList/SwipeAction/Favorite"];

  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100075458;
  v21 = &unk_10028B628;
  actionCopy = action;
  v22 = v7;
  v15 = v7;
  [(RCSwipeActionConfiguration *)v13 setCustomCompletionBlock:&v18];
  v16 = [(RCRecordingsCollectionViewController *)self _createSwipeActionWithConfiguration:v13, v18, v19, v20, v21];

  return v16;
}

- (id)_deleteSwipeActionForUUID:(id)d shouldExecuteCompletionBeforeAction:(BOOL)action
{
  actionCopy = action;
  dCopy = d;
  v7 = [RCSwipeActionConfiguration alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];
  v10 = [(RCSwipeActionConfiguration *)v7 initWithControlsAction:14 recordingUUID:dCopy actionTitle:v9];

  [(RCSwipeActionConfiguration *)v10 setActionStyle:1];
  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  swipeTrashImage = [v11 swipeTrashImage];
  [(RCSwipeActionConfiguration *)v10 setActionImage:swipeTrashImage];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"AX_DELETE" value:&stru_100295BB8 table:0];
  [(RCSwipeActionConfiguration *)v10 setActionImageAxLabel:v14];

  actionImage = [(RCSwipeActionConfiguration *)v10 actionImage];
  [actionImage setAccessibilityIdentifier:@"RecordingsList/SwipeAction/Delete"];

  v16 = [(RCRecordingsCollectionViewController *)self cellForUUID:dCopy];

  contentView = [v16 contentView];
  [(RCSwipeActionConfiguration *)v10 setSourceItem:contentView];

  [(RCSwipeActionConfiguration *)v10 setShouldExecuteCompletionBeforeAction:actionCopy];
  v18 = [(RCRecordingsCollectionViewController *)self _createSwipeActionWithConfiguration:v10];

  return v18;
}

- (id)_eraseSwipeActionForUUID:(id)d shouldExecuteCompletionBeforeAction:(BOOL)action
{
  actionCopy = action;
  dCopy = d;
  v7 = [RCSwipeActionConfiguration alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];
  v10 = [(RCSwipeActionConfiguration *)v7 initWithControlsAction:16 recordingUUID:dCopy actionTitle:v9];

  [(RCSwipeActionConfiguration *)v10 setActionStyle:1];
  actionImage = [(RCSwipeActionConfiguration *)v10 actionImage];
  [actionImage setAccessibilityIdentifier:@"RecordingsList/SwipeAction/Erase"];

  v12 = [(RCRecordingsCollectionViewController *)self cellForUUID:dCopy];

  [(RCSwipeActionConfiguration *)v10 setSourceItem:v12];
  [(RCSwipeActionConfiguration *)v10 setShouldExecuteCompletionBeforeAction:actionCopy];
  v13 = [(RCRecordingsCollectionViewController *)self _createSwipeActionWithConfiguration:v10];

  return v13;
}

- (id)_moveToFolderSwipeActionForUUID:(id)d shouldExecuteCompletionBeforeAction:(BOOL)action
{
  actionCopy = action;
  dCopy = d;
  v7 = [RCSwipeActionConfiguration alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"MOVE_TO_FOLDER" value:&stru_100295BB8 table:0];
  v10 = [(RCSwipeActionConfiguration *)v7 initWithControlsAction:40 recordingUUID:dCopy actionTitle:v9];

  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  filledMoveToFolderImage = [v11 filledMoveToFolderImage];
  [(RCSwipeActionConfiguration *)v10 setActionImage:filledMoveToFolderImage];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"AX_MOVE_TO_FOLDER" value:&stru_100295BB8 table:0];
  [(RCSwipeActionConfiguration *)v10 setActionImageAxLabel:v14];

  actionImage = [(RCSwipeActionConfiguration *)v10 actionImage];
  [actionImage setAccessibilityIdentifier:@"RecordingsList/SwipeAction/MoveToFolder"];

  v16 = +[UIColor systemBlueColor];
  [(RCSwipeActionConfiguration *)v10 setActionBackgroundColor:v16];

  v17 = [(RCRecordingsCollectionViewController *)self cellForUUID:dCopy];

  contentView = [v17 contentView];
  [(RCSwipeActionConfiguration *)v10 setSourceItem:contentView];

  [(RCSwipeActionConfiguration *)v10 setShouldExecuteCompletionBeforeAction:actionCopy];
  v19 = [(RCRecordingsCollectionViewController *)self _createSwipeActionWithConfiguration:v10];

  return v19;
}

- (id)_moreOptionsSwipeActionForUUID:(id)d shouldExecuteCompletionBeforeAction:(BOOL)action
{
  actionCopy = action;
  dCopy = d;
  v7 = [RCSwipeActionConfiguration alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"MORE_ACTIONS" value:&stru_100295BB8 table:0];
  v10 = [(RCSwipeActionConfiguration *)v7 initWithControlsAction:27 recordingUUID:dCopy actionTitle:v9];

  v11 = +[RCRecorderStyleProvider sharedStyleProvider];
  ellipsisImage = [v11 ellipsisImage];
  [(RCSwipeActionConfiguration *)v10 setActionImage:ellipsisImage];

  actionImage = [(RCSwipeActionConfiguration *)v10 actionImage];
  [actionImage setAccessibilityIdentifier:@"RecordingsList/SwipeAction/MoreActions"];

  v14 = [(RCRecordingsCollectionViewController *)self cellForUUID:dCopy];

  [(RCSwipeActionConfiguration *)v10 setSourceItem:v14];
  [(RCSwipeActionConfiguration *)v10 setShouldExecuteCompletionBeforeAction:actionCopy];
  v15 = [(RCRecordingsCollectionViewController *)self _createSwipeActionWithConfiguration:v10];

  return v15;
}

- (id)_createSwipeActionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  actionStyle = [configurationCopy actionStyle];
  actionTitle = [configurationCopy actionTitle];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100075CD0;
  v20 = &unk_10028B650;
  v7 = configurationCopy;
  v21 = v7;
  selfCopy = self;
  v8 = [UIContextualAction contextualActionWithStyle:actionStyle title:actionTitle handler:&v17];

  actionImage = [v7 actionImage];

  if (actionImage)
  {
    actionImage2 = [v7 actionImage];
    [v8 setImage:actionImage2];
  }

  actionImageAxLabel = [v7 actionImageAxLabel];

  if (actionImageAxLabel)
  {
    actionImageAxLabel2 = [v7 actionImageAxLabel];
    image = [v8 image];
    [image setAccessibilityLabel:actionImageAxLabel2];
  }

  actionBackgroundColor = [v7 actionBackgroundColor];

  if (actionBackgroundColor)
  {
    actionBackgroundColor2 = [v7 actionBackgroundColor];
    [v8 setBackgroundColor:actionBackgroundColor2];
  }

  return v8;
}

- (BOOL)_supportsSwipeActionsForIndexPath:(id)path swipeActionsType:(unint64_t)type
{
  pathCopy = path;
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v8 = [recordingsDataCoordinator uuidAtIndexPath:pathCopy];

  cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v10 = [cellsMapTable objectForKey:v8];

  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  v12 = [libraryActionHandler isEditingInFlightForUUID:v8];

  LOBYTE(libraryActionHandler) = [v10 isEditingTitle];
  objc_opt_class();
  LOBYTE(type) = v12 | libraryActionHandler | (type == 0) & objc_opt_isKindOfClass();

  return (type & 1) == 0;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v9 = [recordingsDataCoordinator uuidAtIndexPath:pathCopy];

  indexPathForSelectedItem = [viewCopy indexPathForSelectedItem];
  v11 = [(RCRecordingsCollectionViewController *)self _isDownloadingAtIndex:pathCopy];
  if ([viewCopy isEditing])
  {
    libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    v13 = [libraryActionHandler isEditingInFlightForUUID:v9];

    v14 = v13 ^ 1;
    if (indexPathForSelectedItem)
    {
LABEL_3:
      v15 = [indexPathForSelectedItem compare:pathCopy] != 0;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 1;
    if (indexPathForSelectedItem)
    {
      goto LABEL_3;
    }
  }

  v15 = 1;
LABEL_6:
  v16 = (v11 ^ 1) & v14 & v15;
  if (v16 == 1)
  {
    v17 = [viewCopy cellForItemAtIndexPath:pathCopy];
    -[RCRecordingsCollectionViewController setIsSelectingCellForFocusUpdate:](self, "setIsSelectingCellForFocusUpdate:", [v17 isFocused]);
  }

  return v16;
}

- (void)scrollToRevealPartiallyObscuredItemAtIndexPathIfNeeded:(id)needed
{
  neededCopy = needed;
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v6 = [indexPathsForVisibleItems containsObject:neededCopy];

  if (v6)
  {
    [(RCRecordingsCollectionViewController *)self _scrollDownToItemAtIndexPathIfNeeded:neededCopy];
    [(RCRecordingsCollectionViewController *)self _scrollUpToItemAtIndexPathIfNeeded:neededCopy];
  }
}

- (void)_scrollUpToItemAtIndexPathIfNeeded:(id)needed
{
  neededCopy = needed;
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:neededCopy];
  [v6 frame];
  v8 = v7;
  [collectionView contentOffset];
  v10 = v9;
  [collectionView safeAreaInsets];
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
    v19 = collectionView;
    v20 = neededCopy;
    [CATransaction setCompletionBlock:&v15];
    [CATransaction commit:v15];
  }
}

- (void)_scrollDownToItemAtIndexPathIfNeeded:(id)needed
{
  neededCopy = needed;
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:neededCopy];
  [v6 frame];
  v8 = v7;
  v10 = v9;
  [collectionView contentOffset];
  v12 = v11;
  [collectionView frame];
  v14 = v13;
  [collectionView contentInset];
  v16 = v15;
  [collectionView contentInset];
  v18 = v17;
  v19 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v19 explicitlyScrollsToRecordingsCollectionViewItemOnSelection] && v8 + v10 > v12 + v14 - v16 - v18)
  {
    +[CATransaction begin];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100076424;
    v23 = &unk_10028A650;
    v24 = collectionView;
    v25 = neededCopy;
    [CATransaction setCompletionBlock:&v20];
    [CATransaction commit:v20];
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RCRecordingsCollectionViewController *)self _addCollectionViewCellToCellsMapTable:cellCopy];
  }
}

- (void)_addCollectionViewCellToCellsMapTable:(id)table
{
  tableCopy = table;
  cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = tableCopy;
    uUID = [v5 UUID];
    if (uUID)
    {
      v7 = [cellsMapTable objectForKey:uUID];
      if (!v7)
      {
        [cellsMapTable setObject:v5 forKey:uUID];
      }
    }
  }
}

- (BOOL)_isDownloadingAtIndex:(id)index
{
  indexCopy = index;
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v6 = [recordingsDataCoordinator isDownloadingAtIndexPath:indexCopy];

  return v6;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  searchController = [(RCRecordingsCollectionViewController *)self searchController];
  if ([searchController isActive] && !-[RCRecordingsCollectionViewController isSelectingCellForFocusUpdate](self, "isSelectingCellForFocusUpdate"))
  {
    searchBar = [searchController searchBar];
    [searchBar resignFirstResponder];
  }

  [(RCRecordingsCollectionViewController *)self setInDidSelect:1];
  v9 = [viewCopy cellForItemAtIndexPath:pathCopy];

  [(RCRecordingsCollectionViewController *)self setInDidSelect:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(RCRecordingsCollectionViewController *)self isEditing]& 1) == 0)
  {
    uUID = [v9 UUID];
    [(RCRecordingsCollectionViewController *)self setUuidOfSelectedItem:uUID];
  }

  [(RCRecordingsCollectionViewController *)self scrollToRevealPartiallyObscuredItemAtIndexPathIfNeeded:pathCopy];
  [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, v9);
  [(RCRecordingsCollectionViewController *)self setIsSelectingCellForFocusUpdate:0];
  [(RCRecordingsCollectionViewController *)self _notifyDelegatesThatSelectionChanged];
}

- (void)_notifyDelegatesThatSelectionChanged
{
  if (([(RCRecordingsCollectionViewController *)self isEditing]& 1) == 0)
  {
    uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];

    if (uuidOfSelectedItem)
    {
      uuidOfSelectedItem2 = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
      [(RCRecordingsCollectionViewController *)self didSelectCellWithUUID:uuidOfSelectedItem2];
    }
  }
}

- (void)_pauseSelecteditem
{
  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  [libraryActionHandler performAction:1 atPosition:uuidOfSelectedItem forUUID:0 sourceController:0 source:0.0];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v5 = [(RCRecordingsCollectionViewController *)self _uuidForItemAtIndexPath:path];
  [(RCRecordingsCollectionViewController *)self wasDeselectedForCellWithUUID:v5];
  [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
}

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  if (([(RCRecordingsCollectionViewController *)self isEditing:view]& 1) == 0)
  {

    [(RCRecordingsCollectionViewController *)self _toggleEdit];
  }
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  pathsCopy = paths;
  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  showsMoreActionsContextMenu = [v9 showsMoreActionsContextMenu];

  if (showsMoreActionsContextMenu)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000769D0;
    v13[3] = &unk_10028B678;
    v14 = pathsCopy;
    selfCopy = self;
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

- (void)performAction:(int64_t)action atPosition:(double)position forCellWithUUID:(id)d source:(id)source
{
  if (d)
  {
    sourceCopy = source;
    dCopy = d;
    libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    [libraryActionHandler performAction:action atPosition:dCopy forUUID:self sourceController:sourceCopy source:position];
  }
}

- (void)showPlayingForItemWithUUID:(id)d
{
  dCopy = d;
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  v5 = [recordingsDataCoordinator indexOfUUID:dCopy];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
    v7 = [cellsMapTable objectForKey:dCopy];

    [v7 setPlayControlState:1];
  }
}

- (void)showIdleForItemWithUUID:(id)d
{
  dCopy = d;
  cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v8 = [cellsMapTable objectForKey:dCopy];

  if (v8)
  {
    collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
    v7 = [collectionView indexPathForCell:v8];

    if (v7)
    {
      [v8 setPlayControlState:0];
    }
  }
}

- (void)setCurrentTime:(double)time forItemWithUUID:(id)d
{
  dCopy = d;
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  expandsRecordingsCollectionViewItemOnSelection = [v6 expandsRecordingsCollectionViewItemOnSelection];

  if (expandsRecordingsCollectionViewItemOnSelection)
  {
    recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
    v9 = [recordingsDataCoordinator indexOfUUID:dCopy];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
      v11 = [cellsMapTable objectForKey:dCopy];

      [v11 setCurrentTime:time];
    }
  }
}

- (void)editingIsInFlight:(BOOL)flight progress:(float)progress forUUID:(id)d
{
  flightCopy = flight;
  dCopy = d;
  if (flightCopy)
  {
    *&v8 = progress;
    editingProgressItems2 = [NSNumber numberWithFloat:v8];
    editingProgressItems = [(RCRecordingsCollectionViewController *)self editingProgressItems];
    [editingProgressItems setObject:editingProgressItems2 forKeyedSubscript:dCopy];
  }

  else
  {
    editingProgressItems2 = [(RCRecordingsCollectionViewController *)self editingProgressItems];
    [editingProgressItems2 setObject:0 forKeyedSubscript:dCopy];
  }

  cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v12 = [cellsMapTable objectForKey:dCopy];

  if (v12)
  {
    v13 = +[RCRecorderStyleProvider sharedStyleProvider];
    expandsRecordingsCollectionViewItemOnSelection = [v13 expandsRecordingsCollectionViewItemOnSelection];

    [v12 setEditingInFlight:flightCopy];
    *&v15 = progress;
    [v12 setEditingProgress:v15];
    if (!flightCopy)
    {
      if (expandsRecordingsCollectionViewItemOnSelection)
      {
        uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
        v17 = [uuidOfSelectedItem isEqualToString:dCopy];

        if (v17)
        {
          [(RCRecordingsCollectionViewController *)self selectItemWithUUID:dCopy];
        }
      }
    }
  }
}

- (void)performRenameWithNewTitle:(id)title forCellWithUUID:(id)d
{
  if (d)
  {
    dCopy = d;
    titleCopy = title;
    libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    [libraryActionHandler performRenameWithNewTitle:titleCopy forUUID:dCopy];
  }
}

- (void)didSelectCellWithUUID:(id)d
{
  dCopy = d;
  uuidOfNewestRecording = [(RCRecordingsCollectionViewController *)self uuidOfNewestRecording];
  if (uuidOfNewestRecording)
  {
    uuidOfNewestRecording2 = [(RCRecordingsCollectionViewController *)self uuidOfNewestRecording];
    v6 = [dCopy isEqualToString:uuidOfNewestRecording2];
  }

  else
  {
    v6 = 0;
  }

  if (dCopy)
  {
    uuidOfNewestRecording3 = [(RCRecordingsCollectionViewController *)self uuidOfNewestRecording];
    v8 = (uuidOfNewestRecording3 == 0) | v6;

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
  expandsRecordingsCollectionViewItemOnSelection = [v9 expandsRecordingsCollectionViewItemOnSelection];

  if (expandsRecordingsCollectionViewItemOnSelection)
  {
    diffableDataSource = [(RCRecordingsCollectionViewController *)self diffableDataSource];
    diffableDataSource2 = [(RCRecordingsCollectionViewController *)self diffableDataSource];
    snapshot = [diffableDataSource2 snapshot];
    [diffableDataSource applySnapshot:snapshot animatingDifferences:1];
  }

  [(RCRecordingsCollectionViewController *)self setUuidOfNewestRecording:0];
  v8 = 0;
LABEL_11:
  cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  v15 = [cellsMapTable objectForKey:dCopy];

  if ((v6 & 1) == 0)
  {
    if (([v15 isSelected] & 1) != 0 || (objc_msgSend(v15, "configurationState"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEditing"), v16, v17))
    {
      v8 = 0;
    }
  }

  libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
  [libraryActionHandler didSelectForUUID:dCopy resetPosition:v8 & 1 force:0];

  if (![(RCRecordingsCollectionViewController *)self willSelectRecordingAfterExitingEditMode])
  {
    splitViewController = [(RCRecordingsCollectionViewController *)self splitViewController];
    [splitViewController hidePrimaryColumnIfNeeded];
  }
}

- (void)wasDeselectedForCellWithUUID:(id)d
{
  if (d)
  {
    dCopy = d;
    libraryActionHandler = [(RCRecordingsCollectionViewController *)self libraryActionHandler];
    [libraryActionHandler wasDeselectedForUUID:dCopy];
  }
}

- (void)didEndEditingTitle:(id)title
{
  titleCopy = title;
  uUID = [titleCopy UUID];
  cellWhoseTitleIsBeingEdited = [(RCRecordingsCollectionViewController *)self cellWhoseTitleIsBeingEdited];
  uUID2 = [cellWhoseTitleIsBeingEdited UUID];
  v8 = [uUID isEqualToString:uUID2];

  if (v8)
  {
    [(RCRecordingsCollectionViewController *)self setCellWhoseTitleIsBeingEdited:0];
  }

  else
  {
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001B879C(self, titleCopy, v9);
    }
  }
}

- (id)_uuidForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataArray = [(RCRecordingsCollectionViewController *)self dataArray];
  if (!pathCopy)
  {
LABEL_6:
    uuid = 0;
    goto LABEL_7;
  }

  uuid = 0;
  if ([pathCopy item] != 0x7FFFFFFFFFFFFFFFLL && dataArray)
  {
    item = [pathCopy item];
    if (item < [dataArray count])
    {
      dataArray2 = [(RCRecordingsCollectionViewController *)self dataArray];
      v9 = [dataArray2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
      uuid = [v9 uuid];

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:

  return uuid;
}

- (void)didPresentSearchController:(id)controller
{
  controllerCopy = controller;
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    searchBar = [controllerCopy searchBar];
    searchField = [searchBar searchField];

    v5 = +[UIColor blackColor];
    [searchField setTextColor:v5];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  [(RCRecordingsCollectionViewController *)self _updateSearchString:text];
}

- (void)willDismissSearchController:(id)controller
{
  [(RCRecordingsCollectionViewController *)self _updateSearchString:&stru_100295BB8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v6 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 resignFirstResponderForTitleEditing];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)didDismissSearchController:(id)controller
{
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  [collectionView becomeFirstResponder];

  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  supportsHideRecordButtonDuringSearch = [v5 supportsHideRecordButtonDuringSearch];

  if (supportsHideRecordButtonDuringSearch)
  {
    editStateHandler = [(RCRecordingsCollectionViewController *)self editStateHandler];
    [editStateHandler updateBottomLayoutForEditing:-[RCRecordingsCollectionViewController isEditing](self isSearching:"isEditing") delegate:{0, self}];
  }
}

- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change
{
  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  searchString = [recordingsDataCoordinator searchString];

  v7 = [(RCRecordingsCollectionViewController *)self _searchScopeForScopeButtonIndex:change];
  recordingsDataCoordinator2 = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  [recordingsDataCoordinator2 setSearchString:searchString inScope:v7];
}

- (int64_t)_searchScopeForScopeButtonIndex:(int64_t)index
{
  result = index;
  if (index >= 2)
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

- (void)_updateSearchString:(id)string
{
  stringCopy = string;
  searchController = [(RCRecordingsCollectionViewController *)self searchController];
  searchBar = [searchController searchBar];

  scopeButtonTitles = [searchBar scopeButtonTitles];

  if (scopeButtonTitles)
  {
    v7 = -[RCRecordingsCollectionViewController _searchScopeForScopeButtonIndex:](self, "_searchScopeForScopeButtonIndex:", [searchBar selectedScopeButtonIndex]);
  }

  else
  {
    v7 = 1;
  }

  recordingsDataCoordinator = [(RCRecordingsCollectionViewController *)self recordingsDataCoordinator];
  [recordingsDataCoordinator setSearchString:stringCopy inScope:v7];

  [(RCRecordingsCollectionViewController *)self _handleEditModeFooterAndNavigationItem];
  [(RCRecordingsCollectionViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_setSearchString:(id)string
{
  stringCopy = string;
  searchController = [(RCRecordingsCollectionViewController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setText:stringCopy];
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  sessionCopy = session;
  item = [path item];
  dataArray = [(RCRecordingsCollectionViewController *)self dataArray];
  if (item >= [dataArray count])
  {
    goto LABEL_6;
  }

  v10 = [dataArray objectAtIndexedSubscript:item];
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
    title = [v10 title];
    [v10 url];
    v17 = v28 = v15;
    [v17 pathExtension];
    v18 = v29 = v12;
    v19 = [title stringByAppendingPathExtension:v18];

    [v13 setSuggestedName:v19];
    v20 = [[UIDragItem alloc] initWithItemProvider:v13];
    uuid = [v10 uuid];
    [v20 setLocalObject:uuid];

    folderType = [(RCRecordingsCollectionViewController *)self folderType];
    folderUUID = [(RCRecordingsCollectionViewController *)self folderUUID];
    v24 = folderType;
    v15 = v28;
    v25 = [RCLocalDropContext dropContextWithFolderType:v24 folderUUID:folderUUID folderIndexPath:0 payloadType:0];

    [sessionCopy setLocalContext:v25];
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

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  v4 = [(RCRecordingsCollectionViewController *)self libraryActionHandler:view];
  [v4 willBeginDragSession];
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  v4 = [(RCRecordingsCollectionViewController *)self libraryActionHandler:view];
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
    cellWhoseTitleIsBeingEdited = [(RCRecordingsCollectionViewController *)self cellWhoseTitleIsBeingEdited];

    if (!cellWhoseTitleIsBeingEdited)
    {
      recentlyDeletedCollectionViewController = [(RCRecordingsCollectionViewController *)self recentlyDeletedCollectionViewController];
      selectedCellIsEditingTitle = [recentlyDeletedCollectionViewController selectedCellIsEditingTitle];
      goto LABEL_12;
    }
  }

  cellWhoseTitleIsBeingEdited2 = [(RCRecordingsCollectionViewController *)self cellWhoseTitleIsBeingEdited];
  recentlyDeletedCollectionViewController = cellWhoseTitleIsBeingEdited2;
  if (cellWhoseTitleIsBeingEdited2 && ([cellWhoseTitleIsBeingEdited2 isEditingTitle] & 1) == 0)
  {
    v6 = OSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001B8954();
    }
  }

  if ([recentlyDeletedCollectionViewController isEditingTitle])
  {
    selectedCellIsEditingTitle = [recentlyDeletedCollectionViewController isSelected];
LABEL_12:
    v8 = selectedCellIsEditingTitle;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (BOOL)selectedCellIsInFlightEditing
{
  uuidOfSelectedItem = [(RCRecordingsCollectionViewController *)self uuidOfSelectedItem];
  if (uuidOfSelectedItem)
  {
    editingProgressItems = [(RCRecordingsCollectionViewController *)self editingProgressItems];
    v5 = [editingProgressItems objectForKeyedSubscript:uuidOfSelectedItem];

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
  collectionView = [(RCRecordingsCollectionViewController *)self collectionView];
  if ([collectionView numberOfItemsInSection:0] >= 1)
  {
    indexPathForSelectedItem = [collectionView indexPathForSelectedItem];
    if (indexPathForSelectedItem)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100077FE8;
      v7[3] = &unk_10028A650;
      v8 = collectionView;
      v9 = indexPathForSelectedItem;
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
  cellsMapTable = [(RCRecordingsCollectionViewController *)self cellsMapTable];
  objectEnumerator = [cellsMapTable objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v4 = nextObject;
    v5 = 0;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        uUID = [v4 UUID];
        NSLog(@"cell at index %d has UUID: %@", v5, uUID);

        v5 = (v5 + 1);
      }

      nextObject2 = [objectEnumerator nextObject];

      v4 = nextObject2;
    }

    while (nextObject2);
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