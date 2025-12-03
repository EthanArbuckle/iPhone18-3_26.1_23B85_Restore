@interface ICNoteBrowseViewController
- (BOOL)canBecomeFirstResponder;
- (BOOL)hasDeletableNoteCell;
- (BOOL)isAllTagsSelected;
- (BOOL)isSearchActive;
- (BOOL)isSearchActiveWithQuery;
- (BOOL)isTrashFolder;
- (BOOL)shouldIncludeInvitations;
- (BOOL)shouldIncludeSubfolders;
- (BOOL)shouldIncludeTagDetail;
- (BOOL)shouldIncludeTags;
- (BOOL)shouldShowEmptyState;
- (BOOL)shouldShowTagAssignmentBarButtonItem;
- (BOOL)updateFolderSectionVisibility;
- (BOOL)updateTagSectionVisibility;
- (ICCollaborationButtonsController)collaborationButtonsController;
- (ICFolderCreationController)smartFolderCreationController;
- (ICFolderCustomNoteSortType)sortType;
- (ICNoteBrowseDataSource)noteDataSource;
- (ICNoteBrowseViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager;
- (ICNoteContainer)noteContainer;
- (ICQuery)noteQuery;
- (ICTagContainerCell)tagContainerCell;
- (ICVirtualSmartFolderItemIdentifier)virtualSmartFolder;
- (NSArray)allNotes;
- (NSArray)observedNoteContainerProperties;
- (NSArray)observedUserDefaultsProperties;
- (NSArray)selectedModernNotes;
- (NSArray)selectedNotes;
- (NoteCollectionObject)noteCollection;
- (double)availableWidthForSummaryView;
- (id)focusedNotes;
- (id)noteBrowseNavigationItemConfigurationCollaborationBarButtonItem:(id)item;
- (id)noteBrowseNavigationItemConfigurationNavigationTitle:(id)title;
- (id)noteBrowseNavigationItemConfigurationNoteContainerActionMenu:(id)menu actionBarButtonItem:(id)item;
- (id)noteBrowseNavigationItemConfigurationQueryActionMenu:(id)menu actionBarButtonItem:(id)item;
- (id)noteBrowseNavigationItemConfigurationVirtualSmartFolderActionMenu:(id)menu actionBarButtonItem:(id)item;
- (id)notesForIndexPaths:(id)paths;
- (id)tagDetailCell;
- (id)updateSummaryViewIsPrimary:(BOOL)primary;
- (int64_t)dateHeadersType;
- (unint64_t)numberOfSelectedItems;
- (unint64_t)tagsActionMenuNoteCount:(id)count;
- (void)addKVOObservers;
- (void)analyticsSessionWillEnd:(id)end;
- (void)dataSourceDataDidUpdate:(id)update;
- (void)dataSourceDataUpdateDidRender:(id)render;
- (void)dealloc;
- (void)deleteNotes:(id)notes sender:(id)sender;
- (void)didMoveToParentViewController:(id)controller;
- (void)didUpdateSearchAppearanceNotification:(id)notification;
- (void)didUpdateSearchQuery:(id)query;
- (void)endAnalyticsTracking;
- (void)loadView;
- (void)managedObjectContextDidSaveObjectIDs:(id)ds;
- (void)moveNotes:(id)notes;
- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldAddNoteFromBarButtonItem:(id)item event:(id)event;
- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldAssignTagsFromBarButtonItem:(id)item;
- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldDeleteAllFromBarButtonItem:(id)item;
- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldDeleteSelectedFromBarButtonItem:(id)item;
- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldLockFromBarButtonItem:(id)item;
- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldMoveAllFromBarButtonItem:(id)item;
- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldMoveSelectedFromBarButtonItem:(id)item;
- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldShareFromBarButtonItem:(id)item;
- (void)noteDecryptedStatusDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performCmd3:(id)cmd3;
- (void)performDeleteKey:(id)key;
- (void)registerForTraitChanges;
- (void)reloadDataSourceAnimated:(BOOL)animated dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock;
- (void)removeKVOObservers;
- (void)resetBarButtonItemsAnimated:(BOOL)animated;
- (void)sceneDidActivate:(id)activate;
- (void)sceneWillDeactivate:(id)deactivate;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setNoteCollection:(id)collection dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock;
- (void)setNoteContainer:(id)container dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock;
- (void)setNoteQuery:(id)query dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock;
- (void)setTagSelection:(id)selection dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock;
- (void)setVirtualSmartFolder:(id)folder dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock;
- (void)sharedWithYouControllerDidUpdateHighlights:(id)highlights;
- (void)showSharedFolderActions:(id)actions;
- (void)startAnalyticsTracking;
- (void)submitTagSelectionAnalyticsIfNeeded;
- (void)summaryViewLockNowPressed:(id)pressed;
- (void)updateBarButtonItemsAnimated:(BOOL)animated;
- (void)updateContainerSelection;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateDataSourceAnimated:(BOOL)animated dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock updateDataSourceBlock:(id)sourceBlock;
- (void)updateDataSourceConfigurationSortTypeChanged:(BOOL)changed;
- (void)updateFocusedNoteIfNeeded;
- (void)updateSelectedTagTitles;
- (void)updateSummaryView;
- (void)updateTagDetailOperatorMenuVisibility;
- (void)updateTagSelectionIfNeeded;
- (void)updateVisibleGalleryCellThumbnails;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDismissSearchController:(id)controller;
@end

@implementation ICNoteBrowseViewController

- (ICNoteBrowseDataSource)noteDataSource
{
  noteDataSource = self->_noteDataSource;
  if (noteDataSource)
  {
    v3 = noteDataSource;
  }

  else
  {
    v5 = [ICNoteBrowseDataSource alloc];
    collectionView = [(ICNoteResultsViewController *)self collectionView];
    noteContainerViewMode = [(ICBaseViewController *)self noteContainerViewMode];
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    folderListViewController = [viewControllerManager folderListViewController];
    folderDataSource = [folderListViewController folderDataSource];
    viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
    persistenceConfiguration = [viewControllerManager2 persistenceConfiguration];
    v13 = [(ICNoteBrowseDataSource *)v5 initWithCollectionView:collectionView presentingViewController:self noteContainerViewMode:noteContainerViewMode folderDataSource:folderDataSource persistenceConfiguration:persistenceConfiguration];
    v14 = self->_noteDataSource;
    self->_noteDataSource = v13;

    v15 = +[ICNoteContext sharedContext];
    workerManagedObjectContext = [v15 workerManagedObjectContext];
    [(ICNoteBrowseDataSource *)self->_noteDataSource setApplySnapshotModernManagedObjectContext:workerManagedObjectContext];

    objc_initWeak(&location, self);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100121424;
    v21 = &unk_1006458D8;
    objc_copyWeak(&v22, &location);
    [(ICNoteBrowseDataSource *)self->_noteDataSource setWillExpandItemHandler:&v18];
    [(ICNoteBrowseViewController *)self updateFolderSectionVisibility:v18];
    v3 = self->_noteDataSource;
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (BOOL)updateFolderSectionVisibility
{
  shouldIncludeSubfolders = [(ICNoteBrowseViewController *)self shouldIncludeSubfolders];
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  shouldIncludeSubfolders2 = [noteDataSource shouldIncludeSubfolders];

  shouldIncludeSubfolders3 = [(ICNoteBrowseViewController *)self shouldIncludeSubfolders];
  noteDataSource2 = [(ICNoteBrowseViewController *)self noteDataSource];
  [noteDataSource2 setShouldIncludeSubfolders:shouldIncludeSubfolders3];

  return shouldIncludeSubfolders ^ shouldIncludeSubfolders2;
}

- (BOOL)shouldIncludeSubfolders
{
  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  if (!noteContainer)
  {
    noteCollection = [(ICNoteBrowseViewController *)self noteCollection];
    if (!noteCollection)
    {
      v6 = 0;
LABEL_9:

      goto LABEL_10;
    }
  }

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  v6 = ([viewControllerManager hasCompactWidth] & 1) != 0 || -[ICBaseViewController noteContainerViewMode](self, "noteContainerViewMode") == 1;

  if (!noteContainer)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (ICNoteContainer)noteContainer
{
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  noteContainer = [noteDataSource noteContainer];

  return noteContainer;
}

- (NoteCollectionObject)noteCollection
{
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  noteCollection = [noteDataSource noteCollection];

  return noteCollection;
}

- (void)addKVOObservers
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  observedNoteContainerProperties = [(ICNoteBrowseViewController *)self observedNoteContainerProperties];
  v4 = [observedNoteContainerProperties countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(observedNoteContainerProperties);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
        [noteContainer ic_addObserver:self forKeyPath:v8 context:&off_1006BBCE8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [observedNoteContainerProperties countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  observedUserDefaultsProperties = [(ICNoteBrowseViewController *)self observedUserDefaultsProperties];
  v11 = [observedUserDefaultsProperties countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(observedUserDefaultsProperties);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = +[NSUserDefaults standardUserDefaults];
        [v16 ic_addObserver:self forKeyPath:v15 context:&off_1006BBCE8];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [observedUserDefaultsProperties countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }
}

- (NSArray)observedNoteContainerProperties
{
  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  if (noteContainer)
  {
    v3 = &off_10066E350;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSArray)observedUserDefaultsProperties
{
  v3 = +[NSMutableArray array];
  [v3 ic_addNonNilObject:ICSettingsNoteListSortTypeKey];
  [v3 ic_addNonNilObject:ICFolderCustomNoteSortTypeQuerySortKey];
  [v3 ic_addNonNilObject:ICSettingsNoteDateHeadersTypeKey];
  [v3 ic_addNonNilObject:ICSettingsQueryDateHeadersTypeKey];
  virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];
  noteSortTypeUserDefaultsKey = [virtualSmartFolder noteSortTypeUserDefaultsKey];
  [v3 ic_addNonNilObject:noteSortTypeUserDefaultsKey];

  virtualSmartFolder2 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
  dateHeadersTypeUserDefaultsKey = [virtualSmartFolder2 dateHeadersTypeUserDefaultsKey];
  [v3 ic_addNonNilObject:dateHeadersTypeUserDefaultsKey];

  return v3;
}

- (ICVirtualSmartFolderItemIdentifier)virtualSmartFolder
{
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  virtualSmartFolder = [noteDataSource virtualSmartFolder];

  return virtualSmartFolder;
}

- (void)removeKVOObservers
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  observedNoteContainerProperties = [(ICNoteBrowseViewController *)self observedNoteContainerProperties];
  v4 = [observedNoteContainerProperties countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(observedNoteContainerProperties);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
        [noteContainer ic_removeObserver:self forKeyPath:v8 context:&off_1006BBCE8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [observedNoteContainerProperties countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  observedUserDefaultsProperties = [(ICNoteBrowseViewController *)self observedUserDefaultsProperties];
  v11 = [observedUserDefaultsProperties countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(observedUserDefaultsProperties);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = +[NSUserDefaults standardUserDefaults];
        [v16 ic_removeObserver:self forKeyPath:v15 context:&off_1006BBCE8];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [observedUserDefaultsProperties countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }
}

- (void)updateSummaryView
{
  v3 = [(ICNoteBrowseViewController *)self updateSummaryViewIsPrimary:1];
  if (_UISolariumEnabled())
  {
    v4 = [(ICNoteBrowseViewController *)self updateSummaryViewIsPrimary:0];
  }
}

- (BOOL)shouldShowTagAssignmentBarButtonItem
{
  selectedNotes = [(ICNoteBrowseViewController *)self selectedNotes];
  v4 = [selectedNotes count];

  if (!v4)
  {
    return 0;
  }

  selectedNotes2 = [(ICNoteBrowseViewController *)self selectedNotes];
  v6 = [selectedNotes2 ic_objectsPassingTest:&stru_10064A8F8];
  v7 = [v6 count];

  selectedNotes3 = [(ICNoteBrowseViewController *)self selectedNotes];
  v9 = [selectedNotes3 count];

  if (v9 > v7 || [(ICNoteBrowseViewController *)self isTrashFolder])
  {
    return 0;
  }

  modernViewContext = [(ICBaseViewController *)self modernViewContext];
  v13 = [ICHashtag allVisibleHashtagsInContext:modernViewContext];
  v10 = [v13 count] != 0;

  return v10;
}

- (NSArray)selectedNotes
{
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v5 = [(ICNoteBrowseViewController *)self notesForIndexPaths:indexPathsForSelectedItems];

  return v5;
}

- (NSArray)allNotes
{
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  collectionViewDiffableDataSource = [noteDataSource collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  itemIdentifiers = [snapshot itemIdentifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100121338;
  v9[3] = &unk_10064A7E8;
  v9[4] = self;
  v7 = [itemIdentifiers ic_compactMap:v9];

  return v7;
}

- (BOOL)shouldShowEmptyState
{
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  if ([noteDataSource totalNoteCount])
  {
    v4 = 0;
  }

  else
  {
    noteDataSource2 = [(ICNoteBrowseViewController *)self noteDataSource];
    if ([noteDataSource2 totalFolderCount])
    {
      v4 = 0;
    }

    else
    {
      noteDataSource3 = [(ICNoteBrowseViewController *)self noteDataSource];
      if ([noteDataSource3 totalInvitationsCount])
      {
        v4 = 0;
      }

      else
      {
        collectionView = [(ICNoteResultsViewController *)self collectionView];
        if ([collectionView numberOfSections])
        {
          noteQuery = [(ICNoteBrowseViewController *)self noteQuery];
          if (noteQuery)
          {
            v4 = 1;
          }

          else
          {
            v4 = [(ICNoteBrowseViewController *)self ic_behavior]== 1;
          }
        }

        else
        {
          v4 = 1;
        }
      }
    }
  }

  return v4;
}

- (BOOL)isTrashFolder
{
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  isTrashFolder = [noteDataSource isTrashFolder];

  return isTrashFolder;
}

- (unint64_t)numberOfSelectedItems
{
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v4 = [indexPathsForSelectedItems count];

  return v4;
}

- (ICFolderCustomNoteSortType)sortType
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100121088;
  v17 = sub_100121098;
  v18 = 0;
  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  managedObjectContext = [noteContainer managedObjectContext];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B594;
  v12[3] = &unk_1006463C8;
  v12[4] = self;
  v12[5] = &v13;
  [managedObjectContext performBlockAndWait:v12];

  v5 = +[ICNoteListSortUtilities folderSortOrderForNoteListSortType:](ICNoteListSortUtilities, "folderSortOrderForNoteListSortType:", +[ICNoteListSortUtilities currentNoteListSortType]);
  v6 = v14[5];
  if (v6)
  {
    noteSortType = v6;
  }

  else
  {
    v8 = v5;
    noteQuery = [(ICNoteBrowseViewController *)self noteQuery];
    if (!noteQuery || (+[ICFolderCustomNoteSortType querySortType], (noteSortType = objc_claimAutoreleasedReturnValue()) == 0))
    {
      virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];
      noteSortType = [virtualSmartFolder noteSortType];
      if (!noteSortType)
      {
        noteSortType = [ICFolderCustomNoteSortType folderNoteSortTypeWithOrder:v8 direction:0];
      }
    }
  }

  _Block_object_dispose(&v13, 8);

  return noteSortType;
}

- (ICQuery)noteQuery
{
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  noteQuery = [noteDataSource noteQuery];

  return noteQuery;
}

- (int64_t)dateHeadersType
{
  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];

  if (noteContainer)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    noteContainer2 = [(ICNoteBrowseViewController *)self noteContainer];
    managedObjectContext = [noteContainer2 managedObjectContext];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001B864;
    v12[3] = &unk_1006463C8;
    v12[4] = self;
    v12[5] = &v13;
    [managedObjectContext performBlockAndWait:v12];

    dateHeadersType = v14[3];
    _Block_object_dispose(&v13, 8);
    return dateHeadersType;
  }

  noteQuery = [(ICNoteBrowseViewController *)self noteQuery];

  if (noteQuery)
  {

    return +[ICDateHeadersUtilities queryDateHeadersType];
  }

  else
  {
    virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];

    if (virtualSmartFolder)
    {
      virtualSmartFolder2 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
      if ([virtualSmartFolder2 supportsDateHeaders])
      {
        virtualSmartFolder3 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
        dateHeadersType = [virtualSmartFolder3 dateHeadersType];
      }

      else
      {
        dateHeadersType = 1;
      }

      return dateHeadersType;
    }

    return +[ICDateHeadersUtilities defaultDateHeadersType];
  }
}

- (BOOL)shouldIncludeTags
{
  noteQuery = [(ICNoteBrowseViewController *)self noteQuery];
  if (noteQuery)
  {
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    hasCompactWidth = [viewControllerManager hasCompactWidth];
  }

  else
  {
    hasCompactWidth = 0;
  }

  return hasCompactWidth;
}

- (BOOL)shouldIncludeTagDetail
{
  noteQuery = [(ICNoteBrowseViewController *)self noteQuery];
  v3 = noteQuery != 0;

  return v3;
}

- (BOOL)shouldIncludeInvitations
{
  virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];
  type = [virtualSmartFolder type];
  v4 = [type isEqualToString:ICVirtualSmartFolderItemIdentifierTypeSharedWithYou];

  return v4;
}

- (void)updateSelectedTagTitles
{
  tagSelection = [(ICNoteBrowseViewController *)self tagSelection];
  smartFolderTitle = [tagSelection smartFolderTitle];
  smartFolderCreationController = [(ICNoteBrowseViewController *)self smartFolderCreationController];
  [smartFolderCreationController setFolderTitle:smartFolderTitle];

  tagSelection2 = [(ICNoteBrowseViewController *)self tagSelection];

  if (tagSelection2)
  {
    v7 = [ICFilterSelection alloc];
    tagSelection3 = [(ICNoteBrowseViewController *)self tagSelection];
    v8 = [v7 initWithFilterTypeSelection:tagSelection3];
    smartFolderCreationController2 = [(ICNoteBrowseViewController *)self smartFolderCreationController];
    [smartFolderCreationController2 setFilterSelection:v8];
  }
}

- (ICFolderCreationController)smartFolderCreationController
{
  if (self->_smartFolderCreationController)
  {
    noteQuery = [(ICNoteBrowseViewController *)self noteQuery];
    [(ICFolderCreationController *)self->_smartFolderCreationController setSmartFolderQuery:noteQuery];
  }

  else
  {
    v4 = [ICFolderCreationController alloc];
    noteQuery = [(ICNoteBrowseViewController *)self noteQuery];
    v5 = [(ICFolderCreationController *)v4 initWithViewController:self noteContainer:0 smartFolderQuery:noteQuery folderTitle:0 creationApproach:2];
    smartFolderCreationController = self->_smartFolderCreationController;
    self->_smartFolderCreationController = v5;
  }

  v7 = self->_smartFolderCreationController;

  return v7;
}

- (void)updateTagSelectionIfNeeded
{
  tagSelection = [(ICNoteBrowseViewController *)self tagSelection];

  if (tagSelection)
  {
    tagSelection = self->_tagSelection;

    [(ICNoteBrowseViewController *)self setTagSelection:tagSelection];
  }
}

- (void)updateVisibleGalleryCellThumbnails
{
  v3 = +[UIApplication sharedApplication];
  applicationState = [v3 applicationState];

  if (!applicationState)
  {
    collectionView = [(ICNoteResultsViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = visibleCells;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v12 updateThumbnail];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (ICNoteBrowseViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager
{
  managerCopy = manager;
  v42.receiver = self;
  v42.super_class = ICNoteBrowseViewController;
  v7 = [(ICNoteResultsViewController *)&v42 initWithViewMode:mode viewControllerManager:managerCopy viewControllerType:0];
  if (v7)
  {
    v8 = [ICNoteBrowseCollectionView alloc];
    legacyViewContext = [(ICBaseViewController *)v7 legacyViewContext];
    modernViewContext = [(ICBaseViewController *)v7 modernViewContext];
    viewControllerManager = [(ICBaseViewController *)v7 viewControllerManager];
    v12 = [(ICNoteBrowseCollectionView *)v8 initWithPresentingViewController:v7 legacyManagedObjectContext:legacyViewContext modernManagedObjectContext:modernViewContext viewControllerManager:viewControllerManager];
    [(ICNoteResultsViewController *)v7 setCollectionView:v12];

    noteDataSource = [(ICNoteBrowseViewController *)v7 noteDataSource];
    collectionViewDiffableDataSource = [noteDataSource collectionViewDiffableDataSource];
    collectionView = [(ICNoteResultsViewController *)v7 collectionView];
    [collectionView setDiffableDataSource:collectionViewDiffableDataSource];

    objc_initWeak(&location, v7);
    objc_copyWeak(&v40, &location);
    v16 = [(ICNoteResultsViewController *)v7 collectionView:_NSConcreteStackBlock];
    [v16 setOptimisticallyAppliedSnapshotHandler:&v39];

    noteDataSource2 = [(ICNoteBrowseViewController *)v7 noteDataSource];
    [noteDataSource2 setNoteContainerViewMode:mode];

    collectionView2 = [(ICNoteResultsViewController *)v7 collectionView];
    [collectionView2 setAllowsMultipleSelection:1];

    collectionView3 = [(ICNoteResultsViewController *)v7 collectionView];
    [collectionView3 setAllowsMultipleSelectionDuringEditing:1];

    behavior = [managerCopy behavior];
    navigationItem = [(ICNoteBrowseViewController *)v7 navigationItem];
    v22 = navigationItem;
    v24 = mode != 1 && behavior != 1;
    [navigationItem setSearchBarPlacementAllowsExternalIntegration:v24];

    v25 = +[NSNotificationCenter defaultCenter];
    modernViewContext2 = [(ICBaseViewController *)v7 modernViewContext];
    [v25 addObserver:v7 selector:"managedObjectContextDidSaveObjectIDs:" name:NSManagedObjectContextDidSaveObjectIDsNotification object:modernViewContext2];

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v7 selector:"sceneDidActivate:" name:UISceneDidActivateNotification object:0];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v7 selector:"sceneWillDeactivate:" name:UISceneWillDeactivateNotification object:0];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v7 selector:"analyticsSessionWillEnd:" name:ICNASessionWillEndNotification object:0];

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v7 selector:"didUpdateSearchAppearanceNotification:" name:@"ICNoteSearchViewControllerDidUpdateSearchAppearanceNotification" object:0];

    v31 = +[NSNotificationCenter defaultCenter];
    noteSearchViewController = [(ICBaseViewController *)v7 noteSearchViewController];
    [v31 addObserver:v7 selector:"didUpdateSearchQuery:" name:@"ICNoteSearchViewControllerQueryDidChangeNotification" object:noteSearchViewController];

    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v7 selector:"sharedWithYouControllerDidUpdateHighlights:" name:ICSharedWithYouControllerDidUpdateHighlightsNotification object:0];

    v34 = +[ICAppDelegate sharedInstance];
    cloudContextDelegate = [v34 cloudContextDelegate];
    v36 = ICKeyPathFromSelector();
    [cloudContextDelegate ic_addObserver:v7 forKeyPath:v36 context:&off_1006BBCE8];

    viewControllerManager2 = [(ICBaseViewController *)v7 viewControllerManager];
    [viewControllerManager2 ic_addObserver:v7 forKeyPath:@"focusedNoteObjectID" context:&off_1006BBCE8];

    [(ICNoteBrowseViewController *)v7 addKVOObservers];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = ICNoteBrowseViewController;
  [(ICNoteBrowseViewController *)&v5 didMoveToParentViewController:?];
  if (controller)
  {
    if ([(ICNoteBrowseViewController *)self ic_isViewVisible])
    {
      [(ICNoteBrowseViewController *)self resetBarButtonItemsAnimated:0];
    }
  }
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = ICNoteBrowseViewController;
  [(ICNoteBrowseViewController *)&v4 loadView];
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  [(ICNoteBrowseViewController *)self setView:collectionView];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v4 viewDidLoad];
  v3 = [[ICNoteBrowseNavigationItemConfiguration alloc] initWithDataSource:self delegate:self];
  [(ICNoteBrowseViewController *)self setNavigationItemConfiguration:v3];
}

- (void)sceneWillDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  objc_opt_class();
  object = [deactivateCopy object];

  v14 = ICDynamicCast();

  session = [v14 session];
  persistentIdentifier = [session persistentIdentifier];
  viewIfLoaded = [(ICNoteBrowseViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  session2 = [windowScene session];
  persistentIdentifier2 = [session2 persistentIdentifier];
  v13 = [persistentIdentifier isEqual:persistentIdentifier2];

  if (v13 && [(ICNoteBrowseViewController *)self ic_isViewVisible])
  {
    [(ICNoteBrowseViewController *)self endAnalyticsTracking];
  }
}

- (void)analyticsSessionWillEnd:(id)end
{
  endCopy = end;
  objc_opt_class();
  object = [endCopy object];

  v14 = ICDynamicCast();

  session = [v14 session];
  persistentIdentifier = [session persistentIdentifier];
  viewIfLoaded = [(ICNoteBrowseViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  session2 = [windowScene session];
  persistentIdentifier2 = [session2 persistentIdentifier];
  v13 = [persistentIdentifier isEqual:persistentIdentifier2];

  if (v13)
  {
    [(ICNoteBrowseViewController *)self endAnalyticsTracking];
  }
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  objc_opt_class();
  object = [activateCopy object];

  v16 = ICDynamicCast();

  session = [v16 session];
  persistentIdentifier = [session persistentIdentifier];
  viewIfLoaded = [(ICNoteBrowseViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  session2 = [windowScene session];
  persistentIdentifier2 = [session2 persistentIdentifier];
  v13 = [persistentIdentifier isEqual:persistentIdentifier2];

  if (v13 && [(ICNoteBrowseViewController *)self ic_isViewVisible])
  {
    [(ICNoteBrowseViewController *)self startAnalyticsTracking];
    [(ICNoteResultsViewController *)self updatePreparedCells];
    collectionView = [(ICNoteResultsViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[ICAppDelegate sharedInstance];
  cloudContextDelegate = [v4 cloudContextDelegate];
  v6 = ICKeyPathFromSelector();
  [cloudContextDelegate ic_removeObserver:self forKeyPath:v6 context:&off_1006BBCE8];

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager ic_removeObserver:self forKeyPath:@"focusedNoteObjectID" context:&off_1006BBCE8];

  [(ICNoteBrowseViewController *)self removeKVOObservers];
  v8.receiver = self;
  v8.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v8 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v34.receiver = self;
  v34.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v34 viewWillAppear:?];
  traitCollection = [(ICNoteBrowseViewController *)self traitCollection];
  _hasSplitViewControllerContextSidebarColumn = [traitCollection _hasSplitViewControllerContextSidebarColumn];

  if (_hasSplitViewControllerContextSidebarColumn)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  navigationItem = [(ICNoteBrowseViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:v7];

  [(ICNoteBrowseViewController *)self resetBarButtonItemsAnimated:appearCopy];
  [(ICNoteBrowseViewController *)self updateTagDetailOperatorMenuVisibility];
  if ([(ICNoteBrowseViewController *)self isMovingToParentViewController]&& ([(ICNoteBrowseViewController *)self ic_isBeingRevealedFromPoppingViewController]& 1) == 0)
  {
    transitionCoordinator = [(ICNoteBrowseViewController *)self transitionCoordinator];
    if (transitionCoordinator)
    {
      transitionCoordinator2 = [(ICNoteBrowseViewController *)self transitionCoordinator];
      [transitionCoordinator2 isCancelled];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v13 = [indexPathsForVisibleItems countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v13)
  {
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        collectionView2 = [(ICNoteResultsViewController *)self collectionView];
        v18 = [collectionView2 cellForItemAtIndexPath:v16];
        v19 = ICDynamicCast();

        [v19 updateSubfolderCount];
        [v19 updateNoteCount];
      }

      v13 = [indexPathsForVisibleItems countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v13);
  }

  objc_initWeak(&location, self);
  view = [(ICNoteBrowseViewController *)self view];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10011D800;
  v27 = &unk_100648E68;
  objc_copyWeak(&v28, &location);
  [view ic_addCreateNoteInteractionWithFolderHandler:&v24];

  v21 = [(ICNoteBrowseViewController *)self noteCollection:v24];
  LOBYTE(view) = v21 == 0;

  if ((view & 1) == 0)
  {
    v22 = +[NotesApp sharedNotesApp];
    noteCollection = [(ICNoteBrowseViewController *)self noteCollection];
    [v22 refreshNotesIfNeededForCollection:noteCollection];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v16 viewDidAppear:appear];
  v5 = +[ICAppDelegate sharedInstance];
  [v5 didFinishExtendedLaunch];

  v6 = +[UIApplication sharedApplication];
  isRunningTest = [v6 isRunningTest];

  if (isRunningTest)
  {
    if ([(ICBaseViewController *)self noteContainerViewMode])
    {
      if ([(ICBaseViewController *)self noteContainerViewMode]!= 1)
      {
        goto LABEL_7;
      }

      v8 = +[ICAppDelegate sharedInstance];
      [v8 didShowGridView];
    }

    else
    {
      v8 = +[ICAppDelegate sharedInstance];
      [v8 didShowNotesList];
    }
  }

LABEL_7:
  [(ICNoteBrowseViewController *)self startAnalyticsTracking];
  noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
  accountIdentifier = [noteSearchViewController accountIdentifier];

  if (!accountIdentifier)
  {
    noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
    noteContainerAccount = [noteContainer noteContainerAccount];
    identifier = [noteContainerAccount identifier];
    searchDomainIdentifier = identifier;
    if (!identifier)
    {
      noteCollection = [(ICNoteBrowseViewController *)self noteCollection];
      searchDomainIdentifier = [noteCollection searchDomainIdentifier];
    }

    noteSearchViewController2 = [(ICBaseViewController *)self noteSearchViewController];
    [noteSearchViewController2 setAccountIdentifier:searchDomainIdentifier];

    if (!identifier)
    {
    }
  }

  [(ICNoteResultsViewController *)self updatePreparedCells];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(ICNoteBrowseViewController *)self endAnalyticsTracking];
  v6.receiver = self;
  v6.super_class = ICNoteBrowseViewController;
  [(ICNoteBrowseViewController *)&v6 viewWillDisappear:disappearCopy];
  view = [(ICNoteBrowseViewController *)self view];
  [view ic_removeLinkActionInteractions];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = ICNoteBrowseViewController;
  coordinatorCopy = coordinator;
  [(ICNoteBrowseViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011DD24;
  v9[3] = &unk_100645E08;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011DD2C;
  v8[3] = &unk_100645E08;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = ICNoteBrowseViewController;
  [(ICNoteBrowseViewController *)&v23 viewDidLayoutSubviews];
  primarySummaryView = [(ICNoteBrowseViewController *)self primarySummaryView];
  [primarySummaryView availableWidth];
  v5 = v4;
  [(ICNoteBrowseViewController *)self availableWidthForSummaryView];
  v7 = vabdd_f64(v5, v6);

  if (v7 >= 0.00999999978)
  {
    [(ICNoteBrowseViewController *)self availableWidthForSummaryView];
    v9 = v8;
    primarySummaryView2 = [(ICNoteBrowseViewController *)self primarySummaryView];
    [primarySummaryView2 setAvailableWidth:v9];

    primarySummaryView3 = [(ICNoteBrowseViewController *)self primarySummaryView];
    [primarySummaryView3 update];
  }

  if ((+[UIDevice ic_isiPad](UIDevice, "ic_isiPad") & 1) == 0 && (+[UIDevice ic_isVision]& 1) == 0)
  {
    scrolledHeaderSummaryView = [(ICNoteBrowseViewController *)self scrolledHeaderSummaryView];
    [scrolledHeaderSummaryView availableWidth];
    v14 = v13;
    [(ICNoteBrowseViewController *)self availableWidthForSummaryView];
    v16 = vabdd_f64(v14, v15);

    if (v16 >= 0.00999999978)
    {
      [(ICNoteBrowseViewController *)self availableWidthForSummaryView];
      v18 = v17;
      scrolledHeaderSummaryView2 = [(ICNoteBrowseViewController *)self scrolledHeaderSummaryView];
      [scrolledHeaderSummaryView2 setAvailableWidth:v18];

      scrolledHeaderSummaryView3 = [(ICNoteBrowseViewController *)self scrolledHeaderSummaryView];
      [scrolledHeaderSummaryView3 update];
    }
  }

  v21 = +[UIApplication sharedApplication];
  if (![v21 isRunningTest])
  {
    goto LABEL_11;
  }

  _appearState = [(ICNoteBrowseViewController *)self _appearState];

  if (_appearState == 1 && ![(ICBaseViewController *)self noteContainerViewMode])
  {
    v21 = +[ICAppDelegate sharedInstance];
    [v21 noteListDidLayoutSubviews];
LABEL_11:
  }
}

- (void)viewLayoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = ICNoteBrowseViewController;
  [(ICNoteBrowseViewController *)&v5 viewLayoutMarginsDidChange];
  if (+[UIDevice ic_isVision])
  {
    noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
    searchBar = [noteSearchViewController searchBar];
    [searchBar _setOverrideContentInsets:10 forRectEdges:{0.0, 12.0, 0.0, 12.0}];
  }
}

- (void)willDismissSearchController:(id)controller
{
  v6.receiver = self;
  v6.super_class = ICNoteBrowseViewController;
  [(ICBaseViewController *)&v6 willDismissSearchController:controller];
  navigationController = [(ICNoteBrowseViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:0];
  }
}

- (void)setNoteContainer:(id)container dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock
{
  containerCopy = container;
  blockCopy = block;
  renderedBlockCopy = renderedBlock;
  objc_opt_class();
  v11 = ICDynamicCast();
  v12 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    shortLoggingDescription = [v11 shortLoggingDescription];
    containerIdentifier = shortLoggingDescription;
    if (!shortLoggingDescription)
    {
      containerIdentifier = [(__CFNull *)containerCopy containerIdentifier];
    }

    *buf = 134218242;
    selfCopy = self;
    v34 = 2112;
    v35 = containerIdentifier;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Setting note container on note browser %p: %@", buf, 0x16u);
    if (!shortLoggingDescription)
    {
    }
  }

  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  if (kCFNull == containerCopy)
  {
    v14 = 0;
  }

  else
  {
    v14 = containerCopy;
  }

  v15 = v14;
  if (kCFNull == noteContainer)
  {
    v16 = 0;
  }

  else
  {
    v16 = noteContainer;
  }

  v17 = v16;
  if (v15 | v17)
  {
    v18 = v17;
    if (v15)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {

LABEL_18:
      tagSelection = self->_tagSelection;
      self->_tagSelection = 0;

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10011E3BC;
      v27[3] = &unk_100645BA0;
      v27[4] = self;
      v28 = containerCopy;
      [(ICNoteBrowseViewController *)self updateDataSourceAnimated:0 dataIndexedBlock:blockCopy dataRenderedBlock:renderedBlockCopy updateDataSourceBlock:v27];
      objc_opt_class();
      v23 = ICDynamicCast();
      collectionView = [(ICNoteResultsViewController *)self collectionView];
      [collectionView ic_annotateWithNoteContainer:v23];

      v20 = v28;
      goto LABEL_19;
    }

    v21 = [v15 isEqual:v17];

    if (!v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011E324;
  block[3] = &unk_10064A720;
  block[4] = self;
  v30 = blockCopy;
  v31 = renderedBlockCopy;
  dispatch_async(&_dispatch_main_q, block);

  v20 = v30;
LABEL_19:
}

- (void)setNoteCollection:(id)collection dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock
{
  collectionCopy = collection;
  blockCopy = block;
  renderedBlockCopy = renderedBlock;
  v11 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0778(self, collectionCopy, v11);
  }

  noteCollection = [(ICNoteBrowseViewController *)self noteCollection];
  if (kCFNull == collectionCopy)
  {
    v13 = 0;
  }

  else
  {
    v13 = collectionCopy;
  }

  v14 = v13;
  if (kCFNull == noteCollection)
  {
    v15 = 0;
  }

  else
  {
    v15 = noteCollection;
  }

  v16 = v15;
  if (v14 | v16)
  {
    v17 = v16;
    if (v14)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {

LABEL_19:
      tagSelection = self->_tagSelection;
      self->_tagSelection = 0;

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10011E70C;
      v24[3] = &unk_100645BA0;
      v24[4] = self;
      v22 = collectionCopy;
      v25 = v22;
      [(ICNoteBrowseViewController *)self updateDataSourceAnimated:0 dataIndexedBlock:blockCopy dataRenderedBlock:renderedBlockCopy updateDataSourceBlock:v24];
      collectionView = [(ICNoteResultsViewController *)self collectionView];
      [collectionView ic_annotateWithNoteCollection:v22];

      v19 = v25;
      goto LABEL_20;
    }

    v20 = [v14 isEqual:v16];

    if (!v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011E674;
  block[3] = &unk_10064A720;
  block[4] = self;
  v27 = blockCopy;
  v28 = renderedBlockCopy;
  dispatch_async(&_dispatch_main_q, block);

  v19 = v27;
LABEL_20:
}

- (void)setNoteQuery:(id)query dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock
{
  queryCopy = query;
  blockCopy = block;
  renderedBlockCopy = renderedBlock;
  v11 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E082C();
  }

  noteQuery = [(ICNoteBrowseViewController *)self noteQuery];
  if (kCFNull == queryCopy)
  {
    v13 = 0;
  }

  else
  {
    v13 = queryCopy;
  }

  v14 = v13;
  if (kCFNull == noteQuery)
  {
    v15 = 0;
  }

  else
  {
    v15 = noteQuery;
  }

  v16 = v15;
  if (v14 | v16)
  {
    v17 = v16;
    if (v14)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {

LABEL_19:
      noteQuery2 = [(ICNoteBrowseViewController *)self noteQuery];
      v22 = noteQuery2 != 0;

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10011EA64;
      v24[3] = &unk_100645BA0;
      v24[4] = self;
      v25 = queryCopy;
      [(ICNoteBrowseViewController *)self updateDataSourceAnimated:v22 dataIndexedBlock:blockCopy dataRenderedBlock:renderedBlockCopy updateDataSourceBlock:v24];
      collectionView = [(ICNoteResultsViewController *)self collectionView];
      [collectionView ic_annotateWithNoteContainer:0];

      v19 = v25;
      goto LABEL_20;
    }

    v20 = [v14 isEqual:v16];

    if (!v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011E9CC;
  block[3] = &unk_10064A720;
  block[4] = self;
  v27 = blockCopy;
  v28 = renderedBlockCopy;
  dispatch_async(&_dispatch_main_q, block);

  v19 = v27;
LABEL_20:
}

- (void)setVirtualSmartFolder:(id)folder dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock
{
  folderCopy = folder;
  blockCopy = block;
  renderedBlockCopy = renderedBlock;
  v11 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0894();
  }

  virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];
  if (kCFNull == folderCopy)
  {
    v13 = 0;
  }

  else
  {
    v13 = folderCopy;
  }

  v14 = v13;
  if (kCFNull == virtualSmartFolder)
  {
    v15 = 0;
  }

  else
  {
    v15 = virtualSmartFolder;
  }

  v16 = v15;
  if (!(v14 | v16))
  {

    goto LABEL_17;
  }

  v17 = v16;
  if (v14)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v20 = [v14 isEqual:v16];

    if (!v20)
    {
      goto LABEL_19;
    }

LABEL_17:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011ED84;
    block[3] = &unk_10064A720;
    block[4] = self;
    v32 = blockCopy;
    v33 = renderedBlockCopy;
    dispatch_async(&_dispatch_main_q, block);

    v19 = v32;
    goto LABEL_22;
  }

LABEL_19:
  tagSelection = self->_tagSelection;
  self->_tagSelection = 0;

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10011EE1C;
  v29[3] = &unk_100645BA0;
  v29[4] = self;
  v22 = folderCopy;
  v30 = v22;
  [(ICNoteBrowseViewController *)self updateDataSourceAnimated:0 dataIndexedBlock:blockCopy dataRenderedBlock:renderedBlockCopy updateDataSourceBlock:v29];
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  [collectionView ic_annotateWithNoteContainer:0];

  type = [(__CFNull *)v22 type];
  v25 = [type isEqual:ICVirtualSmartFolderItemIdentifierTypeSharedWithYou];

  if (v25)
  {
    v26 = +[ICCollaborationController sharedInstance];
    accountObjectID = [(__CFNull *)v22 accountObjectID];
    v28 = +[ICInvitationsCoreDataIndexer defaultReceivedSince];
    [v26 updatePendingInvitationsInAccountWithID:accountObjectID receivedSince:v28];
  }

  v19 = v30;
LABEL_22:
}

- (void)setTagSelection:(id)selection dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock
{
  selectionCopy = selection;
  renderedBlockCopy = renderedBlock;
  blockCopy = block;
  v12 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E08FC();
  }

  tagDetailCell = [(ICNoteBrowseViewController *)self tagDetailCell];
  [tagDetailCell updateForTagSelection:selectionCopy animated:1];

  tagSelection = [(ICNoteBrowseViewController *)self tagSelection];
  v15 = tagSelection != 0;

  objc_storeStrong(&self->_tagSelection, selection);
  [(ICNoteBrowseViewController *)self submitTagSelectionAnalyticsIfNeeded];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10011F03C;
  v20[3] = &unk_100645E80;
  v20[4] = self;
  v21 = renderedBlockCopy;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10011F090;
  v18[3] = &unk_100645BA0;
  v18[4] = self;
  v19 = selectionCopy;
  v16 = selectionCopy;
  v17 = renderedBlockCopy;
  [(ICNoteBrowseViewController *)self updateDataSourceAnimated:v15 dataIndexedBlock:blockCopy dataRenderedBlock:v20 updateDataSourceBlock:v18];
}

- (BOOL)hasDeletableNoteCell
{
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  indexPathsForFocusedItems = [collectionView indexPathsForFocusedItems];
  if ([indexPathsForFocusedItems count])
  {
    v5 = 1;
  }

  else
  {
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    focusedNoteObjectID = [viewControllerManager focusedNoteObjectID];
    v5 = focusedNoteObjectID != 0;
  }

  collectionView2 = [(ICNoteResultsViewController *)self collectionView];
  if ([collectionView2 isEditing])
  {
    collectionView3 = [(ICNoteResultsViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView3 indexPathsForSelectedItems];
    v11 = [indexPathsForSelectedItems count] != 0;
  }

  else
  {
    v11 = 0;
  }

  if (v5 || v11)
  {
    return ![(ICNoteBrowseViewController *)self needsToConfirmDeletion];
  }

  else
  {
    return 0;
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(ICNoteBrowseViewController *)self isEditing]!= editing && ![(ICNoteBrowseViewController *)self shouldAvoidEditingChanges])
  {
    v15.receiver = self;
    v15.super_class = ICNoteBrowseViewController;
    [(ICBaseViewController *)&v15 setEditing:editingCopy animated:animatedCopy];
    if (editingCopy)
    {
      v7 = 3;
    }

    else if ([(ICBaseViewController *)self noteContainerViewMode]== 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
    [noteDataSource setAutoExpandMode:v7];

    +[CATransaction begin];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10011F410;
    v14[3] = &unk_100645E30;
    v14[4] = self;
    [CATransaction setCompletionBlock:v14];
    +[CATransaction commit];
    if (animatedCopy)
    {
      collectionView = [(ICNoteResultsViewController *)self collectionView];
      [collectionView setEditing:editingCopy];
    }

    else
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10011F468;
      v12[3] = &unk_100646080;
      v12[4] = self;
      v13 = editingCopy;
      [UIView performWithoutAnimation:v12];
    }

    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:animatedCopy];
    tagDetailCell = [(ICNoteBrowseViewController *)self tagDetailCell];
    [tagDetailCell setNeedsUpdateConfiguration];

    if (editingCopy)
    {
      v11 = +[NSNotificationCenter defaultCenter];
      [v11 postNotificationName:@"ICNoteBrowseViewControllerDidStartEditingNotification" object:self];
    }
  }
}

- (BOOL)canBecomeFirstResponder
{
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  activeEditorController = [viewControllerManager activeEditorController];
  wantsToRemainFirstResponder = [activeEditorController wantsToRemainFirstResponder];

  _appearState = [(ICNoteBrowseViewController *)self _appearState];
  LOBYTE(viewControllerManager) = 0;
  if ((wantsToRemainFirstResponder & 1) == 0 && _appearState == 2)
  {
    view = [(ICNoteBrowseViewController *)self view];
    window = [view window];
    rootViewController = [window rootViewController];
    ic_topViewController = [rootViewController ic_topViewController];
    LODWORD(viewControllerManager) = [ic_topViewController ic_hasFullScreenModalPresentationStyle] ^ 1;
  }

  return viewControllerManager;
}

- (void)deleteNotes:(id)notes sender:(id)sender
{
  notesCopy = notes;
  senderCopy = sender;
  v8 = [ICDeleteDecisionController alloc];
  view = [(ICNoteBrowseViewController *)self view];
  window = [view window];
  eventReporter = [(ICNoteBrowseViewController *)self eventReporter];
  v12 = [(ICDeleteDecisionController *)v8 initWithSourceObjects:notesCopy window:window sender:senderCopy eventReporter:eventReporter];

  objc_initWeak(&location, self);
  [(ICNoteBrowseViewController *)self setNeedsToConfirmDeletion:1];
  v13 = [notesCopy count];
  allNotes = [(ICNoteBrowseViewController *)self allNotes];
  v15 = [allNotes count];

  [(ICNoteBrowseViewController *)self setShouldAvoidEditingChanges:v13 == v15];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10011F738;
  v16[3] = &unk_10064A748;
  objc_copyWeak(&v17, &location);
  v18 = v13 == v15;
  v16[4] = self;
  [(ICDeleteDecisionController *)v12 performDecisionWithCompletion:v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)moveNotes:(id)notes
{
  notesCopy = notes;
  objc_initWeak(&location, self);
  v5 = [[ICMoveDecisionController alloc] initWithSourceObjects:notesCopy presentingViewController:self];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011F960;
  v6[3] = &unk_10064A770;
  objc_copyWeak(&v7, &location);
  [(ICMoveDecisionController *)v5 performDecisionWithCompletion:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

- (void)showSharedFolderActions:(id)actions
{
  objc_opt_class();
  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  v8 = ICCheckedDynamicCast();

  if (v8)
  {
    v5 = +[ICCollaborationUIController sharedInstance];
    collaborationButtonsController = [(ICNoteBrowseViewController *)self collaborationButtonsController];
    buttonItem = [collaborationButtonsController buttonItem];
    [v5 showCloudSharingControllerForFolder:v8 presentingViewController:self popoverBarButtonItem:buttonItem presented:0 dismissed:0];
  }
}

- (void)performCmd3:(id)cmd3
{
  v4 = [ICViewAttachmentsActivity alloc];
  eventReporter = [(ICNoteBrowseViewController *)self eventReporter];
  v6 = [(ICViewAttachmentsActivity *)v4 initWithPresentingViewController:self eventReporter:eventReporter];

  [(ICViewAttachmentsActivity *)v6 performActivityWithCompletion:0];
}

- (void)performDeleteKey:(id)key
{
  keyCopy = key;
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v6 = [indexPathsForSelectedItems count];

  if (v6)
  {
    selectedNotes = [(ICNoteBrowseViewController *)self selectedNotes];
  }

  else
  {
    collectionView2 = [(ICNoteResultsViewController *)self collectionView];
    indexPathsForFocusedItems = [collectionView2 indexPathsForFocusedItems];
    v10 = [indexPathsForFocusedItems count];

    v11 = keyCopy;
    if (!v10)
    {
      goto LABEL_6;
    }

    selectedNotes = [(ICNoteBrowseViewController *)self focusedNotes];
  }

  v12 = selectedNotes;
  [(ICNoteBrowseViewController *)self deleteNotes:selectedNotes sender:keyCopy];

  v11 = keyCopy;
LABEL_6:
}

- (void)dataSourceDataDidUpdate:(id)update
{
  v6.receiver = self;
  v6.super_class = ICNoteBrowseViewController;
  [(ICBaseViewController *)&v6 dataSourceDataDidUpdate:update];
  navigationController = [(ICNoteBrowseViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:0];
  }
}

- (void)dataSourceDataUpdateDidRender:(id)render
{
  v6.receiver = self;
  v6.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v6 dataSourceDataUpdateDidRender:render];
  navigationController = [(ICNoteBrowseViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:1];
    [(ICNoteBrowseViewController *)self updateContainerSelection];
  }
}

- (unint64_t)tagsActionMenuNoteCount:(id)count
{
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  totalNoteCount = [noteDataSource totalNoteCount];

  return totalNoteCount;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([(ICNoteBrowseViewController *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/UI/Note/Browse/View Controllers/ICNoteBrowseViewController.m"]& 1) == 0)
  {
    v30.receiver = self;
    v30.super_class = ICNoteBrowseViewController;
    [(ICNoteResultsViewController *)&v30 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];

    goto LABEL_17;
  }

  v13 = [(ICNoteBrowseViewController *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

  if (context == &off_1006BBCE8 && (v13 & 1) == 0)
  {
    v14 = +[ICAppDelegate sharedInstance];
    cloudContextDelegate = [v14 cloudContextDelegate];

    if (cloudContextDelegate == objectCopy)
    {
      v27 = ICKeyPathFromSelector();
      v28 = [pathCopy isEqualToString:v27];

      if (v28)
      {
        performBlockOnMainThread();
      }

      goto LABEL_17;
    }

    noteContainer = [(ICNoteBrowseViewController *)self noteContainer];

    if (noteContainer != objectCopy)
    {
      v17 = +[NSUserDefaults standardUserDefaults];

      if (v17 == objectCopy)
      {
        +[ICNoteListSortUtilities clearCache];
        +[ICDateHeadersUtilities clearCache];
        v18 = [pathCopy isEqualToString:ICSettingsNoteListSortTypeKey];
        if ((v18 & 1) != 0 || ([pathCopy isEqualToString:ICFolderCustomNoteSortTypeQuerySortKey] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", ICSettingsNoteDateHeadersTypeKey) & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", ICSettingsQueryDateHeadersTypeKey))
        {
          [(ICNoteBrowseViewController *)self updateDataSourceConfigurationSortTypeChanged:v18];
          noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
          [noteDataSource reloadDataAnimated:0];
        }

        virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];

        if (virtualSmartFolder)
        {
          virtualSmartFolder2 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
          noteSortTypeUserDefaultsKey = [virtualSmartFolder2 noteSortTypeUserDefaultsKey];
          v23 = [pathCopy isEqualToString:noteSortTypeUserDefaultsKey];

          if (v23)
          {
            goto LABEL_28;
          }

          virtualSmartFolder3 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
          dateHeadersTypeUserDefaultsKey = [virtualSmartFolder3 dateHeadersTypeUserDefaultsKey];
          v26 = [pathCopy isEqualToString:dateHeadersTypeUserDefaultsKey];

          if (v26)
          {
            goto LABEL_28;
          }
        }
      }

      goto LABEL_17;
    }

    if ([pathCopy isEqualToString:@"title"])
    {
      [(ICNoteBrowseViewController *)self updateNavigationTitle];
LABEL_23:
      [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:0];
      goto LABEL_17;
    }

    if ([pathCopy isEqualToString:@"smartFolderQueryJSON"])
    {
      goto LABEL_23;
    }

    if ([pathCopy isEqualToString:@"focusedNoteObjectID"])
    {
      [(ICNoteBrowseViewController *)self updateFocusedNoteIfNeeded];
    }

    else if ([pathCopy isEqualToString:@"customNoteSortTypeValue"] || objc_msgSend(pathCopy, "isEqualToString:", @"dateHeadersType"))
    {
LABEL_28:
      [(ICNoteBrowseViewController *)self updateDataSourceConfigurationSortTypeChanged:0];
      noteDataSource2 = [(ICNoteBrowseViewController *)self noteDataSource];
      [noteDataSource2 reloadDataAnimated:0];
    }
  }

LABEL_17:
}

- (void)didUpdateSearchAppearanceNotification:(id)notification
{
  if ([(ICBaseViewController *)self noteContainerViewMode]== 1)
  {

    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:1];
  }
}

- (void)didUpdateSearchQuery:(id)query
{
  [(ICNoteBrowseViewController *)self updateNavigationTitle];

  [(ICNoteBrowseViewController *)self updateSummaryView];
}

- (void)registerForTraitChanges
{
  v14.receiver = self;
  v14.super_class = ICNoteBrowseViewController;
  [(ICBaseViewController *)&v14 registerForTraitChanges];
  objc_initWeak(&location, self);
  v17 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v17 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100120428;
  v11[3] = &unk_100646240;
  objc_copyWeak(&v12, &location);
  v4 = [(ICNoteBrowseViewController *)self registerForTraitChanges:v3 withHandler:v11];

  v16 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100120514;
  v9[3] = &unk_100646240;
  objc_copyWeak(&v10, &location);
  v6 = [(ICNoteBrowseViewController *)self registerForTraitChanges:v5 withHandler:v9];

  v15 = objc_opt_class();
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [(ICNoteBrowseViewController *)self registerForTraitChanges:v7 withAction:"updateTagDetailOperatorMenuVisibility"];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)updateDataSourceAnimated:(BOOL)animated dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock updateDataSourceBlock:(id)sourceBlock
{
  animatedCopy = animated;
  blockCopy = block;
  sourceBlockCopy = sourceBlock;
  renderedBlockCopy = renderedBlock;
  if ([(ICNoteBrowseViewController *)self ic_isViewVisible])
  {
    [(ICNoteBrowseViewController *)self endAnalyticsTracking];
  }

  [(ICNoteBrowseViewController *)self removeKVOObservers];
  if (sourceBlockCopy)
  {
    sourceBlockCopy[2](sourceBlockCopy);
  }

  [(ICNoteBrowseViewController *)self addKVOObservers];
  v13 = [[ICNoteBrowseViewControllerCollectionViewDelegate alloc] initWithNoteBrowseViewController:self];
  [(ICNoteBrowseViewController *)self setCollectionViewDelegate:v13];

  collectionViewDelegate = [(ICNoteBrowseViewController *)self collectionViewDelegate];
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  [collectionView setDelegate:collectionViewDelegate];

  if ([(ICNoteBrowseViewController *)self ic_isViewVisible])
  {
    [(ICNoteBrowseViewController *)self startAnalyticsTracking];
    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:0];
  }

  [(ICNoteBrowseViewController *)self updateDataSourceConfigurationSortTypeChanged:0];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1001207A4;
  v27 = &unk_10064A798;
  selfCopy = self;
  v29 = blockCopy;
  v16 = blockCopy;
  [(ICNoteBrowseViewController *)self reloadDataSourceAnimated:animatedCopy dataIndexedBlock:&v24 dataRenderedBlock:renderedBlockCopy];

  v17 = [(ICNoteBrowseViewController *)self noteContainer:v24];
  noteContainerAccount = [v17 noteContainerAccount];
  identifier = [noteContainerAccount identifier];
  v20 = identifier;
  if (identifier)
  {
    searchDomainIdentifier = identifier;
  }

  else
  {
    noteCollection = [(ICNoteBrowseViewController *)self noteCollection];
    searchDomainIdentifier = [noteCollection searchDomainIdentifier];
  }

  if (searchDomainIdentifier)
  {
    noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
    [noteSearchViewController setAccountIdentifier:searchDomainIdentifier];
  }
}

- (void)updateDataSourceConfigurationSortTypeChanged:(BOOL)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  sortType = [(ICNoteBrowseViewController *)self sortType];
  [noteDataSource setSortType:sortType force:changedCopy];

  dateHeadersType = [(ICNoteBrowseViewController *)self dateHeadersType];
  noteDataSource2 = [(ICNoteBrowseViewController *)self noteDataSource];
  [noteDataSource2 setDateHeadersType:dateHeadersType];

  shouldIncludeSubfolders = [(ICNoteBrowseViewController *)self shouldIncludeSubfolders];
  noteDataSource3 = [(ICNoteBrowseViewController *)self noteDataSource];
  [noteDataSource3 setShouldIncludeSubfolders:shouldIncludeSubfolders];

  shouldIncludeTags = [(ICNoteBrowseViewController *)self shouldIncludeTags];
  noteDataSource4 = [(ICNoteBrowseViewController *)self noteDataSource];
  [noteDataSource4 setShouldIncludeTags:shouldIncludeTags];

  shouldIncludeTagDetail = [(ICNoteBrowseViewController *)self shouldIncludeTagDetail];
  noteDataSource5 = [(ICNoteBrowseViewController *)self noteDataSource];
  [noteDataSource5 setShouldIncludeTagDetail:shouldIncludeTagDetail];

  shouldIncludeInvitations = [(ICNoteBrowseViewController *)self shouldIncludeInvitations];
  noteDataSource6 = [(ICNoteBrowseViewController *)self noteDataSource];
  [noteDataSource6 setShouldIncludeInvitations:shouldIncludeInvitations];

  objc_copyWeak(&v19, &location);
  v17 = [(ICNoteBrowseViewController *)self noteDataSource:_NSConcreteStackBlock];
  [v17 setTagSelectionDidChangeHandler:&v18];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)reloadDataSourceAnimated:(BOOL)animated dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock
{
  animatedCopy = animated;
  blockCopy = block;
  renderedBlockCopy = renderedBlock;
  [(ICNoteBrowseViewController *)self updateSelectedTagTitles];
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100120B7C;
  v15[3] = &unk_10064A7C0;
  v17 = animatedCopy;
  v15[4] = self;
  v16 = blockCopy;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100120D64;
  v13[3] = &unk_100645E80;
  v13[4] = self;
  v14 = renderedBlockCopy;
  v11 = renderedBlockCopy;
  v12 = blockCopy;
  [noteDataSource reloadDataAnimated:animatedCopy dataIndexedBlock:v15 dataRenderedBlock:v13];
}

- (void)updateFocusedNoteIfNeeded
{
  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  if (noteContainer)
  {
  }

  else
  {
    virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];

    if (!virtualSmartFolder)
    {
      return;
    }
  }

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  focusedNoteObjectID = [viewControllerManager focusedNoteObjectID];

  if (!focusedNoteObjectID)
  {
    viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
    selectedNoteObjectID = [viewControllerManager2 selectedNoteObjectID];
    if (selectedNoteObjectID)
    {

      goto LABEL_10;
    }

    viewControllerManager3 = [(ICBaseViewController *)self viewControllerManager];
    selectedInvitationObjectID = [viewControllerManager3 selectedInvitationObjectID];
    if (!selectedInvitationObjectID)
    {
      collectionView = [(ICNoteResultsViewController *)self collectionView];
      isEditing = [collectionView isEditing];

      if (isEditing)
      {
        return;
      }

      viewControllerManager2 = [(ICNoteResultsViewController *)self collectionView];
      [viewControllerManager2 ic_deselectAllItems];
      goto LABEL_10;
    }

LABEL_7:
LABEL_10:
    v11 = viewControllerManager2;
    goto LABEL_11;
  }

  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  collectionViewDiffableDataSource = [noteDataSource collectionViewDiffableDataSource];
  viewControllerManager4 = [(ICBaseViewController *)self viewControllerManager];
  focusedNoteObjectID2 = [viewControllerManager4 focusedNoteObjectID];
  viewControllerManager2 = [collectionViewDiffableDataSource indexPathForItemIdentifier:focusedNoteObjectID2];

  v11 = viewControllerManager2;
  if (viewControllerManager2)
  {
    collectionView2 = [(ICNoteResultsViewController *)self collectionView];
    [collectionView2 ic_selectCellAtIndexPath:viewControllerManager2 animated:0];

    objc_opt_class();
    collectionView3 = [(ICNoteResultsViewController *)self collectionView];
    v14 = [collectionView3 cellForItemAtIndexPath:viewControllerManager2];
    viewControllerManager3 = ICDynamicCast();

    [viewControllerManager3 setSelected:1];
    goto LABEL_7;
  }

LABEL_11:
}

- (BOOL)updateTagSectionVisibility
{
  shouldIncludeTags = [(ICNoteBrowseViewController *)self shouldIncludeTags];
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  shouldIncludeTags2 = [noteDataSource shouldIncludeTags];

  shouldIncludeTags3 = [(ICNoteBrowseViewController *)self shouldIncludeTags];
  noteDataSource2 = [(ICNoteBrowseViewController *)self noteDataSource];
  [noteDataSource2 setShouldIncludeTags:shouldIncludeTags3];

  shouldIncludeTagDetail = [(ICNoteBrowseViewController *)self shouldIncludeTagDetail];
  noteDataSource3 = [(ICNoteBrowseViewController *)self noteDataSource];
  [noteDataSource3 setShouldIncludeTagDetail:shouldIncludeTagDetail];

  return shouldIncludeTags ^ shouldIncludeTags2;
}

- (void)sharedWithYouControllerDidUpdateHighlights:(id)highlights
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100121114;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (ICCollaborationButtonsController)collaborationButtonsController
{
  collaborationButtonsController = self->_collaborationButtonsController;
  if (collaborationButtonsController)
  {
    v3 = collaborationButtonsController;
  }

  else
  {
    objc_opt_class();
    noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
    v6 = ICDynamicCast();

    if (v6)
    {
      v7 = [ICCollaborationButtonsController alloc];
      viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
      v9 = [(ICCollaborationButtonsController *)v7 initWithCloudObject:v6 coordinator:viewControllerManager];
      v10 = self->_collaborationButtonsController;
      self->_collaborationButtonsController = v9;

      objc_initWeak(&location, self);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001212F4;
      v12[3] = &unk_100645C78;
      objc_copyWeak(&v13, &location);
      [(ICCollaborationButtonsController *)self->_collaborationButtonsController setDidPressManageShareButton:v12];
      v3 = self->_collaborationButtonsController;
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSArray)selectedModernNotes
{
  selectedNotes = [(ICNoteBrowseViewController *)self selectedNotes];
  v3 = [selectedNotes ic_compactMap:&stru_10064A828];

  return v3;
}

- (id)focusedNotes
{
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  indexPathsForFocusedItems = [collectionView indexPathsForFocusedItems];

  v5 = [(ICNoteBrowseViewController *)self notesForIndexPaths:indexPathsForFocusedItems];

  return v5;
}

- (BOOL)isAllTagsSelected
{
  tagSelection = [(ICNoteBrowseViewController *)self tagSelection];
  v3 = [tagSelection mode] == 1;

  return v3;
}

- (void)resetBarButtonItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationItemConfiguration = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration reset];

  [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:animatedCopy];
}

- (void)updateBarButtonItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(ICNoteBrowseViewController *)self updateSummaryView];
  ic_behavior = [(ICNoteBrowseViewController *)self ic_behavior];
  v6 = +[ICAuthenticationState sharedState];
  isAuthenticated = [v6 isAuthenticated];
  navigationItemConfiguration = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration setAuthenticated:isAuthenticated];

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  canAddNewNoteToSelectedContainers = [viewControllerManager canAddNewNoteToSelectedContainers];
  navigationItemConfiguration2 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration2 setCanAddNote:canAddNewNoteToSelectedContainers];

  shouldShowTagAssignmentBarButtonItem = [(ICNoteBrowseViewController *)self shouldShowTagAssignmentBarButtonItem];
  navigationItemConfiguration3 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration3 setCanAssignTags:shouldShowTagAssignmentBarButtonItem];

  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  canBeSharedViaICloud = [noteContainer canBeSharedViaICloud];
  navigationItemConfiguration4 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration4 setCanBeShared:canBeSharedViaICloud];

  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  hasCompactWidth = [viewControllerManager2 hasCompactWidth];
  navigationItemConfiguration5 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration5 setCompactWidth:hasCompactWidth];

  viewControllerManager3 = [(ICBaseViewController *)self viewControllerManager];
  hasCompactHeight = [viewControllerManager3 hasCompactHeight];
  navigationItemConfiguration6 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration6 setCompactHeight:hasCompactHeight];

  isEditing = [(ICNoteBrowseViewController *)self isEditing];
  navigationItemConfiguration7 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration7 setEditing:isEditing];

  noteContainerViewMode = [(ICBaseViewController *)self noteContainerViewMode];
  navigationItemConfiguration8 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration8 setNoteContainerViewMode:noteContainerViewMode];

  allNotes = [(ICNoteBrowseViewController *)self allNotes];
  v28 = [allNotes count];
  navigationItemConfiguration9 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration9 setNoteCount:v28];

  selectedNotes = [(ICNoteBrowseViewController *)self selectedNotes];
  v31 = [selectedNotes count];
  navigationItemConfiguration10 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration10 setSelectedNoteCount:v31];

  noteContainer2 = [(ICNoteBrowseViewController *)self noteContainer];
  isSharedViaICloud = [noteContainer2 isSharedViaICloud];
  navigationItemConfiguration11 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration11 setShared:isSharedViaICloud];

  shouldShowEmptyState = [(ICNoteBrowseViewController *)self shouldShowEmptyState];
  navigationItemConfiguration12 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration12 setShowingEmptyState:shouldShowEmptyState];

  if (ic_behavior == 1)
  {
    shouldShowEmptyState = [(ICNoteBrowseViewController *)self traitCollection];
    v38 = [shouldShowEmptyState splitViewControllerLayoutEnvironment] == 2;
  }

  else
  {
    v38 = 0;
  }

  navigationItemConfiguration13 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration13 setShowsCalculatorModeButton:v38];

  if (ic_behavior == 1)
  {

    if (ICDebugModeEnabled())
    {
      v40 = [(ICNoteBrowseViewController *)self isTrashFolder]^ 1;
      goto LABEL_9;
    }
  }

  else
  {
    ICDebugModeEnabled();
  }

  v40 = 0;
