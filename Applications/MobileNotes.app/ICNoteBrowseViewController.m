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
- (ICNoteBrowseViewController)initWithViewMode:(int64_t)a3 viewControllerManager:(id)a4;
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
- (id)noteBrowseNavigationItemConfigurationCollaborationBarButtonItem:(id)a3;
- (id)noteBrowseNavigationItemConfigurationNavigationTitle:(id)a3;
- (id)noteBrowseNavigationItemConfigurationNoteContainerActionMenu:(id)a3 actionBarButtonItem:(id)a4;
- (id)noteBrowseNavigationItemConfigurationQueryActionMenu:(id)a3 actionBarButtonItem:(id)a4;
- (id)noteBrowseNavigationItemConfigurationVirtualSmartFolderActionMenu:(id)a3 actionBarButtonItem:(id)a4;
- (id)notesForIndexPaths:(id)a3;
- (id)tagDetailCell;
- (id)updateSummaryViewIsPrimary:(BOOL)a3;
- (int64_t)dateHeadersType;
- (unint64_t)numberOfSelectedItems;
- (unint64_t)tagsActionMenuNoteCount:(id)a3;
- (void)addKVOObservers;
- (void)analyticsSessionWillEnd:(id)a3;
- (void)dataSourceDataDidUpdate:(id)a3;
- (void)dataSourceDataUpdateDidRender:(id)a3;
- (void)dealloc;
- (void)deleteNotes:(id)a3 sender:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)didUpdateSearchAppearanceNotification:(id)a3;
- (void)didUpdateSearchQuery:(id)a3;
- (void)endAnalyticsTracking;
- (void)loadView;
- (void)managedObjectContextDidSaveObjectIDs:(id)a3;
- (void)moveNotes:(id)a3;
- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldAddNoteFromBarButtonItem:(id)a4 event:(id)a5;
- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldAssignTagsFromBarButtonItem:(id)a4;
- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldDeleteAllFromBarButtonItem:(id)a4;
- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldDeleteSelectedFromBarButtonItem:(id)a4;
- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldLockFromBarButtonItem:(id)a4;
- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldMoveAllFromBarButtonItem:(id)a4;
- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldMoveSelectedFromBarButtonItem:(id)a4;
- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldShareFromBarButtonItem:(id)a4;
- (void)noteDecryptedStatusDidChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performCmd3:(id)a3;
- (void)performDeleteKey:(id)a3;
- (void)registerForTraitChanges;
- (void)reloadDataSourceAnimated:(BOOL)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5;
- (void)removeKVOObservers;
- (void)resetBarButtonItemsAnimated:(BOOL)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneWillDeactivate:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setNoteCollection:(id)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5;
- (void)setNoteContainer:(id)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5;
- (void)setNoteQuery:(id)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5;
- (void)setTagSelection:(id)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5;
- (void)setVirtualSmartFolder:(id)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5;
- (void)sharedWithYouControllerDidUpdateHighlights:(id)a3;
- (void)showSharedFolderActions:(id)a3;
- (void)startAnalyticsTracking;
- (void)submitTagSelectionAnalyticsIfNeeded;
- (void)summaryViewLockNowPressed:(id)a3;
- (void)updateBarButtonItemsAnimated:(BOOL)a3;
- (void)updateContainerSelection;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateDataSourceAnimated:(BOOL)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5 updateDataSourceBlock:(id)a6;
- (void)updateDataSourceConfigurationSortTypeChanged:(BOOL)a3;
- (void)updateFocusedNoteIfNeeded;
- (void)updateSelectedTagTitles;
- (void)updateSummaryView;
- (void)updateTagDetailOperatorMenuVisibility;
- (void)updateTagSelectionIfNeeded;
- (void)updateVisibleGalleryCellThumbnails;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDismissSearchController:(id)a3;
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
    v6 = [(ICNoteResultsViewController *)self collectionView];
    v7 = [(ICBaseViewController *)self noteContainerViewMode];
    v8 = [(ICBaseViewController *)self viewControllerManager];
    v9 = [v8 folderListViewController];
    v10 = [v9 folderDataSource];
    v11 = [(ICBaseViewController *)self viewControllerManager];
    v12 = [v11 persistenceConfiguration];
    v13 = [(ICNoteBrowseDataSource *)v5 initWithCollectionView:v6 presentingViewController:self noteContainerViewMode:v7 folderDataSource:v10 persistenceConfiguration:v12];
    v14 = self->_noteDataSource;
    self->_noteDataSource = v13;

    v15 = +[ICNoteContext sharedContext];
    v16 = [v15 workerManagedObjectContext];
    [(ICNoteBrowseDataSource *)self->_noteDataSource setApplySnapshotModernManagedObjectContext:v16];

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
  v3 = [(ICNoteBrowseViewController *)self shouldIncludeSubfolders];
  v4 = [(ICNoteBrowseViewController *)self noteDataSource];
  v5 = [v4 shouldIncludeSubfolders];

  v6 = [(ICNoteBrowseViewController *)self shouldIncludeSubfolders];
  v7 = [(ICNoteBrowseViewController *)self noteDataSource];
  [v7 setShouldIncludeSubfolders:v6];

  return v3 ^ v5;
}

- (BOOL)shouldIncludeSubfolders
{
  v4 = [(ICNoteBrowseViewController *)self noteContainer];
  if (!v4)
  {
    v2 = [(ICNoteBrowseViewController *)self noteCollection];
    if (!v2)
    {
      v6 = 0;
LABEL_9:

      goto LABEL_10;
    }
  }

  v5 = [(ICBaseViewController *)self viewControllerManager];
  v6 = ([v5 hasCompactWidth] & 1) != 0 || -[ICBaseViewController noteContainerViewMode](self, "noteContainerViewMode") == 1;

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (ICNoteContainer)noteContainer
{
  v2 = [(ICNoteBrowseViewController *)self noteDataSource];
  v3 = [v2 noteContainer];

  return v3;
}

- (NoteCollectionObject)noteCollection
{
  v2 = [(ICNoteBrowseViewController *)self noteDataSource];
  v3 = [v2 noteCollection];

  return v3;
}

- (void)addKVOObservers
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(ICNoteBrowseViewController *)self observedNoteContainerProperties];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [(ICNoteBrowseViewController *)self noteContainer];
        [v9 ic_addObserver:self forKeyPath:v8 context:&off_1006BBCE8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(ICNoteBrowseViewController *)self observedUserDefaultsProperties];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = +[NSUserDefaults standardUserDefaults];
        [v16 ic_addObserver:self forKeyPath:v15 context:&off_1006BBCE8];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }
}

- (NSArray)observedNoteContainerProperties
{
  v2 = [(ICNoteBrowseViewController *)self noteContainer];
  if (v2)
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
  v4 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
  v5 = [v4 noteSortTypeUserDefaultsKey];
  [v3 ic_addNonNilObject:v5];

  v6 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
  v7 = [v6 dateHeadersTypeUserDefaultsKey];
  [v3 ic_addNonNilObject:v7];

  return v3;
}

- (ICVirtualSmartFolderItemIdentifier)virtualSmartFolder
{
  v2 = [(ICNoteBrowseViewController *)self noteDataSource];
  v3 = [v2 virtualSmartFolder];

  return v3;
}

- (void)removeKVOObservers
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(ICNoteBrowseViewController *)self observedNoteContainerProperties];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [(ICNoteBrowseViewController *)self noteContainer];
        [v9 ic_removeObserver:self forKeyPath:v8 context:&off_1006BBCE8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(ICNoteBrowseViewController *)self observedUserDefaultsProperties];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        v16 = +[NSUserDefaults standardUserDefaults];
        [v16 ic_removeObserver:self forKeyPath:v15 context:&off_1006BBCE8];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
  v3 = [(ICNoteBrowseViewController *)self selectedNotes];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ICNoteBrowseViewController *)self selectedNotes];
  v6 = [v5 ic_objectsPassingTest:&stru_10064A8F8];
  v7 = [v6 count];

  v8 = [(ICNoteBrowseViewController *)self selectedNotes];
  v9 = [v8 count];

  if (v9 > v7 || [(ICNoteBrowseViewController *)self isTrashFolder])
  {
    return 0;
  }

  v12 = [(ICBaseViewController *)self modernViewContext];
  v13 = [ICHashtag allVisibleHashtagsInContext:v12];
  v10 = [v13 count] != 0;

  return v10;
}

