@interface CNContactListViewController
+ (id)collectionViewLayoutWithFloatingHeaderViews:(BOOL)views contactListStyleApplier:(id)applier trailingSwipeActionsProvider:(id)provider shouldDisplaySupplementaryHeaderItemForSection:(id)section shouldShowSeparatorsForSection:(id)forSection directionalLayoutMargins:(id)margins collectionViewIsShowingIndexBar:(id)bar numberOfItemsInSection:(id)self0 contentUnavailable:(id)self1 collectionViewIsSelectingIndexPath:(id)self2;
+ (id)descriptorForRequiredKeysForPreferredForNameMeContact;
+ (id)emptyContact;
+ (id)layoutSectionForLayoutConfiguration:(id)configuration layoutEnvironment:(id)environment section:(int64_t)section contactListStyleApplier:(id)applier shouldDisplaySupplementaryHeaderItemForSection:(id)forSection headerViewsFloat:(BOOL)float directionalLayoutMargins:(id)margins collectionViewIsShowingIndexBar:(id)self0 contentUnavailable:(id)self1;
- (BOOL)allowsEditingActions;
- (BOOL)bundleCanManageDuplicates;
- (BOOL)canManageDuplicateContacts;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canPerformDuplicatesMerge;
- (BOOL)canSelectContactAtCollectionViewIndexPath:(id)path;
- (BOOL)canSelectContactAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canEditItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)collectionViewIsShowingIndexBar;
- (BOOL)collectionViewShouldDisplayCreateNewContact;
- (BOOL)containsPathToContentUnavailableRow:(id)row;
- (BOOL)containsPathToCreateNewContactRow:(id)row;
- (BOOL)containsPathToDuplicatesBanner:(id)banner;
- (BOOL)containsPathToLimitedAccessTipRow:(id)row;
- (BOOL)hasAllRowsSelected;
- (BOOL)hasNoContacts;
- (BOOL)hasSearchPrefix;
- (BOOL)isAcceptedIntroductionsDataSource;
- (BOOL)isContactProviderDataSource;
- (BOOL)isContactWithIdentifierEmergencyContact:(id)contact;
- (BOOL)isContactWithIdentifierMeContactOrLinkedToMeContact:(id)contact;
- (BOOL)isContentUnavailableRowSection:(int64_t)section;
- (BOOL)isCreateNewContactRowSection:(int64_t)section;
- (BOOL)isDisplayingContentUnavailableViewAsCell;
- (BOOL)isDuplicatesRowSection:(int64_t)section;
- (BOOL)isEasyToRecognizeWord:(id)word;
- (BOOL)isLimitedAccessTipRowSection:(int64_t)section;
- (BOOL)isPathToContentUnavailableRow:(id)row;
- (BOOL)isPathToCreateNewContactRow:(id)row;
- (BOOL)isPathToDuplicatesBanner:(id)banner;
- (BOOL)isPathToLimitedAccessTipRow:(id)row;
- (BOOL)isPerformingDuplicatesMerge;
- (BOOL)isPickerWithToolbarSearchField;
- (BOOL)isShowingAllContacts;
- (BOOL)isShowingCustomTitle;
- (BOOL)isShowingLimitedAccessTip;
- (BOOL)isShowingServerSearch;
- (BOOL)isValidIndexPath:(id)path;
- (BOOL)selectContact:(id)contact animated:(BOOL)animated scrollPosition:(unint64_t)position shouldScroll:(BOOL)scroll;
- (BOOL)shouldDisplayCreateNewContactAsRow;
- (BOOL)shouldDisplayListHeaderView;
- (BOOL)shouldDisplayMeContactBanner;
- (BOOL)shouldDisplaySupplementaryHeaderItemForSection:(int64_t)section;
- (BOOL)shouldDisplayTipContentView;
- (BOOL)shouldEmbedContentUnavailableViewInCell;
- (BOOL)shouldEnableMultiSelectContextMenus;
- (BOOL)shouldShowDuplicateBannerView;
- (BOOL)showingGroup;
- (BOOL)suggestionsController:(id)controller canSelectContact:(id)contact;
- (BOOL)suggestionsController:(id)controller shouldSelectContact:(id)contact atIndexPath:(id)path;
- (BOOL)validateSiriEnabled;
- (BOOL)validateSiriLanguage;
- (CNContact)preferredForNameMeContact;
- (CNContactDataSource)dataSource;
- (CNContactListActionHelper)actionHelper;
- (CNContactListBannerView)meContactBanner;
- (CNContactListViewController)initWithDataSource:(id)source searchable:(BOOL)searchable environment:(id)environment shouldUseLargeTitle:(BOOL)title;
- (CNContactListViewController)initWithDataSource:(id)source shouldUseLargeTitle:(BOOL)title;
- (CNContactListViewController)visibleListViewController;
- (CNContactListViewControllerDelegate)delegate;
- (CNContactStore)contactStore;
- (CNContactSuggestionsViewController)suggestionsController;
- (CNDuplicateContactsController)duplicatesController;
- (NSArray)selectedContacts;
- (NSString)currentSearchString;
- (UIBarButtonItem)addButton;
- (double)contactListHeaderHeight;
- (double)contentUnavailableCellHeight;
- (float)selectAllButtonOffsetAccountingForSectionHeaders;
- (id)_contactAtCollectionViewIndexPath:(id)path;
- (id)_contactAtIndexPath:(id)path;
- (id)_contentUnavailableConfigurationState;
- (id)appName;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)collectionViewIndexPathForDataSourceIndexPath:(id)path;
- (id)contactForActionsAtIndexPath:(id)path forMultiSelectAction:(BOOL)action;
- (id)contactProvidersOnPasteboard;
- (id)contactsForActionsAtIndexPaths:(id)paths;
- (id)contentUnavailableConfigurationForState:(id)state;
- (id)contextMenuConfigurationForContactsAtIndexPaths:(id)paths;
- (id)contextMenuInteraction;
- (id)createCollectionView;
- (id)dataSourceIndexPathForCollectionViewIndexPath:(id)path;
- (id)dragItemsForIndexPath:(id)path;
- (id)duplicatesBannerCell;
- (id)filteredSearchString;
- (id)getRecentCallCountAndSpeakableName;
- (id)getVisibleIndexPaths;
- (id)ignoredContactIdentifiersForSuggestionsController:(id)controller;
- (id)indexPathForGlobalIndex:(int64_t)index;
- (id)indexTitlesForCollectionView:(id)view;
- (id)limitedAccessContactsFromCurrentSelection;
- (id)limitedAccessTipCell;
- (id)limitedAccessTotalSelectedContacts;
- (id)mergableContacts;
- (id)pathToContentUnavailableRow;
- (id)pathToCreateNewContactRow;
- (id)pathToDuplicatesBanner;
- (id)pathToLimitedAccessTipRow;
- (id)recentOutgoingCalls;
- (id)setupDuplicatesController;
- (id)tipKitContentView;
- (id)titleForHeaderInSection:(int64_t)section;
- (id)trailingSwipeActionsConfigurationProvider;
- (int64_t)additionalSectionsAtTopCount;
- (int64_t)allDuplicatesCountToDisplay;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)newDuplicatesCountToDisplay;
- (int64_t)numberOfSections;
- (unint64_t)globalIndexForCollectionViewIndexPath:(id)path;
- (unint64_t)totalNumberOfRows;
- (void)_applicationEnteringForeground:(id)foreground;
- (void)_contactCountTelemetry:(unint64_t)telemetry;
- (void)_handleCoalescedBlockListDidChange;
- (void)_searchBarDidEndEditing:(id)editing;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)_updateCountStringNow:(BOOL)now;
- (void)action:(id)action presentViewController:(id)controller;
- (void)actionDidFinish:(id)finish;
- (void)addContactTapped:(id)tapped;
- (void)addContactsToListTappedWithSourceView:(id)view;
- (void)addSelectButtonView;
- (void)adjustTableViewOffsetForIncomingSearchUI;
- (void)applyStyle;
- (void)bannerView:(id)view wasSelectedToPresentMeContact:(id)contact;
- (void)beginSearch:(id)search;
- (void)cancelSearch:(id)search;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)configureNavigationBar;
- (void)contactDataSourceDidChange:(id)change;
- (void)contactDataSourceDisplayNameDidChange:(id)change;
- (void)contactDataSourceMeContactDidChange:(id)change;
- (void)contactStoreDidChangeWithNotification:(id)notification;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)copyContacts:(id)contacts;
- (void)createNewContactTapped;
- (void)dealloc;
- (void)deleteContact:(id)contact;
- (void)deselectAllItemsExceptIndexPath:(id)path;
- (void)deselectAllSelectedIndexPathsAnimated:(BOOL)animated;
- (void)didDismissSearchController:(id)controller;
- (void)didPerformDuplicatesMerge:(id)merge;
- (void)didPresentSearchController:(id)controller;
- (void)didResetLimitedAccessSelectionTo:(id)to;
- (void)didSelectViewAllDuplicates;
- (void)didUpdateContentForAvatarViewController:(id)controller;
- (void)disableSearchUI;
- (void)dismissKeyboard;
- (void)duplicatesBannerCellDidTapDismiss:(id)dismiss;
- (void)duplicatesDidChange:(id)change;
- (void)fetchDuplicatesCountWithCompletionBlock:(id)block;
- (void)handleSelectAllTapped;
- (void)initializeDuplicateContacts;
- (void)layoutSelectButtonView;
- (void)limitedAccessTipCellDidTapDismiss:(id)dismiss;
- (void)listActionHelper:(id)helper didUpdateWithMenu:(id)menu;
- (void)loadView;
- (void)mergeUnifyContacts:(id)contacts;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pasteContacts:(id)contacts;
- (void)performWhenSearchCompleted:(id)completed;
- (void)performWhenViewIsLaidOut:(id)out;
- (void)reconfigureVisibleItems;
- (void)refreshActionHelper;
- (void)refreshDuplicates;
- (void)refreshDuplicatesBanner;
- (void)refreshTableViewHeader;
- (void)refreshTableViewHeaderForContactChanges;
- (void)refreshTableViewHeaderIfVisible;
- (void)refreshTableViewHeaderIfVisibleWithSize:(CGSize)size;
- (void)refreshTableViewHeaderWithSize:(CGSize)size;
- (void)reloadContacts;
- (void)reloadTitle;
- (void)reloadVisibleItems;
- (void)removeDuplicatesBanner;
- (void)scrollToItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollTopToContactWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)searchForString:(id)string animated:(BOOL)animated completionBlock:(id)block;
- (void)selectAllIndexPathsAnimated:(BOOL)animated;
- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
- (void)selectNextContact:(id)contact;
- (void)selectPreviousContact:(id)contact;
- (void)setAllowsMultiSelectContextMenus:(BOOL)menus;
- (void)setBottomEdgesInset:(double)inset;
- (void)setCellStateSelected:(BOOL)selected forContact:(id)contact animated:(BOOL)animated;
- (void)setContactFormatter:(id)formatter;
- (void)setContactListStyleApplier:(id)applier;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)setImageForContact:(id)contact imageUpdateBlock:(id)block;
- (void)setMeContactBannerFootnoteLabel:(id)label;
- (void)setMeContactBannerFootnoteValue:(id)value;
- (void)setShouldDisplayMeContactBanner:(BOOL)banner;
- (void)setShouldDisplaySuggestionsController:(BOOL)controller;
- (void)setTipKitContext:(id)context;
- (void)setTipView:(id)view;
- (void)setupContactListForMultiSelectContextMenus;
- (void)setupForMultiSelection;
- (void)setupMeBannerAvatarController;
- (void)setupVCardImportController;
- (void)setupViewWithLimitedAccessContactSelection;
- (void)showCardForSelectedContactAtIndexPath:(id)path;
- (void)startHandlingEmergencyContacts;
- (void)startSearchingForString:(id)string setSearchBarAsFirstResponder:(BOOL)responder;
- (void)suggestionsController:(id)controller didChangeToHeight:(double)height;
- (void)suggestionsController:(id)controller didDeselectContact:(id)contact;
- (void)suggestionsController:(id)controller didSelectContact:(id)contact;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAdditionalSectionsAtTop;
- (void)updateBarButtonItems;
- (void)updateDataSourceAndCollectionViewForDuplicatesBanner;
- (void)updateDataSourceAndCollectionViewForLimitedAccessTip;
- (void)updateDuplicatesBannerForProcessingState;
- (void)updateDuplicatesCountBanner;
- (void)updateInResponseToLimitedAccessSelectionChanged;
- (void)updateIsViewingTopLevelAllContacts;
- (void)updateMeContactBannerContentsWithTopKeyline:(BOOL)keyline;
- (void)updateMeContactBannerTopKeyline;
- (void)updateNavTitleWithCount:(unint64_t)count;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateSelectAllButtonTitle;
- (void)updateSelectedContactCount;
- (void)updatelimitedAccessContactSelection;
- (void)vCardImportController:(id)controller didSaveContacts:(id)contacts;
- (void)vCardImportController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willDismissSearchController:(id)controller;
- (void)willMoveToParentViewController:(id)controller;
- (void)willPerformDuplicatesMergeAll:(id)all;
- (void)willPresentSearchController:(id)controller;
@end

@implementation CNContactListViewController

- (void)setupContactListForMultiSelectContextMenus
{
  if ([(CNContactListViewController *)self isViewLoaded])
  {
    if ([(CNContactListViewController *)self shouldEnableMultiSelectContextMenus])
    {
      isHandlingSearch = [(CNContactListViewController *)self isHandlingSearch];
      collectionView = [(CNContactListViewController *)self collectionView];
      allowsMultipleSelection = [collectionView allowsMultipleSelection];

      if (isHandlingSearch == allowsMultipleSelection)
      {
        collectionView2 = [(CNContactListViewController *)self collectionView];
        [collectionView2 setAllowsMultipleSelection:isHandlingSearch ^ 1u];
      }
    }
  }
}

- (void)refreshDuplicates
{
  if ([(CNContactListViewController *)self canManageDuplicateContacts]&& !self->_isDuplicatesLaunching)
  {
    if (self->_duplicatesController)
    {
      duplicatesController = [(CNContactListViewController *)self duplicatesController];
      [duplicatesController resetDuplicates];

      duplicatesController2 = [(CNContactListViewController *)self duplicatesController];
      [duplicatesController2 findDuplicates];
    }

    else
    {

      [(CNContactListViewController *)self initializeDuplicateContacts];
    }
  }
}

- (BOOL)canManageDuplicateContacts
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:16];

  if (!v5 || [(CNContactListViewController *)self shouldHideDuplicates]|| ![(CNContactListViewController *)self bundleCanManageDuplicates])
  {
    return 0;
  }

  return [(CNContactListViewController *)self isViewingTopLevelAllContacts];
}

- (BOOL)bundleCanManageDuplicates
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v4 = [featureFlags isFeatureEnabled:16];

  if (!v4)
  {
    return 0;
  }

  if (bundleCanManageDuplicates_cn_once_token_22 != -1)
  {
    dispatch_once(&bundleCanManageDuplicates_cn_once_token_22, &__block_literal_global_679);
  }

  v5 = bundleCanManageDuplicates_cn_once_object_22;

  return [v5 BOOLValue];
}

void __56__CNContactListViewController_bundleCanManageDuplicates__block_invoke()
{
  v0 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v4 bundleIdentifier];
  v2 = [v0 numberWithBool:{objc_msgSend(&unk_1F0D4B970, "containsObject:", v1)}];
  v3 = bundleCanManageDuplicates_cn_once_object_22;
  bundleCanManageDuplicates_cn_once_object_22 = v2;
}

- (void)refreshTableViewHeaderIfVisible
{
  if ([(CNContactListViewController *)self isViewLoaded])
  {
    view = [(CNContactListViewController *)self view];
    window = [view window];

    if (window)
    {
      view2 = [(CNContactListViewController *)self view];
      [view2 bounds];
      [(CNContactListViewController *)self refreshTableViewHeaderIfVisibleWithSize:v5, v6];
    }
  }
}

- (CNContactDataSource)dataSource
{
  if ([(CNContactListViewController *)self isSearching])
  {
    searchResultsController = [(CNContactListViewController *)self searchResultsController];
    dataSource = [searchResultsController dataSource];
  }

  else
  {
    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (void)loadView
{
  createCollectionView = [(CNContactListViewController *)self createCollectionView];
  [createCollectionView setDataSource:self];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      [createCollectionView _setSectionHeaderFooterPadding:8.0];
    }
  }

  else
  {
  }

  [createCollectionView setKeyboardDismissMode:1];
  [createCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNContactListCellIdentifier"];
  [createCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNLimitedAccessContactListCellIdentifier"];
  [createCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNSearchListCellIdentifier"];
  [createCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNContactListDuplicatesBannerIdentifier"];
  [createCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNContactListAddNewContactCellIdentifier"];
  [createCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNContactListContentUnavailableCellIdentifier"];
  [createCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNContactListLimitedAccessTipIdentifier"];
  [createCollectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"CNContactListSectionHeaderFooterIdentifier"];
  [createCollectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"CNContactListLayoutHeaderIdentifier" withReuseIdentifier:@"CNContactListHeaderViewIdentifier"];
  [createCollectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"CNContactListLayoutFooterIdentifier" withReuseIdentifier:@"CNContactListCountFooterViewIdentifier"];
  [(CNContactListViewController *)self setCollectionView:createCollectionView];
  [(CNContactListViewController *)self _updateCountStringNow:0];
  [(CNContactListViewController *)self updateIsViewingTopLevelAllContacts];
  [(CNContactListViewController *)self refreshTableViewHeader];
}

- (id)createCollectionView
{
  isHandlingSearch = [(CNContactListViewController *)self isHandlingSearch];
  objc_initWeak(location, self);
  v4 = [CNContactListCollectionView alloc];
  v5 = objc_opt_class();
  contactListStyleApplier = [(CNContactListViewController *)self contactListStyleApplier];
  trailingSwipeActionsConfigurationProvider = [(CNContactListViewController *)self trailingSwipeActionsConfigurationProvider];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __51__CNContactListViewController_createCollectionView__block_invoke;
  v23[3] = &unk_1E74E36D0;
  objc_copyWeak(&v24, location);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__CNContactListViewController_createCollectionView__block_invoke_2;
  v21[3] = &unk_1E74E36D0;
  objc_copyWeak(&v22, location);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__CNContactListViewController_createCollectionView__block_invoke_3;
  v19[3] = &unk_1E74E36F8;
  objc_copyWeak(&v20, location);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__CNContactListViewController_createCollectionView__block_invoke_4;
  v17[3] = &unk_1E74E3720;
  objc_copyWeak(&v18, location);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__CNContactListViewController_createCollectionView__block_invoke_5;
  v15[3] = &unk_1E74E3748;
  objc_copyWeak(&v16, location);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__CNContactListViewController_createCollectionView__block_invoke_6;
  v13[3] = &unk_1E74E3770;
  objc_copyWeak(&v14, location);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__CNContactListViewController_createCollectionView__block_invoke_7;
  v11[3] = &unk_1E74E3798;
  objc_copyWeak(&v12, location);
  v8 = [v5 collectionViewLayoutWithFloatingHeaderViews:!isHandlingSearch contactListStyleApplier:contactListStyleApplier trailingSwipeActionsProvider:trailingSwipeActionsConfigurationProvider shouldDisplaySupplementaryHeaderItemForSection:v23 shouldShowSeparatorsForSection:v21 directionalLayoutMargins:v19 collectionViewIsShowingIndexBar:v17 numberOfItemsInSection:v15 contentUnavailable:v13 collectionViewIsSelectingIndexPath:v11];
  v9 = [(CNContactListCollectionView *)v4 initWithFrame:v8 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(CNContactListCollectionView *)v9 setDragDelegate:self];
  [(CNContactListCollectionView *)v9 setDropDelegate:self];
  [(CNContactListCollectionView *)v9 setSelectionFollowsFocus:1];
  [(CNContactListCollectionView *)v9 setCountViewDelegate:self];
  [(CNContactListCollectionView *)v9 setContactListCollectionViewDelegate:self];
  [(CNContactListCollectionView *)v9 _setAllowsVisibleCellUpdatesDuringUpdateAnimations:1];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(location);

  return v9;
}

- (id)trailingSwipeActionsConfigurationProvider
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CNContactListViewController_trailingSwipeActionsConfigurationProvider__block_invoke;
  v5[3] = &unk_1E74E37C0;
  objc_copyWeak(&v6, &location);
  v2 = _Block_copy(v5);
  v3 = _Block_copy(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)updateIsViewingTopLevelAllContacts
{
  if ([(CNContactListViewController *)self isHandlingSearch])
  {
    self->_isViewingTopLevelAllContacts = 0;
  }

  else
  {
    objc_opt_class();
    dataSource = [(CNContactListViewController *)self dataSource];
    if (objc_opt_isKindOfClass())
    {
      v4 = dataSource;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if (v5)
    {
      if ([(CNContactListViewController *)self isShowingAllContacts])
      {
        self->_isViewingTopLevelAllContacts = 1;
      }

      else
      {
        contactStore = [(CNContactListViewController *)self contactStore];
        v11 = 0;
        v7 = [contactStore containersMatchingPredicate:0 error:&v11];

        if ((*(*MEMORY[0x1E6996530] + 16))())
        {
          self->_isViewingTopLevelAllContacts = 1;
        }

        else
        {
          filter = [v5 filter];
          containerIdentifiers = [filter containerIdentifiers];
          v10 = [containerIdentifiers count];
          self->_isViewingTopLevelAllContacts = v10 == [v7 count];
        }
      }
    }

    else
    {
      self->_isViewingTopLevelAllContacts = 0;
    }
  }
}

- (BOOL)isShowingAllContacts
{
  objc_opt_class();
  dataSource = [(CNContactListViewController *)self dataSource];
  filter = [dataSource filter];
  if (objc_opt_isKindOfClass())
  {
    v5 = filter;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    showsEverything = [v6 showsEverything];
  }

  else
  {
    showsEverything = 0;
  }

  return showsEverything;
}

- (void)refreshTableViewHeader
{
  v24 = *MEMORY[0x1E69E9840];
  view = [(CNContactListViewController *)self view];
  [view bounds];
  if (v4 <= 0.0)
  {
  }

  else
  {
    view2 = [(CNContactListViewController *)self view];
    [view2 bounds];
    v7 = v6;

    if (v7 > 0.0)
    {
      view3 = [(CNContactListViewController *)self view];
      [view3 bounds];
      [(CNContactListViewController *)self refreshTableViewHeaderWithSize:v8, v9];

      return;
    }
  }

  v10 = CNUILogContactList();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    view4 = [(CNContactListViewController *)self view];
    [view4 bounds];
    v16 = v15;
    view5 = [(CNContactListViewController *)self view];
    [view5 bounds];
    *buf = 134218240;
    v21 = v16;
    v22 = 2048;
    v23 = v18;
    _os_log_debug_impl(&dword_199A75000, v10, OS_LOG_TYPE_DEBUG, "Attempted to refresh list header view when superview has width or height of 0.0 (%.2f x %.2f), skipping refresh", buf, 0x16u);
  }

  listHeaderView = [(CNContactListViewController *)self listHeaderView];

  if (!listHeaderView)
  {
    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNContactListViewController *)self setListHeaderView:v13];
  }
}

- (BOOL)shouldDisplayMeContactBanner
{
  if ([(CNContactListViewController *)self isAcceptedIntroductionsDataSource]|| !self->_shouldDisplayMeContactBanner)
  {
    return 0;
  }

  preferredForNameMeContact = [(CNContactListViewController *)self preferredForNameMeContact];

  if (preferredForNameMeContact)
  {
    return 1;
  }

  meContactBannerFootnoteLabel = [(CNContactListViewController *)self meContactBannerFootnoteLabel];
  if (meContactBannerFootnoteLabel)
  {
    v4 = 1;
  }

  else
  {
    meContactBannerFootnoteValue = [(CNContactListViewController *)self meContactBannerFootnoteValue];
    v4 = meContactBannerFootnoteValue != 0;
  }

  return v4;
}

+ (id)descriptorForRequiredKeysForPreferredForNameMeContact
{
  if (descriptorForRequiredKeysForPreferredForNameMeContact_cn_once_token_9 != -1)
  {
    dispatch_once(&descriptorForRequiredKeysForPreferredForNameMeContact_cn_once_token_9, &__block_literal_global_603);
  }

  v3 = descriptorForRequiredKeysForPreferredForNameMeContact_cn_once_object_9;

  return v3;
}

- (BOOL)shouldDisplayTipContentView
{
  tipKitContentView = [(CNContactListViewController *)self tipKitContentView];
  v3 = tipKitContentView;
  if (tipKitContentView)
  {
    superview = [tipKitContentView superview];
    v5 = superview == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CNContact)preferredForNameMeContact
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!self->_preferredForNameMeContact && (objc_opt_respondsToSelector() & 1) != 0)
  {
    dataSource = self->_dataSource;
    descriptorForRequiredKeysForPreferredForNameMeContact = [objc_opt_class() descriptorForRequiredKeysForPreferredForNameMeContact];
    v10[0] = descriptorForRequiredKeysForPreferredForNameMeContact;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v6 = [(CNContactDataSource *)dataSource preferredForNameMeContactWithKeysToFetch:v5];
    preferredForNameMeContact = self->_preferredForNameMeContact;
    self->_preferredForNameMeContact = v6;
  }

  v8 = self->_preferredForNameMeContact;

  return v8;
}

void __84__CNContactListViewController_descriptorForRequiredKeysForPreferredForNameMeContact__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = [CNAvatarViewController descriptorForRequiredKeysWithThreeDTouchEnabled:0];
  v7[0] = v1;
  v2 = +[CNContactListBannerView descriptorForRequiredKeys];
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactListViewController descriptorForRequiredKeysForPreferredForNameMeContact]_block_invoke"];
  v5 = [v0 descriptorWithKeyDescriptors:v3 description:v4];
  v6 = descriptorForRequiredKeysForPreferredForNameMeContact_cn_once_object_9;
  descriptorForRequiredKeysForPreferredForNameMeContact_cn_once_object_9 = v5;
}

- (id)tipKitContentView
{
  v2 = +[_TtC10ContactsUI12CNTipsHelper shared];
  currentTipView = [v2 currentTipView];

  return currentTipView;
}

- (void)setupMeBannerAvatarController
{
  meBannerAvatarController = [(CNContactListViewController *)self meBannerAvatarController];

  if (!meBannerAvatarController)
  {
    contactStore = [(CNContactListViewController *)self contactStore];
    mainContactStore = [contactStore mainContactStore];

    v5 = objc_alloc(MEMORY[0x1E6996BB0]);
    environment = [(CNContactListViewController *)self environment];
    defaultSchedulerProvider = [environment defaultSchedulerProvider];
    v8 = [v5 initWithContactStore:mainContactStore schedulerProvider:defaultSchedulerProvider];

    [v8 setProhibitedSources:8];
    environment2 = [(CNContactListViewController *)self environment];
    defaultSchedulerProvider2 = [environment2 defaultSchedulerProvider];

    v11 = [MEMORY[0x1E6996B90] rendererWithLikenessResolver:v8 schedulerProvider:defaultSchedulerProvider2];
    v12 = [CNAvatarViewControllerSettings settingsWithLikenessResolver:v8 likenessRenderer:v11 contactStore:mainContactStore threeDTouchEnabled:0 schedulerProvider:defaultSchedulerProvider2 backgroundStyle:0];
    v13 = [[CNAvatarViewController alloc] initWithSettings:v12];
    [(CNContactListViewController *)self setMeBannerAvatarController:v13];

    meBannerAvatarController2 = [(CNContactListViewController *)self meBannerAvatarController];
    [meBannerAvatarController2 setObjectViewControllerDelegate:self];

    meBannerAvatarController3 = [(CNContactListViewController *)self meBannerAvatarController];
    [meBannerAvatarController3 setDelegate:self];
  }
}

- (CNContactStore)contactStore
{
  if (objc_opt_respondsToSelector())
  {
    store = [(CNContactDataSource *)self->_dataSource store];
  }

  else
  {
    environment = [(CNContactListViewController *)self environment];
    store = [environment inProcessContactStore];
  }

  return store;
}

- (BOOL)shouldDisplayListHeaderView
{
  shouldDisplayMeContactBanner = [(CNContactListViewController *)self shouldDisplayMeContactBanner];
  shouldDisplaySuggestionsController = [(CNContactListViewController *)self shouldDisplaySuggestionsController];
  if ([(CNContactListViewController *)self isSearchController])
  {
    v5 = 0;
  }

  else
  {
    if ([(CNContactListViewController *)self shouldDisplayTipContentView]&& ![(CNContactListViewController *)self isSearching])
    {
      v7 = 1;
      return v7 & 1;
    }

    tipKitContentView = [(CNContactListViewController *)self tipKitContentView];
    v5 = tipKitContentView != 0;
  }

  v7 = shouldDisplayMeContactBanner || v5 || shouldDisplaySuggestionsController;
  return v7 & 1;
}

- (CNContactListBannerView)meContactBanner
{
  meContactBanner = self->_meContactBanner;
  if (!meContactBanner)
  {
    v4 = objc_alloc_init(CNContactListBannerView);
    v5 = self->_meContactBanner;
    self->_meContactBanner = v4;

    [(CNContactListBannerView *)self->_meContactBanner setDelegate:self];
    meContactBanner = self->_meContactBanner;
  }

  return meContactBanner;
}

- (void)updateMeContactBannerTopKeyline
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if ((v5 & 1) == 0)
  {
    view = [(CNContactListViewController *)self view];
    [view layoutMargins];
    v8 = v7;
    view2 = [(CNContactListViewController *)self view];
    [view2 safeAreaInsets];
    v11 = v8 - v10;

    meContactBanner = [(CNContactListViewController *)self meContactBanner];
    view3 = [(CNContactListViewController *)self view];
    [view3 frame];
    v14 = v13;
    view4 = [(CNContactListViewController *)self view];
    [view4 layoutMargins];
    v17 = v16;
    view5 = [(CNContactListViewController *)self view];
    [view5 layoutMargins];
    [meContactBanner setTopSeparatorWithInset:v11 andLength:v14 - (v17 + v19)];
  }
}

- (void)viewDidLoad
{
  v68[3] = *MEMORY[0x1E69E9840];
  v66.receiver = self;
  v66.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v66 viewDidLoad];
  view = [(CNContactListViewController *)self view];
  [view setAccessibilityIdentifier:@"ContactsListView"];

  if ([(CNContactListViewController *)self presentsSearchUI])
  {
    v4 = [(CNContactDataSource *)self->_dataSource copyWithZone:0];
    if (objc_opt_respondsToSelector())
    {
      [v4 reset];
    }

    v5 = [CNContactListViewSearchController alloc];
    environment = [(CNContactListViewController *)self environment];
    v7 = [(CNContactListViewController *)v5 initWithDataSource:v4 searchable:0 environment:environment shouldUseLargeTitle:0];
    [(CNContactListViewController *)self setSearchResultsController:v7];

    limitedAccessPickerType = [(CNContactListViewController *)self limitedAccessPickerType];
    searchResultsController = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController setLimitedAccessPickerType:limitedAccessPickerType];

    limitedAccessContactCaption = [(CNContactListViewController *)self limitedAccessContactCaption];
    searchResultsController2 = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController2 setLimitedAccessContactCaption:limitedAccessContactCaption];

    disableContextMenus = [(CNContactListViewController *)self disableContextMenus];
    searchResultsController3 = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController3 setDisableContextMenus:disableContextMenus];

    shouldAllowDrags = [(CNContactListViewController *)self shouldAllowDrags];
    searchResultsController4 = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController4 setShouldAllowDrags:shouldAllowDrags];

    searchResultsController5 = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController5 setShouldAllowDrops:0];

    searchResultsController6 = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController6 setShouldDisplayCount:0];

    contactFormatter = [(CNContactListViewController *)self contactFormatter];
    searchResultsController7 = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController7 setContactFormatter:contactFormatter];

    delegate = [(CNContactListViewController *)self delegate];
    searchResultsController8 = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController8 setDelegate:delegate];

    searchResultsController9 = [(CNContactListViewController *)self searchResultsController];
    searchResultsController10 = [(CNContactListViewController *)self searchResultsController];
    dataSource = [searchResultsController10 dataSource];
    [dataSource setDelegate:searchResultsController9];

    contactListStyleApplier = [(CNContactListViewController *)self contactListStyleApplier];
    searchResultsController11 = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController11 setContactListStyleApplier:contactListStyleApplier];

    allowsMultiSelectContextMenus = [(CNContactListViewController *)self allowsMultiSelectContextMenus];
    searchResultsController12 = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController12 setAllowsMultiSelectContextMenus:allowsMultiSelectContextMenus];

    searchResultsController13 = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController13 setShouldHideDuplicates:1];

    v30 = [CNContactListSearchController alloc];
    searchResultsController14 = [(CNContactListViewController *)self searchResultsController];
    v32 = [(CNContactListSearchController *)v30 initWithSearchResultsController:searchResultsController14];

    [(CNContactListSearchController *)v32 setSearchResultsUpdater:self];
    [(CNContactListSearchController *)v32 setRestorationIdentifier:@"UISearchControllerRestorationIdentifier"];
    [(CNContactListSearchController *)v32 setDelegate:self];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    searchBar = [(CNContactListSearchController *)v32 searchBar];
    [searchBar setTintColor:linkColor];

    [(CNContactListViewController *)self setSearchController:v32];
    navigationItem = [(CNContactListViewController *)self navigationItem];
    [navigationItem setSearchController:v32];

    navigationItem2 = [(CNContactListViewController *)self navigationItem];
    [navigationItem2 setHidesSearchBarWhenScrolling:0];

    if ([(CNContactListViewController *)self hasPickerPrivacyUI])
    {
      [(CNContactListViewController *)self setShouldShowLimitedAccessTip:[CNPrivateAccessAggregator shouldShowPickerTipForBundleIdentifier:self->_limitedAccessAppBundleId]];
      shouldShowLimitedAccessTip = [(CNContactListViewController *)self shouldShowLimitedAccessTip];
      v38 = [CNContactListPrivacyTitleView alloc];
      navigationItem3 = [(CNContactListViewController *)self navigationItem];
      title = [navigationItem3 title];
      v41 = [(CNContactListPrivacyTitleView *)v38 initWithTitle:title hasIcon:!shouldShowLimitedAccessTip];

      navigationItem4 = [(CNContactListViewController *)self navigationItem];
      [navigationItem4 setTitleView:v41];
    }

    navigationItem5 = [(CNContactListViewController *)self navigationItem];
    [navigationItem5 setPreferredSearchBarPlacement:2];

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v46 = [featureFlags isFeatureEnabled:27];

    if (v46)
    {
      navigationItem6 = [(CNContactListViewController *)self navigationItem];
      [navigationItem6 setBackButtonDisplayMode:2];
    }

    [(CNContactListViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
    searchBar2 = [(CNContactListSearchController *)v32 searchBar];
    v49 = CNContactsUIBundle();
    v50 = [v49 localizedStringForKey:@"SEARCH_LOCAL_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
    [searchBar2 setPlaceholder:v50];

    [searchBar2 setAutoresizingMask:2];
    [searchBar2 setAutocorrectionType:1];
    [searchBar2 setDelegate:self];
    [searchBar2 _setOverrideInlineInactiveWidth:150.0];
    [(CNContactListViewController *)self setSearchBar:searchBar2];
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    if ([featureFlags2 isFeatureEnabled:29])
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
LABEL_14:
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v60 = *MEMORY[0x1E69DE5C8];
        searchField = [searchBar2 searchField];
        [defaultCenter addObserver:self selector:sel__searchBarDidEndEditing_ name:v60 object:searchField];

        goto LABEL_15;
      }

      v55 = CNUIIsContacts();
      _inlineToolbarSearchBarItem = [(CNContactListSearchController *)v32 _inlineToolbarSearchBarItem];
      currentEnvironment2 = _inlineToolbarSearchBarItem;
      if (v55)
      {
        v68[0] = _inlineToolbarSearchBarItem;
        featureFlags2 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
        v68[1] = featureFlags2;
        addButton = [(CNContactListViewController *)self addButton];
        v68[2] = addButton;
        v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
        [(CNContactListViewController *)self setToolbarItems:v58];
      }

      else
      {
        v67 = _inlineToolbarSearchBarItem;
        featureFlags2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
        [(CNContactListViewController *)self setToolbarItems:featureFlags2];
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  if ([(CNContactListViewController *)self shouldAllowDrags])
  {
    collectionView = [(CNContactListViewController *)self collectionView];
    [collectionView setDragSourceDelegate:self];
  }

  if ([(CNContactListViewController *)self shouldAllowDrops])
  {
    collectionView2 = [(CNContactListViewController *)self collectionView];
    [collectionView2 setDragDestinationDelegate:self];
  }

  v64 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_dismissKeyboard];
  [v64 setCancelsTouchesInView:0];
  collectionView3 = [(CNContactListViewController *)self collectionView];
  [collectionView3 addGestureRecognizer:v64];
}

- (CNContactListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)additionalSectionsAtTopCount
{
  if ([(CNContactListViewController *)self isDisplayingContentUnavailableViewAsCell])
  {
    return 1;
  }

  isShowingDuplicatesBanner = [(CNContactListViewController *)self isShowingDuplicatesBanner];
  shouldDisplayCreateNewContactAsRow = [(CNContactListViewController *)self shouldDisplayCreateNewContactAsRow];
  return shouldDisplayCreateNewContactAsRow + isShowingDuplicatesBanner + [(CNContactListViewController *)self isShowingLimitedAccessTip];
}

- (BOOL)isDisplayingContentUnavailableViewAsCell
{
  cellContentUnavailableConfiguration = [(CNContactListViewController *)self cellContentUnavailableConfiguration];
  v3 = cellContentUnavailableConfiguration != 0;

  return v3;
}

- (BOOL)shouldDisplayCreateNewContactAsRow
{
  collectionViewShouldDisplayCreateNewContact = [(CNContactListViewController *)self collectionViewShouldDisplayCreateNewContact];
  if (collectionViewShouldDisplayCreateNewContact)
  {
    LOBYTE(collectionViewShouldDisplayCreateNewContact) = ![(CNContactListViewController *)self hasNoContacts];
  }

  return collectionViewShouldDisplayCreateNewContact;
}

- (BOOL)collectionViewShouldDisplayCreateNewContact
{
  shouldDisplayAddNewContactRow = [(CNContactListViewController *)self shouldDisplayAddNewContactRow];
  if (shouldDisplayAddNewContactRow)
  {

    LOBYTE(shouldDisplayAddNewContactRow) = [(CNContactListViewController *)self isViewingTopLevelAllContacts];
  }

  return shouldDisplayAddNewContactRow;
}

- (BOOL)isShowingLimitedAccessTip
{
  if ([(CNContactListViewController *)self hasNoContacts])
  {
    return 0;
  }

  return [(CNContactListViewController *)self shouldShowLimitedAccessTip];
}

- (BOOL)hasNoContacts
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(CNContactDataSource *)self->_dataSource isLoading]& 1) != 0)
  {
    return 0;
  }

  contacts = [(CNContactDataSource *)self->_dataSource contacts];
  v3 = [contacts count] == 0;

  return v3;
}