LABEL_9:
  navigationItemConfiguration14 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration14 setShowsDebugItem:v40];

  isTrashFolder = [(ICNoteBrowseViewController *)self isTrashFolder];
  navigationItemConfiguration15 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration15 setTrashFolder:isTrashFolder];

  if (+[UIDevice ic_isVision])
  {
    v44 = [(ICBaseViewController *)self noteContainerViewMode]== 1;
  }

  else
  {
    v44 = 0;
  }

  navigationItemConfiguration16 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration16 setUsesCustomBackButton:v44];

  v46 = +[UIDevice ic_isVision];
  navigationItemConfiguration17 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration17 setUsesPlainBarButtonItems:v46];

  noteContainer3 = [(ICNoteBrowseViewController *)self noteContainer];

  if (noteContainer3)
  {
    v49 = 1;
  }

  else
  {
    noteCollection = [(ICNoteBrowseViewController *)self noteCollection];

    if (noteCollection)
    {
      v49 = 2;
    }

    else
    {
      noteQuery = [(ICNoteBrowseViewController *)self noteQuery];

      if (noteQuery)
      {
        v49 = 3;
      }

      else
      {
        virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];
        v53 = virtualSmartFolder != 0;

        v49 = 4 * v53;
      }
    }
  }

  navigationItemConfiguration18 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration18 setCollectionType:v49];

  if ([(ICNoteBrowseViewController *)self numberOfSelectedItems])
  {
    [(ICNoteBrowseViewController *)self selectedNotes];
  }

  else
  {
    [(ICNoteBrowseViewController *)self allNotes];
  }
  v70 = ;
  if (-[ICNoteBrowseViewController isEditing](self, "isEditing") && [v70 count])
  {
    v55 = [v70 ic_allSatisfy:&stru_10064A868];
  }

  else
  {
    v55 = 0;
  }

  navigationItemConfiguration19 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration19 setCanMoveNotes:v55];

  if (-[ICNoteBrowseViewController isEditing](self, "isEditing") && [v70 count])
  {
    navigationItemConfiguration21 = [v70 ic_allSatisfy:&stru_10064A888];
  }

  else
  {
    navigationItemConfiguration21 = 0;
  }

  navigationItemConfiguration20 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [navigationItemConfiguration20 setCanDeleteNotes:navigationItemConfiguration21];

  if ([(ICNoteBrowseViewController *)self _appearState]== 1 || [(ICNoteBrowseViewController *)self _appearState]== 2)
  {
    navigationItemConfiguration21 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
    [navigationItemConfiguration21 updateAnimated:animatedCopy];
  }

  noteContainerViewMode2 = [(ICBaseViewController *)self noteContainerViewMode];
  if (noteContainerViewMode2 == 1)
  {
    navigationItemConfiguration21 = [(ICNoteBrowseViewController *)self navigationController];
    if ([navigationItemConfiguration21 isToolbarHidden] && !-[ICNoteBrowseViewController shouldShowEmptyState](self, "shouldShowEmptyState"))
    {
      navigationItemConfiguration20 = [(ICBaseViewController *)self viewControllerManager];
      v61 = [navigationItemConfiguration20 hasCompactWidth] ^ 1;
      v60 = 1;
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  collectionView = [(ICNoteResultsViewController *)self collectionView];
  [collectionView setShouldShowSummaryFooter:v61];

  if (v60)
  {
  }

  if (noteContainerViewMode2 == 1)
  {
  }

  if (_UISolariumEnabled() && (+[UIDevice ic_isVision]& 1) == 0)
  {
    traitCollection = [(ICNoteBrowseViewController *)self traitCollection];
    splitViewControllerLayoutEnvironment = [traitCollection splitViewControllerLayoutEnvironment];

    if (splitViewControllerLayoutEnvironment == 1)
    {
      primarySummaryView = 0;
    }

    else
    {
      primarySummaryView = [(ICNoteBrowseViewController *)self primarySummaryView];
    }

    navigationItem = [(ICNoteBrowseViewController *)self navigationItem];
    [navigationItem setLargeSubtitleView:primarySummaryView];

    if (splitViewControllerLayoutEnvironment == 1)
    {
      [(ICNoteBrowseViewController *)self primarySummaryView];
    }

    else
    {

      [(ICNoteBrowseViewController *)self scrolledHeaderSummaryView];
    }
    v67 = ;
    navigationItem2 = [(ICNoteBrowseViewController *)self navigationItem];
    [navigationItem2 setSubtitleView:v67];

    navigationItem3 = [(ICNoteBrowseViewController *)self navigationItem];
    [navigationItem3 setStyle:splitViewControllerLayoutEnvironment == 1];
  }
}

- (void)updateContainerSelection
{
  tagSelection = [(ICNoteBrowseViewController *)self tagSelection];

  if (tagSelection)
  {
    tagContainerCell = [(ICNoteBrowseViewController *)self tagContainerCell];
    tagSelection2 = [(ICNoteBrowseViewController *)self tagSelection];
    [tagContainerCell selectTagsWithTagSelection:tagSelection2 animated:0];

    tagDetailCell = [(ICNoteBrowseViewController *)self tagDetailCell];
    tagSelection3 = [(ICNoteBrowseViewController *)self tagSelection];
    [tagDetailCell updateForTagSelection:tagSelection3 animated:0];
  }

  [(ICNoteBrowseViewController *)self updateFocusedNoteIfNeeded];
}

- (ICTagContainerCell)tagContainerCell
{
  tagSelection = [(ICNoteBrowseViewController *)self tagSelection];

  if (tagSelection)
  {
    dataSource = [(ICNoteBrowseViewController *)self dataSource];
    collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
    v6 = +[ICTagContainerItemIdentifier sharedItemIdentifier];
    v7 = [collectionViewDiffableDataSource indexPathForItemIdentifier:v6];

    if (v7)
    {
      objc_opt_class();
      collectionView = [(ICNoteResultsViewController *)self collectionView];
      v9 = [collectionView cellForItemAtIndexPath:v7];
      v10 = ICDynamicCast();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tagDetailCell
{
  tagSelection = [(ICNoteBrowseViewController *)self tagSelection];

  if (tagSelection)
  {
    dataSource = [(ICNoteBrowseViewController *)self dataSource];
    collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
    v6 = +[ICTagDetailItemIdentifier sharedItemIdentifier];
    v7 = [collectionViewDiffableDataSource indexPathForItemIdentifier:v6];

    if (v7)
    {
      objc_opt_class();
      collectionView = [(ICNoteResultsViewController *)self collectionView];
      v9 = [collectionView cellForItemAtIndexPath:v7];
      v10 = ICDynamicCast();
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)notesForIndexPaths:(id)paths
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100122190;
  v8[3] = &unk_10064A8B0;
  v8[4] = self;
  v4 = [paths ic_compactMap:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100122240;
  v7[3] = &unk_10064A8D8;
  v7[4] = self;
  v5 = [v4 ic_compactMap:v7];

  return v5;
}

- (double)availableWidthForSummaryView
{
  viewIfLoaded = [(ICNoteBrowseViewController *)self viewIfLoaded];

  if (!viewIfLoaded)
  {
    return 100.0;
  }

  view = [(ICNoteBrowseViewController *)self view];
  [view bounds];
  v6 = v5;

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  hasCompactWidth = [viewControllerManager hasCompactWidth];
  v9 = -32.0;
  if (hasCompactWidth)
  {
    v9 = -100.0;
  }

  v10 = v6 + v9;

  return fmax(v10, 100.0);
}

- (id)updateSummaryViewIsPrimary:(BOOL)primary
{
  primaryCopy = primary;
  if (primary)
  {
    [(ICNoteBrowseViewController *)self primarySummaryView];
  }

  else
  {
    [(ICNoteBrowseViewController *)self scrolledHeaderSummaryView];
  }
  v5 = ;
  if ([(ICBaseViewController *)self noteContainerViewMode]== 1 || [(ICNoteBrowseViewController *)self shouldShowEmptyState])
  {
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    hasCompactHeight = [viewControllerManager hasCompactHeight];
  }

  else
  {
    hasCompactHeight = 1;
  }

  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  hasCompactWidth = [viewControllerManager2 hasCompactWidth];

  if ([(ICBaseViewController *)self isShowingActiveSearch])
  {
    v10 = 0;
  }

  else
  {
    v10 = hasCompactWidth | hasCompactHeight;
  }

  if (_UISolariumEnabled())
  {
    v11 = +[UIDevice ic_isVision];
    v12 = v11 ^ 1;
    v13 = 2;
    if (!primaryCopy)
    {
      v13 = 3;
    }

    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  if ((v10 | v12) & 1) != 0 || !primaryCopy || (_UISolariumEnabled())
  {
    if (!v5)
    {
      v5 = [[ICToolbarSummaryView alloc] initWithFrame:v14 type:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v15 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1004E0964(self, v5, v15);
      }

      if (primaryCopy)
      {
        [(ICNoteBrowseViewController *)self setPrimarySummaryView:v5];
      }

      else
      {
        [(ICNoteBrowseViewController *)self setScrolledHeaderSummaryView:v5];
      }
    }
  }

  else
  {
    collectionView = [(ICNoteResultsViewController *)self collectionView];
    v17 = [collectionView visibleSupplementaryViewsOfKind:UICollectionElementKindSectionFooter];
    firstObject = [v17 firstObject];

    objc_opt_class();
    v19 = ICCheckedDynamicCast();

    v5 = v19;
  }

  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  noteContainerAccount = [noteContainer noteContainerAccount];
  accountType = [noteContainerAccount accountType];

  [(ICToolbarSummaryView *)v5 setHidden:0];
  [(ICToolbarSummaryView *)v5 setType:v14];
  noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
  -[ICToolbarSummaryView setTotalNoteCount:](v5, "setTotalNoteCount:", [noteDataSource totalNoteCount]);

  noteDataSource2 = [(ICNoteBrowseViewController *)self noteDataSource];
  -[ICToolbarSummaryView setTotalFolderCount:](v5, "setTotalFolderCount:", [noteDataSource2 totalFolderCount]);

  noteDataSource3 = [(ICNoteBrowseViewController *)self noteDataSource];
  -[ICToolbarSummaryView setTotalInvitationsCount:](v5, "setTotalInvitationsCount:", [noteDataSource3 totalInvitationsCount]);

  v26 = +[ICAuthenticationState sharedState];
  -[ICToolbarSummaryView setLockNowHidden:](v5, "setLockNowHidden:", [v26 isAuthenticated] ^ 1);

  [(ICToolbarSummaryView *)v5 setSyncActivityVisible:accountType == 1];
  [(ICNoteBrowseViewController *)self availableWidthForSummaryView];
  [(ICToolbarSummaryView *)v5 setAvailableWidth:?];
  if (accountType == 1)
  {
    v27 = +[ICAppDelegate sharedInstance];
    cloudContextDelegate = [v27 cloudContextDelegate];
    syncMessage = [cloudContextDelegate syncMessage];
    [(ICToolbarSummaryView *)v5 setSyncMessage:syncMessage];
  }

  else
  {
    [(ICToolbarSummaryView *)v5 setSyncMessage:0];
  }

  [(ICToolbarSummaryView *)v5 setDelegate:self];
  [(ICToolbarSummaryView *)v5 update];
  syncMessage2 = [(ICToolbarSummaryView *)v5 syncMessage];
  if (syncMessage2)
  {
    v31 = syncMessage2;
    noteContainerViewMode = [(ICBaseViewController *)self noteContainerViewMode];

    if (noteContainerViewMode == 1)
    {
      v33 = objc_alloc_init(UICollectionViewLayoutInvalidationContext);
      collectionView2 = [(ICNoteResultsViewController *)self collectionView];
      v35 = [collectionView2 indexPathsForVisibleSupplementaryElementsOfKind:UICollectionElementKindSectionFooter];

      [v33 invalidateSupplementaryElementsOfKind:UICollectionElementKindSectionFooter atIndexPaths:v35];
      collectionView3 = [(ICNoteResultsViewController *)self collectionView];
      collectionViewLayout = [collectionView3 collectionViewLayout];
      [collectionViewLayout invalidateLayoutWithContext:v33];
    }
  }

  [(ICNoteBrowseViewController *)self setNeedsUpdateContentUnavailableConfiguration];
  if (+[UIDevice ic_isVision])
  {
    v38 = ICNoteEditorPillOrnamentViewControllerInsets;
    navigationController = [(ICNoteBrowseViewController *)self navigationController];
    [navigationController setAdditionalSafeAreaInsets:{0.0, 0.0, v38, 0.0}];
  }

  return v5;
}

- (void)noteDecryptedStatusDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v5 noteDecryptedStatusDidChange:change];
  v3 = +[ICAuthenticationState sharedState];
  isBlockingDeauthentication = [v3 isBlockingDeauthentication];

  if ((isBlockingDeauthentication & 1) == 0)
  {
    performBlockOnMainThread();
  }
}

- (void)summaryViewLockNowPressed:(id)pressed
{
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager lockNotesNow];

  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  noteContainerAccount = [noteContainer noteContainerAccount];

  if (noteContainerAccount)
  {
    v6 = +[ICLockedNotesModeMigrator sharedMigrator];
    view = [(ICNoteBrowseViewController *)self view];
    window = [view window];
    [v6 showMigrationPromptAndMigrateIfNeededForAccount:noteContainerAccount window:window];
  }
}

- (BOOL)isSearchActive
{
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  isSearchActive = [viewControllerManager isSearchActive];

  return isSearchActive;
}

- (BOOL)isSearchActiveWithQuery
{
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  isSearchActiveWithQuery = [viewControllerManager isSearchActiveWithQuery];

  return isSearchActiveWithQuery;
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  if ([(ICNoteBrowseViewController *)self shouldShowEmptyState]&& [(ICNoteBrowseViewController *)self ic_isViewVisible])
  {
    v8 = +[UIContentUnavailableConfiguration emptyConfiguration];
    v4 = [UIImage systemImageNamed:@"note.text"];
    [v8 setImage:v4];

    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"No Notes" value:&stru_100661CF0 table:0];
    [v8 setText:v6];

    [(ICNoteBrowseViewController *)self setContentUnavailableConfiguration:v8];
  }

  else
  {
    contentUnavailableConfiguration = [(ICNoteBrowseViewController *)self contentUnavailableConfiguration];

    if (contentUnavailableConfiguration)
    {

      [(ICNoteBrowseViewController *)self setContentUnavailableConfiguration:0];
    }
  }
}

- (void)managedObjectContextDidSaveObjectIDs:(id)ds
{
  dsCopy = ds;
  objc_opt_class();
  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  v6 = ICDynamicCast();
  isSmartFolder = [v6 isSmartFolder];

  if (isSmartFolder)
  {
    v8 = +[NSMutableSet set];
    userInfo = [dsCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:NSUpdatedObjectIDsKey];
    [v8 ic_addObjectsFromNonNilArray:v10];

    userInfo2 = [dsCopy userInfo];
    v12 = [userInfo2 objectForKeyedSubscript:NSRefreshedObjectIDsKey];
    [v8 ic_addObjectsFromNonNilArray:v12];

    noteContainer2 = [(ICNoteBrowseViewController *)self noteContainer];
    objectID = [noteContainer2 objectID];
    v15 = [v8 containsObject:objectID];

    if (v15)
    {
      noteContainer3 = [(ICNoteBrowseViewController *)self noteContainer];
      noteDataSource = [(ICNoteBrowseViewController *)self noteDataSource];
      [noteDataSource setNoteContainer:noteContainer3];

      noteDataSource2 = [(ICNoteBrowseViewController *)self noteDataSource];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100122DB0;
      v19[3] = &unk_1006466E0;
      v19[4] = self;
      [noteDataSource2 reloadDataAnimated:1 dataIndexedBlock:v19 dataRenderedBlock:0];
    }
  }
}

- (void)startAnalyticsTracking
{
  if ([(ICNoteBrowseViewController *)self analyticsTrackingActive])
  {
    return;
  }

  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];

  if (noteContainer)
  {
    eventReporter = [(ICNoteBrowseViewController *)self eventReporter];
    noteContainer2 = [(ICNoteBrowseViewController *)self noteContainer];
    [eventReporter startFolderViewEventDurationTrackingForNoteContainer:noteContainer2 isInGridMode:{-[ICBaseViewController noteContainerViewMode](self, "noteContainerViewMode") == 1}];
LABEL_8:

    goto LABEL_9;
  }

  noteCollection = [(ICNoteBrowseViewController *)self noteCollection];

  if (noteCollection)
  {
    eventReporter = [(ICNoteBrowseViewController *)self eventReporter];
    noteContainer2 = [(ICNoteBrowseViewController *)self noteCollection];
    [eventReporter startFolderViewEventDurationTrackingForNoteCollection:noteContainer2 isInGridMode:{-[ICBaseViewController noteContainerViewMode](self, "noteContainerViewMode") == 1}];
    goto LABEL_8;
  }

  virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];

  if (virtualSmartFolder)
  {
    eventReporter = [(ICNoteBrowseViewController *)self eventReporter];
    noteContainer2 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
    v8 = [(ICBaseViewController *)self noteContainerViewMode]== 1;
    v9 = +[ICNoteContext sharedContext];
    managedObjectContext = [v9 managedObjectContext];
    [eventReporter startFolderViewEventDurationTrackingForVirtualFolder:noteContainer2 isInGridMode:v8 context:managedObjectContext];

    goto LABEL_8;
  }

LABEL_9:

  [(ICNoteBrowseViewController *)self setAnalyticsTrackingActive:1];
}

- (void)endAnalyticsTracking
{
  if (![(ICNoteBrowseViewController *)self analyticsTrackingActive])
  {
    return;
  }

  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];

  if (noteContainer)
  {
    eventReporter = [(ICNoteBrowseViewController *)self eventReporter];
    noteContainer2 = [(ICNoteBrowseViewController *)self noteContainer];
    [eventReporter submitFolderViewEventForNoteContainer:noteContainer2 isInGridMode:{-[ICBaseViewController noteContainerViewMode](self, "noteContainerViewMode") == 1}];
LABEL_9:

    goto LABEL_10;
  }

  noteCollection = [(ICNoteBrowseViewController *)self noteCollection];

  if (noteCollection)
  {
    eventReporter = [(ICNoteBrowseViewController *)self eventReporter];
    noteContainer2 = [(ICNoteBrowseViewController *)self noteCollection];
    [eventReporter submitFolderViewEventForNoteCollection:noteContainer2 isInGridMode:{-[ICBaseViewController noteContainerViewMode](self, "noteContainerViewMode") == 1}];
    goto LABEL_9;
  }

  virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];

  if (virtualSmartFolder)
  {
    eventReporter = [(ICNoteBrowseViewController *)self eventReporter];
    noteContainer2 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
    v8 = [(ICBaseViewController *)self noteContainerViewMode]== 1;
    v9 = +[ICNoteContext sharedContext];
    managedObjectContext = [v9 managedObjectContext];
    [eventReporter submitFolderViewEventForVirtualFolder:noteContainer2 isInGridMode:v8 context:managedObjectContext];

    goto LABEL_9;
  }