- (NSArray)selectedNotes
{
  v3 = [(ICNoteResultsViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v5 = [(ICNoteBrowseViewController *)self notesForIndexPaths:v4];

  return v5;
}

- (NSArray)allNotes
{
  v3 = [(ICNoteBrowseViewController *)self noteDataSource];
  v4 = [v3 collectionViewDiffableDataSource];
  v5 = [v4 snapshot];

  v6 = [v5 itemIdentifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100121338;
  v9[3] = &unk_10064A7E8;
  v9[4] = self;
  v7 = [v6 ic_compactMap:v9];

  return v7;
}

- (BOOL)shouldShowEmptyState
{
  v3 = [(ICNoteBrowseViewController *)self noteDataSource];
  if ([v3 totalNoteCount])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ICNoteBrowseViewController *)self noteDataSource];
    if ([v5 totalFolderCount])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(ICNoteBrowseViewController *)self noteDataSource];
      if ([v6 totalInvitationsCount])
      {
        v4 = 0;
      }

      else
      {
        v7 = [(ICNoteResultsViewController *)self collectionView];
        if ([v7 numberOfSections])
        {
          v8 = [(ICNoteBrowseViewController *)self noteQuery];
          if (v8)
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
  v2 = [(ICNoteBrowseViewController *)self noteDataSource];
  v3 = [v2 isTrashFolder];

  return v3;
}

- (unint64_t)numberOfSelectedItems
{
  v2 = [(ICNoteResultsViewController *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];
  v4 = [v3 count];

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
  v3 = [(ICNoteBrowseViewController *)self noteContainer];
  v4 = [v3 managedObjectContext];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B594;
  v12[3] = &unk_1006463C8;
  v12[4] = self;
  v12[5] = &v13;
  [v4 performBlockAndWait:v12];

  v5 = +[ICNoteListSortUtilities folderSortOrderForNoteListSortType:](ICNoteListSortUtilities, "folderSortOrderForNoteListSortType:", +[ICNoteListSortUtilities currentNoteListSortType]);
  v6 = v14[5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = v5;
    v9 = [(ICNoteBrowseViewController *)self noteQuery];
    if (!v9 || (+[ICFolderCustomNoteSortType querySortType], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
      v7 = [v10 noteSortType];
      if (!v7)
      {
        v7 = [ICFolderCustomNoteSortType folderNoteSortTypeWithOrder:v8 direction:0];
      }
    }
  }

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (ICQuery)noteQuery
{
  v2 = [(ICNoteBrowseViewController *)self noteDataSource];
  v3 = [v2 noteQuery];

  return v3;
}

- (int64_t)dateHeadersType
{
  v3 = [(ICNoteBrowseViewController *)self noteContainer];

  if (v3)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v4 = [(ICNoteBrowseViewController *)self noteContainer];
    v5 = [v4 managedObjectContext];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001B864;
    v12[3] = &unk_1006463C8;
    v12[4] = self;
    v12[5] = &v13;
    [v5 performBlockAndWait:v12];

    v6 = v14[3];
    _Block_object_dispose(&v13, 8);
    return v6;
  }

  v8 = [(ICNoteBrowseViewController *)self noteQuery];

  if (v8)
  {

    return +[ICDateHeadersUtilities queryDateHeadersType];
  }

  else
  {
    v9 = [(ICNoteBrowseViewController *)self virtualSmartFolder];

    if (v9)
    {
      v10 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
      if ([v10 supportsDateHeaders])
      {
        v11 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
        v6 = [v11 dateHeadersType];
      }

      else
      {
        v6 = 1;
      }

      return v6;
    }

    return +[ICDateHeadersUtilities defaultDateHeadersType];
  }
}

- (BOOL)shouldIncludeTags
{
  v3 = [(ICNoteBrowseViewController *)self noteQuery];
  if (v3)
  {
    v4 = [(ICBaseViewController *)self viewControllerManager];
    v5 = [v4 hasCompactWidth];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldIncludeTagDetail
{
  v2 = [(ICNoteBrowseViewController *)self noteQuery];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)shouldIncludeInvitations
{
  v2 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
  v3 = [v2 type];
  v4 = [v3 isEqualToString:ICVirtualSmartFolderItemIdentifierTypeSharedWithYou];

  return v4;
}

- (void)updateSelectedTagTitles
{
  v3 = [(ICNoteBrowseViewController *)self tagSelection];
  v4 = [v3 smartFolderTitle];
  v5 = [(ICNoteBrowseViewController *)self smartFolderCreationController];
  [v5 setFolderTitle:v4];

  v6 = [(ICNoteBrowseViewController *)self tagSelection];

  if (v6)
  {
    v7 = [ICFilterSelection alloc];
    v10 = [(ICNoteBrowseViewController *)self tagSelection];
    v8 = [v7 initWithFilterTypeSelection:v10];
    v9 = [(ICNoteBrowseViewController *)self smartFolderCreationController];
    [v9 setFilterSelection:v8];
  }
}

- (ICFolderCreationController)smartFolderCreationController
{
  if (self->_smartFolderCreationController)
  {
    v3 = [(ICNoteBrowseViewController *)self noteQuery];
    [(ICFolderCreationController *)self->_smartFolderCreationController setSmartFolderQuery:v3];
  }

  else
  {
    v4 = [ICFolderCreationController alloc];
    v3 = [(ICNoteBrowseViewController *)self noteQuery];
    v5 = [(ICFolderCreationController *)v4 initWithViewController:self noteContainer:0 smartFolderQuery:v3 folderTitle:0 creationApproach:2];
    smartFolderCreationController = self->_smartFolderCreationController;
    self->_smartFolderCreationController = v5;
  }

  v7 = self->_smartFolderCreationController;

  return v7;
}

- (void)updateTagSelectionIfNeeded
{
  v3 = [(ICNoteBrowseViewController *)self tagSelection];

  if (v3)
  {
    tagSelection = self->_tagSelection;

    [(ICNoteBrowseViewController *)self setTagSelection:tagSelection];
  }
}

- (void)updateVisibleGalleryCellThumbnails
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 applicationState];

  if (!v4)
  {
    v5 = [(ICNoteResultsViewController *)self collectionView];
    v6 = [v5 visibleCells];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
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

- (ICNoteBrowseViewController)initWithViewMode:(int64_t)a3 viewControllerManager:(id)a4
{
  v6 = a4;
  v42.receiver = self;
  v42.super_class = ICNoteBrowseViewController;
  v7 = [(ICNoteResultsViewController *)&v42 initWithViewMode:a3 viewControllerManager:v6 viewControllerType:0];
  if (v7)
  {
    v8 = [ICNoteBrowseCollectionView alloc];
    v9 = [(ICBaseViewController *)v7 legacyViewContext];
    v10 = [(ICBaseViewController *)v7 modernViewContext];
    v11 = [(ICBaseViewController *)v7 viewControllerManager];
    v12 = [(ICNoteBrowseCollectionView *)v8 initWithPresentingViewController:v7 legacyManagedObjectContext:v9 modernManagedObjectContext:v10 viewControllerManager:v11];
    [(ICNoteResultsViewController *)v7 setCollectionView:v12];

    v13 = [(ICNoteBrowseViewController *)v7 noteDataSource];
    v14 = [v13 collectionViewDiffableDataSource];
    v15 = [(ICNoteResultsViewController *)v7 collectionView];
    [v15 setDiffableDataSource:v14];

    objc_initWeak(&location, v7);
    objc_copyWeak(&v40, &location);
    v16 = [(ICNoteResultsViewController *)v7 collectionView:_NSConcreteStackBlock];
    [v16 setOptimisticallyAppliedSnapshotHandler:&v39];

    v17 = [(ICNoteBrowseViewController *)v7 noteDataSource];
    [v17 setNoteContainerViewMode:a3];

    v18 = [(ICNoteResultsViewController *)v7 collectionView];
    [v18 setAllowsMultipleSelection:1];

    v19 = [(ICNoteResultsViewController *)v7 collectionView];
    [v19 setAllowsMultipleSelectionDuringEditing:1];

    v20 = [v6 behavior];
    v21 = [(ICNoteBrowseViewController *)v7 navigationItem];
    v22 = v21;
    v24 = a3 != 1 && v20 != 1;
    [v21 setSearchBarPlacementAllowsExternalIntegration:v24];

    v25 = +[NSNotificationCenter defaultCenter];
    v26 = [(ICBaseViewController *)v7 modernViewContext];
    [v25 addObserver:v7 selector:"managedObjectContextDidSaveObjectIDs:" name:NSManagedObjectContextDidSaveObjectIDsNotification object:v26];

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v7 selector:"sceneDidActivate:" name:UISceneDidActivateNotification object:0];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v7 selector:"sceneWillDeactivate:" name:UISceneWillDeactivateNotification object:0];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v7 selector:"analyticsSessionWillEnd:" name:ICNASessionWillEndNotification object:0];

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v7 selector:"didUpdateSearchAppearanceNotification:" name:@"ICNoteSearchViewControllerDidUpdateSearchAppearanceNotification" object:0];

    v31 = +[NSNotificationCenter defaultCenter];
    v32 = [(ICBaseViewController *)v7 noteSearchViewController];
    [v31 addObserver:v7 selector:"didUpdateSearchQuery:" name:@"ICNoteSearchViewControllerQueryDidChangeNotification" object:v32];

    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v7 selector:"sharedWithYouControllerDidUpdateHighlights:" name:ICSharedWithYouControllerDidUpdateHighlightsNotification object:0];

    v34 = +[ICAppDelegate sharedInstance];
    v35 = [v34 cloudContextDelegate];
    v36 = ICKeyPathFromSelector();
    [v35 ic_addObserver:v7 forKeyPath:v36 context:&off_1006BBCE8];

    v37 = [(ICBaseViewController *)v7 viewControllerManager];
    [v37 ic_addObserver:v7 forKeyPath:@"focusedNoteObjectID" context:&off_1006BBCE8];

    [(ICNoteBrowseViewController *)v7 addKVOObservers];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICNoteBrowseViewController;
  [(ICNoteBrowseViewController *)&v5 didMoveToParentViewController:?];
  if (a3)
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
  v3 = [(ICNoteResultsViewController *)self collectionView];
  [(ICNoteBrowseViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v4 viewDidLoad];
  v3 = [[ICNoteBrowseNavigationItemConfiguration alloc] initWithDataSource:self delegate:self];
  [(ICNoteBrowseViewController *)self setNavigationItemConfiguration:v3];
}

- (void)sceneWillDeactivate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v14 = ICDynamicCast();

  v6 = [v14 session];
  v7 = [v6 persistentIdentifier];
  v8 = [(ICNoteBrowseViewController *)self viewIfLoaded];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [v10 session];
  v12 = [v11 persistentIdentifier];
  v13 = [v7 isEqual:v12];

  if (v13 && [(ICNoteBrowseViewController *)self ic_isViewVisible])
  {
    [(ICNoteBrowseViewController *)self endAnalyticsTracking];
  }
}

- (void)analyticsSessionWillEnd:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v14 = ICDynamicCast();

  v6 = [v14 session];
  v7 = [v6 persistentIdentifier];
  v8 = [(ICNoteBrowseViewController *)self viewIfLoaded];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [v10 session];
  v12 = [v11 persistentIdentifier];
  v13 = [v7 isEqual:v12];

  if (v13)
  {
    [(ICNoteBrowseViewController *)self endAnalyticsTracking];
  }
}

- (void)sceneDidActivate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v16 = ICDynamicCast();

  v6 = [v16 session];
  v7 = [v6 persistentIdentifier];
  v8 = [(ICNoteBrowseViewController *)self viewIfLoaded];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [v10 session];
  v12 = [v11 persistentIdentifier];
  v13 = [v7 isEqual:v12];

  if (v13 && [(ICNoteBrowseViewController *)self ic_isViewVisible])
  {
    [(ICNoteBrowseViewController *)self startAnalyticsTracking];
    [(ICNoteResultsViewController *)self updatePreparedCells];
    v14 = [(ICNoteResultsViewController *)self collectionView];
    v15 = [v14 collectionViewLayout];
    [v15 invalidateLayout];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[ICAppDelegate sharedInstance];
  v5 = [v4 cloudContextDelegate];
  v6 = ICKeyPathFromSelector();
  [v5 ic_removeObserver:self forKeyPath:v6 context:&off_1006BBCE8];

  v7 = [(ICBaseViewController *)self viewControllerManager];
  [v7 ic_removeObserver:self forKeyPath:@"focusedNoteObjectID" context:&off_1006BBCE8];

  [(ICNoteBrowseViewController *)self removeKVOObservers];
  v8.receiver = self;
  v8.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v8 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v34.receiver = self;
  v34.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v34 viewWillAppear:?];
  v5 = [(ICNoteBrowseViewController *)self traitCollection];
  v6 = [v5 _hasSplitViewControllerContextSidebarColumn];

  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(ICNoteBrowseViewController *)self navigationItem];
  [v8 setLargeTitleDisplayMode:v7];

  [(ICNoteBrowseViewController *)self resetBarButtonItemsAnimated:v3];
  [(ICNoteBrowseViewController *)self updateTagDetailOperatorMenuVisibility];
  if ([(ICNoteBrowseViewController *)self isMovingToParentViewController]&& ([(ICNoteBrowseViewController *)self ic_isBeingRevealedFromPoppingViewController]& 1) == 0)
  {
    v9 = [(ICNoteBrowseViewController *)self transitionCoordinator];
    if (v9)
    {
      v10 = [(ICNoteBrowseViewController *)self transitionCoordinator];
      [v10 isCancelled];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [(ICNoteResultsViewController *)self collectionView];
  v12 = [v11 indexPathsForVisibleItems];

  v13 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v13)
  {
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        v17 = [(ICNoteResultsViewController *)self collectionView];
        v18 = [v17 cellForItemAtIndexPath:v16];
        v19 = ICDynamicCast();

        [v19 updateSubfolderCount];
        [v19 updateNoteCount];
      }

      v13 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v13);
  }

  objc_initWeak(&location, self);
  v20 = [(ICNoteBrowseViewController *)self view];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_10011D800;
  v27 = &unk_100648E68;
  objc_copyWeak(&v28, &location);
  [v20 ic_addCreateNoteInteractionWithFolderHandler:&v24];

  v21 = [(ICNoteBrowseViewController *)self noteCollection:v24];
  LOBYTE(v20) = v21 == 0;

  if ((v20 & 1) == 0)
  {
    v22 = +[NotesApp sharedNotesApp];
    v23 = [(ICNoteBrowseViewController *)self noteCollection];
    [v22 refreshNotesIfNeededForCollection:v23];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v16 viewDidAppear:a3];
  v5 = +[ICAppDelegate sharedInstance];
  [v5 didFinishExtendedLaunch];

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 isRunningTest];

  if (v7)
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
  v9 = [(ICBaseViewController *)self noteSearchViewController];
  v10 = [v9 accountIdentifier];

  if (!v10)
  {
    v11 = [(ICNoteBrowseViewController *)self noteContainer];
    v12 = [v11 noteContainerAccount];
    v13 = [v12 identifier];
    v14 = v13;
    if (!v13)
    {
      v3 = [(ICNoteBrowseViewController *)self noteCollection];
      v14 = [v3 searchDomainIdentifier];
    }

    v15 = [(ICBaseViewController *)self noteSearchViewController];
    [v15 setAccountIdentifier:v14];

    if (!v13)
    {
    }
  }

  [(ICNoteResultsViewController *)self updatePreparedCells];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(ICNoteBrowseViewController *)self endAnalyticsTracking];
  v6.receiver = self;
  v6.super_class = ICNoteBrowseViewController;
  [(ICNoteBrowseViewController *)&v6 viewWillDisappear:v3];
  v5 = [(ICNoteBrowseViewController *)self view];
  [v5 ic_removeLinkActionInteractions];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = ICNoteBrowseViewController;
  v7 = a4;
  [(ICNoteBrowseViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  [v7 animateAlongsideTransition:v9 completion:v8];
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = ICNoteBrowseViewController;
  [(ICNoteBrowseViewController *)&v23 viewDidLayoutSubviews];
  v3 = [(ICNoteBrowseViewController *)self primarySummaryView];
  [v3 availableWidth];
  v5 = v4;
  [(ICNoteBrowseViewController *)self availableWidthForSummaryView];
  v7 = vabdd_f64(v5, v6);

  if (v7 >= 0.00999999978)
  {
    [(ICNoteBrowseViewController *)self availableWidthForSummaryView];
    v9 = v8;
    v10 = [(ICNoteBrowseViewController *)self primarySummaryView];
    [v10 setAvailableWidth:v9];

    v11 = [(ICNoteBrowseViewController *)self primarySummaryView];
    [v11 update];
  }

  if ((+[UIDevice ic_isiPad](UIDevice, "ic_isiPad") & 1) == 0 && (+[UIDevice ic_isVision]& 1) == 0)
  {
    v12 = [(ICNoteBrowseViewController *)self scrolledHeaderSummaryView];
    [v12 availableWidth];
    v14 = v13;
    [(ICNoteBrowseViewController *)self availableWidthForSummaryView];
    v16 = vabdd_f64(v14, v15);

    if (v16 >= 0.00999999978)
    {
      [(ICNoteBrowseViewController *)self availableWidthForSummaryView];
      v18 = v17;
      v19 = [(ICNoteBrowseViewController *)self scrolledHeaderSummaryView];
      [v19 setAvailableWidth:v18];

      v20 = [(ICNoteBrowseViewController *)self scrolledHeaderSummaryView];
      [v20 update];
    }
  }

  v21 = +[UIApplication sharedApplication];
  if (![v21 isRunningTest])
  {
    goto LABEL_11;
  }

  v22 = [(ICNoteBrowseViewController *)self _appearState];

  if (v22 == 1 && ![(ICBaseViewController *)self noteContainerViewMode])
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
    v3 = [(ICBaseViewController *)self noteSearchViewController];
    v4 = [v3 searchBar];
    [v4 _setOverrideContentInsets:10 forRectEdges:{0.0, 12.0, 0.0, 12.0}];
  }
}