- (int64_t)numberOfSections
{
  v3 = *MEMORY[0x1E6996530];
  _sections = [(CNContactListViewController *)self _sections];
  if ((*(v3 + 16))(v3, _sections))
  {
    v5 = 1;
  }

  else
  {
    _sections2 = [(CNContactListViewController *)self _sections];
    v5 = [_sections2 count];
  }

  return [(CNContactListViewController *)self additionalSectionsAtTopCount]+ v5;
}

- (void)adjustTableViewOffsetForIncomingSearchUI
{
  collectionView = [(CNContactListViewController *)self collectionView];
  [collectionView contentOffset];
  v5 = v4;

  if (v5 == 0.0)
  {
    v6 = *MEMORY[0x1E6996530];
    collectionView2 = [(CNContactListViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView2 indexPathsForSelectedItems];
    if ((*(v6 + 16))(v6, indexPathsForSelectedItems))
    {
      didDeleteContact = [(CNContactListViewController *)self didDeleteContact];

      if (!didDeleteContact)
      {
        return;
      }
    }

    else
    {
    }

    if ([(CNContactListViewController *)self presentsSearchUI])
    {
      if ([(CNContactListViewController *)self isMovingToParentViewController])
      {
        searchController = [(CNContactListViewController *)self searchController];
        if (searchController)
        {
          v11 = searchController;
          searchController2 = [(CNContactListViewController *)self searchController];
          searchBar = [searchController2 searchBar];

          if (searchBar)
          {
            collectionView3 = [(CNContactListViewController *)self collectionView];
            [collectionView3 contentOffset];
            v16 = v15;

            navigationController = [(CNContactListViewController *)self navigationController];
            navigationBar = [navigationController navigationBar];
            [navigationBar bounds];
            v20 = v19;

            collectionView4 = [(CNContactListViewController *)self collectionView];
            [collectionView4 setContentOffset:{v16, v20}];
          }
        }
      }
    }
  }
}

- (void)tipKitStartObservation
{
  v3 = +[_TtC10ContactsUI12CNTipsHelper shared];
  [v3 tipKitStartObservation:self];
}

- (void)applyStyle
{
  contactListStyleApplier = [(CNContactListViewController *)self contactListStyleApplier];
  searchBar = [(CNContactListViewController *)self searchBar];
  [contactListStyleApplier applyContactListStyleToSearchBar:searchBar];

  contactListStyleApplier2 = [(CNContactListViewController *)self contactListStyleApplier];
  navigationController = [(CNContactListViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [contactListStyleApplier2 applyContactListStyleToNavigationBar:navigationBar];

  contactListStyleApplier3 = [(CNContactListViewController *)self contactListStyleApplier];
  collectionView = [(CNContactListViewController *)self collectionView];
  [contactListStyleApplier3 applyContactListStyleToCollectionView:collectionView];

  [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
  contactListStyleApplier4 = [(CNContactListViewController *)self contactListStyleApplier];
  meContactBanner = [(CNContactListViewController *)self meContactBanner];
  [meContactBanner setContactListStyleApplier:contactListStyleApplier4];

  if ([(CNContactListViewController *)self isHandlingSearch])
  {
    contactListStyleApplier5 = [(CNContactListViewController *)self contactListStyleApplier];
    searchResultsController = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController setContactListStyleApplier:contactListStyleApplier5];
  }

  if ([(CNContactListViewController *)self isViewLoaded])
  {
    collectionView2 = [(CNContactListViewController *)self collectionView];
    window = [collectionView2 window];

    if (window)
    {
      v16 = *MEMORY[0x1E6996530];
      collectionView3 = [(CNContactListViewController *)self collectionView];
      indexPathsForVisibleItems = [collectionView3 indexPathsForVisibleItems];
      if ((*(v16 + 16))(v16, indexPathsForVisibleItems))
      {
      }

      else
      {
        collectionView4 = [(CNContactListViewController *)self collectionView];
        window2 = [collectionView4 window];

        if (window2)
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __41__CNContactListViewController_applyStyle__block_invoke;
          v21[3] = &unk_1E74E6A88;
          v21[4] = self;
          [MEMORY[0x1E69DD250] performWithoutAnimation:v21];
        }
      }
    }
  }
}

- (id)_contentUnavailableConfigurationState
{
  v6.receiver = self;
  v6.super_class = CNContactListViewController;
  _contentUnavailableConfigurationState = [(CNContactListViewController *)&v6 _contentUnavailableConfigurationState];
  filteredSearchString = [(CNContactListViewController *)self filteredSearchString];
  [_contentUnavailableConfigurationState setSearchControllerText:filteredSearchString];

  return _contentUnavailableConfigurationState;
}

- (id)filteredSearchString
{
  objc_opt_class();
  dataSource = [(CNContactListViewController *)self dataSource];
  filter = [dataSource filter];
  if (objc_opt_isKindOfClass())
  {
    v5 = filter;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    fullTextString = [v6 fullTextString];
  }

  else
  {
    fullTextString = 0;
  }

  return fullTextString;
}

- (BOOL)shouldEmbedContentUnavailableViewInCell
{
  listHeaderView = [(CNContactListViewController *)self listHeaderView];
  [listHeaderView frame];
  IsEmpty = CGRectIsEmpty(v5);

  return !IsEmpty;
}

double __51__CNContactListViewController_createCollectionView__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained contentUnavailableCellHeight];
  v3 = v2;

  return v3;
}

- (double)contentUnavailableCellHeight
{
  isDisplayingContentUnavailableViewAsCell = [(CNContactListViewController *)self isDisplayingContentUnavailableViewAsCell];
  result = 0.0;
  if (isDisplayingContentUnavailableViewAsCell)
  {
    collectionView = [(CNContactListViewController *)self collectionView];
    [collectionView frame];
    Height = CGRectGetHeight(v14);

    [(CNContactListViewController *)self contactListHeaderHeight];
    v8 = v7;
    collectionView2 = [(CNContactListViewController *)self collectionView];
    [collectionView2 directionalLayoutMargins];
    v11 = v10;
    v13 = v12;

    return Height - v8 - v11 - v13;
  }

  return result;
}

double __51__CNContactListViewController_createCollectionView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isViewLoaded])
  {
    v2 = [WeakRetained view];
    [v2 directionalLayoutMargins];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E69DC5C0];
  }

  return v4;
}

uint64_t __51__CNContactListViewController_createCollectionView__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained collectionViewIsShowingIndexBar];

  return v2;
}

- (BOOL)collectionViewIsShowingIndexBar
{
  if ([(CNContactListViewController *)self isHandlingSearch])
  {
    return 0;
  }

  sections = [(CNContactDataSource *)self->_dataSource sections];
  v3 = [sections count] > 1;

  return v3;
}

uint64_t __51__CNContactListViewController_createCollectionView__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained shouldDisplaySupplementaryHeaderItemForSection:a2];

  return v4;
}

- (BOOL)shouldEnableMultiSelectContextMenus
{
  if ([(CNContactListViewController *)self allowsMultiSelectContextMenus])
  {
    collectionView = [(CNContactListViewController *)self collectionView];
    v4 = [collectionView isEditing] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

uint64_t __51__CNContactListViewController_createCollectionView__block_invoke_5(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained collectionView];
  v5 = [v4 numberOfItemsInSection:a2];

  return v5;
}

uint64_t __51__CNContactListViewController_createCollectionView__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isDuplicatesRowSection:a2] && (objc_msgSend(WeakRetained, "duplicatesController"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "wantsToDisplayNewDuplicatesBanner:", 3), v4, v5))
  {
    v6 = [WeakRetained duplicatesController];
    if ([v6 isPerformingMerge])
    {
      v7 = 1;
    }

    else
    {
      v8 = [WeakRetained duplicatesController];
      v7 = [v8 isInMergeCooldown:3];
    }
  }

  else if ([WeakRetained isContentUnavailableRowSection:a2])
  {
    v7 = 0;
  }

  else
  {
    v7 = [WeakRetained isLimitedAccessTipRowSection:a2] ^ 1;
  }

  return v7;
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v7 viewDidLayoutSubviews];
  pendingLayoutBlocks = [(CNContactListViewController *)self pendingLayoutBlocks];
  [pendingLayoutBlocks enumerateObjectsUsingBlock:&__block_literal_global_460];

  [(CNContactListViewController *)self setPendingLayoutBlocks:MEMORY[0x1E695E0F0]];
  if ([(CNContactListViewController *)self pendingSearchControllerActivation])
  {
    searchController = [(CNContactListViewController *)self searchController];
    [searchController setActive:1];

    [(CNContactListViewController *)self setPendingSearchControllerActivation:0];
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
  }

  else
  {
    meContactBanner = [(CNContactListViewController *)self meContactBanner];

    if (meContactBanner)
    {
      [(CNContactListViewController *)self updateMeContactBannerTopKeyline];
    }
  }

  [(CNContactListViewController *)self layoutSelectButtonView];
}

- (void)layoutSelectButtonView
{
  collectionView = [(CNContactListViewController *)self collectionView];
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{-[CNContactListViewController additionalSectionsAtTopCount](self, "additionalSectionsAtTopCount")}];
  v38 = [collectionView layoutAttributesForItemAtIndexPath:v4];

  searchBar = [(CNContactListViewController *)self searchBar];
  [v38 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view = [(CNContactListViewController *)self view];
  [searchBar convertRect:view toView:{v7, v9, v11, v13}];
  v16 = v15;

  collectionView2 = [(CNContactListViewController *)self collectionView];
  [collectionView2 frame];
  v19 = v18;
  collectionView3 = [(CNContactListViewController *)self collectionView];
  [collectionView3 layoutMargins];
  v22 = v19 - v21;
  selectButton = [(CNContactListViewController *)self selectButton];
  [selectButton bounds];
  v25 = v22 - v24 + -20.0;

  searchBar2 = [(CNContactListViewController *)self searchBar];
  [searchBar2 bounds];
  v28 = v16 + v27;
  [(CNContactListViewController *)self selectAllButtonOffsetAccountingForSectionHeaders];
  v30 = v28 + v29;

  selectButton2 = [(CNContactListViewController *)self selectButton];
  [selectButton2 bounds];
  v33 = v32;

  selectButton3 = [(CNContactListViewController *)self selectButton];
  [selectButton3 bounds];
  v36 = v35;

  selectButtonView = [(CNContactListViewController *)self selectButtonView];
  [selectButtonView setFrame:{v25, v30, v36, v33}];
}

- (float)selectAllButtonOffsetAccountingForSectionHeaders
{
  collectionView = [(CNContactListViewController *)self collectionView];
  numberOfSections = [collectionView numberOfSections];
  v5 = [(CNContactListViewController *)self additionalSectionsAtTopCount]+ 1;

  LODWORD(v6) = 8.0;
  if (numberOfSections > v5)
  {
    isShowingLimitedAccessTip = [(CNContactListViewController *)self isShowingLimitedAccessTip];
    LODWORD(v6) = -1036779520;
    if (isShowingLimitedAccessTip)
    {
      *&v6 = -40.0;
    }
  }

  return *&v6;
}

- (void)updateDuplicatesCountBanner
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__CNContactListViewController_updateDuplicatesCountBanner__block_invoke;
  v2[3] = &unk_1E74E67A8;
  v2[4] = self;
  [(CNContactListViewController *)self fetchDuplicatesCountWithCompletionBlock:v2];
}

- (int64_t)allDuplicatesCountToDisplay
{
  if (!self->_duplicatesController || ![(CNContactListViewController *)self canManageDuplicateContacts])
  {
    return 0;
  }

  duplicatesController = self->_duplicatesController;

  return [(CNDuplicateContactsController *)duplicatesController allDuplicatesCount];
}

uint64_t __58__CNContactListViewController_updateDuplicatesCountBanner__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) refreshDuplicatesBanner];
  }

  return result;
}

- (void)startHandlingEmergencyContacts
{
  medicalIDLookupToken = [(CNContactListViewController *)self medicalIDLookupToken];

  if (!medicalIDLookupToken)
  {
    objc_initWeak(&location, self);
    contactStore = [(CNContactListViewController *)self contactStore];
    environment = [(CNContactListViewController *)self environment];
    healthStoreManager = [environment healthStoreManager];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke;
    v16[3] = &unk_1E74E7268;
    objc_copyWeak(&v18, &location);
    v7 = contactStore;
    v17 = v7;
    v8 = [healthStoreManager registerMedicalIDDataHandler:v16];
    [(CNContactListViewController *)self setMedicalIDLookupRegistrationToken:v8];
    v9 = MEMORY[0x1E6996668];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke_5;
    v13[3] = &unk_1E74E77C0;
    v10 = healthStoreManager;
    v14 = v10;
    v11 = v8;
    v15 = v11;
    v12 = [v9 tokenWithCancelationBlock:v13];
    [(CNContactListViewController *)self setMedicalIDLookupToken:v12];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 emergencyContacts];

  v6 = [CNHealthStoreManager identifiersForContactMatchingEmergencyContacts:v5 contactStore:*(a1 + 32)];

  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke_2;
  v9[3] = &unk_1E74E77C0;
  v9[4] = WeakRetained;
  v10 = v7;
  v8 = v7;
  [WeakRetained performWhenViewIsLaidOut:v9];
}

- (CNDuplicateContactsController)duplicatesController
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __51__CNContactListViewController_duplicatesController__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[159];
  if (!v3)
  {
    v4 = [v2 setupDuplicatesController];
    v5 = *(a1 + 32);
    v6 = *(v5 + 1272);
    *(v5 + 1272) = v4;

    v3 = *(*(a1 + 32) + 1272);
  }

  return v3;
}

- (void)dismissKeyboard
{
  splitViewController = [(CNContactListViewController *)self splitViewController];

  if (splitViewController)
  {
    splitViewController2 = [(CNContactListViewController *)self splitViewController];
    view = [splitViewController2 view];
    [view endEditing:1];
  }
}

- (void)updateSelectedContactCount
{
  objc_opt_class();
  collectionView = [(CNContactListViewController *)self collectionView];
  if (objc_opt_isKindOfClass())
  {
    v4 = collectionView;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  v5 = v6;
  if (v6)
  {
    [v6 updateSelectedContactCount];
    [(CNContactListViewController *)self updateInResponseToLimitedAccessSelectionChanged];
    v5 = v6;
  }
}

- (void)updateInResponseToLimitedAccessSelectionChanged
{
  if ([CNLimitedAccessPickerSupport isPickerLimitedAccessWithMultiSelect:[(CNContactListViewController *)self limitedAccessPickerType]])
  {
    limitedAccessContactsFromCurrentSelection = [(CNContactListViewController *)self limitedAccessContactsFromCurrentSelection];
    delegate = [(CNContactListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate didUpdateLimitedAccessSelection:limitedAccessContactsFromCurrentSelection];
    }

    [(CNContactListViewController *)self updateSelectAllButtonTitle];
    -[CNContactListViewController updateNavTitleWithCount:](self, "updateNavTitleWithCount:", [limitedAccessContactsFromCurrentSelection count]);
  }
}

- (void)tipKitStopObservation
{
  v2 = +[_TtC10ContactsUI12CNTipsHelper shared];
  [v2 tipKitStopObservation];
}

- (void)updatelimitedAccessContactSelection
{
  limitedAccessContactsFromCurrentSelection = [(CNContactListViewController *)self limitedAccessContactsFromCurrentSelection];
  [(CNContactListViewController *)self setLimitedAccessContactSelection:limitedAccessContactsFromCurrentSelection];
}

- (id)limitedAccessContactsFromCurrentSelection
{
  v20 = *MEMORY[0x1E69E9840];
  if ([CNLimitedAccessPickerSupport isPickerLimitedAccessWithMultiSelect:[(CNContactListViewController *)self limitedAccessPickerType]])
  {
    limitedAccessContactSelection = [(CNContactListViewController *)self limitedAccessContactSelection];
    v4 = [limitedAccessContactSelection mutableCopy];

    v5 = MEMORY[0x1E695DFA8];
    selectedContacts = [(CNContactListViewController *)self selectedContacts];
    v7 = [selectedContacts _cn_map:&__block_literal_global_698];
    v8 = [v5 setWithArray:v7];

    v9 = MEMORY[0x1E695DFA8];
    contactSelectionOnViewLoad = [(CNContactListViewController *)self contactSelectionOnViewLoad];
    v11 = [v9 setWithSet:contactSelectionOnViewLoad];

    [v11 minusSet:v8];
    v12 = [MEMORY[0x1E695DFA8] setWithSet:v8];
    contactSelectionOnViewLoad2 = [(CNContactListViewController *)self contactSelectionOnViewLoad];
    [v12 minusSet:contactSelectionOnViewLoad2];

    v14 = CNUILogContactList();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134217984;
      v19 = [v11 count];
      _os_log_debug_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEBUG, "Limited picker: %lu contacts deselected since table load", &v18, 0xCu);
    }

    [v4 minusSet:v11];
    v15 = CNUILogContactList();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v12 count];
      v18 = 134217984;
      v19 = v17;
      _os_log_debug_impl(&dword_199A75000, v15, OS_LOG_TYPE_DEBUG, "Limited picker: %lu contacts selected since table load", &v18, 0xCu);
    }

    [v4 unionSet:v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)emptyContact
{
  if (emptyContact_cn_once_token_13 != -1)
  {
    dispatch_once(&emptyContact_cn_once_token_13, &__block_literal_global_619);
  }

  v3 = emptyContact_cn_once_object_13;

  return v3;
}

uint64_t __43__CNContactListViewController_emptyContact__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695CD58]);
  v1 = emptyContact_cn_once_object_13;
  emptyContact_cn_once_object_13 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)collectionViewLayoutWithFloatingHeaderViews:(BOOL)views contactListStyleApplier:(id)applier trailingSwipeActionsProvider:(id)provider shouldDisplaySupplementaryHeaderItemForSection:(id)section shouldShowSeparatorsForSection:(id)forSection directionalLayoutMargins:(id)margins collectionViewIsShowingIndexBar:(id)bar numberOfItemsInSection:(id)self0 contentUnavailable:(id)self1 collectionViewIsSelectingIndexPath:(id)self2
{
  v63[2] = *MEMORY[0x1E69E9840];
  applierCopy = applier;
  providerCopy = provider;
  sectionCopy = section;
  forSectionCopy = forSection;
  marginsCopy = margins;
  barCopy = bar;
  inSectionCopy = inSection;
  unavailableCopy = unavailable;
  pathCopy = path;
  v25 = objc_alloc(MEMORY[0x1E69DC808]);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __340__CNContactListViewController_collectionViewLayoutWithFloatingHeaderViews_contactListStyleApplier_trailingSwipeActionsProvider_shouldDisplaySupplementaryHeaderItemForSection_shouldShowSeparatorsForSection_directionalLayoutMargins_collectionViewIsShowingIndexBar_numberOfItemsInSection_contentUnavailable_collectionViewIsSelectingIndexPath___block_invoke;
  v51[3] = &unk_1E74E36A8;
  v52 = applierCopy;
  v53 = inSectionCopy;
  v54 = forSectionCopy;
  v55 = marginsCopy;
  v56 = pathCopy;
  v57 = providerCopy;
  viewsCopy = views;
  v58 = sectionCopy;
  v59 = barCopy;
  v60 = unavailableCopy;
  selfCopy = self;
  v50 = unavailableCopy;
  v48 = barCopy;
  v46 = sectionCopy;
  v45 = providerCopy;
  v44 = pathCopy;
  v43 = marginsCopy;
  v42 = forSectionCopy;
  v26 = inSectionCopy;
  v27 = applierCopy;
  v28 = [v25 initWithSectionProvider:v51];
  configuration = [v28 configuration];
  v30 = MEMORY[0x1E6995588];
  v31 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v32 = [MEMORY[0x1E6995558] estimatedDimension:0.0];
  v33 = [v30 sizeWithWidthDimension:v31 heightDimension:v32];

  v34 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v33 elementKind:@"CNContactListLayoutHeaderIdentifier" alignment:2];
  v35 = MEMORY[0x1E6995588];
  v36 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v37 = [MEMORY[0x1E6995558] estimatedDimension:*MEMORY[0x1E69DE3D8]];
  v38 = [v35 sizeWithWidthDimension:v36 heightDimension:v37];

  v39 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v38 elementKind:@"CNContactListLayoutFooterIdentifier" alignment:5];
  v63[0] = v34;
  v63[1] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  [configuration setBoundarySupplementaryItems:v40];

  [v28 setConfiguration:configuration];

  return v28;
}

id __340__CNContactListViewController_collectionViewLayoutWithFloatingHeaderViews_contactListStyleApplier_trailingSwipeActionsProvider_shouldDisplaySupplementaryHeaderItemForSection_shouldShowSeparatorsForSection_directionalLayoutMargins_collectionViewIsShowingIndexBar_numberOfItemsInSection_contentUnavailable_collectionViewIsSelectingIndexPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 contactListStyle];
  v8 = [v6 traitCollection];
  v9 = [v7 listAppearanceForTraitCollection:v8];

  v10 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:v9];
  [v10 setHeaderMode:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __340__CNContactListViewController_collectionViewLayoutWithFloatingHeaderViews_contactListStyleApplier_trailingSwipeActionsProvider_shouldDisplaySupplementaryHeaderItemForSection_shouldShowSeparatorsForSection_directionalLayoutMargins_collectionViewIsShowingIndexBar_numberOfItemsInSection_contentUnavailable_collectionViewIsSelectingIndexPath___block_invoke_2;
  v19[3] = &unk_1E74E3680;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  *&v15 = v12;
  *(&v15 + 1) = v14;
  *&v16 = v13;
  *(&v16 + 1) = v11;
  v20 = v16;
  v21 = v15;
  v23 = v9;
  v22 = *(a1 + 64);
  [v10 setItemSeparatorHandler:v19];
  [*(a1 + 32) applyContactListStyleToCollectionLayoutConfiguration:v10];
  [v10 setTrailingSwipeActionsConfigurationProvider:*(a1 + 72)];
  v17 = [objc_opt_class() layoutSectionForLayoutConfiguration:v10 layoutEnvironment:v6 section:a2 contactListStyleApplier:*(a1 + 32) shouldDisplaySupplementaryHeaderItemForSection:*(a1 + 80) headerViewsFloat:*(a1 + 112) directionalLayoutMargins:*(a1 + 56) collectionViewIsShowingIndexBar:*(a1 + 88) contentUnavailable:*(a1 + 96)];

  return v17;
}