LABEL_10:

  [(ICNoteBrowseViewController *)self setAnalyticsTrackingActive:0];
}

- (void)submitTagSelectionAnalyticsIfNeeded
{
  tagSelection = [(ICNoteBrowseViewController *)self tagSelection];
  if (tagSelection)
  {
    v4 = tagSelection;
    tagSelection2 = [(ICNoteBrowseViewController *)self tagSelection];
    isEmpty = [tagSelection2 isEmpty];

    if ((isEmpty & 1) == 0)
    {
      isAllTagsSelected = [(ICNoteBrowseViewController *)self isAllTagsSelected];
      tagSelection3 = [(ICNoteBrowseViewController *)self tagSelection];
      selectedTagCount = [tagSelection3 selectedTagCount];

      eventReporter = [(ICNoteBrowseViewController *)self eventReporter];
      [eventReporter submitTagBrowserSelectionEventWithSelectedTagCount:selectedTagCount isAllTagsSelected:isAllTagsSelected];
    }
  }
}

- (void)updateTagDetailOperatorMenuVisibility
{
  traitCollection = [(ICNoteBrowseViewController *)self traitCollection];
  ic_hasCompactWidth = [traitCollection ic_hasCompactWidth];
  tagDetailCell = [(ICNoteBrowseViewController *)self tagDetailCell];
  [tagDetailCell setShowOperatorMenuButton:ic_hasCompactWidth];
}