- (void)willDismissSearchController:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteBrowseViewController;
  [(ICBaseViewController *)&v6 willDismissSearchController:a3];
  v4 = [(ICNoteBrowseViewController *)self navigationController];
  v5 = [v4 topViewController];

  if (v5 == self)
  {
    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:0];
  }
}

- (void)setNoteContainer:(id)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v11 = ICDynamicCast();
  v12 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v11 shortLoggingDescription];
    v26 = v25;
    if (!v25)
    {
      v26 = [(__CFNull *)v8 containerIdentifier];
    }

    *buf = 134218242;
    v33 = self;
    v34 = 2112;
    v35 = v26;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Setting note container on note browser %p: %@", buf, 0x16u);
    if (!v25)
    {
    }
  }

  v13 = [(ICNoteBrowseViewController *)self noteContainer];
  if (kCFNull == v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;
  if (kCFNull == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
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
      v28 = v8;
      [(ICNoteBrowseViewController *)self updateDataSourceAnimated:0 dataIndexedBlock:v9 dataRenderedBlock:v10 updateDataSourceBlock:v27];
      objc_opt_class();
      v23 = ICDynamicCast();
      v24 = [(ICNoteResultsViewController *)self collectionView];
      [v24 ic_annotateWithNoteContainer:v23];

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
  v30 = v9;
  v31 = v10;
  dispatch_async(&_dispatch_main_q, block);

  v20 = v30;
LABEL_19:
}

- (void)setNoteCollection:(id)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0778(self, v8, v11);
  }

  v12 = [(ICNoteBrowseViewController *)self noteCollection];
  if (kCFNull == v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;
  if (kCFNull == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
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
      v22 = v8;
      v25 = v22;
      [(ICNoteBrowseViewController *)self updateDataSourceAnimated:0 dataIndexedBlock:v9 dataRenderedBlock:v10 updateDataSourceBlock:v24];
      v23 = [(ICNoteResultsViewController *)self collectionView];
      [v23 ic_annotateWithNoteCollection:v22];

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
  v27 = v9;
  v28 = v10;
  dispatch_async(&_dispatch_main_q, block);

  v19 = v27;
LABEL_20:
}

- (void)setNoteQuery:(id)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E082C();
  }

  v12 = [(ICNoteBrowseViewController *)self noteQuery];
  if (kCFNull == v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;
  if (kCFNull == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
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
      v21 = [(ICNoteBrowseViewController *)self noteQuery];
      v22 = v21 != 0;

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10011EA64;
      v24[3] = &unk_100645BA0;
      v24[4] = self;
      v25 = v8;
      [(ICNoteBrowseViewController *)self updateDataSourceAnimated:v22 dataIndexedBlock:v9 dataRenderedBlock:v10 updateDataSourceBlock:v24];
      v23 = [(ICNoteResultsViewController *)self collectionView];
      [v23 ic_annotateWithNoteContainer:0];

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
  v27 = v9;
  v28 = v10;
  dispatch_async(&_dispatch_main_q, block);

  v19 = v27;
LABEL_20:
}

- (void)setVirtualSmartFolder:(id)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0894();
  }

  v12 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
  if (kCFNull == v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;
  if (kCFNull == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
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
    v32 = v9;
    v33 = v10;
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
  v22 = v8;
  v30 = v22;
  [(ICNoteBrowseViewController *)self updateDataSourceAnimated:0 dataIndexedBlock:v9 dataRenderedBlock:v10 updateDataSourceBlock:v29];
  v23 = [(ICNoteResultsViewController *)self collectionView];
  [v23 ic_annotateWithNoteContainer:0];

  v24 = [(__CFNull *)v22 type];
  v25 = [v24 isEqual:ICVirtualSmartFolderItemIdentifierTypeSharedWithYou];

  if (v25)
  {
    v26 = +[ICCollaborationController sharedInstance];
    v27 = [(__CFNull *)v22 accountObjectID];
    v28 = +[ICInvitationsCoreDataIndexer defaultReceivedSince];
    [v26 updatePendingInvitationsInAccountWithID:v27 receivedSince:v28];
  }

  v19 = v30;
LABEL_22:
}

- (void)setTagSelection:(id)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E08FC();
  }

  v13 = [(ICNoteBrowseViewController *)self tagDetailCell];
  [v13 updateForTagSelection:v9 animated:1];

  v14 = [(ICNoteBrowseViewController *)self tagSelection];
  v15 = v14 != 0;

  objc_storeStrong(&self->_tagSelection, a3);
  [(ICNoteBrowseViewController *)self submitTagSelectionAnalyticsIfNeeded];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10011F03C;
  v20[3] = &unk_100645E80;
  v20[4] = self;
  v21 = v10;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10011F090;
  v18[3] = &unk_100645BA0;
  v18[4] = self;
  v19 = v9;
  v16 = v9;
  v17 = v10;
  [(ICNoteBrowseViewController *)self updateDataSourceAnimated:v15 dataIndexedBlock:v11 dataRenderedBlock:v20 updateDataSourceBlock:v18];
}