id __340__CNContactListViewController_collectionViewLayoutWithFloatingHeaderViews_contactListStyleApplier_trailingSwipeActionsProvider_shouldDisplaySupplementaryHeaderItemForSection_shouldShowSeparatorsForSection_directionalLayoutMargins_collectionViewIsShowingIndexBar_numberOfItemsInSection_contentUnavailable_collectionViewIsSelectingIndexPath___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(a1[5] + 16))(a1[5], [v5 section]);
  v8 = [MEMORY[0x1E69966E8] currentEnvironment];
  v9 = [v8 featureFlags];
  if ([v9 isFeatureEnabled:29])
  {
    v10 = [v5 row];

    if (!v10)
    {
      [v6 bottomSeparatorInsets];
      [v6 setTopSeparatorInsets:?];
      v11 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_6:
  if ((*(a1[6] + 16))(a1[6], [v5 section]))
  {
    v12 = a1[4];
    v13 = (*(a1[7] + 16))();
    [v12 applyCellSeparatorInsetStyleToConfiguration:v6 superviewDirectionalLayoutMargins:a1[9] listAppearance:v11 itemIsFirstInSection:objc_msgSend(v5 itemIsLastInSection:"row") == v7 - 1 itemIsSelected:{(*(a1[8] + 16))(), v13, v14, v15, v16}];
  }

  else
  {
    [v6 setTopSeparatorVisibility:2];
    [v6 setBottomSeparatorVisibility:2];
  }

  return v6;
}

+ (id)layoutSectionForLayoutConfiguration:(id)configuration layoutEnvironment:(id)environment section:(int64_t)section contactListStyleApplier:(id)applier shouldDisplaySupplementaryHeaderItemForSection:(id)forSection headerViewsFloat:(BOOL)float directionalLayoutMargins:(id)margins collectionViewIsShowingIndexBar:(id)self0 contentUnavailable:(id)self1
{
  v51[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  environmentCopy = environment;
  forSectionCopy = forSection;
  v16 = *(unavailable + 2);
  barCopy = bar;
  marginsCopy = margins;
  applierCopy = applier;
  v20 = v16(unavailable);
  if (v20 <= 0.0)
  {
    v31 = configurationCopy;
    v30 = [MEMORY[0x1E6995580] sectionWithListConfiguration:configurationCopy layoutEnvironment:environmentCopy];
  }

  else
  {
    v21 = v20;
    v22 = MEMORY[0x1E6995588];
    v23 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v24 = [MEMORY[0x1E6995558] absoluteDimension:v21];
    v25 = [v22 sizeWithWidthDimension:v23 heightDimension:v24];

    v26 = [MEMORY[0x1E6995578] itemWithLayoutSize:v25];
    v27 = MEMORY[0x1E6995568];
    v51[0] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    v29 = [v27 verticalGroupWithLayoutSize:v25 subitems:v28];

    v30 = [MEMORY[0x1E6995580] sectionWithGroup:v29];

    v31 = configurationCopy;
  }

  v32 = marginsCopy[2](marginsCopy);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = barCopy[2](barCopy);
  [applierCopy applyContactListDirectionalLayoutMargins:v30 toLayoutSection:v39 collectionViewIsShowingIndexBar:{v32, v34, v36, v38}];

  boundarySupplementaryItems = [v30 boundarySupplementaryItems];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __257__CNContactListViewController_layoutSectionForLayoutConfiguration_layoutEnvironment_section_contactListStyleApplier_shouldDisplaySupplementaryHeaderItemForSection_headerViewsFloat_directionalLayoutMargins_collectionViewIsShowingIndexBar_contentUnavailable___block_invoke;
  v47[3] = &unk_1E74E3658;
  v48 = forSectionCopy;
  sectionCopy = section;
  floatCopy = float;
  v41 = forSectionCopy;
  v42 = [boundarySupplementaryItems _cn_compactMap:v47];
  [v30 setBoundarySupplementaryItems:v42];

  return v30;
}

id __257__CNContactListViewController_layoutSectionForLayoutConfiguration_layoutEnvironment_section_contactListStyleApplier_shouldDisplaySupplementaryHeaderItemForSection_headerViewsFloat_directionalLayoutMargins_collectionViewIsShowingIndexBar_contentUnavailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 elementKind];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69DDC08]];

  if (v5 && (*(*(a1 + 32) + 16))())
  {
    [v3 setPinToVisibleBounds:*(a1 + 48)];
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)duplicatesBannerCellDidTapDismiss:(id)dismiss
{
  duplicatesController = [(CNContactListViewController *)self duplicatesController];
  [duplicatesController ignoreNewDuplicatesBanner];

  [(CNContactListViewController *)self removeDuplicatesBanner];
}

- (void)addContactsToListTappedWithSourceView:(id)view
{
  viewCopy = view;
  delegate = [(CNContactListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNContactListViewController *)self delegate];
    [delegate2 contactListViewControllerSelectedAddContactToList:self withSourceView:viewCopy];
  }
}

- (void)setBottomEdgesInset:(double)inset
{
  collectionView = [(CNContactListViewController *)self collectionView];
  [collectionView contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view = [(CNContactListViewController *)self view];

  if (view)
  {
    collectionView2 = [(CNContactListViewController *)self collectionView];
    [collectionView2 setContentInset:{v7, v9, inset, v11}];

    collectionView3 = [(CNContactListViewController *)self collectionView];
    [collectionView3 setNeedsLayout];

    collectionView4 = [(CNContactListViewController *)self collectionView];
    [collectionView4 layoutIfNeeded];
  }
}

- (void)createNewContactTapped
{
  delegate = [(CNContactListViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNContactListViewController *)self delegate];
    [delegate2 contactListViewControllerSelectedCreateNewContact:self];
  }
}

- (void)addContactTapped:(id)tapped
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:29];

  delegate = [(CNContactListViewController *)self delegate];
  if (!v6)
  {
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

LABEL_5:
    delegate2 = [(CNContactListViewController *)self delegate];
    [delegate2 contactListViewControllerSelectedCreateNewContact:self];
    goto LABEL_6;
  }

  v8 = objc_opt_respondsToSelector();

  delegate3 = [(CNContactListViewController *)self delegate];
  delegate2 = delegate3;
  if ((v8 & 1) == 0)
  {
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  [delegate3 contactListAddContactButtonTapped:self];
LABEL_6:
}

- (id)pathToContentUnavailableRow
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CNContactListViewController_pathToContentUnavailableRow__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  if (pathToContentUnavailableRow_cn_once_token_28 != -1)
  {
    dispatch_once(&pathToContentUnavailableRow_cn_once_token_28, block);
  }

  return pathToContentUnavailableRow_cn_once_object_28;
}

uint64_t __58__CNContactListViewController_pathToContentUnavailableRow__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(*(a1 + 32), "contentUnavailableRowSection")}];
  v2 = pathToContentUnavailableRow_cn_once_object_28;
  pathToContentUnavailableRow_cn_once_object_28 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)pathToCreateNewContactRow
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CNContactListViewController_pathToCreateNewContactRow__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  if (pathToCreateNewContactRow_cn_once_token_27 != -1)
  {
    dispatch_once(&pathToCreateNewContactRow_cn_once_token_27, block);
  }

  return pathToCreateNewContactRow_cn_once_object_27;
}

uint64_t __56__CNContactListViewController_pathToCreateNewContactRow__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(*(a1 + 32), "createNewContactRowSection")}];
  v2 = pathToCreateNewContactRow_cn_once_object_27;
  pathToCreateNewContactRow_cn_once_object_27 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (BOOL)isPathToContentUnavailableRow:(id)row
{
  rowCopy = row;
  if ([(CNContactListViewController *)self isDisplayingContentUnavailableViewAsCell])
  {
    pathToContentUnavailableRow = [(CNContactListViewController *)self pathToContentUnavailableRow];
    v6 = pathToContentUnavailableRow == rowCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isPathToCreateNewContactRow:(id)row
{
  rowCopy = row;
  if ([(CNContactListViewController *)self shouldDisplayCreateNewContactAsRow])
  {
    pathToCreateNewContactRow = [(CNContactListViewController *)self pathToCreateNewContactRow];
    v6 = pathToCreateNewContactRow == rowCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsPathToContentUnavailableRow:(id)row
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__CNContactListViewController_containsPathToContentUnavailableRow___block_invoke;
  v4[3] = &unk_1E74E3A80;
  v4[4] = self;
  return [row _cn_any:v4];
}

- (BOOL)containsPathToCreateNewContactRow:(id)row
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__CNContactListViewController_containsPathToCreateNewContactRow___block_invoke;
  v4[3] = &unk_1E74E3A80;
  v4[4] = self;
  return [row _cn_any:v4];
}

- (BOOL)isContentUnavailableRowSection:(int64_t)section
{
  isDisplayingContentUnavailableViewAsCell = [(CNContactListViewController *)self isDisplayingContentUnavailableViewAsCell];
  if (isDisplayingContentUnavailableViewAsCell)
  {
    LOBYTE(isDisplayingContentUnavailableViewAsCell) = [(CNContactListViewController *)self contentUnavailableRowSection]== section;
  }

  return isDisplayingContentUnavailableViewAsCell;
}

- (BOOL)isCreateNewContactRowSection:(int64_t)section
{
  shouldDisplayCreateNewContactAsRow = [(CNContactListViewController *)self shouldDisplayCreateNewContactAsRow];
  if (shouldDisplayCreateNewContactAsRow)
  {
    LOBYTE(shouldDisplayCreateNewContactAsRow) = [(CNContactListViewController *)self createNewContactRowSection]== section;
  }

  return shouldDisplayCreateNewContactAsRow;
}

- (BOOL)isPerformingDuplicatesMerge
{
  if (!self->_duplicatesController)
  {
    return 0;
  }

  duplicatesController = [(CNContactListViewController *)self duplicatesController];
  isPerformingMerge = [duplicatesController isPerformingMerge];

  return isPerformingMerge;
}

- (void)didPerformDuplicatesMerge:(id)merge
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:16];

  if (v6)
  {
    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    schedulerProvider = [currentEnvironment2 schedulerProvider];
    mainThreadScheduler = [schedulerProvider mainThreadScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__CNContactListViewController_didPerformDuplicatesMerge___block_invoke;
    v10[3] = &unk_1E74E6A88;
    v10[4] = self;
    [mainThreadScheduler performBlock:v10];
  }
}

void __57__CNContactListViewController_didPerformDuplicatesMerge___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];

  v3 = [*(a1 + 32) collectionView];
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 indexPathsForVisibleItems];
  [v3 reconfigureItemsAtIndexPaths:v5];

  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 schedulerProvider];
  v8 = [v7 mainThreadScheduler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CNContactListViewController_didPerformDuplicatesMerge___block_invoke_2;
  v10[3] = &unk_1E74E6A88;
  v10[4] = *(a1 + 32);
  v9 = [v8 afterDelay:v10 performBlock:3.0];
}

uint64_t __57__CNContactListViewController_didPerformDuplicatesMerge___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) shouldShowDuplicateBannerView];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 removeDuplicatesBanner];
  }

  return result;
}

- (void)willPerformDuplicatesMergeAll:(id)all
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:16];

  if (v6)
  {

    [(CNContactListViewController *)self refreshDuplicatesBanner];
  }
}

- (void)duplicatesDidChange:(id)change
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:16];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__CNContactListViewController_duplicatesDidChange___block_invoke;
    v7[3] = &unk_1E74E67A8;
    v7[4] = self;
    [(CNContactListViewController *)self fetchDuplicatesCountWithCompletionBlock:v7];
  }
}

void __51__CNContactListViewController_duplicatesDidChange___block_invoke(uint64_t a1, char a2)
{
  if (([*(a1 + 32) isPerformingDuplicatesMerge] & 1) == 0)
  {
    v4 = [*(a1 + 32) isShowingDuplicatesBanner];
    v5 = v4 ^ [*(a1 + 32) shouldShowDuplicateBannerView];
    if ((a2 & 1) != 0 || v5)
    {
      v6 = *(a1 + 32);
      if (v5)
      {

        [v6 refreshDuplicatesBanner];
      }

      else
      {
        v10 = [v6 duplicatesBannerCell];
        v7 = [v10 state];
        [*(a1 + 32) updateDuplicatesBannerForProcessingState];
        if (v7 != [v10 state])
        {
          v8 = [*(a1 + 32) collectionView];
          v9 = [v8 collectionViewLayout];
          [v9 invalidateLayout];
        }
      }
    }
  }
}

- (BOOL)isPathToDuplicatesBanner:(id)banner
{
  bannerCopy = banner;
  if ([(CNContactListViewController *)self isShowingDuplicatesBanner])
  {
    pathToDuplicatesBanner = [(CNContactListViewController *)self pathToDuplicatesBanner];
    v6 = pathToDuplicatesBanner == bannerCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsPathToDuplicatesBanner:(id)banner
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CNContactListViewController_containsPathToDuplicatesBanner___block_invoke;
  v4[3] = &unk_1E74E3A80;
  v4[4] = self;
  return [banner _cn_any:v4];
}

- (id)pathToDuplicatesBanner
{
  if (pathToDuplicatesBanner_cn_once_token_26 != -1)
  {
    dispatch_once(&pathToDuplicatesBanner_cn_once_token_26, &__block_literal_global_692);
  }

  v3 = pathToDuplicatesBanner_cn_once_object_26;

  return v3;
}

uint64_t __53__CNContactListViewController_pathToDuplicatesBanner__block_invoke()
{
  v0 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v1 = pathToDuplicatesBanner_cn_once_object_26;
  pathToDuplicatesBanner_cn_once_object_26 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)updateDataSourceAndCollectionViewForDuplicatesBanner
{
  collectionView = [(CNContactListViewController *)self collectionView];
  window = [collectionView window];

  if (window)
  {
    collectionView2 = [(CNContactListViewController *)self collectionView];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__CNContactListViewController_updateDataSourceAndCollectionViewForDuplicatesBanner__block_invoke;
    v7[3] = &unk_1E74E6A88;
    v7[4] = self;
    [collectionView2 performBatchUpdates:v7 completion:0];
  }

  else
  {
    [(CNContactListViewController *)self updateAdditionalSectionsAtTop];
    collectionView3 = [(CNContactListViewController *)self collectionView];
    [collectionView3 reloadData];
  }
}

void __83__CNContactListViewController_updateDataSourceAndCollectionViewForDuplicatesBanner__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 numberOfSections];

  [*(a1 + 32) updateAdditionalSectionsAtTop];
  v4 = [*(a1 + 32) numberOfSections];
  v5 = [*(a1 + 32) pathToDuplicatesBanner];
  if (v3 == v4)
  {
    v6 = CNUILogContactList();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) additionalSectionsAtTopCount];
      *buf = 134349056;
      v16 = v7;
      _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_INFO, "Refreshing duplicates banner: reloading indexPath for banner | additional sections at top: %{public}ld", buf, 0xCu);
    }

    v8 = [*(a1 + 32) collectionView];
    v14 = v5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v8 reloadItemsAtIndexPaths:v9];
  }

  else
  {
    v10 = CNUILogContactList();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v3 >= v4)
    {
      if (v11)
      {
        v13 = [*(a1 + 32) additionalSectionsAtTopCount];
        *buf = 134349056;
        v16 = v13;
        _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_INFO, "Refreshing duplicates banner: deleting section | additional sections at top: %{public}ld", buf, 0xCu);
      }

      v8 = [*(a1 + 32) collectionView];
      v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v5, "section")}];
      [v8 deleteSections:v9];
    }

    else
    {
      if (v11)
      {
        v12 = [*(a1 + 32) additionalSectionsAtTopCount];
        *buf = 134349056;
        v16 = v12;
        _os_log_impl(&dword_199A75000, v10, OS_LOG_TYPE_INFO, "Refreshing duplicates banner: inserting section | additional sections at top: %{public}ld", buf, 0xCu);
      }

      v8 = [*(a1 + 32) collectionView];
      v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v5, "section")}];
      [v8 insertSections:v9];
    }
  }
}

- (void)updateDuplicatesBannerForProcessingState
{
  duplicatesBannerCell = [(CNContactListViewController *)self duplicatesBannerCell];
  if (duplicatesBannerCell)
  {
    v5 = duplicatesBannerCell;
    duplicatesController = [(CNContactListViewController *)self duplicatesController];
    [duplicatesController decorateBannerViewCell:v5];

    duplicatesBannerCell = v5;
  }
}

- (id)duplicatesBannerCell
{
  pathToDuplicatesBanner = [(CNContactListViewController *)self pathToDuplicatesBanner];
  collectionView = [(CNContactListViewController *)self collectionView];
  v5 = [collectionView cellForItemAtIndexPath:pathToDuplicatesBanner];

  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)removeDuplicatesBanner
{
  if ([(CNContactListViewController *)self isShowingDuplicatesBanner])
  {
    duplicatesBannerCell = [(CNContactListViewController *)self duplicatesBannerCell];
    [duplicatesBannerCell setDelegate:0];
    [(CNContactListViewController *)self updateDataSourceAndCollectionViewForDuplicatesBanner];
  }
}

- (void)refreshDuplicatesBanner
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];
  mainThreadScheduler = [schedulerProvider mainThreadScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CNContactListViewController_refreshDuplicatesBanner__block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [mainThreadScheduler performBlock:v6];
}

uint64_t __54__CNContactListViewController_refreshDuplicatesBanner__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldShowDuplicateBannerView];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 updateDataSourceAndCollectionViewForDuplicatesBanner];
  }

  else
  {

    return [v3 removeDuplicatesBanner];
  }
}

- (void)didSelectViewAllDuplicates
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:16];

  if (v5)
  {
    if ([(CNContactListViewController *)self isSearching])
    {
      [(CNContactListViewController *)self cancelSearch:self];
    }

    duplicatesController = [(CNContactListViewController *)self duplicatesController];
    [duplicatesController presentSheetBasedMergeForController:self showsIgnored:1];

    [(CNContactListViewController *)self deselectAllSelectedIndexPathsAnimated:0];
  }
}

- (void)initializeDuplicateContacts
{
  if ([(CNContactListViewController *)self canManageDuplicateContacts])
  {
    if (!self->_isDuplicatesLaunching)
    {
      [(CNContactListViewController *)self setIsDuplicatesLaunching:1];
      currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
      schedulerProvider = [currentEnvironment schedulerProvider];
      mainThreadScheduler = [schedulerProvider mainThreadScheduler];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58__CNContactListViewController_initializeDuplicateContacts__block_invoke;
      v7[3] = &unk_1E74E6A88;
      v7[4] = self;
      v6 = [mainThreadScheduler afterDelay:v7 performBlock:4.0];
    }
  }
}

uint64_t __58__CNContactListViewController_initializeDuplicateContacts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) duplicatesController];
  [v2 findDuplicates];

  v3 = *(a1 + 32);

  return [v3 updateDuplicatesCountBanner];
}

- (BOOL)canPerformDuplicatesMerge
{
  if (![(CNContactListViewController *)self canManageDuplicateContacts])
  {
    return 0;
  }

  collectionView = [(CNContactListViewController *)self collectionView];
  if ([collectionView isEditing])
  {
    collectionView2 = [(CNContactListViewController *)self collectionView];
    allowsMultipleSelectionDuringEditing = [collectionView2 allowsMultipleSelectionDuringEditing];

    if (allowsMultipleSelectionDuringEditing)
    {
      return 0;
    }
  }

  else
  {
  }

  duplicatesController = [(CNContactListViewController *)self duplicatesController];
  canMergeDuplicates = [duplicatesController canMergeDuplicates];

  return canMergeDuplicates;
}

- (int64_t)newDuplicatesCountToDisplay
{
  if (!self->_duplicatesController || ![(CNContactListViewController *)self canManageDuplicateContacts])
  {
    return 0;
  }

  duplicatesController = self->_duplicatesController;

  return [(CNDuplicateContactsController *)duplicatesController newDuplicatesCount];
}

- (BOOL)shouldShowDuplicateBannerView
{
  if (![(CNContactListViewController *)self canManageDuplicateContacts])
  {
    return 0;
  }

  objc_opt_class();
  collectionView = [(CNContactListViewController *)self collectionView];
  if (objc_opt_isKindOfClass())
  {
    v4 = collectionView;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && [v5 contactCount] >= 1 && self->_duplicatesController)
  {
    duplicatesController = [(CNContactListViewController *)self duplicatesController];
    v7 = [duplicatesController wantsToDisplayNewDuplicatesBanner:3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDuplicatesRowSection:(int64_t)section
{
  result = [(CNContactListViewController *)self isShowingDuplicatesBanner];
  if (section)
  {
    return 0;
  }

  return result;
}

- (void)updateNavTitleWithCount:(unint64_t)count
{
  if ([(CNContactListViewController *)self isShowingCustomTitle])
  {
    objc_opt_class();
    dataSource = [(CNContactListViewController *)self dataSource];
    filter = [dataSource filter];
    if (objc_opt_isKindOfClass())
    {
      v7 = filter;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = MEMORY[0x1E696AEC0];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"SELECTED_COUNT" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [v9 localizedStringWithFormat:v11, count];
    [v8 setCustomDisplayName:v12];

    [(CNContactListViewController *)self reloadTitle];
  }
}

- (void)updateSelectAllButtonTitle
{
  selectButtonView = [(CNContactListViewController *)self selectButtonView];

  if (selectButtonView)
  {
    hasAllRowsSelected = [(CNContactListViewController *)self hasAllRowsSelected];
    v5 = CNContactsUIBundle();
    v6 = v5;
    if (hasAllRowsSelected)
    {
      v7 = @"LIMITED_CONTACTS_DESELECT_ALL";
    }

    else
    {
      v7 = @"LIMITED_CONTACTS_SELECT_ALL";
    }

    v11 = [v5 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized"];

    selectButton = [(CNContactListViewController *)self selectButton];
    [selectButton setTitle:v11 forState:0];

    selectButton2 = [(CNContactListViewController *)self selectButton];
    [selectButton2 setNeedsLayout];

    selectButton3 = [(CNContactListViewController *)self selectButton];
    [selectButton3 layoutIfNeeded];

    [(CNContactListViewController *)self layoutSelectButtonView];
  }
}

- (void)addSelectButtonView
{
  v26[2] = *MEMORY[0x1E69E9840];
  if ([CNLimitedAccessPickerSupport isPickerLimitedAccessWithLists:[(CNContactListViewController *)self limitedAccessPickerType]])
  {
    selectButtonView = [(CNContactListViewController *)self selectButtonView];

    if (!selectButtonView)
    {
      if ([(CNContactListViewController *)self showingGroup])
      {
        totalNumberOfRows = [(CNContactListViewController *)self totalNumberOfRows];
        if (totalNumberOfRows - [(CNContactListViewController *)self additionalSectionsAtTopCount]>= 6)
        {
          v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
          [v5 setClipsToBounds:1];
          [v5 setAutoresizingMask:2];
          [v5 setTranslatesAutoresizingMaskIntoConstraints:1];
          filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
          secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
          background = [filledButtonConfiguration background];
          [background setBackgroundColor:secondarySystemFillColor];

          v9 = [MEMORY[0x1E69DC730] effectWithStyle:4];
          background2 = [filledButtonConfiguration background];
          [background2 setVisualEffect:v9];

          linkColor = [MEMORY[0x1E69DC888] linkColor];
          [filledButtonConfiguration setBaseForegroundColor:linkColor];

          [filledButtonConfiguration setCornerStyle:4];
          [filledButtonConfiguration setButtonSize:2];
          [filledButtonConfiguration setContentInsets:{6.0, 10.0, 6.0, 10.0}];
          v12 = CNContactsUIBundle();
          v13 = [v12 localizedStringForKey:@"LIMITED_CONTACTS_SELECT_ALL" value:&stru_1F0CE7398 table:@"Localized"];
          [filledButtonConfiguration setTitle:v13];

          [filledButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_667];
          v14 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:0];
          [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v14 addTarget:self action:sel_handleSelectAllTapped forControlEvents:64];
          [v5 addSubview:v14];
          [(CNContactListViewController *)self setSelectButton:v14];
          selectButton = [(CNContactListViewController *)self selectButton];
          centerYAnchor = [selectButton centerYAnchor];
          v24 = v5;
          centerYAnchor2 = [v5 centerYAnchor];
          v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          v26[0] = v16;
          selectButton2 = [(CNContactListViewController *)self selectButton];
          centerXAnchor = [selectButton2 centerXAnchor];
          centerXAnchor2 = [v5 centerXAnchor];
          v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
          v26[1] = v20;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

          [MEMORY[0x1E696ACD8] activateConstraints:v21];
          view = [(CNContactListViewController *)self view];
          [view addSubview:v24];

          [(CNContactListViewController *)self setSelectButtonView:v24];
        }
      }
    }
  }
}

id __50__CNContactListViewController_addSelectButtonView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0 weight:*MEMORY[0x1E69DB978]];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (void)handleSelectAllTapped
{
  if ([(CNContactListViewController *)self hasAllRowsSelected])
  {
    [(CNContactListViewController *)self deselectAllSelectedIndexPathsAnimated:1];
  }

  else
  {
    [(CNContactListViewController *)self selectAllIndexPathsAnimated:1];
  }

  [(CNContactListViewController *)self updateInResponseToLimitedAccessSelectionChanged];
}

- (void)selectAllIndexPathsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  additionalSectionsAtTopCount = [(CNContactListViewController *)self additionalSectionsAtTopCount];
  collectionView = [(CNContactListViewController *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (additionalSectionsAtTopCount < numberOfSections)
  {
    do
    {
      collectionView2 = [(CNContactListViewController *)self collectionView];
      v9 = [collectionView2 numberOfItemsInSection:additionalSectionsAtTopCount];

      if (v9 >= 1)
      {
        v10 = 0;
        do
        {
          collectionView3 = [(CNContactListViewController *)self collectionView];
          v12 = [MEMORY[0x1E696AC88] indexPathForRow:v10 inSection:additionalSectionsAtTopCount];
          [collectionView3 selectItemAtIndexPath:v12 animated:animatedCopy scrollPosition:0];

          ++v10;
          collectionView4 = [(CNContactListViewController *)self collectionView];
          v14 = [collectionView4 numberOfItemsInSection:additionalSectionsAtTopCount];
        }

        while (v10 < v14);
      }

      ++additionalSectionsAtTopCount;
      collectionView5 = [(CNContactListViewController *)self collectionView];
      numberOfSections2 = [collectionView5 numberOfSections];
    }

    while (additionalSectionsAtTopCount < numberOfSections2);
  }
}

- (unint64_t)totalNumberOfRows
{
  collectionView = [(CNContactListViewController *)self collectionView];
  numberOfSections = [collectionView numberOfSections];

  if (numberOfSections < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    collectionView2 = [(CNContactListViewController *)self collectionView];
    v6 += [collectionView2 numberOfItemsInSection:v5];

    ++v5;
    collectionView3 = [(CNContactListViewController *)self collectionView];
    numberOfSections2 = [collectionView3 numberOfSections];
  }

  while (v5 < numberOfSections2);
  return v6;
}

- (BOOL)hasAllRowsSelected
{
  selfCopy = self;
  collectionView = [(CNContactListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count];
  totalNumberOfRows = [(CNContactListViewController *)selfCopy totalNumberOfRows];
  LOBYTE(selfCopy) = v5 == totalNumberOfRows - [(CNContactListViewController *)selfCopy additionalSectionsAtTopCount];

  return selfCopy;
}

- (void)didResetLimitedAccessSelectionTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = CNUILogContactList();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v16 = [toCopy count];
    _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "Reset Limited to %lu contacts", buf, 0xCu);
  }

  if ([(CNContactListViewController *)self limitedAccessPickerType]== 5)
  {
    objc_opt_class();
    dataSource = [(CNContactListViewController *)self dataSource];
    if (objc_opt_isKindOfClass())
    {
      v7 = dataSource;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    filter = [v8 filter];
    [filter setLimitedAccessIdentifiers:toCopy];

    [v8 reloadAsynchronously];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"LIMITED_CONTACTS_SELECTED_PROMPT" value:&stru_1F0CE7398 table:@"Localized"];
    v13 = [v10 localizedStringWithFormat:v12, objc_msgSend(toCopy, "count")];
    navigationItem = [(CNContactListViewController *)self navigationItem];
    [navigationItem setPrompt:v13];

    [(CNContactListViewController *)self setLimitedAccessContactSelection:toCopy];
  }

  else
  {
    [(CNContactListViewController *)self deselectAllSelectedIndexPathsAnimated:0];
    [(CNContactListViewController *)self setLimitedAccessContactSelection:toCopy];
    [(CNContactListViewController *)self setupViewWithLimitedAccessContactSelection];
    [(CNContactListViewController *)self updateInResponseToLimitedAccessSelectionChanged];
  }
}

- (void)setupViewWithLimitedAccessContactSelection
{
  v22 = *MEMORY[0x1E69E9840];
  if ([CNLimitedAccessPickerSupport isPickerLimitedAccessWithMultiSelect:[(CNContactListViewController *)self limitedAccessPickerType]])
  {
    limitedAccessContactSelection = [(CNContactListViewController *)self limitedAccessContactSelection];
    allObjects = [limitedAccessContactSelection allObjects];
    limitedAccessAppBundleId = [(CNContactListViewController *)self limitedAccessAppBundleId];
    v6 = [CNLimitedAccessPickerSupport contactsFromIdentifiers:allObjects withBundleId:limitedAccessAppBundleId];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(CNContactListViewController *)self selectContact:*(*(&v17 + 1) + 8 * v11++) animated:0 scrollPosition:0 shouldScroll:0, v17];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v12 = MEMORY[0x1E695DFD8];
    selectedContacts = [(CNContactListViewController *)self selectedContacts];
    v14 = [selectedContacts _cn_map:&__block_literal_global_698];
    v15 = [v12 setWithArray:v14];

    contactSelectionOnViewLoad = [(CNContactListViewController *)self contactSelectionOnViewLoad];

    if (!contactSelectionOnViewLoad)
    {
      [(CNContactListViewController *)self setLimitedAccessContactSelection:v15];
    }

    [(CNContactListViewController *)self setContactSelectionOnViewLoad:v15, v17];
  }
}

- (void)limitedAccessTipCellDidTapDismiss:(id)dismiss
{
  if ([(CNContactListViewController *)self isShowingLimitedAccessTip])
  {
    limitedAccessTipCell = [(CNContactListViewController *)self limitedAccessTipCell];
    [limitedAccessTipCell setDelegate:0];

    [(CNContactListViewController *)self setShouldShowLimitedAccessTip:0];
    objc_opt_class();
    navigationItem = [(CNContactListViewController *)self navigationItem];
    titleView = [navigationItem titleView];
    if (objc_opt_isKindOfClass())
    {
      v7 = titleView;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [v8 setHasIcon:1];
    [(CNContactListViewController *)self updateDataSourceAndCollectionViewForLimitedAccessTip];
    limitedAccessAppBundleId = [(CNContactListViewController *)self limitedAccessAppBundleId];
    [CNPrivateAccessAggregator recordPickerTipDismissalForBundleIdentifier:limitedAccessAppBundleId];
  }
}

- (void)updateDataSourceAndCollectionViewForLimitedAccessTip
{
  collectionView = [(CNContactListViewController *)self collectionView];
  window = [collectionView window];

  if (window)
  {
    collectionView2 = [(CNContactListViewController *)self collectionView];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __83__CNContactListViewController_updateDataSourceAndCollectionViewForLimitedAccessTip__block_invoke;
    v6[3] = &unk_1E74E6A88;
    v6[4] = self;
    [collectionView2 performBatchUpdates:v6 completion:0];
  }
}

void __83__CNContactListViewController_updateDataSourceAndCollectionViewForLimitedAccessTip__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 numberOfSections];

  [*(a1 + 32) updateAdditionalSectionsAtTop];
  v4 = [*(a1 + 32) numberOfSections];
  v5 = [*(a1 + 32) pathToLimitedAccessTipRow];
  if (v3 == v4)
  {
    v6 = CNUILogContactList();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = [*(a1 + 32) additionalSectionsAtTopCount];
      *buf = 134217984;
      v16 = v11;
      _os_log_debug_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEBUG, "Refreshing duplicates banner: reloading indexPath for banner | additional sections at top: %ld", buf, 0xCu);
    }

    v7 = [*(a1 + 32) collectionView];
    v14 = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v7 reloadItemsAtIndexPaths:v8];
  }

  else
  {
    v9 = CNUILogContactList();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v3 >= v4)
    {
      if (v10)
      {
        v13 = [*(a1 + 32) additionalSectionsAtTopCount];
        *buf = 134217984;
        v16 = v13;
        _os_log_debug_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEBUG, "Refreshing duplicates banner: deleting section | additional sections at top: %ld", buf, 0xCu);
      }

      v7 = [*(a1 + 32) collectionView];
      v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v5, "section")}];
      [v7 deleteSections:v8];
    }

    else
    {
      if (v10)
      {
        v12 = [*(a1 + 32) additionalSectionsAtTopCount];
        *buf = 134217984;
        v16 = v12;
        _os_log_debug_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEBUG, "Refreshing duplicates banner: inserting section | additional sections at top: %ld", buf, 0xCu);
      }

      v7 = [*(a1 + 32) collectionView];
      v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v5, "section")}];
      [v7 insertSections:v8];
    }
  }
}