- (id)noteBrowseNavigationItemConfigurationNavigationTitle:(id)title
{
  if ([(ICBaseViewController *)self isShowingActiveSearch])
  {
    navigationItem = [(ICNoteBrowseViewController *)self navigationItem];
    searchController = [navigationItem searchController];
    searchBar = [searchController searchBar];
    ic_containsQuery = [searchBar ic_containsQuery];

    if (ic_containsQuery)
    {
      searchNavigationTitle = [(ICBaseViewController *)self searchNavigationTitle];
      goto LABEL_17;
    }
  }

  if ([(ICNoteBrowseViewController *)self isEditing]&& [(ICNoteBrowseViewController *)self numberOfSelectedItems])
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"%lu (notes) Selected" value:&stru_100661CF0 table:0];
    searchNavigationTitle = [NSString localizedStringWithFormat:v10, [(ICNoteBrowseViewController *)self numberOfSelectedItems]];

    goto LABEL_17;
  }

  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];

  if (noteContainer)
  {
    noteContainer2 = [(ICNoteBrowseViewController *)self noteContainer];
    titleForNavigationBar = [noteContainer2 titleForNavigationBar];
LABEL_16:
    searchNavigationTitle = titleForNavigationBar;

    goto LABEL_17;
  }

  noteCollection = [(ICNoteBrowseViewController *)self noteCollection];

  if (noteCollection)
  {
    noteContainer2 = [(ICNoteBrowseViewController *)self noteCollection];
    titleForNavigationBar = [noteContainer2 titleForTableViewCell];
    goto LABEL_16;
  }

  tagSelection = [(ICNoteBrowseViewController *)self tagSelection];

  if (tagSelection)
  {
    tagSelection2 = [(ICNoteBrowseViewController *)self tagSelection];
LABEL_15:
    noteContainer2 = tagSelection2;
    titleForNavigationBar = [tagSelection2 title];
    goto LABEL_16;
  }

  virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];

  if (virtualSmartFolder)
  {
    tagSelection2 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
    goto LABEL_15;
  }

  searchNavigationTitle = 0;