- (BOOL)hasDeletableNoteCell
{
  v3 = [(ICNoteResultsViewController *)self collectionView];
  v4 = [v3 indexPathsForFocusedItems];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ICBaseViewController *)self viewControllerManager];
    v7 = [v6 focusedNoteObjectID];
    v5 = v7 != 0;
  }

  v8 = [(ICNoteResultsViewController *)self collectionView];
  if ([v8 isEditing])
  {
    v9 = [(ICNoteResultsViewController *)self collectionView];
    v10 = [v9 indexPathsForSelectedItems];
    v11 = [v10 count] != 0;
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(ICNoteBrowseViewController *)self isEditing]!= a3 && ![(ICNoteBrowseViewController *)self shouldAvoidEditingChanges])
  {
    v15.receiver = self;
    v15.super_class = ICNoteBrowseViewController;
    [(ICBaseViewController *)&v15 setEditing:v5 animated:v4];
    if (v5)
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

    v8 = [(ICNoteBrowseViewController *)self noteDataSource];
    [v8 setAutoExpandMode:v7];

    +[CATransaction begin];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10011F410;
    v14[3] = &unk_100645E30;
    v14[4] = self;
    [CATransaction setCompletionBlock:v14];
    +[CATransaction commit];
    if (v4)
    {
      v9 = [(ICNoteResultsViewController *)self collectionView];
      [v9 setEditing:v5];
    }

    else
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10011F468;
      v12[3] = &unk_100646080;
      v12[4] = self;
      v13 = v5;
      [UIView performWithoutAnimation:v12];
    }

    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:v4];
    v10 = [(ICNoteBrowseViewController *)self tagDetailCell];
    [v10 setNeedsUpdateConfiguration];

    if (v5)
    {
      v11 = +[NSNotificationCenter defaultCenter];
      [v11 postNotificationName:@"ICNoteBrowseViewControllerDidStartEditingNotification" object:self];
    }
  }
}

- (BOOL)canBecomeFirstResponder
{
  v6 = [(ICBaseViewController *)self viewControllerManager];
  v3 = [v6 activeEditorController];
  v4 = [v3 wantsToRemainFirstResponder];

  v5 = [(ICNoteBrowseViewController *)self _appearState];
  LOBYTE(v6) = 0;
  if ((v4 & 1) == 0 && v5 == 2)
  {
    v7 = [(ICNoteBrowseViewController *)self view];
    v8 = [v7 window];
    v9 = [v8 rootViewController];
    v10 = [v9 ic_topViewController];
    LODWORD(v6) = [v10 ic_hasFullScreenModalPresentationStyle] ^ 1;
  }

  return v6;
}

- (void)deleteNotes:(id)a3 sender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ICDeleteDecisionController alloc];
  v9 = [(ICNoteBrowseViewController *)self view];
  v10 = [v9 window];
  v11 = [(ICNoteBrowseViewController *)self eventReporter];
  v12 = [(ICDeleteDecisionController *)v8 initWithSourceObjects:v6 window:v10 sender:v7 eventReporter:v11];

  objc_initWeak(&location, self);
  [(ICNoteBrowseViewController *)self setNeedsToConfirmDeletion:1];
  v13 = [v6 count];
  v14 = [(ICNoteBrowseViewController *)self allNotes];
  v15 = [v14 count];

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

- (void)moveNotes:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [[ICMoveDecisionController alloc] initWithSourceObjects:v4 presentingViewController:self];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011F960;
  v6[3] = &unk_10064A770;
  objc_copyWeak(&v7, &location);
  [(ICMoveDecisionController *)v5 performDecisionWithCompletion:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

- (void)showSharedFolderActions:(id)a3
{
  objc_opt_class();
  v4 = [(ICNoteBrowseViewController *)self noteContainer];
  v8 = ICCheckedDynamicCast();

  if (v8)
  {
    v5 = +[ICCollaborationUIController sharedInstance];
    v6 = [(ICNoteBrowseViewController *)self collaborationButtonsController];
    v7 = [v6 buttonItem];
    [v5 showCloudSharingControllerForFolder:v8 presentingViewController:self popoverBarButtonItem:v7 presented:0 dismissed:0];
  }
}

- (void)performCmd3:(id)a3
{
  v4 = [ICViewAttachmentsActivity alloc];
  v5 = [(ICNoteBrowseViewController *)self eventReporter];
  v6 = [(ICViewAttachmentsActivity *)v4 initWithPresentingViewController:self eventReporter:v5];

  [(ICViewAttachmentsActivity *)v6 performActivityWithCompletion:0];
}

- (void)performDeleteKey:(id)a3
{
  v13 = a3;
  v4 = [(ICNoteResultsViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(ICNoteBrowseViewController *)self selectedNotes];
  }

  else
  {
    v8 = [(ICNoteResultsViewController *)self collectionView];
    v9 = [v8 indexPathsForFocusedItems];
    v10 = [v9 count];

    v11 = v13;
    if (!v10)
    {
      goto LABEL_6;
    }

    v7 = [(ICNoteBrowseViewController *)self focusedNotes];
  }

  v12 = v7;
  [(ICNoteBrowseViewController *)self deleteNotes:v7 sender:v13];

  v11 = v13;
LABEL_6:
}

- (void)dataSourceDataDidUpdate:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteBrowseViewController;
  [(ICBaseViewController *)&v6 dataSourceDataDidUpdate:a3];
  v4 = [(ICNoteBrowseViewController *)self navigationController];
  v5 = [v4 topViewController];

  if (v5 == self)
  {
    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:0];
  }
}

- (void)dataSourceDataUpdateDidRender:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v6 dataSourceDataUpdateDidRender:a3];
  v4 = [(ICNoteBrowseViewController *)self navigationController];
  v5 = [v4 topViewController];

  if (v5 == self)
  {
    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:1];
    [(ICNoteBrowseViewController *)self updateContainerSelection];
  }
}