- (id)limitedAccessTipCell
{
  pathToLimitedAccessTipRow = [(CNContactListViewController *)self pathToLimitedAccessTipRow];
  collectionView = [(CNContactListViewController *)self collectionView];
  v5 = [collectionView cellForItemAtIndexPath:pathToLimitedAccessTipRow];

  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)appName
{
  limitedAccessAppName = [(CNContactListViewController *)self limitedAccessAppName];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {

    limitedAccessAppBundleId = [(CNContactListViewController *)self limitedAccessAppBundleId];
    limitedAccessAppName = [CNLimitedAccessPickerSupport appNameForBundleId:limitedAccessAppBundleId];

    [(CNContactListViewController *)self setLimitedAccessAppName:limitedAccessAppName];
  }

  return limitedAccessAppName;
}

- (BOOL)containsPathToLimitedAccessTipRow:(id)row
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__CNContactListViewController_containsPathToLimitedAccessTipRow___block_invoke;
  v4[3] = &unk_1E74E3A80;
  v4[4] = self;
  return [row _cn_any:v4];
}

- (BOOL)isPathToLimitedAccessTipRow:(id)row
{
  rowCopy = row;
  if ([(CNContactListViewController *)self isShowingLimitedAccessTip])
  {
    pathToLimitedAccessTipRow = [(CNContactListViewController *)self pathToLimitedAccessTipRow];
    v6 = pathToLimitedAccessTipRow == rowCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pathToLimitedAccessTipRow
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CNContactListViewController_pathToLimitedAccessTipRow__block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  if (pathToLimitedAccessTipRow_cn_once_token_15 != -1)
  {
    dispatch_once(&pathToLimitedAccessTipRow_cn_once_token_15, block);
  }

  return pathToLimitedAccessTipRow_cn_once_object_15;
}

uint64_t __56__CNContactListViewController_pathToLimitedAccessTipRow__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(*(a1 + 32), "limitedAccessTipSection")}];
  v2 = pathToLimitedAccessTipRow_cn_once_object_15;
  pathToLimitedAccessTipRow_cn_once_object_15 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (BOOL)isLimitedAccessTipRowSection:(int64_t)section
{
  isShowingLimitedAccessTip = [(CNContactListViewController *)self isShowingLimitedAccessTip];
  if (isShowingLimitedAccessTip)
  {
    LOBYTE(isShowingLimitedAccessTip) = [(CNContactListViewController *)self limitedAccessTipSection]== section;
  }

  return isShowingLimitedAccessTip;
}

- (id)getVisibleIndexPaths
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(CNContactListViewController *)self isViewLoaded])
  {
LABEL_7:
    indexPathsForVisibleItems = 0;
    goto LABEL_8;
  }

  collectionView = [(CNContactListViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  if ([indexPathsForVisibleItems count])
  {
    collectionView2 = [(CNContactListViewController *)self collectionView];
    visibleCells = [collectionView2 visibleCells];
    v7 = [visibleCells count];

    if ([indexPathsForVisibleItems count] != v7)
    {
      v8 = CNUILogContactList();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [indexPathsForVisibleItems count];
        collectionView3 = [(CNContactListViewController *)self collectionView];
        visibleCells2 = [collectionView3 visibleCells];
        v13 = 134218240;
        v14 = v10;
        v15 = 2048;
        v16 = [visibleCells2 count];
        _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "indexPathsForVisibleRows.count %lu != visibleCells.count = %lu", &v13, 0x16u);
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return indexPathsForVisibleItems;
}

void __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  v3 = [v2 defaultSchedulerProvider];
  v4 = [v3 mainThreadScheduler];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke_3;
  v6[3] = &unk_1E74E77C0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 performBlock:v6];
}

void __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) getVisibleIndexPaths];
  if (v2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke_4;
    aBlock[3] = &unk_1E74E3A80;
    aBlock[4] = *(a1 + 32);
    v3 = _Block_copy(aBlock);
    v4 = [v2 _cn_filter:v3];
    [*(a1 + 32) setEmergencyContactIdentifiers:*(a1 + 40)];
    v5 = [v2 _cn_filter:v3];
    if (([v4 isEqual:v5] & 1) == 0)
    {
      v6 = [*(a1 + 32) collectionView];
      [v6 reloadData];
    }
  }

  else
  {
    [*(a1 + 32) setEmergencyContactIdentifiers:*(a1 + 40)];
  }
}

uint64_t __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _contactAtCollectionViewIndexPath:a2];
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 isContactWithIdentifierEmergencyContact:v5];

  return v6;
}

- (void)setupVCardImportController
{
  vCardImportController = [(CNContactListViewController *)self vCardImportController];

  if (!vCardImportController)
  {
    contactStore = [(CNContactListViewController *)self contactStore];
    objc_opt_class();
    navigationController = [(CNContactListViewController *)self navigationController];
    if (objc_opt_isKindOfClass())
    {
      v5 = navigationController;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      targetGroupForNewContact = [v6 targetGroupForNewContact];
      v8 = [v6 targetContainerForNewContactWithTargetGroup:targetGroupForNewContact];
    }

    else
    {
      targetGroupForNewContact = 0;
      v8 = 0;
    }

    v9 = [[CNVCardImportController alloc] initWithContactStore:contactStore presentationDelegate:self targetGroup:targetGroupForNewContact targetContainer:v8];
    [(CNContactListViewController *)self setVCardImportController:v9];

    vCardImportController2 = [(CNContactListViewController *)self vCardImportController];
    [vCardImportController2 setDelegate:self];
  }
}

- (void)pasteContacts:(id)contacts
{
  v35 = *MEMORY[0x1E69E9840];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  v5 = *MEMORY[0x1E6996530];
  itemProviders = [generalPasteboard itemProviders];
  v7 = (*(v5 + 16))(v5, itemProviders);

  if ((v7 & 1) == 0)
  {
    [(CNContactListViewController *)self setupVCardImportController];
    contactProvidersOnPasteboard = [(CNContactListViewController *)self contactProvidersOnPasteboard];
    if (((*(v5 + 16))(v5, contactProvidersOnPasteboard) & 1) == 0)
    {
      selfCopy = self;
      v24 = generalPasteboard;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = contactProvidersOnPasteboard;
      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v31;
        v12 = MEMORY[0x1E695E0F0];
        do
        {
          v13 = 0;
          v14 = v12;
          do
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v30 + 1) + 8 * v13);
            v16 = objc_alloc_init(MEMORY[0x1E69967D0]);
            v17 = objc_opt_class();
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __45__CNContactListViewController_pasteContacts___block_invoke;
            v28[3] = &unk_1E74E3A58;
            v29 = v16;
            v18 = v16;
            v19 = [v15 loadObjectOfClass:v17 completionHandler:v28];
            future = [v18 future];
            v21 = [future result:0];

            v12 = [v14 arrayByAddingObjectsFromArray:v21];

            ++v13;
            v14 = v12;
          }

          while (v10 != v13);
          v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v10);
      }

      else
      {
        v12 = MEMORY[0x1E695E0F0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__CNContactListViewController_pasteContacts___block_invoke_2;
      block[3] = &unk_1E74E77C0;
      block[4] = selfCopy;
      v27 = v12;
      v22 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      generalPasteboard = v24;
    }
  }
}

void __45__CNContactListViewController_pasteContacts___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = +[CNContactViewController descriptorForRequiredKeys];
    v9 = [CNUIDraggingContacts contactsFromDraggingContacts:v7 withKeys:v8];

    [*(a1 + 32) finishWithResult:v9];
  }

  else
  {
    [*(a1 + 32) finishWithResult:MEMORY[0x1E695E0F0]];
  }
}

void __45__CNContactListViewController_pasteContacts___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) vCardImportController];
  [v2 enqueueContacts:*(a1 + 40)];
}

- (id)contactProvidersOnPasteboard
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = *MEMORY[0x1E6996530];
  itemProviders = [generalPasteboard itemProviders];
  LOBYTE(v3) = (*(v3 + 16))(v3, itemProviders);

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    itemProviders2 = [generalPasteboard itemProviders];
    v5 = [itemProviders2 _cn_filter:&__block_literal_global_645];
  }

  return v5;
}

uint64_t __59__CNContactListViewController_contactProvidersOnPasteboard__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 canLoadObjectOfClass:objc_opt_class()];

  return v3;
}

- (void)vCardImportController:(id)controller didSaveContacts:(id)contacts
{
  firstObject = [contacts firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    v10 = firstObject;
    [(CNContactListViewController *)self selectContact:firstObject animated:0 scrollPosition:2];
    delegate = [(CNContactListViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    v6 = v10;
    if (v8)
    {
      delegate2 = [(CNContactListViewController *)self delegate];
      [delegate2 contactListViewController:self didSelectContact:v10 shouldScrollToContact:0];

      v6 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](firstObject, v6);
}

- (void)vCardImportController:(id)controller presentViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllerCopy = viewController;
  splitViewController = [(CNContactListViewController *)self splitViewController];
  [splitViewController presentViewController:viewControllerCopy animated:animatedCopy completion:0];
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v5 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:2 dropLocation:2];

  return v5;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  v15[1] = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  [(CNContactListViewController *)self setupVCardImportController];
  dropSession = [coordinatorCopy dropSession];
  v7 = [dropSession canLoadObjectsOfClass:objc_opt_class()];

  if (v7)
  {
    dropSession2 = [coordinatorCopy dropSession];
    descriptorForRequiredKeys = [MEMORY[0x1E695CE30] descriptorForRequiredKeys];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__CNContactListViewController_collectionView_performDropWithCoordinator___block_invoke;
    v14[3] = &unk_1E74E42C0;
    v14[4] = self;
    [CNUIDraggingContacts provideContactsForDropSession:dropSession2 withKeys:descriptorForRequiredKeys completionBlock:v14];

LABEL_5:
    goto LABEL_6;
  }

  dropSession3 = [coordinatorCopy dropSession];
  v15[0] = *MEMORY[0x1E69637C0];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [dropSession3 hasItemsConformingToTypeIdentifiers:v11];

  if (v12)
  {
    dropSession2 = [coordinatorCopy dropSession];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__CNContactListViewController_collectionView_performDropWithCoordinator___block_invoke_2;
    v13[3] = &unk_1E74E3A10;
    v13[4] = self;
    [CNUIDraggingContacts provideVCardURLForDropSession:dropSession2 completionBlock:v13];
    goto LABEL_5;
  }

LABEL_6:
}

void __73__CNContactListViewController_collectionView_performDropWithCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v3 = [*(a1 + 32) vCardImportController];
    [v3 enqueueContacts:v4];
  }
}

void __73__CNContactListViewController_collectionView_performDropWithCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 vCardImportController];
  [v4 enqueueContactsAtURL:v3];
}

- (id)dragItemsForIndexPath:(id)path
{
  v10[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([(CNContactListViewController *)self isPathToCreateNewContactRow:pathCopy]|| [(CNContactListViewController *)self isPathToDuplicatesBanner:pathCopy]|| [(CNContactListViewController *)self isPathToContentUnavailableRow:pathCopy]|| [(CNContactListViewController *)self isPathToLimitedAccessTipRow:pathCopy])
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:pathCopy];
    if (v7)
    {
      contactStore = [(CNContactListViewController *)self contactStore];
      v9 = [CNUIDraggingContacts dragItemForContact:v7 withContactStore:contactStore];
      v10[0] = v9;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }
  }

  return v5;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  pathCopy = path;
  if ([(CNContactListViewController *)self shouldAllowDrags])
  {
    v8 = [(CNContactListViewController *)self dragItemsForIndexPath:pathCopy];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  pathCopy = path;
  if ([(CNContactListViewController *)self shouldAllowDrags])
  {
    v7 = [(CNContactListViewController *)self dragItemsForIndexPath:pathCopy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)selectPreviousContact:(id)contact
{
  contactCopy = contact;
  navigationController = [(CNContactListViewController *)self navigationController];
  [navigationController selectPreviousContact:contactCopy];
}

- (void)selectNextContact:(id)contact
{
  contactCopy = contact;
  navigationController = [(CNContactListViewController *)self navigationController];
  [navigationController selectNextContact:contactCopy];
}

- (void)copyContacts:(id)contacts
{
  collectionView = [(CNContactListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v5 = [(CNContactListViewController *)self contactsForActionsAtIndexPaths:indexPathsForSelectedItems];
  actionHelper = [(CNContactListViewController *)self actionHelper];
  [actionHelper copyContacts:v5];
}

- (void)mergeUnifyContacts:(id)contacts
{
  mergableContacts = [(CNContactListViewController *)self mergableContacts];
  if (mergableContacts)
  {
    v6 = mergableContacts;
    actionHelper = [(CNContactListViewController *)self actionHelper];
    [actionHelper mergeContacts:v6];

    mergableContacts = v6;
  }
}

- (id)mergableContacts
{
  collectionView = [(CNContactListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  if ([indexPathsForSelectedItems count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(CNContactListViewController *)self contactsForActionsAtIndexPaths:indexPathsForSelectedItems];
    if ([v5 count] < 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  return v6;
}

- (void)deleteContact:(id)contact
{
  collectionView = [(CNContactListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  if ([indexPathsForSelectedItems count])
  {
    v5 = [(CNContactListViewController *)self contactsForActionsAtIndexPaths:indexPathsForSelectedItems];
    objc_opt_class();
    dataSource = [(CNContactListViewController *)self dataSource];
    filter = [dataSource filter];
    if (objc_opt_isKindOfClass())
    {
      v8 = filter;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    actionHelper = [(CNContactListViewController *)self actionHelper];
    [actionHelper deleteContacts:v5 dataSourceFilter:v9];
  }
}

- (void)startSearchingForString:(id)string setSearchBarAsFirstResponder:(BOOL)responder
{
  responderCopy = responder;
  stringCopy = string;
  if (-[CNContactListViewController isViewLoaded](self, "isViewLoaded") && (-[CNContactListViewController view](self, "view"), v6 = objc_claimAutoreleasedReturnValue(), [v6 window], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    searchController = [(CNContactListViewController *)self searchController];
    isActive = [searchController isActive];

    if (isActive)
    {
      searchController2 = [(CNContactListViewController *)self searchController];
      searchBar = [searchController2 searchBar];
      [searchBar setText:stringCopy];

      if (!responderCopy)
      {
        goto LABEL_9;
      }

      searchBar2 = [(CNContactListViewController *)self searchBar];
      [searchBar2 becomeFirstResponder];
    }

    else
    {
      [(CNContactListViewController *)self setPendingSearchQuery:stringCopy];
      [(CNContactListViewController *)self setShouldSearchBarBecomeFirstResponder:responderCopy];
      searchBar2 = [(CNContactListViewController *)self searchController];
      [searchBar2 setActive:1];
    }
  }

  else
  {
    [(CNContactListViewController *)self setPendingSearchQuery:stringCopy];
    [(CNContactListViewController *)self setShouldSearchBarBecomeFirstResponder:responderCopy];
    [(CNContactListViewController *)self setPendingSearchControllerActivation:1];
  }

LABEL_9:
}

- (void)cancelSearch:(id)search
{
  searchController = [(CNContactListViewController *)self searchController];
  [searchController setActive:0];

  searchBar = [(CNContactListViewController *)self searchBar];
  [(CNContactListViewController *)self searchBarCancelButtonClicked:searchBar];
}

- (void)beginSearch:(id)search
{
  searchCopy = search;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    searchController = [(CNContactListViewController *)self searchController];
    searchBar = [searchController searchBar];
    [searchBar setText:searchCopy];
  }

  searchController2 = [(CNContactListViewController *)self searchController];
  if ([searchController2 isActive])
  {
    shouldSearchBarBecomeFirstResponder = [(CNContactListViewController *)self shouldSearchBarBecomeFirstResponder];

    if (shouldSearchBarBecomeFirstResponder)
    {
      searchController3 = [(CNContactListViewController *)self searchController];
      searchBar2 = [searchController3 searchBar];
      [searchBar2 becomeFirstResponder];

      goto LABEL_8;
    }
  }

  else
  {
  }

  searchController3 = [(CNContactListViewController *)self searchController];
  [searchController3 setActive:1];
LABEL_8:
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_isEqual(action, sel_mergeUnifyContacts_))
  {
    mergableContacts = [(CNContactListViewController *)self mergableContacts];
    LOBYTE(action) = mergableContacts != 0;
  }

  else if (sel_isEqual(action, sel_pasteContacts_))
  {
    action = *MEMORY[0x1E6996530];
    contactProvidersOnPasteboard = [(CNContactListViewController *)self contactProvidersOnPasteboard];
    LODWORD(action) = (*(action + 2))(action, contactProvidersOnPasteboard) ^ 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CNContactListViewController;
    LOBYTE(action) = [(CNContactListViewController *)&v10 canPerformAction:action withSender:senderCopy];
  }

  return action;
}

- (void)didUpdateContentForAvatarViewController:(id)controller
{
  environment = [(CNContactListViewController *)self environment];
  launchCheckinRegistrar = [environment launchCheckinRegistrar];
  [launchCheckinRegistrar checkInLaunchTasks:2];
}

- (void)bannerView:(id)view wasSelectedToPresentMeContact:(id)contact
{
  v23 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  collectionView = [(CNContactListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        collectionView2 = [(CNContactListViewController *)self collectionView];
        [collectionView2 deselectItemAtIndexPath:v12 animated:1];

        ++v11;
      }

      while (v9 != v11);
      v9 = [indexPathsForSelectedItems countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  v21 = *MEMORY[0x1E695C258];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v15 = [contactCopy copyWithPropertyKeys:v14];

  delegate = [(CNContactListViewController *)self delegate];
  [delegate contactListViewController:self shouldPresentContact:v15 shouldScrollToContact:0];
}

- (void)suggestionsController:(id)controller didChangeToHeight:(double)height
{
  [(CNContactListViewController *)self setSuggestionsControllerHeight:controller, height];

  [(CNContactListViewController *)self refreshTableViewHeader];
}

- (id)ignoredContactIdentifiersForSuggestionsController:(id)controller
{
  suggestionsIgnoredContactIdentifiers = [(CNContactListViewController *)self suggestionsIgnoredContactIdentifiers];
  v4 = suggestionsIgnoredContactIdentifiers;
  if (suggestionsIgnoredContactIdentifiers)
  {
    v5 = suggestionsIgnoredContactIdentifiers;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)suggestionsController:(id)controller didDeselectContact:(id)contact
{
  contactCopy = contact;
  if ([(CNContactListViewController *)self allowsMultiSelection])
  {
    [(CNContactListViewController *)self setCellStateSelected:0 forContact:contactCopy animated:0];
  }
}

- (void)suggestionsController:(id)controller didSelectContact:(id)contact
{
  contactCopy = contact;
  delegate = [(CNContactListViewController *)self delegate];
  [delegate contactListViewController:self didSelectContact:contactCopy];

  if ([(CNContactListViewController *)self allowsMultiSelection])
  {
    [(CNContactListViewController *)self setCellStateSelected:1 forContact:contactCopy animated:0];
  }
}

- (BOOL)suggestionsController:(id)controller shouldSelectContact:(id)contact atIndexPath:(id)path
{
  controllerCopy = controller;
  contactCopy = contact;
  pathCopy = path;
  delegate = [(CNContactListViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(CNContactListViewController *)self delegate];
    v14 = [delegate2 contactSuggestionViewController:controllerCopy shouldSelectContact:contactCopy atIndexPath:pathCopy];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)suggestionsController:(id)controller canSelectContact:(id)contact
{
  contactCopy = contact;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 contactListViewController:self canSelectContact:contactCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)updateMeContactBannerContentsWithTopKeyline:(BOOL)keyline
{
  keylineCopy = keyline;
  v19[1] = *MEMORY[0x1E69E9840];
  preferredForNameMeContact = [(CNContactListViewController *)self preferredForNameMeContact];
  meContactBanner = [(CNContactListViewController *)self meContactBanner];
  contactStore = [(CNContactListViewController *)self contactStore];
  [meContactBanner setContactStore:contactStore];

  if (preferredForNameMeContact)
  {
    meBannerAvatarController = [(CNContactListViewController *)self meBannerAvatarController];

    if (!meBannerAvatarController)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_CNContactListViewController.m" lineNumber:3054 description:@"Avatar Controller should be created in init"];
    }

    v19[0] = preferredForNameMeContact;
    emptyContact = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    meBannerAvatarController2 = [(CNContactListViewController *)self meBannerAvatarController];
    [meBannerAvatarController2 setContacts:emptyContact];
  }

  else
  {
    emptyContact = [objc_opt_class() emptyContact];
    v18 = emptyContact;
    meBannerAvatarController2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    meBannerAvatarController3 = [(CNContactListViewController *)self meBannerAvatarController];
    [meBannerAvatarController3 setContacts:meBannerAvatarController2];
  }

  meBannerAvatarController4 = [(CNContactListViewController *)self meBannerAvatarController];
  view = [meBannerAvatarController4 view];
  [meContactBanner setAvatarView:view];

  meContactBannerFootnoteLabel = [(CNContactListViewController *)self meContactBannerFootnoteLabel];
  meContactBannerFootnoteValue = [(CNContactListViewController *)self meContactBannerFootnoteValue];
  [meContactBanner setMeContact:preferredForNameMeContact footnoteTitle:meContactBannerFootnoteLabel footnoteValue:meContactBannerFootnoteValue];

  if (keylineCopy)
  {
    [(CNContactListViewController *)self updateMeContactBannerTopKeyline];
  }
}

- (void)setMeContactBannerFootnoteValue:(id)value
{
  valueCopy = value;
  if (self->_meContactBannerFootnoteValue != valueCopy)
  {
    v6 = valueCopy;
    objc_storeStrong(&self->_meContactBannerFootnoteValue, value);
    [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
    valueCopy = v6;
  }
}

- (void)setMeContactBannerFootnoteLabel:(id)label
{
  labelCopy = label;
  if (self->_meContactBannerFootnoteLabel != labelCopy)
  {
    v6 = labelCopy;
    objc_storeStrong(&self->_meContactBannerFootnoteLabel, label);
    [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
    labelCopy = v6;
  }
}

- (void)setShouldDisplayMeContactBanner:(BOOL)banner
{
  if (self->_shouldDisplayMeContactBanner != banner)
  {
    self->_shouldDisplayMeContactBanner = banner;
    [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
  }
}

- (CNContactSuggestionsViewController)suggestionsController
{
  suggestionsController = self->_suggestionsController;
  if (!suggestionsController)
  {
    v4 = objc_alloc_init(CNContactSuggestionsViewController);
    v5 = self->_suggestionsController;
    self->_suggestionsController = v4;

    [(CNContactSuggestionsViewController *)self->_suggestionsController setDelegate:self];
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"SUGGESTED" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNContactSuggestionsViewController *)self->_suggestionsController setSuggestionsHeaderTitle:v7];

    [(CNContactSuggestionsViewController *)self->_suggestionsController setAllowsMultiSelection:[(CNContactListViewController *)self allowsMultiSelection]];
    suggestionsInteractionDomains = [(CNContactListViewController *)self suggestionsInteractionDomains];
    [(CNContactSuggestionsViewController *)self->_suggestionsController setInteractionDomains:suggestionsInteractionDomains];

    suggestedContacts = [(CNContactListViewController *)self suggestedContacts];
    [(CNContactSuggestionsViewController *)self->_suggestionsController setOverrideSuggestedContacts:suggestedContacts];

    suggestionsController = self->_suggestionsController;
  }

  return suggestionsController;
}

- (void)setShouldDisplaySuggestionsController:(BOOL)controller
{
  if (self->_shouldDisplaySuggestionsController != controller)
  {
    self->_shouldDisplaySuggestionsController = controller;
    if ([(CNContactListViewController *)self isViewLoaded])
    {

      [(CNContactListViewController *)self refreshTableViewHeader];
    }
  }
}

- (void)refreshTableViewHeaderWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__27050;
  v112 = __Block_byref_object_dispose__27051;
  v113 = 0;
  collectionView = [(CNContactListViewController *)self collectionView];
  shouldDisplayMeContactBanner = [(CNContactListViewController *)self shouldDisplayMeContactBanner];
  shouldDisplaySuggestionsController = [(CNContactListViewController *)self shouldDisplaySuggestionsController];
  [collectionView contentOffset];
  v10 = v9;
  v12 = v11;
  array = [MEMORY[0x1E695DF70] array];
  if ([(CNContactListViewController *)self isSearchController])
  {
    v14 = 0;
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  if (![(CNContactListViewController *)self shouldDisplayTipContentView]|| [(CNContactListViewController *)self isSearching])
  {
    tipKitContentView = [(CNContactListViewController *)self tipKitContentView];
    v14 = tipKitContentView != 0;

    goto LABEL_6;
  }

  v14 = 0;
  v16 = 1;
LABEL_7:
  if ([(CNContactListViewController *)self shouldDisplayMeContactBanner])
  {
    [(CNContactListViewController *)self setupMeBannerAvatarController];
  }

  if ([(CNContactListViewController *)self shouldDisplayListHeaderView])
  {
    v79 = v10;
    v101 = 0;
    v102 = &v101;
    v103 = 0x4010000000;
    v104 = "";
    v17 = *(MEMORY[0x1E695F058] + 16);
    v105 = *MEMORY[0x1E695F058];
    v107 = *(&v17 + 1);
    v106 = width;
    array2 = [MEMORY[0x1E695DF70] array];
    [collectionView adjustedContentInset];
    v20 = v12 + v19;
    v78 = v12 + v19 == 0.0;
    if (v14)
    {
      tipKitContentView2 = [(CNContactListViewController *)self tipKitContentView];
      superview = [tipKitContentView2 superview];
      v23 = superview != 0;

      v77 = v23;
      v24 = v20 == 0.0 && v23;
    }

    else
    {
      v77 = 0;
      v24 = 0;
    }

    v29 = *MEMORY[0x1E695F060];
    v30 = *(MEMORY[0x1E695F060] + 8);
    if ((v16 | v24))
    {
      tipKitContentView3 = [(CNContactListViewController *)self tipKitContentView];
      [tipKitContentView3 setTranslatesAutoresizingMaskIntoConstraints:1];
      LODWORD(v32) = 1148846080;
      LODWORD(v33) = 1132068864;
      [tipKitContentView3 systemLayoutSizeFittingSize:v102[6] withHorizontalFittingPriority:0.0 verticalFittingPriority:{v32, v33}];
      v35 = v34;
      v37 = v36;
      if (tipKitContentView3)
      {
        [array2 addObject:tipKitContentView3];
        if (shouldDisplayMeContactBanner)
        {
          v38 = 0;
          goto LABEL_29;
        }

        goto LABEL_38;
      }

      v40 = CNUILogContactList();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_199A75000, v40, OS_LOG_TYPE_ERROR, "Attempting to display tipContentView when view is nil", buf, 2u);
      }

      if (!shouldDisplayMeContactBanner)
      {
        tipKitContentView3 = 0;
LABEL_38:
        meContactBanner = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v37 = *(MEMORY[0x1E695F060] + 8);
      v35 = *MEMORY[0x1E695F060];
      if (!shouldDisplayMeContactBanner)
      {
        tipKitContentView3 = 0;
        meContactBanner = 0;
        v35 = *MEMORY[0x1E695F060];
        v37 = *(MEMORY[0x1E695F060] + 8);
LABEL_39:
        v47 = v30;
        v75 = v29;
LABEL_40:
        v49 = v35;
        if (shouldDisplaySuggestionsController)
        {
          suggestionsController = [(CNContactListViewController *)self suggestionsController];
          view = [suggestionsController view];

          view2 = [(CNContactListViewController *)self view];
          [view2 bounds];
          v54 = v53;
          [(CNContactListViewController *)self suggestionsControllerHeight];
          v30 = v55;

          suggestionsController2 = [(CNContactListViewController *)self suggestionsController];
          [suggestionsController2 willMoveToParentViewController:self];

          [array2 addObject:view];
          suggestionsController3 = [(CNContactListViewController *)self suggestionsController];
          [(CNContactListViewController *)self addChildViewController:suggestionsController3];
          v29 = v54 + -10.0;
        }

        else
        {
          view = 0;
        }

        v102[7] = v37 + v47 + v30;
        [(CNContactListViewController *)self setEstimatedListHeaderViewHeight:*&v75];
        listHeaderView = [(CNContactListViewController *)self listHeaderView];

        if (listHeaderView)
        {
          listHeaderView2 = [(CNContactListViewController *)self listHeaderView];
          v60 = v109[5];
          v109[5] = listHeaderView2;

          [v109[5] bounds];
          v62 = v61;
          v63 = v102[7];
          [v109[5] setFrame:{v102[4], v102[5], v102[6], v63}];
          v64 = v14;
          v28 = v62 != v63;
        }

        else
        {
          v65 = objc_alloc(MEMORY[0x1E69DD250]);
          v66 = [v65 initWithFrame:{v102[4], v102[5], v102[6], v102[7]}];
          v64 = v14;
          v67 = v109[5];
          v109[5] = v66;

          v28 = 1;
        }

        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke;
        v81[3] = &unk_1E74E39C0;
        v68 = view;
        v87 = &v108;
        v89 = v29;
        v90 = v30;
        v82 = v68;
        selfCopy = self;
        v69 = tipKitContentView3;
        v84 = v69;
        v91 = v49;
        v92 = v37;
        v70 = meContactBanner;
        v85 = v70;
        v93 = v76;
        v94 = v47;
        v97 = v64;
        v98 = v78;
        v95 = v79;
        v96 = v12;
        v99 = v77;
        v86 = collectionView;
        v88 = &v101;
        v71 = [v81 copy];
        v72 = _Block_copy(v71);
        [array addObject:v72];

        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke_5;
        v80[3] = &unk_1E74E39E8;
        v80[4] = &v108;
        [array2 enumerateObjectsUsingBlock:v80];

        _Block_object_dispose(&v101, 8);
        v10 = v79;
        goto LABEL_47;
      }
    }

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v38 = [currentDevice userInterfaceIdiom] != 1;

    tipKitContentView3 = 0;
LABEL_29:
    [(CNContactListViewController *)self updateMeContactBannerContentsWithTopKeyline:v38];
    meContactBanner = [(CNContactListViewController *)self meContactBanner];
    meContactBanner2 = [(CNContactListViewController *)self meContactBanner];
    [meContactBanner2 sizeThatFits:{width, height}];
    v44 = v43;
    v46 = v45;

    if (v38)
    {
      v47 = v46 + 1.0;
    }

    else
    {
      v47 = v46;
    }

    v75 = v44;
    if (meContactBanner)
    {
      [array2 addObject:meContactBanner];
    }

    else
    {
      v48 = CNUILogContactList();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_199A75000, v48, OS_LOG_TYPE_ERROR, "Attempting to display meContactBanner when view is nil", buf, 2u);
      }

      meContactBanner = 0;
    }

    goto LABEL_40;
  }

  if (!shouldDisplayMeContactBanner)
  {
    environment = [(CNContactListViewController *)self environment];
    launchCheckinRegistrar = [environment launchCheckinRegistrar];
    [launchCheckinRegistrar checkInLaunchTasks:2];
  }

  [(CNContactListBannerView *)self->_meContactBanner removeFromSuperview];
  view3 = [(CNContactSuggestionsViewController *)self->_suggestionsController view];
  [view3 removeFromSuperview];

  v28 = 0;
LABEL_47:
  [(CNContactListViewController *)self setListHeaderView:v109[5]];
  [collectionView setContentOffset:{v10, v12}];
  [array _cn_each:&__block_literal_global_613];
  if (v28 || [(CNContactListViewController *)self headerViewNeedsUpdate])
  {
    self->_headerViewNeedsUpdate = 0;
    [(CNContactListViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
    collectionView2 = [(CNContactListViewController *)self collectionView];
    collectionViewLayout = [collectionView2 collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }

  _Block_object_dispose(&v108, 8);
}

void __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(*(*(a1 + 72) + 8) + 40) frame];
    [*(a1 + 32) setFrame:?];
  }

  v2 = [*(a1 + 40) view];
  v3 = [v2 traitCollection];
  v4 = [v3 layoutDirection];

  if (*(a1 + 48))
  {
    [*(*(*(a1 + 72) + 8) + 40) frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (v4 == 1)
    {
      v11 = [*(a1 + 40) view];
      [v11 layoutMargins];
      v13 = v12;
      v14 = [*(a1 + 40) view];
      [v14 layoutMargins];
      v10 = v10 - (v13 + v15);
    }

    v16 = *(a1 + 112);
    v17 = *(a1 + 32);
    if (v17)
    {
      [v17 frame];
      v19 = v18;
      [*(a1 + 32) frame];
      v8 = v8 + v19 + v20;
    }

    [*(a1 + 48) setFrame:{v6, v8, v10, v16}];
  }

  if (*(a1 + 56))
  {
    [*(*(*(a1 + 72) + 8) + 40) frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    if (v4 == 1)
    {
      v27 = [*(a1 + 40) view];
      [v27 layoutMargins];
      v29 = v28;
      v30 = [*(a1 + 40) view];
      [v30 safeAreaInsets];
      v26 = v26 - (v29 + v31);
    }

    v32 = *(a1 + 128);
    v33 = *(a1 + 48);
    if (v33)
    {
      [v33 frame];
      v35 = v34;
      [*(a1 + 48) frame];
      v24 = v24 + v35 + v36;
    }

    [*(a1 + 56) setFrame:{v22, v24, v26, v32}];
  }

  if (*(a1 + 152) == 1)
  {
    v37 = *(a1 + 40);
    if (*(a1 + 153))
    {
      if (*(a1 + 154) == 1)
      {
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke_2;
        v52[3] = &unk_1E74E3998;
        v38 = *(a1 + 48);
        v39 = *(a1 + 64);
        v40 = *(a1 + 104);
        v57 = *(a1 + 136);
        v58 = v40;
        v51 = *(a1 + 40);
        v41 = *(a1 + 56);
        *&v42 = v51;
        *(&v42 + 1) = v41;
        *&v43 = v38;
        *(&v43 + 1) = v39;
        v53 = v43;
        v54 = v42;
        v55 = *(a1 + 32);
        v44 = *(a1 + 88);
        v59 = *(a1 + 120);
        v60 = v44;
        v56 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
        [v37 performWhenViewIsLaidOut:v52];
      }

      else
      {
        v50 = *(a1 + 40);

        [v50 tipKitDismissTip];
      }
    }

    else
    {
      v45 = *(a1 + 144);
      v46 = [*(a1 + 40) tipKitContentView];
      [v46 bounds];
      v47 = v45 - CGRectGetHeight(v62);

      [*(a1 + 40) tipKitDismissTip];
      v48 = *(a1 + 136);
      v49 = *(a1 + 64);

      [v49 setContentOffset:{v48, v47}];
    }
  }
}

void __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(*(a1 + 32) + 8) + 40) subviews];
  v4 = [v3 _cn_containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(*(*(a1 + 32) + 8) + 40) addSubview:v5];
  }
}

void __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke_3;
  v18[3] = &unk_1E74E3948;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v3 = *(a1 + 104);
  v21 = *(a1 + 88);
  v22 = v3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke_4;
  v11[3] = &unk_1E74E3970;
  v4 = *(a1 + 40);
  v15 = *(a1 + 88);
  *&v5 = v4;
  *(&v5 + 1) = *(a1 + 48);
  v10 = v5;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  v9 = *(a1 + 136);
  v16 = *(a1 + 120);
  v17 = v9;
  v14 = *(a1 + 72);
  [v2 animateWithDuration:v18 animations:v11 completion:0.33];
}

uint64_t __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56) + *(a1 + 72);
  v4 = *(a1 + 40);

  return [v4 setContentOffset:{v2, v3}];
}

uint64_t __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setContentOffset:{*(a1 + 80), *(a1 + 88)}];
  [*(a1 + 40) tipKitDismissTip];
  if (*(a1 + 48))
  {
    v2 = *(a1 + 104);
    if (!*(a1 + 56))
    {
      v3 = 0.0;
LABEL_6:
      *(*(*(a1 + 64) + 8) + 56) = v2 + v3;
      [*(*(*(a1 + 72) + 8) + 40) setFrame:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 64) + 8) + 48), *(*(*(a1 + 64) + 8) + 56)}];
      [*(a1 + 40) setEstimatedListHeaderViewHeight:*(*(*(a1 + 64) + 8) + 56)];
      goto LABEL_7;
    }

LABEL_5:
    v3 = *(a1 + 120);
    goto LABEL_6;
  }

  v2 = 0.0;
  if (*(a1 + 56))
  {
    goto LABEL_5;
  }

  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

LABEL_7:
  v4 = *(*(*(a1 + 72) + 8) + 40);
  v5 = *(a1 + 40);

  return [v5 setListHeaderView:v4];
}