LABEL_17:

  return searchNavigationTitle;
}

- (id)noteBrowseNavigationItemConfigurationNoteContainerActionMenu:(id)menu actionBarButtonItem:(id)item
{
  menuCopy = menu;
  itemCopy = item;
  objc_opt_class();
  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  v9 = ICDynamicCast();

  if (v9)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, menuCopy);
    objc_initWeak(&v18, itemCopy);
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100123790;
    v13[3] = &unk_10064A960;
    objc_copyWeak(&v15, &location);
    v14 = itemCopy;
    objc_copyWeak(&v16, &from);
    objc_copyWeak(&v17, &v18);
    v11 = [(ICNoteContainerActionMenu *)ICNoteBrowseActionMenu menuWithNoteContainer:v9 presentingViewController:self presentingBarButtonItem:v14 viewControllerManager:viewControllerManager completion:v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)noteBrowseNavigationItemConfigurationQueryActionMenu:(id)menu actionBarButtonItem:(id)item
{
  menuCopy = menu;
  itemCopy = item;
  noteQuery = [(ICNoteBrowseViewController *)self noteQuery];
  if (noteQuery && (v9 = noteQuery, [(ICNoteBrowseViewController *)self tagSelection], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, menuCopy);
    objc_initWeak(&v20, itemCopy);
    tagSelection = [(ICNoteBrowseViewController *)self tagSelection];
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100123A70;
    v15[3] = &unk_10064A960;
    objc_copyWeak(&v17, &location);
    v16 = itemCopy;
    objc_copyWeak(&v18, &from);
    objc_copyWeak(&v19, &v20);
    v13 = [ICTagsActionMenu menuWithTagSelection:tagSelection presentingViewController:self presentingBarButtonItem:v16 viewControllerManager:viewControllerManager delegate:self completion:v15];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)noteBrowseNavigationItemConfigurationVirtualSmartFolderActionMenu:(id)menu actionBarButtonItem:(id)item
{
  menuCopy = menu;
  itemCopy = item;
  virtualSmartFolder = [(ICNoteBrowseViewController *)self virtualSmartFolder];

  if (virtualSmartFolder)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, menuCopy);
    objc_initWeak(&v18, itemCopy);
    virtualSmartFolder2 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100123D34;
    v13[3] = &unk_10064A960;
    objc_copyWeak(&v15, &location);
    v14 = itemCopy;
    objc_copyWeak(&v16, &from);
    objc_copyWeak(&v17, &v18);
    v11 = [(ICNoteContainerActionMenu *)ICNoteBrowseActionMenu menuWithVirtualSmartFolder:virtualSmartFolder2 presentingViewController:self presentingBarButtonItem:v14 viewControllerManager:viewControllerManager completion:v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)noteBrowseNavigationItemConfigurationCollaborationBarButtonItem:(id)item
{
  collaborationButtonsController = [(ICNoteBrowseViewController *)self collaborationButtonsController];
  buttonItem = [collaborationButtonsController buttonItem];

  return buttonItem;
}

- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldAddNoteFromBarButtonItem:(id)item event:(id)event
{
  eventCopy = event;
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  v7 = [viewControllerManager showNewNoteWithApproach:14 sender:eventCopy animated:1];
}

- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldAssignTagsFromBarButtonItem:(id)item
{
  configurationCopy = configuration;
  itemCopy = item;
  selectedNotes = [(ICNoteBrowseViewController *)self selectedNotes];
  v9 = [selectedNotes ic_compactMap:&stru_10064A980];

  objc_initWeak(&location, self);
  v10 = [ICTagAssignmentViewController alloc];
  modernViewContext = [(ICBaseViewController *)self modernViewContext];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1001240A0;
  v17 = &unk_100645C78;
  objc_copyWeak(&v18, &location);
  v12 = [(ICTagAssignmentViewController *)v10 initWithSelectedNotes:v9 managedObjectContext:modernViewContext completion:&v14];

  v13 = [(ICTagAssignmentViewController *)v12 ic_embedInNavigationControllerForModalPresentation:v14];
  [(ICNoteBrowseViewController *)self presentViewController:v13 animated:1 completion:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldDeleteAllFromBarButtonItem:(id)item
{
  configurationCopy = configuration;
  itemCopy = item;
  if ([(ICNoteBrowseViewController *)self isTrashFolder])
  {
    allNotes = [(ICNoteBrowseViewController *)self allNotes];
    [(ICNoteBrowseViewController *)self deleteNotes:allNotes sender:itemCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = [ICWindowDeletionAlertPresenter alloc];
    view = [(ICNoteBrowseViewController *)self view];
    window = [view window];
    v12 = [(ICWindowDeletionAlertPresenter *)v9 initWithWindow:window sender:itemCopy];

    v13 = [ICDeleteAlert alloc];
    allNotes2 = [(ICNoteBrowseViewController *)self allNotes];
    v15 = -[ICDeleteAlert initWithAlertType:count:](v13, "initWithAlertType:count:", 16, [allNotes2 count]);

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001242B0;
    v16[3] = &unk_10064A9A8;
    objc_copyWeak(&v18, &location);
    v17 = itemCopy;
    [(ICWindowDeletionAlertPresenter *)v12 presentAlert:v15 withCompletion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldDeleteSelectedFromBarButtonItem:(id)item
{
  itemCopy = item;
  selectedNotes = [(ICNoteBrowseViewController *)self selectedNotes];
  [(ICNoteBrowseViewController *)self deleteNotes:selectedNotes sender:itemCopy];
}

- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldLockFromBarButtonItem:(id)item
{
  v4 = [(ICBaseViewController *)self viewControllerManager:configuration];
  [v4 lockNotesNow];
}

- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldMoveAllFromBarButtonItem:(id)item
{
  v5 = [(ICNoteBrowseViewController *)self allNotes:configuration];
  [(ICNoteBrowseViewController *)self moveNotes:v5];
}

- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldMoveSelectedFromBarButtonItem:(id)item
{
  v5 = [(ICNoteBrowseViewController *)self selectedNotes:configuration];
  [(ICNoteBrowseViewController *)self moveNotes:v5];
}

- (void)noteBrowseNavigationItemConfiguration:(id)configuration shouldShareFromBarButtonItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  noteContainer = [(ICNoteBrowseViewController *)self noteContainer];
  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = +[ICCollaborationUIController sharedInstance];
    [v7 presentFolderActivityViewControllerWithFolder:v6 presentingViewController:self sourceItem:itemCopy sourceView:0 sourceRect:0 completion:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  }
}

@end