- (unint64_t)tagsActionMenuNoteCount:(id)a3
{
  v3 = [(ICNoteBrowseViewController *)self noteDataSource];
  v4 = [v3 totalNoteCount];

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([(ICNoteBrowseViewController *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/UI/Note/Browse/View Controllers/ICNoteBrowseViewController.m"]& 1) == 0)
  {
    v30.receiver = self;
    v30.super_class = ICNoteBrowseViewController;
    [(ICNoteResultsViewController *)&v30 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];

    goto LABEL_17;
  }

  v13 = [(ICNoteBrowseViewController *)self ic_shouldIgnoreObserveValue:v12 ofObject:v11 forKeyPath:v10];

  if (a6 == &off_1006BBCE8 && (v13 & 1) == 0)
  {
    v14 = +[ICAppDelegate sharedInstance];
    v15 = [v14 cloudContextDelegate];

    if (v15 == v11)
    {
      v27 = ICKeyPathFromSelector();
      v28 = [v10 isEqualToString:v27];

      if (v28)
      {
        performBlockOnMainThread();
      }

      goto LABEL_17;
    }

    v16 = [(ICNoteBrowseViewController *)self noteContainer];

    if (v16 != v11)
    {
      v17 = +[NSUserDefaults standardUserDefaults];

      if (v17 == v11)
      {
        +[ICNoteListSortUtilities clearCache];
        +[ICDateHeadersUtilities clearCache];
        v18 = [v10 isEqualToString:ICSettingsNoteListSortTypeKey];
        if ((v18 & 1) != 0 || ([v10 isEqualToString:ICFolderCustomNoteSortTypeQuerySortKey] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", ICSettingsNoteDateHeadersTypeKey) & 1) != 0 || objc_msgSend(v10, "isEqualToString:", ICSettingsQueryDateHeadersTypeKey))
        {
          [(ICNoteBrowseViewController *)self updateDataSourceConfigurationSortTypeChanged:v18];
          v19 = [(ICNoteBrowseViewController *)self noteDataSource];
          [v19 reloadDataAnimated:0];
        }

        v20 = [(ICNoteBrowseViewController *)self virtualSmartFolder];

        if (v20)
        {
          v21 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
          v22 = [v21 noteSortTypeUserDefaultsKey];
          v23 = [v10 isEqualToString:v22];

          if (v23)
          {
            goto LABEL_28;
          }

          v24 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
          v25 = [v24 dateHeadersTypeUserDefaultsKey];
          v26 = [v10 isEqualToString:v25];

          if (v26)
          {
            goto LABEL_28;
          }
        }
      }

      goto LABEL_17;
    }

    if ([v10 isEqualToString:@"title"])
    {
      [(ICNoteBrowseViewController *)self updateNavigationTitle];
LABEL_23:
      [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:0];
      goto LABEL_17;
    }

    if ([v10 isEqualToString:@"smartFolderQueryJSON"])
    {
      goto LABEL_23;
    }

    if ([v10 isEqualToString:@"focusedNoteObjectID"])
    {
      [(ICNoteBrowseViewController *)self updateFocusedNoteIfNeeded];
    }

    else if ([v10 isEqualToString:@"customNoteSortTypeValue"] || objc_msgSend(v10, "isEqualToString:", @"dateHeadersType"))
    {
LABEL_28:
      [(ICNoteBrowseViewController *)self updateDataSourceConfigurationSortTypeChanged:0];
      v29 = [(ICNoteBrowseViewController *)self noteDataSource];
      [v29 reloadDataAnimated:0];
    }
  }

LABEL_17:
}

- (void)didUpdateSearchAppearanceNotification:(id)a3
{
  if ([(ICBaseViewController *)self noteContainerViewMode]== 1)
  {

    [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:1];
  }
}

- (void)didUpdateSearchQuery:(id)a3
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

- (void)updateDataSourceAnimated:(BOOL)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5 updateDataSourceBlock:(id)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  if ([(ICNoteBrowseViewController *)self ic_isViewVisible])
  {
    [(ICNoteBrowseViewController *)self endAnalyticsTracking];
  }

  [(ICNoteBrowseViewController *)self removeKVOObservers];
  if (v11)
  {
    v11[2](v11);
  }

  [(ICNoteBrowseViewController *)self addKVOObservers];
  v13 = [[ICNoteBrowseViewControllerCollectionViewDelegate alloc] initWithNoteBrowseViewController:self];
  [(ICNoteBrowseViewController *)self setCollectionViewDelegate:v13];

  v14 = [(ICNoteBrowseViewController *)self collectionViewDelegate];
  v15 = [(ICNoteResultsViewController *)self collectionView];
  [v15 setDelegate:v14];

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
  v28 = self;
  v29 = v10;
  v16 = v10;
  [(ICNoteBrowseViewController *)self reloadDataSourceAnimated:v8 dataIndexedBlock:&v24 dataRenderedBlock:v12];

  v17 = [(ICNoteBrowseViewController *)self noteContainer:v24];
  v18 = [v17 noteContainerAccount];
  v19 = [v18 identifier];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v22 = [(ICNoteBrowseViewController *)self noteCollection];
    v21 = [v22 searchDomainIdentifier];
  }

  if (v21)
  {
    v23 = [(ICBaseViewController *)self noteSearchViewController];
    [v23 setAccountIdentifier:v21];
  }
}

- (void)updateDataSourceConfigurationSortTypeChanged:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5 = [(ICNoteBrowseViewController *)self noteDataSource];
  v6 = [(ICNoteBrowseViewController *)self sortType];
  [v5 setSortType:v6 force:v3];

  v7 = [(ICNoteBrowseViewController *)self dateHeadersType];
  v8 = [(ICNoteBrowseViewController *)self noteDataSource];
  [v8 setDateHeadersType:v7];

  v9 = [(ICNoteBrowseViewController *)self shouldIncludeSubfolders];
  v10 = [(ICNoteBrowseViewController *)self noteDataSource];
  [v10 setShouldIncludeSubfolders:v9];

  v11 = [(ICNoteBrowseViewController *)self shouldIncludeTags];
  v12 = [(ICNoteBrowseViewController *)self noteDataSource];
  [v12 setShouldIncludeTags:v11];

  v13 = [(ICNoteBrowseViewController *)self shouldIncludeTagDetail];
  v14 = [(ICNoteBrowseViewController *)self noteDataSource];
  [v14 setShouldIncludeTagDetail:v13];

  v15 = [(ICNoteBrowseViewController *)self shouldIncludeInvitations];
  v16 = [(ICNoteBrowseViewController *)self noteDataSource];
  [v16 setShouldIncludeInvitations:v15];

  objc_copyWeak(&v19, &location);
  v17 = [(ICNoteBrowseViewController *)self noteDataSource:_NSConcreteStackBlock];
  [v17 setTagSelectionDidChangeHandler:&v18];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)reloadDataSourceAnimated:(BOOL)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  [(ICNoteBrowseViewController *)self updateSelectedTagTitles];
  v10 = [(ICNoteBrowseViewController *)self noteDataSource];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100120B7C;
  v15[3] = &unk_10064A7C0;
  v17 = v6;
  v15[4] = self;
  v16 = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100120D64;
  v13[3] = &unk_100645E80;
  v13[4] = self;
  v14 = v9;
  v11 = v9;
  v12 = v8;
  [v10 reloadDataAnimated:v6 dataIndexedBlock:v15 dataRenderedBlock:v13];
}

- (void)updateFocusedNoteIfNeeded
{
  v3 = [(ICNoteBrowseViewController *)self noteContainer];
  if (v3)
  {
  }

  else
  {
    v4 = [(ICNoteBrowseViewController *)self virtualSmartFolder];

    if (!v4)
    {
      return;
    }
  }

  v5 = [(ICBaseViewController *)self viewControllerManager];
  v6 = [v5 focusedNoteObjectID];

  if (!v6)
  {
    v20 = [(ICBaseViewController *)self viewControllerManager];
    v16 = [v20 selectedNoteObjectID];
    if (v16)
    {

      goto LABEL_10;
    }

    v15 = [(ICBaseViewController *)self viewControllerManager];
    v17 = [v15 selectedInvitationObjectID];
    if (!v17)
    {
      v18 = [(ICNoteResultsViewController *)self collectionView];
      v19 = [v18 isEditing];

      if (v19)
      {
        return;
      }

      v20 = [(ICNoteResultsViewController *)self collectionView];
      [v20 ic_deselectAllItems];
      goto LABEL_10;
    }

LABEL_7:
LABEL_10:
    v11 = v20;
    goto LABEL_11;
  }

  v7 = [(ICNoteBrowseViewController *)self noteDataSource];
  v8 = [v7 collectionViewDiffableDataSource];
  v9 = [(ICBaseViewController *)self viewControllerManager];
  v10 = [v9 focusedNoteObjectID];
  v20 = [v8 indexPathForItemIdentifier:v10];

  v11 = v20;
  if (v20)
  {
    v12 = [(ICNoteResultsViewController *)self collectionView];
    [v12 ic_selectCellAtIndexPath:v20 animated:0];

    objc_opt_class();
    v13 = [(ICNoteResultsViewController *)self collectionView];
    v14 = [v13 cellForItemAtIndexPath:v20];
    v15 = ICDynamicCast();

    [v15 setSelected:1];
    goto LABEL_7;
  }

LABEL_11:
}

- (BOOL)updateTagSectionVisibility
{
  v3 = [(ICNoteBrowseViewController *)self shouldIncludeTags];
  v4 = [(ICNoteBrowseViewController *)self noteDataSource];
  v5 = [v4 shouldIncludeTags];

  v6 = [(ICNoteBrowseViewController *)self shouldIncludeTags];
  v7 = [(ICNoteBrowseViewController *)self noteDataSource];
  [v7 setShouldIncludeTags:v6];

  v8 = [(ICNoteBrowseViewController *)self shouldIncludeTagDetail];
  v9 = [(ICNoteBrowseViewController *)self noteDataSource];
  [v9 setShouldIncludeTagDetail:v8];

  return v3 ^ v5;
}

- (void)sharedWithYouControllerDidUpdateHighlights:(id)a3
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
    v5 = [(ICNoteBrowseViewController *)self noteContainer];
    v6 = ICDynamicCast();

    if (v6)
    {
      v7 = [ICCollaborationButtonsController alloc];
      v8 = [(ICBaseViewController *)self viewControllerManager];
      v9 = [(ICCollaborationButtonsController *)v7 initWithCloudObject:v6 coordinator:v8];
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
  v2 = [(ICNoteBrowseViewController *)self selectedNotes];
  v3 = [v2 ic_compactMap:&stru_10064A828];

  return v3;
}

- (id)focusedNotes
{
  v3 = [(ICNoteResultsViewController *)self collectionView];
  v4 = [v3 indexPathsForFocusedItems];

  v5 = [(ICNoteBrowseViewController *)self notesForIndexPaths:v4];

  return v5;
}

- (BOOL)isAllTagsSelected
{
  v2 = [(ICNoteBrowseViewController *)self tagSelection];
  v3 = [v2 mode] == 1;

  return v3;
}

- (void)resetBarButtonItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v5 reset];

  [(ICNoteBrowseViewController *)self updateBarButtonItemsAnimated:v3];
}