- (void)refreshTableViewHeaderForContactChanges
{
  if (![(CNContactListViewController *)self isSearchController])
  {
    if ([(CNContactListViewController *)self shouldDisplayTipContentView]|| ([(CNContactListViewController *)self tipKitContentView], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
    }
  }

  shouldDisplayMeContactBanner = [(CNContactListViewController *)self shouldDisplayMeContactBanner];
  shouldDisplaySuggestionsController = [(CNContactListViewController *)self shouldDisplaySuggestionsController];
  viewIfLoaded = [(CNContactSuggestionsViewController *)self->_suggestionsController viewIfLoaded];
  superview = [viewIfLoaded superview];

  meContactBanner = [(CNContactListViewController *)self meContactBanner];
  superview2 = [meContactBanner superview];

  if (superview)
  {
    v10 = 1;
  }

  else
  {
    v10 = shouldDisplaySuggestionsController;
  }

  if (shouldDisplayMeContactBanner && superview2 && (v10 & 1) == 0)
  {

    [(CNContactListViewController *)self updateMeContactBannerContentsWithTopKeyline:0];
  }

  else
  {
    if (superview)
    {
      v11 = shouldDisplaySuggestionsController;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 && !shouldDisplayMeContactBanner && superview2 == 0;
    if ((v12 | v10))
    {
      v13 = ~v12;
    }

    else
    {
      v13 = shouldDisplayMeContactBanner || superview2 != 0;
    }

    if (v13)
    {

      [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
    }
  }
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (CNUIIsContacts() || CNUIIsMobilePhone())
  {
    view = [(CNContactListViewController *)self view];
    [view safeAreaInsets];
    v7 = 0.0 - (v6 + 1.0);

    collectionView = [(CNContactListViewController *)self collectionView];
    [collectionView setContentOffset:animatedCopy animated:{0.0, v7}];
  }

  else
  {
    collectionView = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    [CNContactListViewController scrollToItemAtIndexPath:"scrollToItemAtIndexPath:animated:scrollPosition:" animated:? scrollPosition:?];
  }
}

- (double)contactListHeaderHeight
{
  listHeaderView = [(CNContactListViewController *)self listHeaderView];

  if (!listHeaderView)
  {
    return 0.0;
  }

  listHeaderView2 = [(CNContactListViewController *)self listHeaderView];
  [listHeaderView2 frame];
  v6 = v5;

  return v6;
}

- (void)refreshTableViewHeaderIfVisibleWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(CNContactListViewController *)self isViewLoaded])
  {
    view = [(CNContactListViewController *)self view];
    window = [view window];

    if (window)
    {

      [(CNContactListViewController *)self refreshTableViewHeaderWithSize:width, height];
    }
  }
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(CNContactListViewController *)self updateSelectedContactCount];
  if (self->_suggestionsController && [(CNContactListViewController *)self allowsMultiSelection])
  {
    v5 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:pathCopy];
    [(CNContactSuggestionsViewController *)self->_suggestionsController setCellStateSelected:0 forContact:v5 animated:0];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(CNContactListViewController *)self isPathToDuplicatesBanner:pathCopy]&& ![(CNContactListViewController *)self isPathToCreateNewContactRow:pathCopy]&& ![(CNContactListViewController *)self isPathToContentUnavailableRow:pathCopy]&& ![(CNContactListViewController *)self isPathToLimitedAccessTipRow:pathCopy])
  {
    if (self->_suggestionsController && [(CNContactListViewController *)self allowsMultiSelection])
    {
      v7 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:pathCopy];
      [(CNContactSuggestionsViewController *)self->_suggestionsController setCellStateSelected:1 forContact:v7 animated:0];
    }

    [(CNContactListViewController *)self updateSelectedContactCount];
    if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
    {
      collectionView = [(CNContactListViewController *)self collectionView];
      allowsMultipleSelection = [collectionView allowsMultipleSelection];

      if (allowsMultipleSelection)
      {
        indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
        v11 = [indexPathsForSelectedItems count];

        if (v11 <= 1)
        {
          [(CNContactListViewController *)self showCardForSelectedContactAtIndexPath:pathCopy];
        }
      }
    }
  }
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  viewCopy = view;
  if ([viewCopy isEditing] && (objc_msgSend(viewCopy, "allowsMultipleSelectionDuringEditing") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
    v5 = [indexPathsForSelectedItems count] > 1;
  }

  return v5;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(CNContactListViewController *)self isPathToDuplicatesBanner:pathCopy])
  {
    canPerformDuplicatesMerge = [(CNContactListViewController *)self canPerformDuplicatesMerge];
    goto LABEL_8;
  }

  if ([(CNContactListViewController *)self isPathToCreateNewContactRow:pathCopy])
  {
    [(CNContactListViewController *)self createNewContactTapped];
LABEL_7:
    canPerformDuplicatesMerge = 0;
    goto LABEL_8;
  }

  if ([(CNContactListViewController *)self isPathToContentUnavailableRow:pathCopy]|| [(CNContactListViewController *)self isPathToLimitedAccessTipRow:pathCopy])
  {
    goto LABEL_7;
  }

  v8 = [(CNContactListViewController *)self canSelectContactAtCollectionViewIndexPath:pathCopy];
  if (pathCopy)
  {
    canPerformDuplicatesMerge = v8;
  }

  else
  {
    canPerformDuplicatesMerge = 0;
  }

LABEL_8:

  return canPerformDuplicatesMerge;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (![(CNContactListViewController *)self isPathToCreateNewContactRow:pathCopy])
  {
    if ([(CNContactListViewController *)self isPathToDuplicatesBanner:pathCopy]|| [(CNContactListViewController *)self isPathToContentUnavailableRow:pathCopy]|| [(CNContactListViewController *)self isPathToLimitedAccessTipRow:pathCopy]|| ![(CNContactListViewController *)self canSelectContactAtCollectionViewIndexPath:pathCopy]|| [(CNContactListViewController *)self limitedAccessPickerType]== 5)
    {
      v6 = 0;
      goto LABEL_9;
    }

    delegate = [(CNContactListViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:pathCopy];
      delegate2 = [(CNContactListViewController *)self delegate];
      v6 = [delegate2 contactListViewController:self shouldSelectContact:v10 atIndexPath:pathCopy];

      goto LABEL_9;
    }
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  v8 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 cancelAsyncOperations];
  }
}

- (BOOL)collectionView:(id)view canEditItemAtIndexPath:(id)path
{
  v4 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:path];
  isSuggested = [v4 isSuggested];

  return isSuggested ^ 1;
}

- (id)collectionView:(id)view indexPathForIndexTitle:(id)title atIndex:(int64_t)index
{
  v7 = [(CNContactDataSource *)self->_dataSource indexSections:view];
  v8 = [v7 objectAtIndexedSubscript:index];

  v9 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v8, "range")}];
  v10 = [(CNContactListViewController *)self collectionViewIndexPathForDataSourceIndexPath:v9];

  return v10;
}

- (id)indexTitlesForCollectionView:(id)view
{
  v4 = *MEMORY[0x1E6996530];
  _sections = [(CNContactListViewController *)self _sections];
  LOBYTE(v4) = (*(v4 + 16))(v4, _sections);

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    indexSections = [(CNContactDataSource *)self->_dataSource indexSections];
    v6 = [indexSections valueForKey:@"title"];
  }

  return v6;
}

- (void)setContactFormatter:(id)formatter
{
  formatterCopy = formatter;
  contactFormatter = [(CNContactListViewController *)self contactFormatter];

  if (contactFormatter != formatterCopy)
  {
    objc_storeStrong(&self->_contactFormatter, formatter);
    searchResultsController = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController setContactFormatter:formatterCopy];
  }
}

- (BOOL)isContactWithIdentifierEmergencyContact:(id)contact
{
  contactCopy = contact;
  emergencyContactIdentifiers = [(CNContactListViewController *)self emergencyContactIdentifiers];
  v6 = [emergencyContactIdentifiers containsObject:contactCopy];

  return v6;
}

- (BOOL)isContactWithIdentifierMeContactOrLinkedToMeContact:(id)contact
{
  v21 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  preferredForNameMeContact = [(CNContactListViewController *)self preferredForNameMeContact];
  v6 = preferredForNameMeContact;
  if (preferredForNameMeContact)
  {
    identifier = [preferredForNameMeContact identifier];
    v8 = [identifier isEqualToString:contactCopy];

    if (v8)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      linkedContacts = [v6 linkedContacts];
      v9 = [linkedContacts countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(linkedContacts);
            }

            identifier2 = [*(*(&v16 + 1) + 8 * i) identifier];
            v14 = [identifier2 isEqualToString:contactCopy];

            if (v14)
            {
              LOBYTE(v9) = 1;
              goto LABEL_15;
            }
          }

          v9 = [linkedContacts countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)canSelectContactAtCollectionViewIndexPath:(id)path
{
  selfCopy = self;
  v4 = [(CNContactListViewController *)self dataSourceIndexPathForCollectionViewIndexPath:path];
  LOBYTE(selfCopy) = [(CNContactListViewController *)selfCopy canSelectContactAtIndexPath:v4];

  return selfCopy;
}

- (BOOL)canSelectContactAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNContactListViewController *)self _contactAtIndexPath:pathCopy];
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 contactListViewController:self canSelectContact:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:@"CNContactListLayoutFooterIdentifier"])
  {
    collectionView = [(CNContactListViewController *)self collectionView];
    v12 = [collectionView dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"CNContactListCountFooterViewIdentifier" forIndexPath:pathCopy];

    clearConfiguration = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [v12 setBackgroundConfiguration:clearConfiguration];

    [v12 setShouldHideCountFooter:{+[CNLimitedAccessPickerSupport isPickerLimitedAccess:](CNLimitedAccessPickerSupport, "isPickerLimitedAccess:", -[CNContactListViewController limitedAccessPickerType](self, "limitedAccessPickerType"))}];
    objc_opt_class();
    v14 = viewCopy;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    listHeaderView = v15;

    if (listHeaderView)
    {
      [listHeaderView setContactCountView:v12];
      [v12 setDelegate:self];
    }
  }

  else
  {
    v17 = [kindCopy isEqualToString:@"CNContactListLayoutHeaderIdentifier"];
    collectionView2 = [(CNContactListViewController *)self collectionView];
    v19 = collectionView2;
    if (v17)
    {
      v12 = [collectionView2 dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"CNContactListHeaderViewIdentifier" forIndexPath:pathCopy];

      clearConfiguration2 = [MEMORY[0x1E69DC6E8] clearConfiguration];
      [v12 setBackgroundConfiguration:clearConfiguration2];

      listHeaderView = [(CNContactListViewController *)self listHeaderView];
      [v12 setHeaderView:listHeaderView];
    }

    else
    {
      v12 = [collectionView2 dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"CNContactListSectionHeaderFooterIdentifier" forIndexPath:pathCopy];

      listHeaderView = [(CNContactListViewController *)self dataSourceIndexPathForCollectionViewIndexPath:pathCopy];
      v21 = [kindCopy isEqualToString:*MEMORY[0x1E69DDC08]];
      if ([(CNContactListViewController *)self isHandlingSearch])
      {
        v22 = -[CNContactListViewController titleForHeaderInSection:](self, "titleForHeaderInSection:", [listHeaderView section]);
        contactListStyleApplier = [(CNContactListViewController *)self contactListStyleApplier];
        [contactListStyleApplier applyContactListStyleToSearchHeader:v12 withTitle:v22];
      }

      else if (v21)
      {
        view = [(CNContactListViewController *)self view];
        traitCollection = [view traitCollection];
        layoutDirection = [traitCollection layoutDirection];

        contactListStyleApplier2 = [(CNContactListViewController *)self contactListStyleApplier];
        contactListStyle = [contactListStyleApplier2 contactListStyle];
        traitCollection2 = [v12 traitCollection];
        v29 = [contactListStyle listAppearanceForTraitCollection:traitCollection2];

        v30 = -[CNContactListViewController titleForHeaderInSection:](self, "titleForHeaderInSection:", [listHeaderView section]);
        contactListStyleApplier3 = [(CNContactListViewController *)self contactListStyleApplier];

        if (contactListStyleApplier3)
        {
          contactListStyleApplier4 = [(CNContactListViewController *)self contactListStyleApplier];
          [viewCopy directionalLayoutMargins];
          [contactListStyleApplier4 applyContactListStyleToHeaderFooter:v12 withTitle:v30 isRTL:layoutDirection == 1 listAppearance:v29 superviewDirectionalLayoutMargins:?];
        }
      }

      else
      {
        [v12 setContentConfiguration:0];
      }
    }
  }

  return v12;
}

- (void)setImageForContact:(id)contact imageUpdateBlock:(id)block
{
  v20[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  blockCopy = block;
  avatarRenderer = [(CNContactListViewController *)self avatarRenderer];

  if (!avatarRenderer)
  {
    v9 = [CNAvatarImageRenderer alloc];
    v10 = [CNAvatarImageRendererSettings defaultSettingsWithCacheSize:8];
    v11 = [(CNAvatarImageRenderer *)v9 initWithSettings:v10];
    [(CNContactListViewController *)self setAvatarRenderer:v11];
  }

  traitCollection = [(CNContactListViewController *)self traitCollection];
  v13 = [traitCollection layoutDirection] == 1;

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v16 = [CNAvatarImageRenderingScope scopeWithPointSize:v13 scale:0 rightToLeft:48.0 style:48.0, v15];

  avatarRenderer2 = [(CNContactListViewController *)self avatarRenderer];
  v20[0] = contactCopy;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v19 = [avatarRenderer2 avatarImageForContacts:v18 scope:v16];
  blockCopy[2](blockCopy, v19);
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v45[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if ([(CNContactListViewController *)self isPathToContentUnavailableRow:pathCopy])
  {
    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"CNContactListContentUnavailableCellIdentifier" forIndexPath:pathCopy];
    cellContentUnavailableConfiguration = [(CNContactListViewController *)self cellContentUnavailableConfiguration];
    [(__CFString *)v8 setContentConfiguration:cellContentUnavailableConfiguration];
LABEL_6:

    goto LABEL_7;
  }

  if ([(CNContactListViewController *)self isPathToDuplicatesBanner:pathCopy])
  {
    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"CNContactListDuplicatesBannerIdentifier" forIndexPath:pathCopy];
    [(__CFString *)v8 setDelegate:self];
    contactListStyleApplier = [(CNContactListViewController *)self contactListStyleApplier];
    [(__CFString *)v8 setContactListStyleApplier:contactListStyleApplier];

    if (self->_duplicatesController)
    {
      cellContentUnavailableConfiguration = [(CNContactListViewController *)self duplicatesController];
      [cellContentUnavailableConfiguration decorateBannerViewCell:v8];
      goto LABEL_6;
    }

    [(__CFString *)v8 updateWithCount:[(CNContactListViewController *)self newDuplicatesCountToDisplay]];
  }

  else if ([(CNContactListViewController *)self isPathToCreateNewContactRow:pathCopy])
  {
    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"CNContactListAddNewContactCellIdentifier" forIndexPath:pathCopy];
    defaultContentConfiguration = [(__CFString *)v8 defaultContentConfiguration];
    v13 = CNContactsUIBundle();
    v14 = [v13 localizedStringForKey:@"ADD_NEW_CONTACT_CELL_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [defaultContentConfiguration setText:v14];

    v15 = +[CNUIColorRepository contactListAddNewContactLabelTextColor];
    textProperties = [defaultContentConfiguration textProperties];
    [textProperties setColor:v15];

    [(__CFString *)v8 setContentConfiguration:defaultContentConfiguration];
    v17 = objc_alloc_init(MEMORY[0x1E69DC7B0]);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __69__CNContactListViewController_collectionView_cellForItemAtIndexPath___block_invoke;
    v44[3] = &unk_1E74E6A88;
    v44[4] = self;
    [v17 setActionHandler:v44];
    [v17 setDisplayedState:0];
    v45[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    [(__CFString *)v8 setAccessories:v18];
  }

  else if ([(CNContactListViewController *)self isPathToLimitedAccessTipRow:pathCopy])
  {
    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"CNContactListLimitedAccessTipIdentifier" forIndexPath:pathCopy];
    [(__CFString *)v8 setDelegate:self];
    contactListStyleApplier2 = [(CNContactListViewController *)self contactListStyleApplier];
    [(__CFString *)v8 setContactListStyleApplier:contactListStyleApplier2];

    appName = [(CNContactListViewController *)self appName];
    [(__CFString *)v8 updateWithAppName:appName isLimited:[CNLimitedAccessPickerSupport isPickerLimitedAccess:[(CNContactListViewController *)self limitedAccessPickerType]]];
  }

  else
  {
    v21 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:pathCopy];
    if ([(CNContactListViewController *)self limitedAccessPickerType]== 6)
    {
      v22 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"CNLimitedAccessContactListCellIdentifier" forIndexPath:pathCopy];
      contactFormatter = [(CNContactListViewController *)self contactFormatter];
      [v22 setContactFormatter:contactFormatter];

      [v22 setUserInteractionEnabled:{-[CNContactListViewController canSelectContactAtCollectionViewIndexPath:](self, "canSelectContactAtCollectionViewIndexPath:", pathCopy)}];
      [v22 setContact:v21];
      [v22 setCaption:{-[CNContactListViewController limitedAccessContactCaption](self, "limitedAccessContactCaption")}];
      [v22 setIsShowingSearchResult:{-[CNContactListViewController isHandlingSearch](self, "isHandlingSearch")}];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __69__CNContactListViewController_collectionView_cellForItemAtIndexPath___block_invoke_2;
      v42[3] = &unk_1E74E3CF0;
      v8 = v22;
      v43 = v8;
      [(CNContactListViewController *)self setImageForContact:v21 imageUpdateBlock:v42];
      v24 = v43;
    }

    else
    {
      isHandlingSearch = [(CNContactListViewController *)self isHandlingSearch];
      v26 = @"CNContactListCellIdentifier";
      if (isHandlingSearch)
      {
        v26 = @"CNSearchListCellIdentifier";
      }

      v24 = v26;
      v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:v24 forIndexPath:pathCopy];
      contactListStyleApplier3 = [(CNContactListViewController *)self contactListStyleApplier];
      [(__CFString *)v8 setContactListStyleApplier:contactListStyleApplier3];

      contactFormatter2 = [(CNContactListViewController *)self contactFormatter];
      [(__CFString *)v8 setContactFormatter:contactFormatter2];

      contactMatchInfos = [(CNContactDataSource *)self->_dataSource contactMatchInfos];
      identifier = [v21 identifier];
      v31 = [contactMatchInfos objectForKey:identifier];

      objc_initWeak(&location, self);
      objc_initWeak(&from, v8);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __69__CNContactListViewController_collectionView_cellForItemAtIndexPath___block_invoke_3;
      v37[3] = &unk_1E74E3920;
      objc_copyWeak(&v38, &from);
      objc_copyWeak(&v39, &location);
      [(__CFString *)v8 setContactMatchInfo:v31 completionBlock:v37];
      [(__CFString *)v8 setUserInteractionEnabled:[(CNContactListViewController *)self canSelectContactAtCollectionViewIndexPath:pathCopy]];
      [(__CFString *)v8 setContact:v21];
      shouldDisplayEmergencyContacts = [(CNContactListViewController *)self shouldDisplayEmergencyContacts];
      if (shouldDisplayEmergencyContacts)
      {
        identifier = [v21 identifier];
        v33 = [(CNContactListViewController *)self isContactWithIdentifierEmergencyContact:identifier];
      }

      else
      {
        v33 = 0;
      }

      [(__CFString *)v8 setIsEmergencyContact:v33];
      if (shouldDisplayEmergencyContacts)
      {
      }

      [(__CFString *)v8 setDidFetchBlockStatus:0];
      identifier2 = [v21 identifier];
      [(__CFString *)v8 setIsMeCard:[(CNContactListViewController *)self isContactWithIdentifierMeContactOrLinkedToMeContact:identifier2]];

      if ([viewCopy allowsMultipleSelectionDuringEditing])
      {
        isEditing = [viewCopy isEditing];
      }

      else
      {
        isEditing = 0;
      }

      [(__CFString *)v8 setAllowsMultiSelection:isEditing];
      [(__CFString *)v8 setAllowsMultiSelectContextMenus:[(CNContactListViewController *)self shouldEnableMultiSelectContextMenus]];
      if ([(CNContactListViewController *)self isHandlingSearch])
      {
        contactListStyleApplier4 = [(CNContactListViewController *)self contactListStyleApplier];
        [contactListStyleApplier4 applyContactListStyleToSearchCell:v8];
      }

      else
      {
        contactListStyleApplier4 = [(CNContactListViewController *)self contactListStyleApplier];
        [contactListStyleApplier4 applyContactListStyleToCell:v8];
      }

      objc_destroyWeak(&v39);
      objc_destroyWeak(&v38);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }

LABEL_7:

  return v8;
}

void __69__CNContactListViewController_collectionView_cellForItemAtIndexPath___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 collectionView];
    v6 = [v5 indexPathForCell:WeakRetained];

    if (v6)
    {
      v7 = MEMORY[0x1E69DD250];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __69__CNContactListViewController_collectionView_cellForItemAtIndexPath___block_invoke_4;
      v8[3] = &unk_1E74E77C0;
      v8[4] = v4;
      v9 = v6;
      [v7 performWithoutAnimation:v8];
    }
  }
}

void __69__CNContactListViewController_collectionView_cellForItemAtIndexPath___block_invoke_4(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) collectionView];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 reloadItemsAtIndexPaths:v3];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if ([(CNContactListViewController *)self isDuplicatesRowSection:section]|| [(CNContactListViewController *)self isCreateNewContactRowSection:section]|| [(CNContactListViewController *)self isContentUnavailableRowSection:section]|| [(CNContactListViewController *)self isLimitedAccessTipRowSection:section])
  {
    return 1;
  }

  v8 = [(CNContactListViewController *)self dataSourceSectionIndexForCollectionViewSection:section];
  _sections = [(CNContactListViewController *)self _sections];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    contacts = [(CNContactDataSource *)self->_dataSource contacts];
    v6 = [contacts count];
  }

  else
  {
    contacts = [_sections objectAtIndexedSubscript:v8];
    [contacts range];
    v6 = v11;
  }

  return v6;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  v15 = *MEMORY[0x1E69E9840];
  _sections = [(CNContactListViewController *)self _sections];
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v5 = [_sections count];
    v6 = v5;
    if ((section & 0x8000000000000000) == 0 && v5 > section)
    {
      v7 = [_sections objectAtIndexedSubscript:section];
      title = [v7 title];

      goto LABEL_9;
    }

    v9 = CNUILogContactList();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 134218240;
      sectionCopy = section;
      v13 = 2048;
      v14 = v6;
      _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "Requesting header title for index out of bounds: %ld, sectionCount: %ld", &v11, 0x16u);
    }
  }

  title = 0;
LABEL_9:

  return title;
}

- (BOOL)shouldDisplaySupplementaryHeaderItemForSection:(int64_t)section
{
  if (![(CNContactListViewController *)self hasNoContacts])
  {
    if ([(CNContactListViewController *)self isHandlingSearch])
    {
      return 1;
    }

    if (![(CNContactListViewController *)self isDuplicatesRowSection:section]&& ![(CNContactListViewController *)self isCreateNewContactRowSection:section]&& ![(CNContactListViewController *)self isContentUnavailableRowSection:section]&& ![(CNContactListViewController *)self isLimitedAccessTipRowSection:section])
    {
      _sections = [(CNContactListViewController *)self _sections];
      v5 = [_sections count] > 1;

      return v5;
    }
  }

  return 0;
}

- (void)updateAdditionalSectionsAtTop
{
  shouldShowDuplicateBannerView = [(CNContactListViewController *)self shouldShowDuplicateBannerView];

  [(CNContactListViewController *)self setIsShowingDuplicatesBanner:shouldShowDuplicateBannerView];
}

- (id)collectionViewIndexPathForDataSourceIndexPath:(id)path
{
  if (path)
  {
    v5 = MEMORY[0x1E696AC88];
    pathCopy = path;
    item = [pathCopy item];
    section = [pathCopy section];

    v9 = [v5 indexPathForItem:item inSection:{-[CNContactListViewController additionalSectionsAtTopCount](self, "additionalSectionsAtTopCount") + section}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dataSourceIndexPathForCollectionViewIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[CNContactListViewController dataSourceSectionIndexForCollectionViewSection:](self, "dataSourceSectionIndexForCollectionViewSection:", [pathCopy section]);
  v6 = MEMORY[0x1E696AC88];
  item = [pathCopy item];

  return [v6 indexPathForItem:item inSection:v5];
}

- (id)_contactAtCollectionViewIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (!pathCopy || -[CNContactListViewController isDuplicatesRowSection:](self, "isDuplicatesRowSection:", [pathCopy section]) || -[CNContactListViewController isPathToCreateNewContactRow:](self, "isPathToCreateNewContactRow:", v5) || -[CNContactListViewController isPathToContentUnavailableRow:](self, "isPathToContentUnavailableRow:", v5) || -[CNContactListViewController isPathToLimitedAccessTipRow:](self, "isPathToLimitedAccessTipRow:", v5))
  {
    v6 = 0;
  }

  else
  {
    v8 = [(CNContactListViewController *)self dataSourceIndexPathForCollectionViewIndexPath:v5];
    v6 = [(CNContactListViewController *)self _contactAtIndexPath:v8];
  }

  return v6;
}

- (id)_contactAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    v7 = 0;
    goto LABEL_13;
  }

  _sections = [(CNContactListViewController *)self _sections];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v6 = [pathCopy row];
LABEL_7:
    contacts = [(CNContactDataSource *)self->_dataSource contacts];
    if ([contacts count] <= v6)
    {
      v7 = 0;
    }

    else
    {
      contacts2 = [(CNContactDataSource *)self->_dataSource contacts];
      v7 = [contacts2 objectAtIndexedSubscript:v6];
    }

    goto LABEL_12;
  }

  section = [pathCopy section];
  if (section < [_sections count])
  {
    v9 = [_sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    range = [v9 range];
    v6 = range + [pathCopy row];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_12:

LABEL_13:

  return v7;
}

- (void)contactDataSourceMeContactDidChange:(id)change
{
  v4 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v4 defaultSchedulerProvider];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CNContactListViewController_contactDataSourceMeContactDidChange___block_invoke;
  v7[3] = &unk_1E74E6A88;
  v7[4] = self;
  [mainThreadScheduler performBlock:v7];
}

uint64_t __67__CNContactListViewController_contactDataSourceMeContactDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1032);
  *(v2 + 1032) = 0;

  v4 = *(a1 + 32);

  return [v4 refreshTableViewHeaderForContactChanges];
}

- (void)reloadTitle
{
  if (objc_opt_respondsToSelector())
  {
    displayName = [(CNContactDataSource *)self->_dataSource displayName];
    [(CNContactListViewController *)self setTitle:displayName];
  }
}

- (void)contactDataSourceDisplayNameDidChange:(id)change
{
  changeCopy = change;
  if (objc_opt_respondsToSelector())
  {
    displayName = [changeCopy displayName];
    [(CNContactListViewController *)self setTitle:displayName];
  }
}

- (void)contactDataSourceDidChange:(id)change
{
  changeCopy = change;
  environment = [(CNContactListViewController *)self environment];
  defaultSchedulerProvider = [environment defaultSchedulerProvider];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CNContactListViewController_contactDataSourceDidChange___block_invoke;
  v9[3] = &unk_1E74E77C0;
  v9[4] = self;
  v10 = changeCopy;
  v8 = changeCopy;
  [mainThreadScheduler performBlock:v9];
}

void __58__CNContactListViewController_contactDataSourceDidChange___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) updateIsViewingTopLevelAllContacts];
  v2 = [*(a1 + 32) collectionView];
  v3 = [*(a1 + 32) selectedContacts];
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 40) displayName];
    [*(a1 + 32) setTitle:v4];
  }

  v5 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__CNContactListViewController_contactDataSourceDidChange___block_invoke_2;
  v20[3] = &unk_1E74E77C0;
  v20[4] = *(a1 + 32);
  v6 = v2;
  v21 = v6;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__CNContactListViewController_contactDataSourceDidChange___block_invoke_583;
  v19[3] = &unk_1E74E67A8;
  v19[4] = *(a1 + 32);
  [v5 animateWithDuration:v20 animations:v19 completion:0.0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 32) selectContact:*(*(&v15 + 1) + 8 * v11++) animated:0 scrollPosition:0 shouldScroll:{0, v15}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v9);
  }

  [*(a1 + 32) _setNeedsUpdateContentUnavailableConfiguration];
  [*(a1 + 32) setNeedsHeaderViewUpdate];
  [*(a1 + 32) _updateCountStringNow:1];
  v12 = [*(a1 + 32) delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [*(a1 + 32) delegate];
    [v14 dataSourceChangedForContactListViewController:*(a1 + 32)];
  }

  [*(a1 + 32) refreshTableViewHeaderIfVisible];
}

void __58__CNContactListViewController_contactDataSourceDidChange___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isPerformingDuplicatesMerge])
  {
    v2 = CNUILogContactList();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_199A75000, v2, OS_LOG_TYPE_DEBUG, "Currently performing duplicates merge, deferring reload until complete", v4, 2u);
    }
  }

  else
  {
    v3 = *(a1 + 40);

    [v3 reloadData];
  }
}

void __58__CNContactListViewController_contactDataSourceDidChange___block_invoke_583(uint64_t a1, int a2)
{
  if (a2)
  {
    v7 = [*(a1 + 32) visibleListViewController];
    v3 = [v7 dataSource];
    v4 = [v3 contacts];
    if (v4)
    {
      v5 = v4;
      v6 = [*(a1 + 32) searchCompletionBlock];

      if (!v6)
      {
        return;
      }

      v7 = [*(a1 + 32) searchCompletionBlock];
      [*(a1 + 32) setSearchCompletionBlock:0];
      v7[2]();
    }

    else
    {
    }
  }
}

- (id)contentUnavailableConfigurationForState:(id)state
{
  stateCopy = state;
  if (![(CNContactListViewController *)self hasNoContacts])
  {
    v6 = 0;
    goto LABEL_6;
  }

  if ([(CNContactListViewController *)self isHandlingSearch]|| [(CNContactListViewController *)self isShowingServerSearch])
  {
    searchConfiguration = [MEMORY[0x1E69DC8C8] searchConfiguration];
    v6 = [searchConfiguration updatedConfigurationForState:stateCopy];

    goto LABEL_6;
  }

  emptyProminentConfiguration = [MEMORY[0x1E69DC8C8] emptyProminentConfiguration];
  v6 = [emptyProminentConfiguration updatedConfigurationForState:stateCopy];

  if (![(CNContactListViewController *)self shouldDisplayMeContactBanner])
  {
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.fill"];
    [v6 setImage:v9];
  }

  delegate = [(CNContactListViewController *)self delegate];
  v11 = [delegate conformsToProtocol:&unk_1F0DC1F30];

  if (v11)
  {
    delegate2 = [(CNContactListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      isAddContactButtonShowing = [delegate2 isAddContactButtonShowing];
    }

    else
    {
      isAddContactButtonShowing = 0;
    }
  }

  else
  {
    isAddContactButtonShowing = 0;
  }

  [(CNContactListBannerView *)self->_meContactBanner bounds];
  [v6 setDirectionalLayoutMargins:{-v14, 0.0, 0.0, 0.0}];
  v15 = CNContactsUIBundle();
  v16 = [v15 localizedStringForKey:@"NO_CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
  [v6 setText:v16];

  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"NO_CONTACTS_HINT" value:&stru_1F0CE7398 table:@"Localized"];
  [v6 setSecondaryText:v18];

  showingGroup = [(CNContactListViewController *)self showingGroup];
  collectionViewShouldDisplayCreateNewContact = [(CNContactListViewController *)self collectionViewShouldDisplayCreateNewContact];
  if (!isAddContactButtonShowing || !showingGroup)
  {
    if (((isAddContactButtonShowing | collectionViewShouldDisplayCreateNewContact) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

  if (![(CNContactListViewController *)self allowsListEditing])
  {
LABEL_22:
    v29 = CNContactsUIBundle();
    v30 = [v29 localizedStringForKey:@"CREATE_NEW_CONTACT_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    buttonProperties = [v6 buttonProperties];
    configuration = [buttonProperties configuration];
    [configuration setTitle:v30];

    v25 = MEMORY[0x1E69DC628];
    v26 = CNContactsUIBundle();
    v27 = [v26 localizedStringForKey:@"CREATE_NEW_CONTACT_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __71__CNContactListViewController_contentUnavailableConfigurationForState___block_invoke;
    v43 = &unk_1E74E7608;
    selfCopy = self;
    v28 = &v40;
    goto LABEL_23;
  }

  v21 = CNContactsUIBundle();
  v22 = [v21 localizedStringForKey:@"ADD_CONTACTS_TO_LIST_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  buttonProperties2 = [v6 buttonProperties];
  configuration2 = [buttonProperties2 configuration];
  [configuration2 setTitle:v22];

  v25 = MEMORY[0x1E69DC628];
  v26 = CNContactsUIBundle();
  v27 = [v26 localizedStringForKey:@"ADD_CONTACTS_TO_LIST_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v35 = MEMORY[0x1E69E9820];
  v36 = 3221225472;
  v37 = __71__CNContactListViewController_contentUnavailableConfigurationForState___block_invoke_2;
  v38 = &unk_1E74E7608;
  selfCopy2 = self;
  v28 = &v35;
LABEL_23:
  v33 = [v25 actionWithTitle:v27 image:0 identifier:0 handler:{v28, v35, v36, v37, v38, selfCopy2, v40, v41, v42, v43, selfCopy}];
  buttonProperties3 = [v6 buttonProperties];
  [buttonProperties3 setPrimaryAction:v33];

LABEL_6:

  return v6;
}

void __71__CNContactListViewController_contentUnavailableConfigurationForState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sender];
  [*(a1 + 32) addContactsToListTappedWithSourceView:v3];
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  cellContentUnavailableConfiguration = [(CNContactListViewController *)self cellContentUnavailableConfiguration];
  v5 = [(CNContactListViewController *)self contentUnavailableConfigurationForState:stateCopy];

  shouldEmbedContentUnavailableViewInCell = [(CNContactListViewController *)self shouldEmbedContentUnavailableViewInCell];
  if (shouldEmbedContentUnavailableViewInCell)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (shouldEmbedContentUnavailableViewInCell)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  [(CNContactListViewController *)self setCellContentUnavailableConfiguration:v7];
  [(CNContactListViewController *)self _setContentUnavailableConfiguration:v8];
  cellContentUnavailableConfiguration2 = [(CNContactListViewController *)self cellContentUnavailableConfiguration];
  v10 = cellContentUnavailableConfiguration2;
  if (cellContentUnavailableConfiguration != cellContentUnavailableConfiguration2 && (!cellContentUnavailableConfiguration || !cellContentUnavailableConfiguration2 || ([cellContentUnavailableConfiguration isEqual:cellContentUnavailableConfiguration2] & 1) == 0))
  {
    collectionView = [(CNContactListViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (BOOL)isShowingCustomTitle
{
  objc_opt_class();
  dataSource = [(CNContactListViewController *)self dataSource];
  filter = [dataSource filter];
  if (objc_opt_isKindOfClass())
  {
    v5 = filter;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    customDisplayName = [v6 customDisplayName];
    v8 = customDisplayName != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isShowingServerSearch
{
  objc_opt_class();
  dataSource = [(CNContactListViewController *)self dataSource];
  filter = [dataSource filter];
  if (objc_opt_isKindOfClass())
  {
    v5 = filter;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    isServerFilter = [v6 isServerFilter];
  }

  else
  {
    isServerFilter = 0;
  }

  return isServerFilter;
}

- (BOOL)showingGroup
{
  objc_opt_class();
  dataSource = [(CNContactListViewController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = dataSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    filterShowsSingleGroup = [v5 filterShowsSingleGroup];
  }

  else
  {
    filterShowsSingleGroup = 0;
  }

  return filterShowsSingleGroup;
}

- (void)didDismissSearchController:(id)controller
{
  navigationItem = [(CNContactListViewController *)self navigationItem];
  [navigationItem setBackButtonTitle:0];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(CNContactDataSource *)self->_dataSource shouldReturnToAccountsAndGroupsViewAfterSearchIsCanceled])
  {
    navigationController = [(CNContactListViewController *)self navigationController];
    [navigationController presentGroupsViewController:0];
  }

  navigationController2 = [(CNContactListViewController *)self navigationController];
  [navigationController2 clearServerSearchIfNeeded:0];

  if ([(CNContactListViewController *)self isPickerWithToolbarSearchField])
  {
    [(CNContactListSearchController *)self->_searchController setAutomaticallyShowsCancelButton:1];
    navigationController3 = [(CNContactListViewController *)self navigationController];
    [navigationController3 setNavigationBarHidden:0];
  }
}

- (void)willDismissSearchController:(id)controller
{
  +[CNUIDataCollectionSearchSession end];
  if (objc_opt_respondsToSelector())
  {
    displayName = [(CNContactDataSource *)self->_dataSource displayName];
    [(CNContactListViewController *)self setTitle:displayName];
  }

  collectionView = [(CNContactListViewController *)self collectionView];
  [collectionView setHidden:0];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [(CNContactListViewController *)self searchBar];
  searchField = [searchBar searchField];
  text = [searchField text];

  v6 = [&stru_1F0CE7398 isEqual:text];
  v7 = v6;
  if (v6)
  {
    searchResultsController = [(CNContactListViewController *)self searchResultsController];
    dataSource = [searchResultsController dataSource];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      searchResultsController2 = [(CNContactListViewController *)self searchResultsController];
      dataSource2 = [searchResultsController2 dataSource];
      [dataSource2 reset];
    }
  }

  [(CNContactListViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  filter = [(CNContactDataSource *)self->_dataSource filter];
  v14 = [filter copy];

  [v14 setFullTextString:text];
  searchResultsController3 = [(CNContactListViewController *)self searchResultsController];
  dataSource3 = [searchResultsController3 dataSource];
  filter2 = [dataSource3 filter];
  v18 = [v14 isEqual:filter2];

  if ((v18 & 1) == 0)
  {
    v19 = +[CNUIDataCollectionSearchSession currentSession];
    [v19 searchStringDidChange];

    searchResultsController4 = [(CNContactListViewController *)self searchResultsController];
    dataSource4 = [searchResultsController4 dataSource];
    [dataSource4 setFilter:v14];

    if ((v7 & 1) == 0)
    {
      searchResultsController5 = [(CNContactListViewController *)self searchResultsController];
      dataSource5 = [searchResultsController5 dataSource];

      if (objc_opt_respondsToSelector())
      {
        [dataSource5 reloadAsynchronously];
      }

      else
      {
        [dataSource5 reload];
      }
    }
  }
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if (([featureFlags isFeatureEnabled:29] & 1) == 0)
  {

    goto LABEL_6;
  }

  searchController = [(CNContactListViewController *)self searchController];
  isActive = [searchController isActive];

  if (!isActive)
  {
LABEL_6:
    searchController2 = [(CNContactListViewController *)self searchController];
    [(CNContactListViewController *)self updateSearchResultsForSearchController:searchController2];
    goto LABEL_7;
  }

  v8 = *MEMORY[0x1E6996568];
  text = [editingCopy text];
  LODWORD(v8) = (*(v8 + 16))(v8, text);

  if (!v8)
  {
    goto LABEL_8;
  }

  searchController3 = [(CNContactListViewController *)self searchController];
  [(CNContactListViewController *)self updateSearchResultsForSearchController:searchController3];

  searchController2 = [(CNContactListViewController *)self searchController];
  [searchController2 setActive:0];
LABEL_7:

LABEL_8:
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  searchBar = [(CNContactListViewController *)self searchBar];
  [searchBar setText:&stru_1F0CE7398];

  searchController = [(CNContactListViewController *)self searchController];
  [(CNContactListViewController *)self updateSearchResultsForSearchController:searchController];
}

- (void)didPresentSearchController:(id)controller
{
  controllerCopy = controller;
  pendingSearchQuery = [(CNContactListViewController *)self pendingSearchQuery];

  if (pendingSearchQuery)
  {
    pendingSearchQuery2 = [(CNContactListViewController *)self pendingSearchQuery];
    searchBar = [controllerCopy searchBar];
    [searchBar setText:pendingSearchQuery2];

    [(CNContactListViewController *)self setPendingSearchQuery:0];
  }

  shouldSearchBarBecomeFirstResponder = [(CNContactListViewController *)self shouldSearchBarBecomeFirstResponder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CNContactListViewController_didPresentSearchController___block_invoke;
  v10[3] = &unk_1E74E4768;
  v12 = shouldSearchBarBecomeFirstResponder;
  v11 = controllerCopy;
  v9 = controllerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __58__CNContactListViewController_didPresentSearchController___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) searchBar];
    v3 = [v2 isFirstResponder];

    if ((v3 & 1) == 0)
    {
      v4 = [*(a1 + 32) searchBar];
      [v4 becomeFirstResponder];
    }
  }
}

- (void)willPresentSearchController:(id)controller
{
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SEARCH_NAV_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  navigationItem = [(CNContactListViewController *)self navigationItem];
  [navigationItem setBackButtonTitle:v5];

  +[CNUIDataCollectionSearchSession begin];
  if (CNUIIsFaceTime())
  {
    goto LABEL_6;
  }

  view = [(CNContactListViewController *)self view];
  if (([view isOpaque] & 1) == 0)
  {

    goto LABEL_6;
  }

  ab_shouldUseTransparentBackgroundInPopovers = [(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers];

  if (ab_shouldUseTransparentBackgroundInPopovers)
  {
LABEL_6:
    collectionView = [(CNContactListViewController *)self collectionView];
    [collectionView setHidden:1];
  }

  if ([(CNContactListViewController *)self isPickerWithToolbarSearchField])
  {
    navigationController = [(CNContactListViewController *)self navigationController];
    [navigationController setNavigationBarHidden:1];
  }
}

- (NSString)currentSearchString
{
  searchBar = [(CNContactListViewController *)self searchBar];

  if (searchBar)
  {
    searchBar2 = [(CNContactListViewController *)self searchBar];
    text = [searchBar2 text];
  }

  else
  {
    text = 0;
  }

  return text;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"effectiveFilter"])
  {
    searchCompletionBlock = [(CNContactListViewController *)self searchCompletionBlock];

    if (searchCompletionBlock)
    {
      searchCompletionBlock2 = [(CNContactListViewController *)self searchCompletionBlock];
      [(CNContactListViewController *)self setSearchCompletionBlock:0];
      searchCompletionBlock2[2](searchCompletionBlock2);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CNContactListViewController;
    [(CNContactListViewController *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)searchForString:(id)string animated:(BOOL)animated completionBlock:(id)block
{
  stringCopy = string;
  blockCopy = block;
  if (stringCopy)
  {
    [(CNContactListSearchController *)self->_searchController setActive:1];
    if (self->_shouldSearchBarBecomeFirstResponder)
    {
      [(UISearchBar *)self->_searchBar becomeFirstResponder];
    }

    [(CNContactListViewController *)self setSearchCompletionBlock:blockCopy];
    searchResultsController = [(CNContactListViewController *)self searchResultsController];
    dataSource = [searchResultsController dataSource];
    [dataSource addObserver:self forKeyPath:@"effectiveFilter" options:0 context:0];

    [(UISearchBar *)self->_searchBar setText:stringCopy];
  }

  else
  {
    [(CNContactListViewController *)self setSearchCompletionBlock:0];
    [(CNContactListSearchController *)self->_searchController setActive:0];
  }
}

- (BOOL)hasSearchPrefix
{
  isSearching = [(CNContactListViewController *)self isSearching];
  if (isSearching)
  {
    v4 = *MEMORY[0x1E6996570];
    currentSearchString = [(CNContactListViewController *)self currentSearchString];
    LOBYTE(v4) = (*(v4 + 16))(v4, currentSearchString);

    LOBYTE(isSearching) = v4;
  }

  return isSearching;
}

- (void)_handleCoalescedBlockListDidChange
{
  collectionView = [(CNContactListViewController *)self collectionView];
  collectionView2 = [(CNContactListViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView2 indexPathsForVisibleItems];
  [collectionView reloadItemsAtIndexPaths:indexPathsForVisibleItems];
}

- (void)_searchBarDidEndEditing:(id)editing
{
  delegate = [(CNContactListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    searchBar = [(CNContactListViewController *)self searchBar];
    searchField = [searchBar searchField];
    [searchField resignFirstResponder];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__CNContactListViewController__searchBarDidEndEditing___block_invoke;
    block[3] = &unk_1E74E6A88;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __55__CNContactListViewController__searchBarDidEndEditing___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CNContactListViewController__searchBarDidEndEditing___block_invoke_2;
  block[3] = &unk_1E74E6A88;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __55__CNContactListViewController__searchBarDidEndEditing___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) splitViewController];
  v3 = [v2 isFirstResponder];

  if (v3)
  {
    v5 = [*(a1 + 32) delegate];
    v4 = [v5 nextResponderForContactListViewController:*(a1 + 32)];
    [v4 becomeFirstResponder];
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  [(CNContactListViewController *)self reloadContacts];

  [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
}

- (void)_applicationEnteringForeground:(id)foreground
{
  [MEMORY[0x1E695CD10] _cnui_requestRefreshWithUserAction:0];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:16];

  if (v6)
  {

    [(CNContactListViewController *)self refreshDuplicates];
  }
}

- (void)contactStoreDidChangeWithNotification:(id)notification
{
  defaultSchedulerProvider = [(CNUIContactsEnvironment *)self->_environment defaultSchedulerProvider];
  mainThreadScheduler = [defaultSchedulerProvider mainThreadScheduler];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__CNContactListViewController_contactStoreDidChangeWithNotification___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [mainThreadScheduler performBlock:v6];
}

void __69__CNContactListViewController_contactStoreDidChangeWithNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) refreshTableViewHeaderForContactChanges];
  if ([*(a1 + 32) hasNoContacts])
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) delegate];
      [v4 resetContactViewController];
    }
  }
}

- (void)fetchDuplicatesCountWithCompletionBlock:(id)block
{
  blockCopy = block;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];
  v7 = [schedulerProvider backgroundSchedulerWithQualityOfService:4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CNContactListViewController_fetchDuplicatesCountWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E74E6DD0;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [v7 performBlock:v9];
}

void __71__CNContactListViewController_fetchDuplicatesCountWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allDuplicatesCountToDisplay];
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 schedulerProvider];
  v5 = [v4 mainThreadScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__CNContactListViewController_fetchDuplicatesCountWithCompletionBlock___block_invoke_2;
  v7[3] = &unk_1E74E38F8;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  v9 = v2;
  [v5 performBlock:v7];
}

void __71__CNContactListViewController_fetchDuplicatesCountWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) collectionView];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4 && [v4 duplicateCount] != *(a1 + 48))
  {
    [v4 setDuplicateCount:?];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_updateCountStringNow:(BOOL)now
{
  nowCopy = now;
  objc_opt_class();
  collectionView = [(CNContactListViewController *)self collectionView];
  if (objc_opt_isKindOfClass())
  {
    v6 = collectionView;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__CNContactListViewController__updateCountStringNow___block_invoke;
    aBlock[3] = &unk_1E74E6A88;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (nowCopy)
    {
      (*(v7 + 2))(v7);
    }

    else
    {
      v9 = dispatch_get_global_queue(9, 0);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __53__CNContactListViewController__updateCountStringNow___block_invoke_2;
      v10[3] = &unk_1E74E6F88;
      v11 = v8;
      dispatch_async(v9, v10);
    }
  }
}

void __53__CNContactListViewController__updateCountStringNow___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) collectionView];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v10 = v3;

  v4 = v10;
  if (v10)
  {
    if ([v10 isEditing])
    {
      v5 = [v10 allowsMultipleSelectionDuringEditing];
    }

    else
    {
      v5 = 0;
    }

    if (![*(a1 + 32) shouldDisplayCount] || v5)
    {
      [v10 setContactCount:0];
      [v10 setDuplicateCount:0];
    }

    else
    {
      v6 = [*(a1 + 32) dataSource];
      v7 = [v6 contacts];
      v8 = [v7 count];

      v9 = [v10 contactCount] == v8;
      v4 = v10;
      if (v9)
      {
        goto LABEL_14;
      }

      [v10 setContactCount:v8];
      [*(a1 + 32) _contactCountTelemetry:v8];
      [*(a1 + 32) updateDuplicatesCountBanner];
    }

    v4 = v10;
  }

LABEL_14:
}

void __53__CNContactListViewController__updateCountStringNow___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CNContactListViewController__updateCountStringNow___block_invoke_3;
  block[3] = &unk_1E74E6F88;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_contactCountTelemetry:(unint64_t)telemetry
{
  v4 = *&_LargeDatabasesSignpostLastContactsCountLogTimestamp + 60.0;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v7 = v6;

  if (v4 < v7)
  {
    v8 = _LargeDatabasesSignpostLogQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__CNContactListViewController__contactCountTelemetry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = telemetry;
    dispatch_async(v8, block);
  }
}

void __54__CNContactListViewController__contactCountTelemetry___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSince1970];
  _LargeDatabasesSignpostLastContactsCountLogTimestamp = v3;

  if (*(a1 + 32) >= 0xBB8uLL)
  {
    if (_LargeDatabasesMediumSeveritySignpostLogHandle_cn_once_token_2 != -1)
    {
      dispatch_once(&_LargeDatabasesMediumSeveritySignpostLogHandle_cn_once_token_2, &__block_literal_global_7);
    }

    v4 = _LargeDatabasesMediumSeveritySignpostLogHandle_cn_once_object_2;
    if (os_signpost_enabled(v4))
    {
      v5 = *(a1 + 32);
      v6 = 134349056;
      v7 = v5;
      _os_signpost_emit_with_name_impl(&dword_199A75000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HighContactsCount", " enableTelemetry=YES %{public, signpost.telemetry:number1, name=ContactsCount}lu", &v6, 0xCu);
    }
  }
}

- (void)reloadContacts
{
  [(CNContactDataSource *)self->_dataSource reload];

  [(CNContactListViewController *)self refreshDuplicates];
}

- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  animatedCopy = animated;
  pathCopy = path;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __77__CNContactListViewController_selectItemAtIndexPath_animated_scrollPosition___block_invoke;
  v20 = &unk_1E74E38D0;
  positionCopy = position;
  selfCopy = self;
  v9 = pathCopy;
  v22 = v9;
  v24 = animatedCopy;
  v10 = _Block_copy(&v17);
  if ([(CNContactListViewController *)self isValidIndexPath:v9, v17, v18, v19, v20, selfCopy])
  {
    collectionView = [(CNContactListViewController *)self collectionView];
    [collectionView selectItemAtIndexPath:v9 animated:animatedCopy scrollPosition:position];

    collectionView2 = [(CNContactListViewController *)self collectionView];
    if ([collectionView2 isEditing])
    {
      collectionView3 = [(CNContactListViewController *)self collectionView];
      allowsMultipleSelectionDuringEditing = [collectionView3 allowsMultipleSelectionDuringEditing];

      if (allowsMultipleSelectionDuringEditing)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    [(CNContactListViewController *)self deselectAllItemsExceptIndexPath:v9];
  }

LABEL_7:
  if (-[CNContactListViewController isViewLoaded](self, "isViewLoaded") && (-[CNContactListViewController collectionView](self, "collectionView"), v15 = objc_claimAutoreleasedReturnValue(), [v15 window], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
  {
    v10[2](v10);
  }

  else
  {
    [(CNContactListViewController *)self performWhenViewIsLaidOut:v10];
  }
}

void __77__CNContactListViewController_selectItemAtIndexPath_animated_scrollPosition___block_invoke(uint64_t a1)
{
  if (!*(a1 + 48) && [*(a1 + 32) isValidIndexPath:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) collectionView];
    [v2 scrollToItemAtIndexPath:*(a1 + 40) atScrollPosition:0 animated:*(a1 + 56)];
  }
}

- (void)scrollToItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  pathCopy = path;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __79__CNContactListViewController_scrollToItemAtIndexPath_animated_scrollPosition___block_invoke;
  v17 = &unk_1E74E38D0;
  selfCopy = self;
  v19 = pathCopy;
  positionCopy = position;
  animatedCopy = animated;
  v9 = pathCopy;
  v10 = _Block_copy(&v14);
  if (-[CNContactListViewController isViewLoaded](self, "isViewLoaded", v14, v15, v16, v17, selfCopy) && (-[CNContactListViewController collectionView](self, "collectionView"), v11 = objc_claimAutoreleasedReturnValue(), [v11 window], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    v10[2](v10);
  }

  else
  {
    pendingSearchQuery = [(CNContactListViewController *)self pendingSearchQuery];

    if (pendingSearchQuery)
    {
      [(CNContactListViewController *)self performWhenSearchCompleted:v10];
    }

    else
    {
      [(CNContactListViewController *)self performWhenViewIsLaidOut:v10];
    }
  }
}

void __79__CNContactListViewController_scrollToItemAtIndexPath_animated_scrollPosition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleListViewController];
  v5 = [v2 collectionView];

  v3 = [v5 numberOfSections];
  if (v3 > [*(a1 + 40) section])
  {
    v4 = [v5 numberOfItemsInSection:{objc_msgSend(*(a1 + 40), "section")}];
    if (v4 > [*(a1 + 40) row])
    {
      [v5 scrollToItemAtIndexPath:*(a1 + 40) atScrollPosition:*(a1 + 48) animated:*(a1 + 56)];
    }
  }
}

- (BOOL)selectContact:(id)contact animated:(BOOL)animated scrollPosition:(unint64_t)position shouldScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  animatedCopy = animated;
  v10 = [(CNContactDataSource *)self->_dataSource indexPathForContact:contact];
  if (v10)
  {
    v11 = [(CNContactListViewController *)self collectionViewIndexPathForDataSourceIndexPath:v10];
    v12 = [(CNContactListViewController *)self isValidIndexPath:v11];
    if (v12)
    {
      if (scrollCopy)
      {
        [(CNContactListViewController *)self selectItemAtIndexPath:v11 animated:animatedCopy scrollPosition:position];
      }

      else
      {
        collectionView = [(CNContactListViewController *)self collectionView];
        [collectionView selectItemAtIndexPath:v11 animated:animatedCopy scrollPosition:position];
      }
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)scrollTopToContactWithIdentifier:(id)identifier animated:(BOOL)animated
{
  identifierCopy = identifier;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __73__CNContactListViewController_scrollTopToContactWithIdentifier_animated___block_invoke;
  v16 = &unk_1E74E77C0;
  selfCopy = self;
  v18 = identifierCopy;
  v6 = identifierCopy;
  v7 = _Block_copy(&v13);
  if ([(CNContactListViewController *)self isViewLoaded:v13])
  {
    collectionView = [(CNContactListViewController *)self collectionView];
    window = [collectionView window];
    if (window)
    {
      v10 = window;
      pendingSearchQuery = [(CNContactListViewController *)self pendingSearchQuery];

      if (!pendingSearchQuery)
      {
        v7[2](v7);
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  pendingSearchQuery2 = [(CNContactListViewController *)self pendingSearchQuery];

  if (pendingSearchQuery2)
  {
    [(CNContactListViewController *)self performWhenSearchCompleted:v7];
  }

  else
  {
    [(CNContactListViewController *)self performWhenViewIsLaidOut:v7];
  }

LABEL_9:
}

void __73__CNContactListViewController_scrollTopToContactWithIdentifier_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 contacts];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__CNContactListViewController_scrollTopToContactWithIdentifier_animated___block_invoke_2;
  v6[3] = &unk_1E74E38A8;
  v7 = *(a1 + 40);
  v4 = [v3 indexOfObjectPassingTest:v6];

  v5 = [*(a1 + 32) indexPathForGlobalIndex:v4];
  if ([v5 section] || objc_msgSend(v5, "row"))
  {
    [*(a1 + 32) scrollToItemAtIndexPath:v5 animated:0 scrollPosition:1];
  }
}

uint64_t __73__CNContactListViewController_scrollTopToContactWithIdentifier_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)deselectAllSelectedIndexPathsAnimated:(BOOL)animated
{
  collectionView = [(CNContactListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  if ([(CNContactListViewController *)self isSearching])
  {
    searchResultsController = [(CNContactListViewController *)self searchResultsController];
    collectionView2 = [searchResultsController collectionView];
    indexPathsForSelectedItems2 = [collectionView2 indexPathsForSelectedItems];
  }

  else
  {
    indexPathsForSelectedItems2 = 0;
  }

  v10 = *MEMORY[0x1E6996530];
  if (((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], indexPathsForSelectedItems) & 1) == 0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__CNContactListViewController_deselectAllSelectedIndexPathsAnimated___block_invoke;
    v18[3] = &unk_1E74E3880;
    v18[4] = self;
    animatedCopy = animated;
    [indexPathsForSelectedItems _cn_each:v18];
  }

  if (((*(v10 + 16))(v10, indexPathsForSelectedItems2) & 1) == 0)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__CNContactListViewController_deselectAllSelectedIndexPathsAnimated___block_invoke_2;
    v16[3] = &unk_1E74E3880;
    v16[4] = self;
    animatedCopy2 = animated;
    [indexPathsForSelectedItems2 _cn_each:v16];
  }

  suggestionsController = self->_suggestionsController;
  if (suggestionsController)
  {
    collectionView3 = [(CNContactSuggestionsViewController *)suggestionsController collectionView];
    indexPathsForSelectedItems3 = [collectionView3 indexPathsForSelectedItems];

    if (((*(v10 + 16))(v10, indexPathsForSelectedItems3) & 1) == 0)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69__CNContactListViewController_deselectAllSelectedIndexPathsAnimated___block_invoke_3;
      v14[3] = &unk_1E74E3880;
      v14[4] = self;
      animatedCopy3 = animated;
      [indexPathsForSelectedItems3 _cn_each:v14];
    }
  }
}

void __69__CNContactListViewController_deselectAllSelectedIndexPathsAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 collectionView];
  [v5 deselectItemAtIndexPath:v4 animated:*(a1 + 40)];
}

void __69__CNContactListViewController_deselectAllSelectedIndexPathsAnimated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 searchResultsController];
  v5 = [v6 collectionView];
  [v5 deselectItemAtIndexPath:v4 animated:*(a1 + 40)];
}

void __69__CNContactListViewController_deselectAllSelectedIndexPathsAnimated___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1136);
  v4 = a2;
  v5 = [v3 collectionView];
  [v5 deselectItemAtIndexPath:v4 animated:*(a1 + 40)];
}

- (void)setCellStateSelected:(BOOL)selected forContact:(id)contact animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  contactCopy = contact;
  v8 = [(CNContactDataSource *)self->_dataSource indexPathForContact:?];
  v9 = [(CNContactListViewController *)self collectionViewIndexPathForDataSourceIndexPath:v8];
  if (![(CNContactListViewController *)self isValidIndexPath:v9])
  {
    goto LABEL_11;
  }

  collectionView = [(CNContactListViewController *)self collectionView];
  v11 = collectionView;
  if (selectedCopy)
  {
    [collectionView selectItemAtIndexPath:v9 animated:animatedCopy scrollPosition:0];

    if (!-[CNContactListViewController shouldDisplayListHeaderView](self, "shouldDisplayListHeaderView") || ![v9 isEqual:v8])
    {
      goto LABEL_8;
    }

    v11 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v9 inSection:{"item"), objc_msgSend(v9, "section") + 1}];
    [(CNContactListViewController *)self setIndexPathToSelect:v11];
  }

  else
  {
    [collectionView deselectItemAtIndexPath:v9 animated:animatedCopy];
  }

LABEL_8:
  suggestionsController = self->_suggestionsController;
  if (suggestionsController)
  {
    [(CNContactSuggestionsViewController *)suggestionsController setCellStateSelected:selectedCopy forContact:contactCopy animated:animatedCopy];
  }

  [(CNContactListViewController *)self updateInResponseToLimitedAccessSelectionChanged];
LABEL_11:
}

- (BOOL)isValidIndexPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy && [pathCopy section] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v5, "section") & 0x8000000000000000) == 0)
  {
    section = [v5 section];
    collectionView = [(CNContactListViewController *)self collectionView];
    if (section >= [collectionView numberOfSections] || objc_msgSend(v5, "row") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "row") < 0)
    {
    }

    else
    {
      v8 = [v5 row];
      collectionView2 = [(CNContactListViewController *)self collectionView];
      v10 = [collectionView2 numberOfItemsInSection:{objc_msgSend(v5, "section")}];

      if (v8 < v10)
      {
        v11 = 1;
        goto LABEL_13;
      }
    }
  }

  v12 = CNUILogContactList();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "invalid indexPath: %@", &v14, 0xCu);
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)limitedAccessTotalSelectedContacts
{
  if ([(CNContactListViewController *)self limitedAccessPickerType]== 5)
  {
    [(CNContactListViewController *)self limitedAccessContactSelection];
  }

  else
  {
    [(CNContactListViewController *)self limitedAccessContactsFromCurrentSelection];
  }
  v3 = ;
  allObjects = [v3 allObjects];

  return allObjects;
}

- (NSArray)selectedContacts
{
  v20 = *MEMORY[0x1E69E9840];
  collectionView = [(CNContactListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(indexPathsForSelectedItems, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = indexPathsForSelectedItems;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:*(*(&v15 + 1) + 8 * i), v15];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (self->_suggestionsController)
  {
    suggestionsController = [(CNContactListViewController *)self suggestionsController];
    selectedContacts = [suggestionsController selectedContacts];
    [v5 addObjectsFromArray:selectedContacts];
  }

  return v5;
}

- (void)setupForMultiSelection
{
  [(CNContactListViewController *)self setAllowsMultiSelection:1];
  if ([(CNContactListViewController *)self shouldDisplaySuggestionsController])
  {
    suggestionsController = [(CNContactListViewController *)self suggestionsController];
    [suggestionsController setAllowsMultiSelection:1];
  }

  if (![(CNContactListViewController *)self shouldAllowSearchForMultiSelect])
  {
    [(CNContactListViewController *)self disableSearchUI];
  }

  collectionView = [(CNContactListViewController *)self collectionView];
  [collectionView setAllowsMultipleSelectionDuringEditing:1];
  [collectionView setEditing:1];
}

- (BOOL)isPickerWithToolbarSearchField
{
  if (CNUIIsContacts() || CNUIIsMobilePhone() || ![(CNContactListViewController *)self presentsSearchUI])
  {
    return 0;
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:29])
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v6 = ![currentDevice userInterfaceIdiom] && -[CNContactListViewController limitedAccessPickerType](self, "limitedAccessPickerType") != 4 && -[CNContactListViewController limitedAccessPickerType](self, "limitedAccessPickerType") != 1 && -[CNContactListViewController limitedAccessPickerType](self, "limitedAccessPickerType") != 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)disableSearchUI
{
  self->_presentsSearchUI = 0;
  self->_isHandlingSearch = 0;
  searchController = [(CNContactListViewController *)self searchController];

  if (searchController)
  {
    navigationItem = [(CNContactListViewController *)self navigationItem];
    [navigationItem setSearchController:0];

    [(CNContactListViewController *)self setSearchResultsController:0];
    [(CNContactListViewController *)self setSearchController:0];

    [(CNContactListViewController *)self setSearchBar:0];
  }
}

- (void)performWhenSearchCompleted:(id)completed
{
  v5 = [completed copy];
  searchResultsController = [(CNContactListViewController *)self searchResultsController];
  [searchResultsController setSearchCompletionBlock:v5];
}

- (void)performWhenViewIsLaidOut:(id)out
{
  outCopy = out;
  pendingLayoutBlocks = [(CNContactListViewController *)self pendingLayoutBlocks];
  v5 = [outCopy copy];

  v6 = _Block_copy(v5);
  v7 = [pendingLayoutBlocks arrayByAddingObject:v6];
  [(CNContactListViewController *)self setPendingLayoutBlocks:v7];
}

- (void)reloadVisibleItems
{
  if ([(CNContactListViewController *)self isViewLoaded])
  {
    collectionView = [(CNContactListViewController *)self collectionView];
    window = [collectionView window];

    if (window)
    {
      v5 = *MEMORY[0x1E6996530];
      collectionView2 = [(CNContactListViewController *)self collectionView];
      indexPathsForVisibleItems = [collectionView2 indexPathsForVisibleItems];
      if (((*(v5 + 16))(v5, indexPathsForVisibleItems) & 1) == 0)
      {
        collectionView3 = [(CNContactListViewController *)self collectionView];
        window2 = [collectionView3 window];

        if (!window2)
        {
          return;
        }

        collectionView2 = [(CNContactListViewController *)self collectionView];
        indexPathsForVisibleItems = [(CNContactListViewController *)self collectionView];
        v6IndexPathsForVisibleItems = [indexPathsForVisibleItems indexPathsForVisibleItems];
        [collectionView2 reloadItemsAtIndexPaths:v6IndexPathsForVisibleItems];
      }
    }
  }
}

- (void)reconfigureVisibleItems
{
  if ([(CNContactListViewController *)self isViewLoaded])
  {
    collectionView = [(CNContactListViewController *)self collectionView];
    window = [collectionView window];

    if (window)
    {
      v5 = *MEMORY[0x1E6996530];
      collectionView2 = [(CNContactListViewController *)self collectionView];
      indexPathsForVisibleItems = [collectionView2 indexPathsForVisibleItems];
      if (((*(v5 + 16))(v5, indexPathsForVisibleItems) & 1) == 0)
      {
        collectionView3 = [(CNContactListViewController *)self collectionView];
        window2 = [collectionView3 window];

        if (!window2)
        {
          return;
        }

        collectionView2 = [(CNContactListViewController *)self collectionView];
        indexPathsForVisibleItems = [(CNContactListViewController *)self collectionView];
        v6IndexPathsForVisibleItems = [indexPathsForVisibleItems indexPathsForVisibleItems];
        [collectionView2 reconfigureItemsAtIndexPaths:v6IndexPathsForVisibleItems];
      }
    }
  }
}

void __41__CNContactListViewController_applyStyle__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) collectionView];
  v2 = [*(a1 + 32) collectionView];
  v3 = [v2 indexPathsForVisibleItems];
  [v4 reconfigureItemsAtIndexPaths:v3];
}

- (void)setContactListStyleApplier:(id)applier
{
  objc_storeStrong(&self->_contactListStyleApplier, applier);
  if ([(CNContactListViewController *)self isViewLoaded])
  {

    [(CNContactListViewController *)self applyStyle];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = CNContactListViewController;
  coordinatorCopy = coordinator;
  [(CNContactListViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__CNContactListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E74E3CC8;
  v9[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__CNContactListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_1E74E3CC8;
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

void __82__CNContactListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tipKitContentView];
  if (v2)
  {
  }

  else
  {
    v3 = [*(a1 + 32) view];
    v4 = [v3 traitCollection];
    v5 = [v4 layoutDirection];

    if (v5 != 1)
    {
      return;
    }
  }

  v6 = *(a1 + 32);
  v9 = [v6 view];
  [v9 bounds];
  [v6 refreshTableViewHeaderIfVisibleWithSize:{v7, v8}];
}

void __82__CNContactListViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) meContactBanner];
  if (v2)
  {
    v3 = [*(a1 + 32) meContactBanner];
    [v3 frame];
    v5 = v4 <= 0.0;
  }

  else
  {
    v5 = 1;
  }

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = [*(a1 + 32) tipKitContentView];
  if (v8 || v5)
  {
  }

  else if (v7 != 1)
  {
    v9 = *(a1 + 32);

    [v9 updateMeContactBannerTopKeyline];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v6 willMoveToParentViewController:?];
  if (!controller)
  {
    if ([(CNContactListViewController *)self isSearching])
    {
      searchBar = [(CNContactListViewController *)self searchBar];
      [(CNContactListViewController *)self searchBarCancelButtonClicked:searchBar];
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v6 viewDidDisappear:disappear];
  if (![(CNContactListViewController *)self isSearchController])
  {
    [(CNContactListViewController *)self tipKitStopObservation];
  }

  [(CNContactListViewController *)self updatelimitedAccessContactSelection];
  selectButtonView = [(CNContactListViewController *)self selectButtonView];

  if (selectButtonView)
  {
    selectButtonView2 = [(CNContactListViewController *)self selectButtonView];
    [selectButtonView2 removeFromSuperview];

    [(CNContactListViewController *)self setSelectButtonView:0];
  }

  [(CNContactListViewController *)self setIsCurrentViewStillOpen:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v13 viewDidAppear:appear];
  [(CNContactListViewController *)self setIsCurrentViewStillOpen:1];
  [(CNContactListViewController *)self setDidDeleteContact:0];
  delegate = [(CNContactDataSource *)self->_dataSource delegate];

  if (delegate != self)
  {
    [(CNContactDataSource *)self->_dataSource setDelegate:self];
  }

  if (![(CNContactListViewController *)self isHandlingSearch])
  {
    [(UICollectionViewController *)self _cnui_updateAccountsRefreshControl];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__CNContactListViewController_viewDidAppear___block_invoke;
  block[3] = &unk_1E74E6A88;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  listHeaderView = [(CNContactListViewController *)self listHeaderView];
  [listHeaderView frame];
  v8 = v7;
  view = [(CNContactListViewController *)self view];
  [view frame];
  v11 = v10;

  if ((ab_preferredContentSizeCategoryIsAccessibilityCategory & 1) != 0 || v8 != v11)
  {
    [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
  }

  if ([(CNContactListViewController *)self shouldEnableMultiSelectContextMenus])
  {
    [(CNContactListViewController *)self setupContactListForMultiSelectContextMenus];
  }

  if ([(CNContactListViewController *)self shouldDisplayEmergencyContacts])
  {
    [(CNContactListViewController *)self startHandlingEmergencyContacts];
  }
}

void __45__CNContactListViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSearching])
  {
    if ([*(a1 + 32) shouldSearchBarBecomeFirstResponder])
    {
      v2 = [*(a1 + 32) searchController];
      v3 = [v2 searchBar];
      v4 = [v3 isFirstResponder];

      if ((v4 & 1) == 0)
      {
        v6 = [*(a1 + 32) searchController];
        v5 = [v6 searchBar];
        [v5 becomeFirstResponder];
      }
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (![(CNContactListViewController *)self isCurrentViewStillOpen])
  {
    v26.receiver = self;
    v26.super_class = CNContactListViewController;
    [(CNContactListViewController *)&v26 viewWillAppear:appearCopy];
    [(CNContactListViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
    [(CNContactListViewController *)self configureNavigationBar];
    splitViewController = [(CNContactListViewController *)self splitViewController];
    if (!splitViewController || (v6 = splitViewController, -[CNContactListViewController splitViewController](self, "splitViewController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isCollapsed], v7, v6, v8))
    {
      [(CNContactListViewController *)self deselectAllSelectedIndexPathsAnimated:appearCopy];
      [(CNContactListViewController *)self adjustTableViewOffsetForIncomingSearchUI];
    }

    if (![(CNContactListViewController *)self isSearchController])
    {
      [(CNContactListViewController *)self tipKitStartObservation];
    }

    indexPathToSelect = [(CNContactListViewController *)self indexPathToSelect];
    if (indexPathToSelect)
    {
      v10 = indexPathToSelect;
      listHeaderView = [(CNContactListViewController *)self listHeaderView];
      if (listHeaderView)
      {
        v12 = listHeaderView;
        indexPathToSelect2 = [(CNContactListViewController *)self indexPathToSelect];
        v14 = [(CNContactListViewController *)self isValidIndexPath:indexPathToSelect2];

        if (v14)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __46__CNContactListViewController_viewWillAppear___block_invoke;
          block[3] = &unk_1E74E6A88;
          block[4] = self;
          dispatch_async(MEMORY[0x1E69E96A0], block);
        }
      }

      else
      {
      }
    }

    if ([CNLimitedAccessPickerSupport isPickerLimitedAccess:[(CNContactListViewController *)self limitedAccessPickerType]])
    {
      [(CNContactListViewController *)self setupViewWithLimitedAccessContactSelection];
      if ([CNLimitedAccessPickerSupport shouldLimitedAccessPickerSupportSelectAll:[(CNContactListViewController *)self limitedAccessPickerType]])
      {
        [(CNContactListViewController *)self addSelectButtonView];
      }

      if (![CNLimitedAccessPickerSupport isPickerLimitedAccessWithLists:[(CNContactListViewController *)self limitedAccessPickerType]])
      {
        [(CNContactListViewController *)self disableSearchUI];
      }
    }

    if ([(CNContactListViewController *)self hasPickerPrivacyUI])
    {
      objc_opt_class();
      navigationItem = [(CNContactListViewController *)self navigationItem];
      titleView = [navigationItem titleView];
      if (objc_opt_isKindOfClass())
      {
        v17 = titleView;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      navigationItem2 = [(CNContactListViewController *)self navigationItem];
      title = [navigationItem2 title];
      [v18 setTitle:title];
    }

    [(CNContactListViewController *)self applyStyle];
    collectionView = [(CNContactListViewController *)self collectionView];
    if ([collectionView isEditing])
    {
      collectionView2 = [(CNContactListViewController *)self collectionView];
      allowsMultipleSelectionDuringEditing = [collectionView2 allowsMultipleSelectionDuringEditing];

      if (allowsMultipleSelectionDuringEditing)
      {
        [(CNContactListViewController *)self _updateCountStringNow:1];
        [(CNContactListViewController *)self updateSelectedContactCount];
      }
    }

    else
    {
    }

    if ([(CNContactListViewController *)self isPickerWithToolbarSearchField])
    {
      navigationController = [(CNContactListViewController *)self navigationController];
      [navigationController setToolbarHidden:0];
    }
  }
}

uint64_t __46__CNContactListViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  v3 = [*(a1 + 32) indexPathToSelect];
  [v2 selectItemAtIndexPath:v3 animated:0 scrollPosition:0];

  v4 = *(a1 + 32);

  return [v4 setIndexPathToSelect:0];
}

- (void)configureNavigationBar
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:29];

  if (v5)
  {
    navigationController = [(CNContactListViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setPrefersLargeTitles:0];

    navigationItem = [(CNContactListViewController *)self navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    traitCollection = [(CNContactListViewController *)self traitCollection];
    v10 = [traitCollection _splitViewControllerContext] != 0;
    navigationController2 = [(CNContactListViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    standardAppearance = [navigationBar2 standardAppearance];
    [standardAppearance _setTitleControlHidden:v10];

    [(CNContactListViewController *)self updateBarButtonItems];
  }

  else
  {
    shouldUseLargeTitle = [(CNContactListViewController *)self shouldUseLargeTitle];
    navigationController3 = [(CNContactListViewController *)self navigationController];
    navigationBar3 = [navigationController3 navigationBar];
    [navigationBar3 setPrefersLargeTitles:shouldUseLargeTitle];

    if ([(CNContactListViewController *)self shouldUseLargeTitle])
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    navigationItem2 = [(CNContactListViewController *)self navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:v17];
  }
}

- (id)contextMenuInteraction
{
  collectionView = [(CNContactListViewController *)self collectionView];
  contextMenuInteraction = [collectionView contextMenuInteraction];

  return contextMenuInteraction;
}

- (void)listActionHelper:(id)helper didUpdateWithMenu:(id)menu
{
  helperCopy = helper;
  menuCopy = menu;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  collectionView = [(CNContactListViewController *)self collectionView];
  contextMenuInteraction = [collectionView contextMenuInteraction];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CNContactListViewController_listActionHelper_didUpdateWithMenu___block_invoke;
  v11[3] = &unk_1E74E3858;
  v13 = v14;
  v10 = menuCopy;
  v12 = v10;
  [contextMenuInteraction updateVisibleMenuWithBlock:v11];

  _Block_object_dispose(v14, 8);
}

id __66__CNContactListViewController_listActionHelper_didUpdateWithMenu___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24) == 1)
  {
    v6 = v3;
  }

  else
  {
    *(v5 + 24) = 1;
    v7 = [v3 children];
    v8 = [v7 _cn_filter:&__block_literal_global_444];

    v9 = [*(a1 + 32) arrayByAddingObjectsFromArray:v8];
    v6 = [v4 menuByReplacingChildren:v9];
  }

  return v6;
}

uint64_t __66__CNContactListViewController_listActionHelper_didUpdateWithMenu___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 identifier];
    v7 = [v6 isEqualToString:@"CNContactListActionHelperOrbMenuIdentifier"] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)actionDidFinish:(id)finish
{
  if (![finish shouldReloadListOnCompletion])
  {
    return;
  }

  [(CNContactListViewController *)self reloadContacts];
  collectionView = [(CNContactListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  [(CNContactListViewController *)self deselectAllSelectedIndexPathsAnimated:0];
  splitViewController = [(CNContactListViewController *)self splitViewController];
  if (splitViewController)
  {
    v6 = splitViewController;
    splitViewController2 = [(CNContactListViewController *)self splitViewController];
    isCollapsed = [splitViewController2 isCollapsed];

    if (!isCollapsed)
    {
      delegate = [(CNContactListViewController *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate2 = [(CNContactListViewController *)self delegate];
        currentlyDisplayedContact = [delegate2 currentlyDisplayedContact];

        if (currentlyDisplayedContact && [(CNContactListViewController *)self selectContact:currentlyDisplayedContact animated:1 scrollPosition:0])
        {
LABEL_15:
          if ([(CNContactListViewController *)self selectContact:currentlyDisplayedContact animated:1 scrollPosition:0])
          {
LABEL_17:
            if ([(CNContactListViewController *)self selectContact:currentlyDisplayedContact animated:1 scrollPosition:0])
            {
              delegate3 = [(CNContactListViewController *)self delegate];
              v20 = objc_opt_respondsToSelector();

              if ((v20 & 1) == 0)
              {
                goto LABEL_23;
              }

              delegate4 = [(CNContactListViewController *)self delegate];
              [delegate4 contactListViewController:self updatedSelectedContact:currentlyDisplayedContact];
LABEL_22:

              goto LABEL_23;
            }

LABEL_20:
            delegate5 = [(CNContactListViewController *)self delegate];
            v23 = objc_opt_respondsToSelector();

            if ((v23 & 1) == 0)
            {
              goto LABEL_23;
            }

            delegate4 = [(CNContactListViewController *)self delegate];
            [delegate4 resetContactViewController];
            goto LABEL_22;
          }

LABEL_16:
          v17 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
          v18 = [(CNContactListViewController *)self _contactAtIndexPath:v17];

          currentlyDisplayedContact = v18;
          if (!v18)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }
      }

      else
      {
        currentlyDisplayedContact = 0;
      }

      if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
      {
        firstObject = [indexPathsForSelectedItems firstObject];
        v16 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:firstObject];

        currentlyDisplayedContact = v16;
      }

      if (!currentlyDisplayedContact)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  delegate6 = [(CNContactListViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    currentlyDisplayedContact = [(CNContactListViewController *)self delegate];
    [currentlyDisplayedContact resetContactViewController];
LABEL_23:
  }
}

- (void)action:(id)action presentViewController:(id)controller
{
  controllerCopy = controller;
  popoverPresentationController = [controllerCopy popoverPresentationController];
  sourceView = [popoverPresentationController sourceView];

  if (!sourceView)
  {
    collectionView = [(CNContactListViewController *)self collectionView];
    popoverPresentationController2 = [controllerCopy popoverPresentationController];
    [popoverPresentationController2 setSourceView:collectionView];

    collectionView2 = [(CNContactListViewController *)self collectionView];
    [collectionView2 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    popoverPresentationController3 = [controllerCopy popoverPresentationController];
    [popoverPresentationController3 setSourceRect:{v11, v13, v15, v17}];
  }

  splitViewController = [(CNContactListViewController *)self splitViewController];

  if (splitViewController)
  {
    [(CNContactListViewController *)self splitViewController];
  }

  else
  {
    [(CNContactListViewController *)self navigationController];
  }
  v20 = ;
  [v20 presentViewController:controllerCopy animated:1 completion:0];
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  v5 = [(CNContactListViewController *)self actionHelper:view];
  [v5 willDismissMenu];
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  viewCopy = view;
  actionHelper = [(CNContactListViewController *)self actionHelper];
  contextMenuInteraction = [viewCopy contextMenuInteraction];

  [actionHelper willDisplayMenuWithContextMenuInteraction:contextMenuInteraction];
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  actionHelper = [(CNContactListViewController *)self actionHelper];
  contacts = [actionHelper contacts];
  v9 = [contacts count];

  if (v9 == 1)
  {
    delegate = [(CNContactListViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __104__CNContactListViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
      v12[3] = &unk_1E74E6A88;
      v12[4] = self;
      [animatorCopy addCompletion:v12];
    }
  }
}

void __104__CNContactListViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 actionHelper];
  v4 = [v3 contacts];
  v5 = [v4 firstObject];
  [v6 contactListViewController:v2 didSelectContact:v5 shouldScrollToContact:0];
}

- (id)contextMenuConfigurationForContactsAtIndexPaths:(id)paths
{
  v30 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  if ([(CNContactListViewController *)self containsPathToDuplicatesBanner:pathsCopy]|| [(CNContactListViewController *)self containsPathToCreateNewContactRow:pathsCopy]|| [(CNContactListViewController *)self containsPathToContentUnavailableRow:pathsCopy]|| [(CNContactListViewController *)self containsPathToLimitedAccessTipRow:pathsCopy]|| [(CNContactListViewController *)self disableContextMenus])
  {
    v5 = 0;
    goto LABEL_7;
  }

  v7 = [(CNContactListViewController *)self contactsForActionsAtIndexPaths:pathsCopy];
  objc_opt_class();
  firstObject = [v7 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v9 = firstObject;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    v13 = CNUILogContactList();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      firstObject2 = [v7 firstObject];
      *buf = 138412290;
      v29 = firstObject2;
      _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "contextMenuConfiguration on non-contact: %@", buf, 0xCu);
    }

LABEL_19:
    v5 = 0;
    goto LABEL_21;
  }

  collectionView = [(CNContactListViewController *)self collectionView];
  firstObject3 = [pathsCopy firstObject];
  v13 = [collectionView cellForItemAtIndexPath:firstObject3];

  if (![(CNContactListViewController *)self isHandlingSearch])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__CNContactListViewController_contextMenuConfigurationForContactsAtIndexPaths___block_invoke_2;
    aBlock[3] = &unk_1E74E4A60;
    aBlock[4] = self;
    v17 = v7;
    v24 = v17;
    v13 = v13;
    v25 = v13;
    v18 = _Block_copy(aBlock);
    v19 = MEMORY[0x1E69DC8D8];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __79__CNContactListViewController_contextMenuConfigurationForContactsAtIndexPaths___block_invoke_3;
    v21[3] = &unk_1E74E60D0;
    v22 = v17;
    v5 = [v19 configurationWithIdentifier:&stru_1F0CE7398 previewProvider:v21 actionProvider:v18];

    goto LABEL_21;
  }

  if (![CNQuickActionsManager hasActionsForContact:v10])
  {
    goto LABEL_19;
  }

  actionHelper = [(CNContactListViewController *)self actionHelper];
  v15 = [actionHelper searchMenuActionProviderForContacts:v7];

  v16 = MEMORY[0x1E69DC8D8];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __79__CNContactListViewController_contextMenuConfigurationForContactsAtIndexPaths___block_invoke;
  v26[3] = &unk_1E74E60D0;
  v27 = v7;
  v5 = [v16 configurationWithIdentifier:&stru_1F0CE7398 previewProvider:v26 actionProvider:v15];

LABEL_21:
LABEL_7:

  return v5;
}

CNContactOrbHeaderViewController *__79__CNContactListViewController_contextMenuConfigurationForContactsAtIndexPaths___block_invoke(uint64_t a1)
{
  v1 = [[CNContactOrbHeaderViewController alloc] initWithContacts:*(a1 + 32)];

  return v1;
}

id __79__CNContactListViewController_contextMenuConfigurationForContactsAtIndexPaths___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 filter];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) actionHelper];
  v7 = [v6 actionsForContacts:*(a1 + 40) dataSourceFilter:v5 sourceView:*(a1 + 48)];

  v8 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F0CE7398 children:v7];

  return v8;
}

CNContactOrbHeaderViewController *__79__CNContactListViewController_contextMenuConfigurationForContactsAtIndexPaths___block_invoke_3(uint64_t a1)
{
  v1 = [[CNContactOrbHeaderViewController alloc] initWithContacts:*(a1 + 32)];

  return v1;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  pathsCopy = paths;
  if ([pathsCopy count] && (-[CNContactListViewController shouldEnableMultiSelectContextMenus](self, "shouldEnableMultiSelectContextMenus") || objc_msgSend(pathsCopy, "count") == 1))
  {
    v7 = [(CNContactListViewController *)self contextMenuConfigurationForContactsAtIndexPaths:pathsCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)showCardForSelectedContactAtIndexPath:(id)path
{
  pathCopy = path;
  if (![(CNContactListViewController *)self isPathToCreateNewContactRow:?]&& ![(CNContactListViewController *)self isPathToContentUnavailableRow:pathCopy])
  {
    delegate = [(CNContactListViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:pathCopy];
      if ([(CNContactListViewController *)self isHandlingSearch])
      {
        v7 = +[CNUIDataCollectionSearchSession currentSession];
        [v7 didSelectResult:v6];
      }

      delegate2 = [(CNContactListViewController *)self delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        delegate3 = [(CNContactListViewController *)self delegate];
        [delegate3 setAllowsContactBlocking:1];
      }

      delegate4 = [(CNContactListViewController *)self delegate];
      [delegate4 contactListViewController:self didSelectContact:v6 shouldScrollToContact:0];
    }
  }
}

- (void)deselectAllItemsExceptIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(CNContactListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CNContactListViewController_deselectAllItemsExceptIndexPath___block_invoke;
  v8[3] = &unk_1E74E3810;
  v9 = pathCopy;
  selfCopy = self;
  v7 = pathCopy;
  [indexPathsForSelectedItems _cn_each:v8];
}

void __63__CNContactListViewController_deselectAllItemsExceptIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isEqual:*(a1 + 32)] & 1) == 0)
  {
    v3 = [*(a1 + 40) collectionView];
    [v3 deselectItemAtIndexPath:v4 animated:0];
  }
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([viewCopy isEditing])
  {
    allowsMultipleSelectionDuringEditing = [viewCopy allowsMultipleSelectionDuringEditing];
  }

  else
  {
    allowsMultipleSelectionDuringEditing = 0;
  }

  indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
  v9 = [indexPathsForSelectedItems count];

  if (v9 >= 2 && (allowsMultipleSelectionDuringEditing & 1) == 0)
  {
    [(CNContactListViewController *)self deselectAllItemsExceptIndexPath:pathCopy];
  }

  [(CNContactListViewController *)self showCardForSelectedContactAtIndexPath:pathCopy];
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = !-[CNContactListViewController isPathToCreateNewContactRow:](self, "isPathToCreateNewContactRow:", pathCopy) && !-[CNContactListViewController isPathToContentUnavailableRow:](self, "isPathToContentUnavailableRow:", pathCopy) && (![viewCopy isEditing] || (objc_msgSend(viewCopy, "allowsMultipleSelectionDuringEditing") & 1) == 0) && -[CNContactListViewController canSelectContactAtCollectionViewIndexPath:](self, "canSelectContactAtCollectionViewIndexPath:", pathCopy);

  return v8;
}

- (BOOL)collectionView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  if ([(CNContactListViewController *)self isHandlingSearch:view])
  {
    return 0;
  }

  return [(CNContactListViewController *)self shouldEnableMultiSelectContextMenus];
}

- (void)setAllowsMultiSelectContextMenus:(BOOL)menus
{
  if (self->_allowsMultiSelectContextMenus != menus)
  {
    self->_allowsMultiSelectContextMenus = menus;
    [(CNContactListViewController *)self setupContactListForMultiSelectContextMenus];
  }
}

- (id)contactForActionsAtIndexPath:(id)path forMultiSelectAction:(BOOL)action
{
  actionCopy = action;
  v20[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:pathCopy];
  dataSource = self->_dataSource;
  v9 = [CNContactListActionHelper descriptorForRequiredKeysForMultiSelectAction:actionCopy];
  v20[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v11 = [(CNContactDataSource *)dataSource completeContactFromContact:v7 fromMainStoreOnly:1 keysToFetch:v10];

  null = [MEMORY[0x1E695DFB0] null];
  LODWORD(v9) = [v11 isEqual:null];

  if (v9)
  {
    v13 = CNUILogContactList();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = pathCopy;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "NSNull returned when attempting to refetch contact at  indexPath: %@, contact: %@", &v16, 0x16u);
    }
  }

  v14 = (*(*MEMORY[0x1E6996590] + 16))();

  return v14;
}

- (id)contactsForActionsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [pathsCopy count];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __62__CNContactListViewController_contactsForActionsAtIndexPaths___block_invoke;
  v12 = &unk_1E74E37E8;
  selfCopy = self;
  v14 = v5 > 1;
  v6 = [pathsCopy _cn_map:&v9];

  v7 = [v6 _cn_filter:{&__block_literal_global_421, v9, v10, v11, v12}];

  return v7;
}

- (void)refreshActionHelper
{
  if (self->_actionHelper)
  {
    allowsEditingActions = [(CNContactListViewController *)self allowsEditingActions];
    actionHelper = self->_actionHelper;

    [(CNContactListActionHelper *)actionHelper setIncludesEditingActions:allowsEditingActions];
  }
}

- (CNContactListActionHelper)actionHelper
{
  actionHelper = self->_actionHelper;
  if (!actionHelper)
  {
    v4 = [CNContactListActionHelper alloc];
    contactStore = [(CNContactListViewController *)self contactStore];
    environment = [(CNContactListViewController *)self environment];
    contactFormatter = [(CNContactListViewController *)self contactFormatter];
    undoManager = [(CNContactListViewController *)self undoManager];
    v9 = [(CNContactListActionHelper *)v4 initWithContactStore:contactStore environment:environment contactFormatter:contactFormatter undoManager:undoManager];
    v10 = self->_actionHelper;
    self->_actionHelper = v9;

    [(CNContactListActionHelper *)self->_actionHelper setDelegate:self];
    [(CNContactListActionHelper *)self->_actionHelper setIncludesContactOrbActions:1];
    [(CNContactListActionHelper *)self->_actionHelper setIncludesEditingActions:[(CNContactListViewController *)self allowsEditingActions]];
    actionHelper = self->_actionHelper;
  }

  return actionHelper;
}

- (BOOL)isAcceptedIntroductionsDataSource
{
  objc_opt_class();
  dataSource = [(CNContactListViewController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = dataSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    filteredContainer = [v5 filteredContainer];
    v7 = [filteredContainer type] == 1004;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isContactProviderDataSource
{
  objc_opt_class();
  dataSource = [(CNContactListViewController *)self dataSource];
  if (objc_opt_isKindOfClass())
  {
    v4 = dataSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    filteredContainer = [v5 filteredContainer];
    v7 = [filteredContainer type] == 1003;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)allowsEditingActions
{
  if (!self->_allowsEditingActions)
  {
    return 0;
  }

  if ([(CNContactListViewController *)self isContactProviderDataSource])
  {
    return 0;
  }

  return ![(CNContactListViewController *)self isAcceptedIntroductionsDataSource];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CNContactListViewController;
  changeCopy = change;
  [(CNContactListViewController *)&v8 traitCollectionDidChange:changeCopy];
  _splitViewControllerContext = [changeCopy _splitViewControllerContext];

  traitCollection = [(CNContactListViewController *)self traitCollection];
  _splitViewControllerContext2 = [traitCollection _splitViewControllerContext];

  if (_splitViewControllerContext != _splitViewControllerContext2)
  {
    [(CNContactListViewController *)self configureNavigationBar];
  }
}

- (void)updateBarButtonItems
{
  v18[1] = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    if (CNUIIsContacts() && [(CNContactListViewController *)self allowsListEditing])
    {
      traitCollection = [(CNContactListViewController *)self traitCollection];
      _splitViewControllerContext = [traitCollection _splitViewControllerContext];

      if (_splitViewControllerContext)
      {
        navigationItem = [(CNContactListViewController *)self navigationItem];
        [navigationItem setRightBarButtonItem:0];
      }

      else
      {
        navigationItem = [(CNContactListViewController *)self addButton];
        navigationItem2 = [(CNContactListViewController *)self navigationItem];
        [navigationItem2 setRightBarButtonItem:navigationItem];
      }
    }
  }

  else
  {
    searchController = [(CNContactListViewController *)self searchController];

    if (searchController && [(CNContactListViewController *)self allowsListEditing])
    {
      isAcceptedIntroductionsDataSource = [(CNContactListViewController *)self isAcceptedIntroductionsDataSource];
      searchController2 = [(CNContactListViewController *)self searchController];
      _inlineToolbarSearchBarItem = [searchController2 _inlineToolbarSearchBarItem];
      v11 = _inlineToolbarSearchBarItem;
      if (isAcceptedIntroductionsDataSource)
      {
        v18[0] = _inlineToolbarSearchBarItem;
        flexibleSpaceItem = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        [(CNContactListViewController *)self setToolbarItems:flexibleSpaceItem];
      }

      else
      {
        v17[0] = _inlineToolbarSearchBarItem;
        flexibleSpaceItem = [MEMORY[0x1E69DC708] flexibleSpaceItem];
        v17[1] = flexibleSpaceItem;
        addButton = [(CNContactListViewController *)self addButton];
        v17[2] = addButton;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
        [(CNContactListViewController *)self setToolbarItems:v14];
      }
    }
  }
}

- (UIBarButtonItem)addButton
{
  addButton = self->_addButton;
  if (!addButton)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:self action:sel_addContactTapped_];
    v5 = self->_addButton;
    self->_addButton = v4;

    addButton = self->_addButton;
  }

  return addButton;
}

- (CNContactListViewController)visibleListViewController
{
  if ([(CNContactListViewController *)self isSearching])
  {
    selfCopy = [(CNContactListViewController *)self searchResultsController];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)indexPathForGlobalIndex:(int64_t)index
{
  v27 = *MEMORY[0x1E69E9840];
  dataSource = [(CNContactListViewController *)self dataSource];
  sections = [dataSource sections];

  if (sections)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = sections;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v23;
      while (2)
      {
        v12 = 0;
        v13 = v10;
        v10 += v9;
        indexCopy = index;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v22 + 1) + 8 * v12) range];
          index = indexCopy - v15;
          if (indexCopy < v15)
          {
            index = indexCopy;
            v10 = v13;
            goto LABEL_14;
          }

          ++v13;
          ++v12;
          indexCopy -= v15;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_14:

    v16 = MEMORY[0x1E696AC88];
    indexCopy3 = index;
    v18 = v10;
  }

  else
  {
    v16 = MEMORY[0x1E696AC88];
    indexCopy3 = index;
    v18 = 0;
  }

  v19 = [v16 indexPathForItem:indexCopy3 inSection:{v18, v22}];
  v20 = [(CNContactListViewController *)self collectionViewIndexPathForDataSourceIndexPath:v19];

  return v20;
}

- (unint64_t)globalIndexForCollectionViewIndexPath:(id)path
{
  pathCopy = path;
  if (-[CNContactListViewController isDuplicatesRowSection:](self, "isDuplicatesRowSection:", [pathCopy section]))
  {
    item = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = [(CNContactListViewController *)self dataSourceIndexPathForCollectionViewIndexPath:pathCopy];
    section = [v6 section];
    dataSource = [(CNContactListViewController *)self dataSource];
    sections = [dataSource sections];

    if (sections)
    {
      if ((section & 0x8000000000000000) != 0 || section >= [sections count])
      {
        item = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = [sections objectAtIndexedSubscript:section];
        range = [v10 range];
        item = range + [v6 row];
      }
    }

    else
    {
      item = [v6 item];
    }
  }

  return item;
}

id __72__CNContactListViewController_trailingSwipeActionsConfigurationProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained contactForActionsAtIndexPath:v3 forMultiSelectAction:0];

  if (v5)
  {
    objc_opt_class();
    v6 = [WeakRetained dataSource];
    v7 = [v6 filter];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = MEMORY[0x1E69DCFC0];
    v11 = [WeakRetained actionHelper];
    v12 = [v11 trailingSwipeActionsForContact:v5 dataSourceFilter:v9];
    v13 = [v10 configurationWithActions:v12];

    [v13 setPerformsFirstActionWithFullSwipe:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __51__CNContactListViewController_createCollectionView__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v7 = [v6 _cn_containsObject:v3];

  return v7;
}

- (id)setupDuplicatesController
{
  v3 = [[CNDuplicateContactsController alloc] initWithDataSource:self->_dataSource environment:self->_environment delegate:self];
  duplicatesController = self->_duplicatesController;
  self->_duplicatesController = v3;

  [(CNContactListViewController *)self setIsDuplicatesLaunching:0];
  v5 = self->_duplicatesController;

  return v5;
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  [(CNContactListViewController *)self willChangeValueForKey:@"dataSource"];
  objc_storeStrong(&self->_dataSource, source);
  [(CNContactDataSource *)self->_dataSource setDelegate:self];
  searchResultsController = [(CNContactListViewController *)self searchResultsController];
  v6 = [sourceCopy copyWithZone:0];
  [searchResultsController setDataSource:v6];

  if ([(CNContactListViewController *)self canManageDuplicateContacts])
  {
    if (self->_duplicatesController)
    {
      duplicatesController = [(CNContactListViewController *)self duplicatesController];
      [duplicatesController setDataSource:self->_dataSource];
    }

    [(CNContactListViewController *)self refreshDuplicates];
  }

  [(CNContactListViewController *)self refreshActionHelper];
  [(CNContactListViewController *)self didChangeValueForKey:@"dataSource"];
  [(CNContactListViewController *)self contactDataSourceDidChange:sourceCopy];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    searchResultsController = [(CNContactListViewController *)self searchResultsController];
    [searchResultsController setDelegate:obj];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  blockListNotificationToken = [(CNContactListViewController *)self blockListNotificationToken];
  [blockListNotificationToken cancel];

  [(CNContactListViewController *)self setBlockListNotificationToken:0];
  medicalIDLookupToken = [(CNContactListViewController *)self medicalIDLookupToken];
  [medicalIDLookupToken cancel];

  [(CNContactListViewController *)self setMedicalIDLookupToken:0];
  v6.receiver = self;
  v6.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v6 dealloc];
}

- (CNContactListViewController)initWithDataSource:(id)source shouldUseLargeTitle:(BOOL)title
{
  titleCopy = title;
  sourceCopy = source;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = [(CNContactListViewController *)self initWithDataSource:sourceCopy environment:v7 shouldUseLargeTitle:titleCopy];

  return v8;
}

- (CNContactListViewController)initWithDataSource:(id)source searchable:(BOOL)searchable environment:(id)environment shouldUseLargeTitle:(BOOL)title
{
  sourceCopy = source;
  environmentCopy = environment;
  v13 = +[CNContactListViewController collectionViewLayout];
  v32.receiver = self;
  v32.super_class = CNContactListViewController;
  v14 = [(CNContactListViewController *)&v32 initWithCollectionViewLayout:v13];

  if (v14)
  {
    [(CNContactListViewController *)v14 setClearsSelectionOnViewWillAppear:0];
    objc_storeStrong(&v14->_environment, environment);
    objc_storeStrong(&v14->_dataSource, source);
    v14->_presentsSearchUI = searchable;
    v14->_isHandlingSearch = !searchable;
    pendingLayoutBlocks = v14->_pendingLayoutBlocks;
    v14->_pendingLayoutBlocks = MEMORY[0x1E695E0F0];

    if (objc_opt_respondsToSelector())
    {
      displayName = [sourceCopy displayName];
      [(CNContactListViewController *)v14 setTitle:displayName];
    }

    else
    {
      displayName = CNContactsUIBundle();
      v17 = [displayName localizedStringForKey:@"CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
      [(CNContactListViewController *)v14 setTitle:v17];
    }

    v14->_shouldUseLargeTitle = title;
    v14->_shouldDisplayCount = 1;
    v14->_shouldAllowDrags = 1;
    v14->_shouldAllowDrops = 1;
    v14->_shouldDisplayEmergencyContacts = 1;
    v14->_allowsEditingActions = 1;
    v14->_allowsListEditing = 1;
    v14->_suggestionsControllerHeight = 0.0;
    duplicatesController = v14->_duplicatesController;
    v14->_duplicatesController = 0;

    v14->_isDuplicatesLaunching = 0;
    v14->_shouldSearchBarBecomeFirstResponder = 1;
    [(CNContactListViewController *)v14 setDefinesPresentationContext:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E695C3D8] object:0];

    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 addObserver:v14 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E6996440] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v14 selector:sel__applicationEnteringForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v14 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v23 = MEMORY[0x1E69967A0];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __93__CNContactListViewController_initWithDataSource_searchable_environment_shouldUseLargeTitle___block_invoke;
    v30[3] = &unk_1E74E5980;
    v24 = v14;
    v31 = v24;
    v25 = [v23 observerWithResultBlock:v30];
    v26 = [MEMORY[0x1E6996798] observableOnDarwinNotificationCenterWithName:*MEMORY[0x1E6995908]];
    v27 = [v26 subscribe:v25];
    [(CNContactListViewController *)v24 setBlockListNotificationToken:v27];

    v28 = v24;
  }

  return v14;
}

uint64_t __93__CNContactListViewController_initWithDataSource_searchable_environment_shouldUseLargeTitle___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__handleCoalescedBlockListDidChange object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__handleCoalescedBlockListDidChange withObject:0 afterDelay:0.1];
}

- (void)setTipView:(id)view
{
  viewCopy = view;
  tipKitContentView = [(CNContactListViewController *)self tipKitContentView];
  v5 = (viewCopy == 0) ^ (tipKitContentView != 0);

  if ((v5 & 1) == 0)
  {
    +[_TtC10ContactsUI15CNTipHeaderView verticalInsetTotal];
    if (viewCopy)
    {
      v7 = v6;
      v8 = *MEMORY[0x1E695F058];
      v9 = *(MEMORY[0x1E695F058] + 8);
      v10 = *(MEMORY[0x1E695F058] + 24);
      view = [(CNContactListViewController *)self view];
      [view bounds];
      Width = CGRectGetWidth(v25);

      [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
      v26.origin.x = v8;
      v26.origin.y = v9;
      v26.size.width = Width;
      v26.size.height = v10;
      v13 = CGRectGetWidth(v26) - v7;
      [viewCopy bounds];
      if (v13 != CGRectGetWidth(v27))
      {
        [viewCopy bounds];
        [viewCopy setBounds:?];
      }

      LODWORD(v14) = 1148846080;
      LODWORD(v15) = 1132068864;
      [viewCopy systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v14, v15}];
      v17 = v7 + v16;
      v18 = [_TtC10ContactsUI15CNTipHeaderView alloc];
      v19 = [(CNTipHeaderView *)v18 initWithFrame:v8 separatorInset:v9, Width, v17, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
      [(CNTipHeaderView *)v19 setHostingView:viewCopy];
      [(CNTipHeaderView *)v19 setDisplaysBottomSeparator:0];
      v20 = +[_TtC10ContactsUI12CNTipsHelper shared];
      [v20 setCurrentTipView:v19];
    }

    else
    {
      v21 = +[_TtC10ContactsUI12CNTipsHelper shared];
      currentTipView = [v21 currentTipView];
      [currentTipView removeFromSuperview];

      v19 = +[_TtC10ContactsUI12CNTipsHelper shared];
      [(CNTipHeaderView *)v19 setCurrentTipView:0];
    }

    [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
  }
}

- (id)getRecentCallCountAndSpeakableName
{
  v36[1] = *MEMORY[0x1E69E9840];
  contactStore = [(CNContactListViewController *)self contactStore];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v3 = getCHContactProviderClass_softClass;
  v34 = getCHContactProviderClass_softClass;
  if (!getCHContactProviderClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getCHContactProviderClass_block_invoke;
    v29 = &unk_1E74E7518;
    v30 = &v31;
    __getCHContactProviderClass_block_invoke(buf);
    v3 = v32[3];
  }

  v4 = v3;
  _Block_object_dispose(&v31, 8);
  v19 = [[v3 alloc] initWithDataSource:contactStore];
  recentOutgoingCalls = [(CNContactListViewController *)self recentOutgoingCalls];
  v36[0] = *MEMORY[0x1E695C240];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v25 = 0;
  v7 = [v19 contactsByHandleForCalls:recentOutgoingCalls keyDescriptors:v6 error:&v25];
  v18 = v25;

  if (v18 || !v7)
  {
    firstName = CNUILogContactList();
    if (os_log_type_enabled(firstName, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, firstName, OS_LOG_TYPE_ERROR, "No recent calls", buf, 2u);
    }

    v15 = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allValues = [v7 allValues];
    v9 = [allValues countByEnumeratingWithState:&v21 objects:v35 count:16];
    if (v9)
    {
      v10 = *v22;
      v11 = 30;
LABEL_7:
      v12 = 0;
      v17 = v11 - v9;
      while (1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        if (v11 == v12)
        {
          break;
        }

        firstObject = [*(*(&v21 + 1) + 8 * v12) firstObject];
        firstName = [firstObject firstName];
        if (firstName && [(CNContactListViewController *)self isEasyToRecognizeWord:firstName])
        {

          goto LABEL_21;
        }

        if (v9 == ++v12)
        {
          v9 = [allValues countByEnumeratingWithState:&v21 objects:v35 count:16];
          firstName = 0;
          v11 = v17;
          if (v9)
          {
            goto LABEL_7;
          }

          goto LABEL_21;
        }
      }
    }

    firstName = 0;
LABEL_21:

    v15 = +[CNRecentCallCountAndName instanceWithName:callCount:](CNRecentCallCountAndName, "instanceWithName:callCount:", firstName, [recentOutgoingCalls count]);
  }

  return v15;
}

- (BOOL)validateSiriLanguage
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (softLinkAFAssistantRestricted[0]())
  {
    return 0;
  }

  systemLanguages = [MEMORY[0x1E695DF58] systemLanguages];
  if ([systemLanguages count])
  {
    sharedPreferences = [(objc_class *)getAFPreferencesClass_46300() sharedPreferences];
    languageCode = [sharedPreferences languageCode];

    if ([languageCode length])
    {
      v6 = MEMORY[0x1E696AAE8];
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      v8 = [v6 preferredLocalizationsFromArray:systemLanguages forPreferences:preferredLanguages];
      firstObject = [v8 firstObject];

      v10 = MEMORY[0x1E696AAE8];
      v15[0] = languageCode;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v12 = [v10 preferredLocalizationsFromArray:systemLanguages forPreferences:v11];
      firstObject2 = [v12 firstObject];

      v2 = [firstObject isEqualToString:firstObject2];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)validateSiriEnabled
{
  v7 = *MEMORY[0x1E69E9840];
  if (softLinkAFAssistantRestricted[0]())
  {
    assistantIsEnabled = 0;
  }

  else
  {
    sharedPreferences = [(objc_class *)getAFPreferencesClass_46300() sharedPreferences];
    assistantIsEnabled = [sharedPreferences assistantIsEnabled];
  }

  v4 = CNUILogContactList();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = assistantIsEnabled;
    _os_log_debug_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEBUG, "Assitant enabled = %d", v6, 8u);
  }

  return assistantIsEnabled;
}

- (void)setTipKitContext:(id)context
{
  contextCopy = context;
  v4 = +[_TtC10ContactsUI12CNTipsHelper shared];
  [v4 tipKitSetSiriTipContext:contextCopy];
}

- (BOOL)isEasyToRecognizeWord:(id)word
{
  v3 = MEMORY[0x1E695DF58];
  wordCopy = word;
  currentLocale = [v3 currentLocale];
  v6 = [(objc_class *)get_EARUserProfileBuilderClass() isEasyToRecognizeWord:wordCopy forLocale:currentLocale];

  return v6;
}

- (id)recentOutgoingCalls
{
  v40[2] = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v2 = getCHManagerClass_softClass;
  v39 = getCHManagerClass_softClass;
  if (!getCHManagerClass_softClass)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __getCHManagerClass_block_invoke;
    v34 = &unk_1E74E7518;
    v35 = &v36;
    __getCHManagerClass_block_invoke(&v31);
    v2 = v37[3];
  }

  v3 = v2;
  _Block_object_dispose(&v36, 8);
  v4 = objc_alloc_init(v2);
  v5 = MEMORY[0x1E696AE18];
  v6 = MEMORY[0x1E696AD98];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v7 = getkCHCallTypeNormalSymbolLoc_ptr;
  v39 = getkCHCallTypeNormalSymbolLoc_ptr;
  if (!getkCHCallTypeNormalSymbolLoc_ptr)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __getkCHCallTypeNormalSymbolLoc_block_invoke;
    v34 = &unk_1E74E7518;
    v35 = &v36;
    v8 = CallHistoryLibrary();
    v9 = dlsym(v8, "kCHCallTypeNormal");
    *(v35[1] + 24) = v9;
    getkCHCallTypeNormalSymbolLoc_ptr = *(v35[1] + 24);
    v7 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t getkCHCallTypeNormal(void)"];
    [currentHandler handleFailureInFunction:v26 file:@"CNCallHistory.h" lineNumber:16 description:{@"%s", dlerror()}];

    goto LABEL_18;
  }

  v10 = [v6 numberWithUnsignedInt:*v7];
  v11 = MEMORY[0x1E696AD98];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v12 = getkCHCallStatusCancelledSymbolLoc_ptr;
  v39 = getkCHCallStatusCancelledSymbolLoc_ptr;
  if (!getkCHCallStatusCancelledSymbolLoc_ptr)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __getkCHCallStatusCancelledSymbolLoc_block_invoke;
    v34 = &unk_1E74E7518;
    v35 = &v36;
    v13 = CallHistoryLibrary();
    v14 = dlsym(v13, "kCHCallStatusCancelled");
    *(v35[1] + 24) = v14;
    getkCHCallStatusCancelledSymbolLoc_ptr = *(v35[1] + 24);
    v12 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v12)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t getkCHCallStatusCancelled(void)"];
    [currentHandler2 handleFailureInFunction:v28 file:@"CNCallHistory.h" lineNumber:17 description:{@"%s", dlerror()}];

    goto LABEL_18;
  }

  v15 = [v11 numberWithUnsignedInt:*v12];
  v16 = MEMORY[0x1E696AD98];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v17 = getkCHCallStatusConnectedOutgoingSymbolLoc_ptr;
  v39 = getkCHCallStatusConnectedOutgoingSymbolLoc_ptr;
  v40[0] = v15;
  if (!getkCHCallStatusConnectedOutgoingSymbolLoc_ptr)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __getkCHCallStatusConnectedOutgoingSymbolLoc_block_invoke;
    v34 = &unk_1E74E7518;
    v35 = &v36;
    v18 = CallHistoryLibrary();
    v19 = dlsym(v18, "kCHCallStatusConnectedOutgoing");
    *(v35[1] + 24) = v19;
    getkCHCallStatusConnectedOutgoingSymbolLoc_ptr = *(v35[1] + 24);
    v17 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v17)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t getkCHCallStatusConnectedOutgoing(void)"];
    [currentHandler3 handleFailureInFunction:v30 file:@"CNCallHistory.h" lineNumber:18 description:{@"%s", dlerror()}];

LABEL_18:
    __break(1u);
  }

  v20 = [v16 numberWithUnsignedInt:*v17];
  v40[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v22 = [v5 predicateWithFormat:@"callType == %@ AND callStatus IN %@", v10, v21];

  v23 = [v4 recentCallsWithPredicate:v22];

  return v23;
}

@end