- (void)updateBarButtonItemsAnimated:(BOOL)a3
{
  v3 = a3;
  [(ICNoteBrowseViewController *)self updateSummaryView];
  v5 = [(ICNoteBrowseViewController *)self ic_behavior];
  v6 = +[ICAuthenticationState sharedState];
  v7 = [v6 isAuthenticated];
  v8 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v8 setAuthenticated:v7];

  v9 = [(ICBaseViewController *)self viewControllerManager];
  v10 = [v9 canAddNewNoteToSelectedContainers];
  v11 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v11 setCanAddNote:v10];

  v12 = [(ICNoteBrowseViewController *)self shouldShowTagAssignmentBarButtonItem];
  v13 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v13 setCanAssignTags:v12];

  v14 = [(ICNoteBrowseViewController *)self noteContainer];
  v15 = [v14 canBeSharedViaICloud];
  v16 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v16 setCanBeShared:v15];

  v17 = [(ICBaseViewController *)self viewControllerManager];
  v18 = [v17 hasCompactWidth];
  v19 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v19 setCompactWidth:v18];

  v20 = [(ICBaseViewController *)self viewControllerManager];
  v21 = [v20 hasCompactHeight];
  v22 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v22 setCompactHeight:v21];

  v23 = [(ICNoteBrowseViewController *)self isEditing];
  v24 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v24 setEditing:v23];

  v25 = [(ICBaseViewController *)self noteContainerViewMode];
  v26 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v26 setNoteContainerViewMode:v25];

  v27 = [(ICNoteBrowseViewController *)self allNotes];
  v28 = [v27 count];
  v29 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v29 setNoteCount:v28];

  v30 = [(ICNoteBrowseViewController *)self selectedNotes];
  v31 = [v30 count];
  v32 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v32 setSelectedNoteCount:v31];

  v33 = [(ICNoteBrowseViewController *)self noteContainer];
  v34 = [v33 isSharedViaICloud];
  v35 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v35 setShared:v34];

  v36 = [(ICNoteBrowseViewController *)self shouldShowEmptyState];
  v37 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v37 setShowingEmptyState:v36];

  if (v5 == 1)
  {
    v36 = [(ICNoteBrowseViewController *)self traitCollection];
    v38 = [v36 splitViewControllerLayoutEnvironment] == 2;
  }

  else
  {
    v38 = 0;
  }

  v39 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v39 setShowsCalculatorModeButton:v38];

  if (v5 == 1)
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
  v41 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v41 setShowsDebugItem:v40];

  v42 = [(ICNoteBrowseViewController *)self isTrashFolder];
  v43 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v43 setTrashFolder:v42];

  if (+[UIDevice ic_isVision])
  {
    v44 = [(ICBaseViewController *)self noteContainerViewMode]== 1;
  }

  else
  {
    v44 = 0;
  }

  v45 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v45 setUsesCustomBackButton:v44];

  v46 = +[UIDevice ic_isVision];
  v47 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v47 setUsesPlainBarButtonItems:v46];

  v48 = [(ICNoteBrowseViewController *)self noteContainer];

  if (v48)
  {
    v49 = 1;
  }

  else
  {
    v50 = [(ICNoteBrowseViewController *)self noteCollection];

    if (v50)
    {
      v49 = 2;
    }

    else
    {
      v51 = [(ICNoteBrowseViewController *)self noteQuery];

      if (v51)
      {
        v49 = 3;
      }

      else
      {
        v52 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
        v53 = v52 != 0;

        v49 = 4 * v53;
      }
    }
  }

  v54 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v54 setCollectionType:v49];

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

  v56 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v56 setCanMoveNotes:v55];

  if (-[ICNoteBrowseViewController isEditing](self, "isEditing") && [v70 count])
  {
    v57 = [v70 ic_allSatisfy:&stru_10064A888];
  }

  else
  {
    v57 = 0;
  }

  v58 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
  [v58 setCanDeleteNotes:v57];

  if ([(ICNoteBrowseViewController *)self _appearState]== 1 || [(ICNoteBrowseViewController *)self _appearState]== 2)
  {
    v57 = [(ICNoteBrowseViewController *)self navigationItemConfiguration];
    [v57 updateAnimated:v3];
  }

  v59 = [(ICBaseViewController *)self noteContainerViewMode];
  if (v59 == 1)
  {
    v57 = [(ICNoteBrowseViewController *)self navigationController];
    if ([v57 isToolbarHidden] && !-[ICNoteBrowseViewController shouldShowEmptyState](self, "shouldShowEmptyState"))
    {
      v58 = [(ICBaseViewController *)self viewControllerManager];
      v61 = [v58 hasCompactWidth] ^ 1;
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

  v62 = [(ICNoteResultsViewController *)self collectionView];
  [v62 setShouldShowSummaryFooter:v61];

  if (v60)
  {
  }

  if (v59 == 1)
  {
  }

  if (_UISolariumEnabled() && (+[UIDevice ic_isVision]& 1) == 0)
  {
    v63 = [(ICNoteBrowseViewController *)self traitCollection];
    v64 = [v63 splitViewControllerLayoutEnvironment];

    if (v64 == 1)
    {
      v65 = 0;
    }

    else
    {
      v65 = [(ICNoteBrowseViewController *)self primarySummaryView];
    }

    v66 = [(ICNoteBrowseViewController *)self navigationItem];
    [v66 setLargeSubtitleView:v65];

    if (v64 == 1)
    {
      [(ICNoteBrowseViewController *)self primarySummaryView];
    }

    else
    {

      [(ICNoteBrowseViewController *)self scrolledHeaderSummaryView];
    }
    v67 = ;
    v68 = [(ICNoteBrowseViewController *)self navigationItem];
    [v68 setSubtitleView:v67];

    v69 = [(ICNoteBrowseViewController *)self navigationItem];
    [v69 setStyle:v64 == 1];
  }
}

- (void)updateContainerSelection
{
  v3 = [(ICNoteBrowseViewController *)self tagSelection];

  if (v3)
  {
    v4 = [(ICNoteBrowseViewController *)self tagContainerCell];
    v5 = [(ICNoteBrowseViewController *)self tagSelection];
    [v4 selectTagsWithTagSelection:v5 animated:0];

    v6 = [(ICNoteBrowseViewController *)self tagDetailCell];
    v7 = [(ICNoteBrowseViewController *)self tagSelection];
    [v6 updateForTagSelection:v7 animated:0];
  }

  [(ICNoteBrowseViewController *)self updateFocusedNoteIfNeeded];
}

- (ICTagContainerCell)tagContainerCell
{
  v3 = [(ICNoteBrowseViewController *)self tagSelection];

  if (v3)
  {
    v4 = [(ICNoteBrowseViewController *)self dataSource];
    v5 = [v4 collectionViewDiffableDataSource];
    v6 = +[ICTagContainerItemIdentifier sharedItemIdentifier];
    v7 = [v5 indexPathForItemIdentifier:v6];

    if (v7)
    {
      objc_opt_class();
      v8 = [(ICNoteResultsViewController *)self collectionView];
      v9 = [v8 cellForItemAtIndexPath:v7];
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
  v3 = [(ICNoteBrowseViewController *)self tagSelection];

  if (v3)
  {
    v4 = [(ICNoteBrowseViewController *)self dataSource];
    v5 = [v4 collectionViewDiffableDataSource];
    v6 = +[ICTagDetailItemIdentifier sharedItemIdentifier];
    v7 = [v5 indexPathForItemIdentifier:v6];

    if (v7)
    {
      objc_opt_class();
      v8 = [(ICNoteResultsViewController *)self collectionView];
      v9 = [v8 cellForItemAtIndexPath:v7];
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

- (id)notesForIndexPaths:(id)a3
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100122190;
  v8[3] = &unk_10064A8B0;
  v8[4] = self;
  v4 = [a3 ic_compactMap:v8];
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
  v3 = [(ICNoteBrowseViewController *)self viewIfLoaded];

  if (!v3)
  {
    return 100.0;
  }

  v4 = [(ICNoteBrowseViewController *)self view];
  [v4 bounds];
  v6 = v5;

  v7 = [(ICBaseViewController *)self viewControllerManager];
  v8 = [v7 hasCompactWidth];
  v9 = -32.0;
  if (v8)
  {
    v9 = -100.0;
  }

  v10 = v6 + v9;

  return fmax(v10, 100.0);
}

- (id)updateSummaryViewIsPrimary:(BOOL)a3
{
  v3 = a3;
  if (a3)
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
    v6 = [(ICBaseViewController *)self viewControllerManager];
    v7 = [v6 hasCompactHeight];
  }

  else
  {
    v7 = 1;
  }

  v8 = [(ICBaseViewController *)self viewControllerManager];
  v9 = [v8 hasCompactWidth];

  if ([(ICBaseViewController *)self isShowingActiveSearch])
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 | v7;
  }

  if (_UISolariumEnabled())
  {
    v11 = +[UIDevice ic_isVision];
    v12 = v11 ^ 1;
    v13 = 2;
    if (!v3)
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

  if ((v10 | v12) & 1) != 0 || !v3 || (_UISolariumEnabled())
  {
    if (!v5)
    {
      v5 = [[ICToolbarSummaryView alloc] initWithFrame:v14 type:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v15 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1004E0964(self, v5, v15);
      }

      if (v3)
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
    v16 = [(ICNoteResultsViewController *)self collectionView];
    v17 = [v16 visibleSupplementaryViewsOfKind:UICollectionElementKindSectionFooter];
    v18 = [v17 firstObject];

    objc_opt_class();
    v19 = ICCheckedDynamicCast();

    v5 = v19;
  }

  v20 = [(ICNoteBrowseViewController *)self noteContainer];
  v21 = [v20 noteContainerAccount];
  v22 = [v21 accountType];

  [(ICToolbarSummaryView *)v5 setHidden:0];
  [(ICToolbarSummaryView *)v5 setType:v14];
  v23 = [(ICNoteBrowseViewController *)self noteDataSource];
  -[ICToolbarSummaryView setTotalNoteCount:](v5, "setTotalNoteCount:", [v23 totalNoteCount]);

  v24 = [(ICNoteBrowseViewController *)self noteDataSource];
  -[ICToolbarSummaryView setTotalFolderCount:](v5, "setTotalFolderCount:", [v24 totalFolderCount]);

  v25 = [(ICNoteBrowseViewController *)self noteDataSource];
  -[ICToolbarSummaryView setTotalInvitationsCount:](v5, "setTotalInvitationsCount:", [v25 totalInvitationsCount]);

  v26 = +[ICAuthenticationState sharedState];
  -[ICToolbarSummaryView setLockNowHidden:](v5, "setLockNowHidden:", [v26 isAuthenticated] ^ 1);

  [(ICToolbarSummaryView *)v5 setSyncActivityVisible:v22 == 1];
  [(ICNoteBrowseViewController *)self availableWidthForSummaryView];
  [(ICToolbarSummaryView *)v5 setAvailableWidth:?];
  if (v22 == 1)
  {
    v27 = +[ICAppDelegate sharedInstance];
    v28 = [v27 cloudContextDelegate];
    v29 = [v28 syncMessage];
    [(ICToolbarSummaryView *)v5 setSyncMessage:v29];
  }

  else
  {
    [(ICToolbarSummaryView *)v5 setSyncMessage:0];
  }

  [(ICToolbarSummaryView *)v5 setDelegate:self];
  [(ICToolbarSummaryView *)v5 update];
  v30 = [(ICToolbarSummaryView *)v5 syncMessage];
  if (v30)
  {
    v31 = v30;
    v32 = [(ICBaseViewController *)self noteContainerViewMode];

    if (v32 == 1)
    {
      v33 = objc_alloc_init(UICollectionViewLayoutInvalidationContext);
      v34 = [(ICNoteResultsViewController *)self collectionView];
      v35 = [v34 indexPathsForVisibleSupplementaryElementsOfKind:UICollectionElementKindSectionFooter];

      [v33 invalidateSupplementaryElementsOfKind:UICollectionElementKindSectionFooter atIndexPaths:v35];
      v36 = [(ICNoteResultsViewController *)self collectionView];
      v37 = [v36 collectionViewLayout];
      [v37 invalidateLayoutWithContext:v33];
    }
  }

  [(ICNoteBrowseViewController *)self setNeedsUpdateContentUnavailableConfiguration];
  if (+[UIDevice ic_isVision])
  {
    v38 = ICNoteEditorPillOrnamentViewControllerInsets;
    v39 = [(ICNoteBrowseViewController *)self navigationController];
    [v39 setAdditionalSafeAreaInsets:{0.0, 0.0, v38, 0.0}];
  }

  return v5;
}

- (void)noteDecryptedStatusDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICNoteBrowseViewController;
  [(ICNoteResultsViewController *)&v5 noteDecryptedStatusDidChange:a3];
  v3 = +[ICAuthenticationState sharedState];
  v4 = [v3 isBlockingDeauthentication];

  if ((v4 & 1) == 0)
  {
    performBlockOnMainThread();
  }
}

- (void)summaryViewLockNowPressed:(id)a3
{
  v4 = [(ICBaseViewController *)self viewControllerManager];
  [v4 lockNotesNow];

  v5 = [(ICNoteBrowseViewController *)self noteContainer];
  v9 = [v5 noteContainerAccount];

  if (v9)
  {
    v6 = +[ICLockedNotesModeMigrator sharedMigrator];
    v7 = [(ICNoteBrowseViewController *)self view];
    v8 = [v7 window];
    [v6 showMigrationPromptAndMigrateIfNeededForAccount:v9 window:v8];
  }
}

- (BOOL)isSearchActive
{
  v2 = [(ICBaseViewController *)self viewControllerManager];
  v3 = [v2 isSearchActive];

  return v3;
}

- (BOOL)isSearchActiveWithQuery
{
  v2 = [(ICBaseViewController *)self viewControllerManager];
  v3 = [v2 isSearchActiveWithQuery];

  return v3;
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
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
    v7 = [(ICNoteBrowseViewController *)self contentUnavailableConfiguration];

    if (v7)
    {

      [(ICNoteBrowseViewController *)self setContentUnavailableConfiguration:0];
    }
  }
}

- (void)managedObjectContextDidSaveObjectIDs:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ICNoteBrowseViewController *)self noteContainer];
  v6 = ICDynamicCast();
  v7 = [v6 isSmartFolder];

  if (v7)
  {
    v8 = +[NSMutableSet set];
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:NSUpdatedObjectIDsKey];
    [v8 ic_addObjectsFromNonNilArray:v10];

    v11 = [v4 userInfo];
    v12 = [v11 objectForKeyedSubscript:NSRefreshedObjectIDsKey];
    [v8 ic_addObjectsFromNonNilArray:v12];

    v13 = [(ICNoteBrowseViewController *)self noteContainer];
    v14 = [v13 objectID];
    v15 = [v8 containsObject:v14];

    if (v15)
    {
      v16 = [(ICNoteBrowseViewController *)self noteContainer];
      v17 = [(ICNoteBrowseViewController *)self noteDataSource];
      [v17 setNoteContainer:v16];

      v18 = [(ICNoteBrowseViewController *)self noteDataSource];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100122DB0;
      v19[3] = &unk_1006466E0;
      v19[4] = self;
      [v18 reloadDataAnimated:1 dataIndexedBlock:v19 dataRenderedBlock:0];
    }
  }
}

- (void)startAnalyticsTracking
{
  if ([(ICNoteBrowseViewController *)self analyticsTrackingActive])
  {
    return;
  }

  v3 = [(ICNoteBrowseViewController *)self noteContainer];

  if (v3)
  {
    v4 = [(ICNoteBrowseViewController *)self eventReporter];
    v5 = [(ICNoteBrowseViewController *)self noteContainer];
    [v4 startFolderViewEventDurationTrackingForNoteContainer:v5 isInGridMode:{-[ICBaseViewController noteContainerViewMode](self, "noteContainerViewMode") == 1}];
LABEL_8:

    goto LABEL_9;
  }

  v6 = [(ICNoteBrowseViewController *)self noteCollection];

  if (v6)
  {
    v4 = [(ICNoteBrowseViewController *)self eventReporter];
    v5 = [(ICNoteBrowseViewController *)self noteCollection];
    [v4 startFolderViewEventDurationTrackingForNoteCollection:v5 isInGridMode:{-[ICBaseViewController noteContainerViewMode](self, "noteContainerViewMode") == 1}];
    goto LABEL_8;
  }

  v7 = [(ICNoteBrowseViewController *)self virtualSmartFolder];

  if (v7)
  {
    v4 = [(ICNoteBrowseViewController *)self eventReporter];
    v5 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
    v8 = [(ICBaseViewController *)self noteContainerViewMode]== 1;
    v9 = +[ICNoteContext sharedContext];
    v10 = [v9 managedObjectContext];
    [v4 startFolderViewEventDurationTrackingForVirtualFolder:v5 isInGridMode:v8 context:v10];

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

  v3 = [(ICNoteBrowseViewController *)self noteContainer];

  if (v3)
  {
    v4 = [(ICNoteBrowseViewController *)self eventReporter];
    v5 = [(ICNoteBrowseViewController *)self noteContainer];
    [v4 submitFolderViewEventForNoteContainer:v5 isInGridMode:{-[ICBaseViewController noteContainerViewMode](self, "noteContainerViewMode") == 1}];
LABEL_9:

    goto LABEL_10;
  }

  v6 = [(ICNoteBrowseViewController *)self noteCollection];

  if (v6)
  {
    v4 = [(ICNoteBrowseViewController *)self eventReporter];
    v5 = [(ICNoteBrowseViewController *)self noteCollection];
    [v4 submitFolderViewEventForNoteCollection:v5 isInGridMode:{-[ICBaseViewController noteContainerViewMode](self, "noteContainerViewMode") == 1}];
    goto LABEL_9;
  }

  v7 = [(ICNoteBrowseViewController *)self virtualSmartFolder];

  if (v7)
  {
    v4 = [(ICNoteBrowseViewController *)self eventReporter];
    v5 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
    v8 = [(ICBaseViewController *)self noteContainerViewMode]== 1;
    v9 = +[ICNoteContext sharedContext];
    v10 = [v9 managedObjectContext];
    [v4 submitFolderViewEventForVirtualFolder:v5 isInGridMode:v8 context:v10];

    goto LABEL_9;
  }

LABEL_10:

  [(ICNoteBrowseViewController *)self setAnalyticsTrackingActive:0];
}

- (void)submitTagSelectionAnalyticsIfNeeded
{
  v3 = [(ICNoteBrowseViewController *)self tagSelection];
  if (v3)
  {
    v4 = v3;
    v5 = [(ICNoteBrowseViewController *)self tagSelection];
    v6 = [v5 isEmpty];

    if ((v6 & 1) == 0)
    {
      v7 = [(ICNoteBrowseViewController *)self isAllTagsSelected];
      v8 = [(ICNoteBrowseViewController *)self tagSelection];
      v9 = [v8 selectedTagCount];

      v10 = [(ICNoteBrowseViewController *)self eventReporter];
      [v10 submitTagBrowserSelectionEventWithSelectedTagCount:v9 isAllTagsSelected:v7];
    }
  }
}

- (void)updateTagDetailOperatorMenuVisibility
{
  v5 = [(ICNoteBrowseViewController *)self traitCollection];
  v3 = [v5 ic_hasCompactWidth];
  v4 = [(ICNoteBrowseViewController *)self tagDetailCell];
  [v4 setShowOperatorMenuButton:v3];
}

- (id)noteBrowseNavigationItemConfigurationNavigationTitle:(id)a3
{
  if ([(ICBaseViewController *)self isShowingActiveSearch])
  {
    v4 = [(ICNoteBrowseViewController *)self navigationItem];
    v5 = [v4 searchController];
    v6 = [v5 searchBar];
    v7 = [v6 ic_containsQuery];

    if (v7)
    {
      v8 = [(ICBaseViewController *)self searchNavigationTitle];
      goto LABEL_17;
    }
  }

  if ([(ICNoteBrowseViewController *)self isEditing]&& [(ICNoteBrowseViewController *)self numberOfSelectedItems])
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"%lu (notes) Selected" value:&stru_100661CF0 table:0];
    v8 = [NSString localizedStringWithFormat:v10, [(ICNoteBrowseViewController *)self numberOfSelectedItems]];

    goto LABEL_17;
  }

  v11 = [(ICNoteBrowseViewController *)self noteContainer];

  if (v11)
  {
    v12 = [(ICNoteBrowseViewController *)self noteContainer];
    v13 = [v12 titleForNavigationBar];
LABEL_16:
    v8 = v13;

    goto LABEL_17;
  }

  v14 = [(ICNoteBrowseViewController *)self noteCollection];

  if (v14)
  {
    v12 = [(ICNoteBrowseViewController *)self noteCollection];
    v13 = [v12 titleForTableViewCell];
    goto LABEL_16;
  }

  v15 = [(ICNoteBrowseViewController *)self tagSelection];

  if (v15)
  {
    v16 = [(ICNoteBrowseViewController *)self tagSelection];
LABEL_15:
    v12 = v16;
    v13 = [v16 title];
    goto LABEL_16;
  }

  v17 = [(ICNoteBrowseViewController *)self virtualSmartFolder];

  if (v17)
  {
    v16 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
    goto LABEL_15;
  }

  v8 = 0;
LABEL_17:

  return v8;
}

- (id)noteBrowseNavigationItemConfigurationNoteContainerActionMenu:(id)a3 actionBarButtonItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [(ICNoteBrowseViewController *)self noteContainer];
  v9 = ICDynamicCast();

  if (v9)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v6);
    objc_initWeak(&v18, v7);
    v10 = [(ICBaseViewController *)self viewControllerManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100123790;
    v13[3] = &unk_10064A960;
    objc_copyWeak(&v15, &location);
    v14 = v7;
    objc_copyWeak(&v16, &from);
    objc_copyWeak(&v17, &v18);
    v11 = [(ICNoteContainerActionMenu *)ICNoteBrowseActionMenu menuWithNoteContainer:v9 presentingViewController:self presentingBarButtonItem:v14 viewControllerManager:v10 completion:v13];
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

- (id)noteBrowseNavigationItemConfigurationQueryActionMenu:(id)a3 actionBarButtonItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteBrowseViewController *)self noteQuery];
  if (v8 && (v9 = v8, [(ICNoteBrowseViewController *)self tagSelection], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v6);
    objc_initWeak(&v20, v7);
    v11 = [(ICNoteBrowseViewController *)self tagSelection];
    v12 = [(ICBaseViewController *)self viewControllerManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100123A70;
    v15[3] = &unk_10064A960;
    objc_copyWeak(&v17, &location);
    v16 = v7;
    objc_copyWeak(&v18, &from);
    objc_copyWeak(&v19, &v20);
    v13 = [ICTagsActionMenu menuWithTagSelection:v11 presentingViewController:self presentingBarButtonItem:v16 viewControllerManager:v12 delegate:self completion:v15];
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

- (id)noteBrowseNavigationItemConfigurationVirtualSmartFolderActionMenu:(id)a3 actionBarButtonItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteBrowseViewController *)self virtualSmartFolder];

  if (v8)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v6);
    objc_initWeak(&v18, v7);
    v9 = [(ICNoteBrowseViewController *)self virtualSmartFolder];
    v10 = [(ICBaseViewController *)self viewControllerManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100123D34;
    v13[3] = &unk_10064A960;
    objc_copyWeak(&v15, &location);
    v14 = v7;
    objc_copyWeak(&v16, &from);
    objc_copyWeak(&v17, &v18);
    v11 = [(ICNoteContainerActionMenu *)ICNoteBrowseActionMenu menuWithVirtualSmartFolder:v9 presentingViewController:self presentingBarButtonItem:v14 viewControllerManager:v10 completion:v13];
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

- (id)noteBrowseNavigationItemConfigurationCollaborationBarButtonItem:(id)a3
{
  v3 = [(ICNoteBrowseViewController *)self collaborationButtonsController];
  v4 = [v3 buttonItem];

  return v4;
}

- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldAddNoteFromBarButtonItem:(id)a4 event:(id)a5
{
  v8 = a5;
  v6 = [(ICBaseViewController *)self viewControllerManager];
  v7 = [v6 showNewNoteWithApproach:14 sender:v8 animated:1];
}

- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldAssignTagsFromBarButtonItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNoteBrowseViewController *)self selectedNotes];
  v9 = [v8 ic_compactMap:&stru_10064A980];

  objc_initWeak(&location, self);
  v10 = [ICTagAssignmentViewController alloc];
  v11 = [(ICBaseViewController *)self modernViewContext];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1001240A0;
  v17 = &unk_100645C78;
  objc_copyWeak(&v18, &location);
  v12 = [(ICTagAssignmentViewController *)v10 initWithSelectedNotes:v9 managedObjectContext:v11 completion:&v14];

  v13 = [(ICTagAssignmentViewController *)v12 ic_embedInNavigationControllerForModalPresentation:v14];
  [(ICNoteBrowseViewController *)self presentViewController:v13 animated:1 completion:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldDeleteAllFromBarButtonItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ICNoteBrowseViewController *)self isTrashFolder])
  {
    v8 = [(ICNoteBrowseViewController *)self allNotes];
    [(ICNoteBrowseViewController *)self deleteNotes:v8 sender:v7];
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = [ICWindowDeletionAlertPresenter alloc];
    v10 = [(ICNoteBrowseViewController *)self view];
    v11 = [v10 window];
    v12 = [(ICWindowDeletionAlertPresenter *)v9 initWithWindow:v11 sender:v7];

    v13 = [ICDeleteAlert alloc];
    v14 = [(ICNoteBrowseViewController *)self allNotes];
    v15 = -[ICDeleteAlert initWithAlertType:count:](v13, "initWithAlertType:count:", 16, [v14 count]);

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001242B0;
    v16[3] = &unk_10064A9A8;
    objc_copyWeak(&v18, &location);
    v17 = v7;
    [(ICWindowDeletionAlertPresenter *)v12 presentAlert:v15 withCompletion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldDeleteSelectedFromBarButtonItem:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteBrowseViewController *)self selectedNotes];
  [(ICNoteBrowseViewController *)self deleteNotes:v6 sender:v5];
}

- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldLockFromBarButtonItem:(id)a4
{
  v4 = [(ICBaseViewController *)self viewControllerManager:a3];
  [v4 lockNotesNow];
}

- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldMoveAllFromBarButtonItem:(id)a4
{
  v5 = [(ICNoteBrowseViewController *)self allNotes:a3];
  [(ICNoteBrowseViewController *)self moveNotes:v5];
}

- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldMoveSelectedFromBarButtonItem:(id)a4
{
  v5 = [(ICNoteBrowseViewController *)self selectedNotes:a3];
  [(ICNoteBrowseViewController *)self moveNotes:v5];
}

- (void)noteBrowseNavigationItemConfiguration:(id)a3 shouldShareFromBarButtonItem:(id)a4
{
  v8 = a4;
  objc_opt_class();
  v5 = [(ICNoteBrowseViewController *)self noteContainer];
  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = +[ICCollaborationUIController sharedInstance];
    [v7 presentFolderActivityViewControllerWithFolder:v6 presentingViewController:self sourceItem:v8 sourceView:0 sourceRect:0 completion:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  }
}

@end