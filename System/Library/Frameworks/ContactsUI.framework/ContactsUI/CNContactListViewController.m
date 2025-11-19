@interface CNContactListViewController
+ (id)collectionViewLayoutWithFloatingHeaderViews:(BOOL)a3 contactListStyleApplier:(id)a4 trailingSwipeActionsProvider:(id)a5 shouldDisplaySupplementaryHeaderItemForSection:(id)a6 shouldShowSeparatorsForSection:(id)a7 directionalLayoutMargins:(id)a8 collectionViewIsShowingIndexBar:(id)a9 numberOfItemsInSection:(id)a10 contentUnavailable:(id)a11 collectionViewIsSelectingIndexPath:(id)a12;
+ (id)descriptorForRequiredKeysForPreferredForNameMeContact;
+ (id)emptyContact;
+ (id)layoutSectionForLayoutConfiguration:(id)a3 layoutEnvironment:(id)a4 section:(int64_t)a5 contactListStyleApplier:(id)a6 shouldDisplaySupplementaryHeaderItemForSection:(id)a7 headerViewsFloat:(BOOL)a8 directionalLayoutMargins:(id)a9 collectionViewIsShowingIndexBar:(id)a10 contentUnavailable:(id)a11;
- (BOOL)allowsEditingActions;
- (BOOL)bundleCanManageDuplicates;
- (BOOL)canManageDuplicateContacts;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canPerformDuplicatesMerge;
- (BOOL)canSelectContactAtCollectionViewIndexPath:(id)a3;
- (BOOL)canSelectContactAtIndexPath:(id)a3;
- (BOOL)collectionView:(id)a3 canEditItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)collectionViewIsShowingIndexBar;
- (BOOL)collectionViewShouldDisplayCreateNewContact;
- (BOOL)containsPathToContentUnavailableRow:(id)a3;
- (BOOL)containsPathToCreateNewContactRow:(id)a3;
- (BOOL)containsPathToDuplicatesBanner:(id)a3;
- (BOOL)containsPathToLimitedAccessTipRow:(id)a3;
- (BOOL)hasAllRowsSelected;
- (BOOL)hasNoContacts;
- (BOOL)hasSearchPrefix;
- (BOOL)isAcceptedIntroductionsDataSource;
- (BOOL)isContactProviderDataSource;
- (BOOL)isContactWithIdentifierEmergencyContact:(id)a3;
- (BOOL)isContactWithIdentifierMeContactOrLinkedToMeContact:(id)a3;
- (BOOL)isContentUnavailableRowSection:(int64_t)a3;
- (BOOL)isCreateNewContactRowSection:(int64_t)a3;
- (BOOL)isDisplayingContentUnavailableViewAsCell;
- (BOOL)isDuplicatesRowSection:(int64_t)a3;
- (BOOL)isEasyToRecognizeWord:(id)a3;
- (BOOL)isLimitedAccessTipRowSection:(int64_t)a3;
- (BOOL)isPathToContentUnavailableRow:(id)a3;
- (BOOL)isPathToCreateNewContactRow:(id)a3;
- (BOOL)isPathToDuplicatesBanner:(id)a3;
- (BOOL)isPathToLimitedAccessTipRow:(id)a3;
- (BOOL)isPerformingDuplicatesMerge;
- (BOOL)isPickerWithToolbarSearchField;
- (BOOL)isShowingAllContacts;
- (BOOL)isShowingCustomTitle;
- (BOOL)isShowingLimitedAccessTip;
- (BOOL)isShowingServerSearch;
- (BOOL)isValidIndexPath:(id)a3;
- (BOOL)selectContact:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5 shouldScroll:(BOOL)a6;
- (BOOL)shouldDisplayCreateNewContactAsRow;
- (BOOL)shouldDisplayListHeaderView;
- (BOOL)shouldDisplayMeContactBanner;
- (BOOL)shouldDisplaySupplementaryHeaderItemForSection:(int64_t)a3;
- (BOOL)shouldDisplayTipContentView;
- (BOOL)shouldEmbedContentUnavailableViewInCell;
- (BOOL)shouldEnableMultiSelectContextMenus;
- (BOOL)shouldShowDuplicateBannerView;
- (BOOL)showingGroup;
- (BOOL)suggestionsController:(id)a3 canSelectContact:(id)a4;
- (BOOL)suggestionsController:(id)a3 shouldSelectContact:(id)a4 atIndexPath:(id)a5;
- (BOOL)validateSiriEnabled;
- (BOOL)validateSiriLanguage;
- (CNContact)preferredForNameMeContact;
- (CNContactDataSource)dataSource;
- (CNContactListActionHelper)actionHelper;
- (CNContactListBannerView)meContactBanner;
- (CNContactListViewController)initWithDataSource:(id)a3 searchable:(BOOL)a4 environment:(id)a5 shouldUseLargeTitle:(BOOL)a6;
- (CNContactListViewController)initWithDataSource:(id)a3 shouldUseLargeTitle:(BOOL)a4;
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
- (id)_contactAtCollectionViewIndexPath:(id)a3;
- (id)_contactAtIndexPath:(id)a3;
- (id)_contentUnavailableConfigurationState;
- (id)appName;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 indexPathForIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewIndexPathForDataSourceIndexPath:(id)a3;
- (id)contactForActionsAtIndexPath:(id)a3 forMultiSelectAction:(BOOL)a4;
- (id)contactProvidersOnPasteboard;
- (id)contactsForActionsAtIndexPaths:(id)a3;
- (id)contentUnavailableConfigurationForState:(id)a3;
- (id)contextMenuConfigurationForContactsAtIndexPaths:(id)a3;
- (id)contextMenuInteraction;
- (id)createCollectionView;
- (id)dataSourceIndexPathForCollectionViewIndexPath:(id)a3;
- (id)dragItemsForIndexPath:(id)a3;
- (id)duplicatesBannerCell;
- (id)filteredSearchString;
- (id)getRecentCallCountAndSpeakableName;
- (id)getVisibleIndexPaths;
- (id)ignoredContactIdentifiersForSuggestionsController:(id)a3;
- (id)indexPathForGlobalIndex:(int64_t)a3;
- (id)indexTitlesForCollectionView:(id)a3;
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
- (id)titleForHeaderInSection:(int64_t)a3;
- (id)trailingSwipeActionsConfigurationProvider;
- (int64_t)additionalSectionsAtTopCount;
- (int64_t)allDuplicatesCountToDisplay;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)newDuplicatesCountToDisplay;
- (int64_t)numberOfSections;
- (unint64_t)globalIndexForCollectionViewIndexPath:(id)a3;
- (unint64_t)totalNumberOfRows;
- (void)_applicationEnteringForeground:(id)a3;
- (void)_contactCountTelemetry:(unint64_t)a3;
- (void)_handleCoalescedBlockListDidChange;
- (void)_searchBarDidEndEditing:(id)a3;
- (void)_updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)_updateCountStringNow:(BOOL)a3;
- (void)action:(id)a3 presentViewController:(id)a4;
- (void)actionDidFinish:(id)a3;
- (void)addContactTapped:(id)a3;
- (void)addContactsToListTappedWithSourceView:(id)a3;
- (void)addSelectButtonView;
- (void)adjustTableViewOffsetForIncomingSearchUI;
- (void)applyStyle;
- (void)bannerView:(id)a3 wasSelectedToPresentMeContact:(id)a4;
- (void)beginSearch:(id)a3;
- (void)cancelSearch:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)configureNavigationBar;
- (void)contactDataSourceDidChange:(id)a3;
- (void)contactDataSourceDisplayNameDidChange:(id)a3;
- (void)contactDataSourceMeContactDidChange:(id)a3;
- (void)contactStoreDidChangeWithNotification:(id)a3;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)copyContacts:(id)a3;
- (void)createNewContactTapped;
- (void)dealloc;
- (void)deleteContact:(id)a3;
- (void)deselectAllItemsExceptIndexPath:(id)a3;
- (void)deselectAllSelectedIndexPathsAnimated:(BOOL)a3;
- (void)didDismissSearchController:(id)a3;
- (void)didPerformDuplicatesMerge:(id)a3;
- (void)didPresentSearchController:(id)a3;
- (void)didResetLimitedAccessSelectionTo:(id)a3;
- (void)didSelectViewAllDuplicates;
- (void)didUpdateContentForAvatarViewController:(id)a3;
- (void)disableSearchUI;
- (void)dismissKeyboard;
- (void)duplicatesBannerCellDidTapDismiss:(id)a3;
- (void)duplicatesDidChange:(id)a3;
- (void)fetchDuplicatesCountWithCompletionBlock:(id)a3;
- (void)handleSelectAllTapped;
- (void)initializeDuplicateContacts;
- (void)layoutSelectButtonView;
- (void)limitedAccessTipCellDidTapDismiss:(id)a3;
- (void)listActionHelper:(id)a3 didUpdateWithMenu:(id)a4;
- (void)loadView;
- (void)mergeUnifyContacts:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pasteContacts:(id)a3;
- (void)performWhenSearchCompleted:(id)a3;
- (void)performWhenViewIsLaidOut:(id)a3;
- (void)reconfigureVisibleItems;
- (void)refreshActionHelper;
- (void)refreshDuplicates;
- (void)refreshDuplicatesBanner;
- (void)refreshTableViewHeader;
- (void)refreshTableViewHeaderForContactChanges;
- (void)refreshTableViewHeaderIfVisible;
- (void)refreshTableViewHeaderIfVisibleWithSize:(CGSize)a3;
- (void)refreshTableViewHeaderWithSize:(CGSize)a3;
- (void)reloadContacts;
- (void)reloadTitle;
- (void)reloadVisibleItems;
- (void)removeDuplicatesBanner;
- (void)scrollToItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)scrollTopToContactWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)searchForString:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)selectAllIndexPathsAnimated:(BOOL)a3;
- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (void)selectNextContact:(id)a3;
- (void)selectPreviousContact:(id)a3;
- (void)setAllowsMultiSelectContextMenus:(BOOL)a3;
- (void)setBottomEdgesInset:(double)a3;
- (void)setCellStateSelected:(BOOL)a3 forContact:(id)a4 animated:(BOOL)a5;
- (void)setContactFormatter:(id)a3;
- (void)setContactListStyleApplier:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setImageForContact:(id)a3 imageUpdateBlock:(id)a4;
- (void)setMeContactBannerFootnoteLabel:(id)a3;
- (void)setMeContactBannerFootnoteValue:(id)a3;
- (void)setShouldDisplayMeContactBanner:(BOOL)a3;
- (void)setShouldDisplaySuggestionsController:(BOOL)a3;
- (void)setTipKitContext:(id)a3;
- (void)setTipView:(id)a3;
- (void)setupContactListForMultiSelectContextMenus;
- (void)setupForMultiSelection;
- (void)setupMeBannerAvatarController;
- (void)setupVCardImportController;
- (void)setupViewWithLimitedAccessContactSelection;
- (void)showCardForSelectedContactAtIndexPath:(id)a3;
- (void)startHandlingEmergencyContacts;
- (void)startSearchingForString:(id)a3 setSearchBarAsFirstResponder:(BOOL)a4;
- (void)suggestionsController:(id)a3 didChangeToHeight:(double)a4;
- (void)suggestionsController:(id)a3 didDeselectContact:(id)a4;
- (void)suggestionsController:(id)a3 didSelectContact:(id)a4;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAdditionalSectionsAtTop;
- (void)updateBarButtonItems;
- (void)updateDataSourceAndCollectionViewForDuplicatesBanner;
- (void)updateDataSourceAndCollectionViewForLimitedAccessTip;
- (void)updateDuplicatesBannerForProcessingState;
- (void)updateDuplicatesCountBanner;
- (void)updateInResponseToLimitedAccessSelectionChanged;
- (void)updateIsViewingTopLevelAllContacts;
- (void)updateMeContactBannerContentsWithTopKeyline:(BOOL)a3;
- (void)updateMeContactBannerTopKeyline;
- (void)updateNavTitleWithCount:(unint64_t)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateSelectAllButtonTitle;
- (void)updateSelectedContactCount;
- (void)updatelimitedAccessContactSelection;
- (void)vCardImportController:(id)a3 didSaveContacts:(id)a4;
- (void)vCardImportController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willDismissSearchController:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
- (void)willPerformDuplicatesMergeAll:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation CNContactListViewController

- (void)setupContactListForMultiSelectContextMenus
{
  if ([(CNContactListViewController *)self isViewLoaded])
  {
    if ([(CNContactListViewController *)self shouldEnableMultiSelectContextMenus])
    {
      v3 = [(CNContactListViewController *)self isHandlingSearch];
      v4 = [(CNContactListViewController *)self collectionView];
      v5 = [v4 allowsMultipleSelection];

      if (v3 == v5)
      {
        v6 = [(CNContactListViewController *)self collectionView];
        [v6 setAllowsMultipleSelection:v3 ^ 1u];
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
      v3 = [(CNContactListViewController *)self duplicatesController];
      [v3 resetDuplicates];

      v4 = [(CNContactListViewController *)self duplicatesController];
      [v4 findDuplicates];
    }

    else
    {

      [(CNContactListViewController *)self initializeDuplicateContacts];
    }
  }
}

- (BOOL)canManageDuplicateContacts
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:16];

  if (!v5 || [(CNContactListViewController *)self shouldHideDuplicates]|| ![(CNContactListViewController *)self bundleCanManageDuplicates])
  {
    return 0;
  }

  return [(CNContactListViewController *)self isViewingTopLevelAllContacts];
}

- (BOOL)bundleCanManageDuplicates
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  v4 = [v3 isFeatureEnabled:16];

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
    v3 = [(CNContactListViewController *)self view];
    v4 = [v3 window];

    if (v4)
    {
      v7 = [(CNContactListViewController *)self view];
      [v7 bounds];
      [(CNContactListViewController *)self refreshTableViewHeaderIfVisibleWithSize:v5, v6];
    }
  }
}

- (CNContactDataSource)dataSource
{
  if ([(CNContactListViewController *)self isSearching])
  {
    v3 = [(CNContactListViewController *)self searchResultsController];
    v4 = [v3 dataSource];
  }

  else
  {
    v4 = self->_dataSource;
  }

  return v4;
}

- (void)loadView
{
  v5 = [(CNContactListViewController *)self createCollectionView];
  [v5 setDataSource:self];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      [v5 _setSectionHeaderFooterPadding:8.0];
    }
  }

  else
  {
  }

  [v5 setKeyboardDismissMode:1];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNContactListCellIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNLimitedAccessContactListCellIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNSearchListCellIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNContactListDuplicatesBannerIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNContactListAddNewContactCellIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNContactListContentUnavailableCellIdentifier"];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"CNContactListLimitedAccessTipIdentifier"];
  [v5 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"CNContactListSectionHeaderFooterIdentifier"];
  [v5 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"CNContactListLayoutHeaderIdentifier" withReuseIdentifier:@"CNContactListHeaderViewIdentifier"];
  [v5 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"CNContactListLayoutFooterIdentifier" withReuseIdentifier:@"CNContactListCountFooterViewIdentifier"];
  [(CNContactListViewController *)self setCollectionView:v5];
  [(CNContactListViewController *)self _updateCountStringNow:0];
  [(CNContactListViewController *)self updateIsViewingTopLevelAllContacts];
  [(CNContactListViewController *)self refreshTableViewHeader];
}

- (id)createCollectionView
{
  v3 = [(CNContactListViewController *)self isHandlingSearch];
  objc_initWeak(location, self);
  v4 = [CNContactListCollectionView alloc];
  v5 = objc_opt_class();
  v6 = [(CNContactListViewController *)self contactListStyleApplier];
  v7 = [(CNContactListViewController *)self trailingSwipeActionsConfigurationProvider];
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
  v8 = [v5 collectionViewLayoutWithFloatingHeaderViews:!v3 contactListStyleApplier:v6 trailingSwipeActionsProvider:v7 shouldDisplaySupplementaryHeaderItemForSection:v23 shouldShowSeparatorsForSection:v21 directionalLayoutMargins:v19 collectionViewIsShowingIndexBar:v17 numberOfItemsInSection:v15 contentUnavailable:v13 collectionViewIsSelectingIndexPath:v11];
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
    v3 = [(CNContactListViewController *)self dataSource];
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
      if ([(CNContactListViewController *)self isShowingAllContacts])
      {
        self->_isViewingTopLevelAllContacts = 1;
      }

      else
      {
        v6 = [(CNContactListViewController *)self contactStore];
        v11 = 0;
        v7 = [v6 containersMatchingPredicate:0 error:&v11];

        if ((*(*MEMORY[0x1E6996530] + 16))())
        {
          self->_isViewingTopLevelAllContacts = 1;
        }

        else
        {
          v8 = [v5 filter];
          v9 = [v8 containerIdentifiers];
          v10 = [v9 count];
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
  v3 = [(CNContactListViewController *)self dataSource];
  v4 = [v3 filter];
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
    v7 = [v6 showsEverything];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)refreshTableViewHeader
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactListViewController *)self view];
  [v3 bounds];
  if (v4 <= 0.0)
  {
  }

  else
  {
    v5 = [(CNContactListViewController *)self view];
    [v5 bounds];
    v7 = v6;

    if (v7 > 0.0)
    {
      v19 = [(CNContactListViewController *)self view];
      [v19 bounds];
      [(CNContactListViewController *)self refreshTableViewHeaderWithSize:v8, v9];

      return;
    }
  }

  v10 = CNUILogContactList();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(CNContactListViewController *)self view];
    [v14 bounds];
    v16 = v15;
    v17 = [(CNContactListViewController *)self view];
    [v17 bounds];
    *buf = 134218240;
    v21 = v16;
    v22 = 2048;
    v23 = v18;
    _os_log_debug_impl(&dword_199A75000, v10, OS_LOG_TYPE_DEBUG, "Attempted to refresh list header view when superview has width or height of 0.0 (%.2f x %.2f), skipping refresh", buf, 0x16u);
  }

  v11 = [(CNContactListViewController *)self listHeaderView];

  if (!v11)
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

  v3 = [(CNContactListViewController *)self preferredForNameMeContact];

  if (v3)
  {
    return 1;
  }

  v6 = [(CNContactListViewController *)self meContactBannerFootnoteLabel];
  if (v6)
  {
    v4 = 1;
  }

  else
  {
    v7 = [(CNContactListViewController *)self meContactBannerFootnoteValue];
    v4 = v7 != 0;
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
  v2 = [(CNContactListViewController *)self tipKitContentView];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 superview];
    v5 = v4 == 0;
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
    v4 = [objc_opt_class() descriptorForRequiredKeysForPreferredForNameMeContact];
    v10[0] = v4;
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
  v3 = [v2 currentTipView];

  return v3;
}

- (void)setupMeBannerAvatarController
{
  v3 = [(CNContactListViewController *)self meBannerAvatarController];

  if (!v3)
  {
    v4 = [(CNContactListViewController *)self contactStore];
    v16 = [v4 mainContactStore];

    v5 = objc_alloc(MEMORY[0x1E6996BB0]);
    v6 = [(CNContactListViewController *)self environment];
    v7 = [v6 defaultSchedulerProvider];
    v8 = [v5 initWithContactStore:v16 schedulerProvider:v7];

    [v8 setProhibitedSources:8];
    v9 = [(CNContactListViewController *)self environment];
    v10 = [v9 defaultSchedulerProvider];

    v11 = [MEMORY[0x1E6996B90] rendererWithLikenessResolver:v8 schedulerProvider:v10];
    v12 = [CNAvatarViewControllerSettings settingsWithLikenessResolver:v8 likenessRenderer:v11 contactStore:v16 threeDTouchEnabled:0 schedulerProvider:v10 backgroundStyle:0];
    v13 = [[CNAvatarViewController alloc] initWithSettings:v12];
    [(CNContactListViewController *)self setMeBannerAvatarController:v13];

    v14 = [(CNContactListViewController *)self meBannerAvatarController];
    [v14 setObjectViewControllerDelegate:self];

    v15 = [(CNContactListViewController *)self meBannerAvatarController];
    [v15 setDelegate:self];
  }
}

- (CNContactStore)contactStore
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CNContactDataSource *)self->_dataSource store];
  }

  else
  {
    v4 = [(CNContactListViewController *)self environment];
    v3 = [v4 inProcessContactStore];
  }

  return v3;
}

- (BOOL)shouldDisplayListHeaderView
{
  v3 = [(CNContactListViewController *)self shouldDisplayMeContactBanner];
  v4 = [(CNContactListViewController *)self shouldDisplaySuggestionsController];
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

    v6 = [(CNContactListViewController *)self tipKitContentView];
    v5 = v6 != 0;
  }

  v7 = v3 || v5 || v4;
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
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if ((v5 & 1) == 0)
  {
    v6 = [(CNContactListViewController *)self view];
    [v6 layoutMargins];
    v8 = v7;
    v9 = [(CNContactListViewController *)self view];
    [v9 safeAreaInsets];
    v11 = v8 - v10;

    v20 = [(CNContactListViewController *)self meContactBanner];
    v12 = [(CNContactListViewController *)self view];
    [v12 frame];
    v14 = v13;
    v15 = [(CNContactListViewController *)self view];
    [v15 layoutMargins];
    v17 = v16;
    v18 = [(CNContactListViewController *)self view];
    [v18 layoutMargins];
    [v20 setTopSeparatorWithInset:v11 andLength:v14 - (v17 + v19)];
  }
}

- (void)viewDidLoad
{
  v68[3] = *MEMORY[0x1E69E9840];
  v66.receiver = self;
  v66.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v66 viewDidLoad];
  v3 = [(CNContactListViewController *)self view];
  [v3 setAccessibilityIdentifier:@"ContactsListView"];

  if ([(CNContactListViewController *)self presentsSearchUI])
  {
    v4 = [(CNContactDataSource *)self->_dataSource copyWithZone:0];
    if (objc_opt_respondsToSelector())
    {
      [v4 reset];
    }

    v5 = [CNContactListViewSearchController alloc];
    v6 = [(CNContactListViewController *)self environment];
    v7 = [(CNContactListViewController *)v5 initWithDataSource:v4 searchable:0 environment:v6 shouldUseLargeTitle:0];
    [(CNContactListViewController *)self setSearchResultsController:v7];

    v8 = [(CNContactListViewController *)self limitedAccessPickerType];
    v9 = [(CNContactListViewController *)self searchResultsController];
    [v9 setLimitedAccessPickerType:v8];

    v10 = [(CNContactListViewController *)self limitedAccessContactCaption];
    v11 = [(CNContactListViewController *)self searchResultsController];
    [v11 setLimitedAccessContactCaption:v10];

    v12 = [(CNContactListViewController *)self disableContextMenus];
    v13 = [(CNContactListViewController *)self searchResultsController];
    [v13 setDisableContextMenus:v12];

    v14 = [(CNContactListViewController *)self shouldAllowDrags];
    v15 = [(CNContactListViewController *)self searchResultsController];
    [v15 setShouldAllowDrags:v14];

    v16 = [(CNContactListViewController *)self searchResultsController];
    [v16 setShouldAllowDrops:0];

    v17 = [(CNContactListViewController *)self searchResultsController];
    [v17 setShouldDisplayCount:0];

    v18 = [(CNContactListViewController *)self contactFormatter];
    v19 = [(CNContactListViewController *)self searchResultsController];
    [v19 setContactFormatter:v18];

    v20 = [(CNContactListViewController *)self delegate];
    v21 = [(CNContactListViewController *)self searchResultsController];
    [v21 setDelegate:v20];

    v22 = [(CNContactListViewController *)self searchResultsController];
    v23 = [(CNContactListViewController *)self searchResultsController];
    v24 = [v23 dataSource];
    [v24 setDelegate:v22];

    v25 = [(CNContactListViewController *)self contactListStyleApplier];
    v26 = [(CNContactListViewController *)self searchResultsController];
    [v26 setContactListStyleApplier:v25];

    v27 = [(CNContactListViewController *)self allowsMultiSelectContextMenus];
    v28 = [(CNContactListViewController *)self searchResultsController];
    [v28 setAllowsMultiSelectContextMenus:v27];

    v29 = [(CNContactListViewController *)self searchResultsController];
    [v29 setShouldHideDuplicates:1];

    v30 = [CNContactListSearchController alloc];
    v31 = [(CNContactListViewController *)self searchResultsController];
    v32 = [(CNContactListSearchController *)v30 initWithSearchResultsController:v31];

    [(CNContactListSearchController *)v32 setSearchResultsUpdater:self];
    [(CNContactListSearchController *)v32 setRestorationIdentifier:@"UISearchControllerRestorationIdentifier"];
    [(CNContactListSearchController *)v32 setDelegate:self];
    v33 = [MEMORY[0x1E69DC888] linkColor];
    v34 = [(CNContactListSearchController *)v32 searchBar];
    [v34 setTintColor:v33];

    [(CNContactListViewController *)self setSearchController:v32];
    v35 = [(CNContactListViewController *)self navigationItem];
    [v35 setSearchController:v32];

    v36 = [(CNContactListViewController *)self navigationItem];
    [v36 setHidesSearchBarWhenScrolling:0];

    if ([(CNContactListViewController *)self hasPickerPrivacyUI])
    {
      [(CNContactListViewController *)self setShouldShowLimitedAccessTip:[CNPrivateAccessAggregator shouldShowPickerTipForBundleIdentifier:self->_limitedAccessAppBundleId]];
      v37 = [(CNContactListViewController *)self shouldShowLimitedAccessTip];
      v38 = [CNContactListPrivacyTitleView alloc];
      v39 = [(CNContactListViewController *)self navigationItem];
      v40 = [v39 title];
      v41 = [(CNContactListPrivacyTitleView *)v38 initWithTitle:v40 hasIcon:!v37];

      v42 = [(CNContactListViewController *)self navigationItem];
      [v42 setTitleView:v41];
    }

    v43 = [(CNContactListViewController *)self navigationItem];
    [v43 setPreferredSearchBarPlacement:2];

    v44 = [MEMORY[0x1E69966E8] currentEnvironment];
    v45 = [v44 featureFlags];
    v46 = [v45 isFeatureEnabled:27];

    if (v46)
    {
      v47 = [(CNContactListViewController *)self navigationItem];
      [v47 setBackButtonDisplayMode:2];
    }

    [(CNContactListViewController *)self setExtendedLayoutIncludesOpaqueBars:1];
    v48 = [(CNContactListSearchController *)v32 searchBar];
    v49 = CNContactsUIBundle();
    v50 = [v49 localizedStringForKey:@"SEARCH_LOCAL_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
    [v48 setPlaceholder:v50];

    [v48 setAutoresizingMask:2];
    [v48 setAutocorrectionType:1];
    [v48 setDelegate:self];
    [v48 _setOverrideInlineInactiveWidth:150.0];
    [(CNContactListViewController *)self setSearchBar:v48];
    v51 = [MEMORY[0x1E69966E8] currentEnvironment];
    v52 = [v51 featureFlags];
    if ([v52 isFeatureEnabled:29])
    {
      v53 = [MEMORY[0x1E69DC938] currentDevice];
      v54 = [v53 userInterfaceIdiom];

      if (v54)
      {
LABEL_14:
        v59 = [MEMORY[0x1E696AD88] defaultCenter];
        v60 = *MEMORY[0x1E69DE5C8];
        v61 = [v48 searchField];
        [v59 addObserver:self selector:sel__searchBarDidEndEditing_ name:v60 object:v61];

        goto LABEL_15;
      }

      v55 = CNUIIsContacts();
      v56 = [(CNContactListSearchController *)v32 _inlineToolbarSearchBarItem];
      v51 = v56;
      if (v55)
      {
        v68[0] = v56;
        v52 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
        v68[1] = v52;
        v57 = [(CNContactListViewController *)self addButton];
        v68[2] = v57;
        v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
        [(CNContactListViewController *)self setToolbarItems:v58];
      }

      else
      {
        v67 = v56;
        v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
        [(CNContactListViewController *)self setToolbarItems:v52];
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  if ([(CNContactListViewController *)self shouldAllowDrags])
  {
    v62 = [(CNContactListViewController *)self collectionView];
    [v62 setDragSourceDelegate:self];
  }

  if ([(CNContactListViewController *)self shouldAllowDrops])
  {
    v63 = [(CNContactListViewController *)self collectionView];
    [v63 setDragDestinationDelegate:self];
  }

  v64 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_dismissKeyboard];
  [v64 setCancelsTouchesInView:0];
  v65 = [(CNContactListViewController *)self collectionView];
  [v65 addGestureRecognizer:v64];
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

  v4 = [(CNContactListViewController *)self isShowingDuplicatesBanner];
  v5 = [(CNContactListViewController *)self shouldDisplayCreateNewContactAsRow];
  return v5 + v4 + [(CNContactListViewController *)self isShowingLimitedAccessTip];
}

- (BOOL)isDisplayingContentUnavailableViewAsCell
{
  v2 = [(CNContactListViewController *)self cellContentUnavailableConfiguration];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)shouldDisplayCreateNewContactAsRow
{
  v3 = [(CNContactListViewController *)self collectionViewShouldDisplayCreateNewContact];
  if (v3)
  {
    LOBYTE(v3) = ![(CNContactListViewController *)self hasNoContacts];
  }

  return v3;
}

- (BOOL)collectionViewShouldDisplayCreateNewContact
{
  v3 = [(CNContactListViewController *)self shouldDisplayAddNewContactRow];
  if (v3)
  {

    LOBYTE(v3) = [(CNContactListViewController *)self isViewingTopLevelAllContacts];
  }

  return v3;
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

  v4 = [(CNContactDataSource *)self->_dataSource contacts];
  v3 = [v4 count] == 0;

  return v3;
}

- (int64_t)numberOfSections
{
  v3 = *MEMORY[0x1E6996530];
  v4 = [(CNContactListViewController *)self _sections];
  if ((*(v3 + 16))(v3, v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CNContactListViewController *)self _sections];
    v5 = [v6 count];
  }

  return [(CNContactListViewController *)self additionalSectionsAtTopCount]+ v5;
}

- (void)adjustTableViewOffsetForIncomingSearchUI
{
  v3 = [(CNContactListViewController *)self collectionView];
  [v3 contentOffset];
  v5 = v4;

  if (v5 == 0.0)
  {
    v6 = *MEMORY[0x1E6996530];
    v7 = [(CNContactListViewController *)self collectionView];
    v8 = [v7 indexPathsForSelectedItems];
    if ((*(v6 + 16))(v6, v8))
    {
      v9 = [(CNContactListViewController *)self didDeleteContact];

      if (!v9)
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
        v10 = [(CNContactListViewController *)self searchController];
        if (v10)
        {
          v11 = v10;
          v12 = [(CNContactListViewController *)self searchController];
          v13 = [v12 searchBar];

          if (v13)
          {
            v14 = [(CNContactListViewController *)self collectionView];
            [v14 contentOffset];
            v16 = v15;

            v17 = [(CNContactListViewController *)self navigationController];
            v18 = [v17 navigationBar];
            [v18 bounds];
            v20 = v19;

            v21 = [(CNContactListViewController *)self collectionView];
            [v21 setContentOffset:{v16, v20}];
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
  v3 = [(CNContactListViewController *)self contactListStyleApplier];
  v4 = [(CNContactListViewController *)self searchBar];
  [v3 applyContactListStyleToSearchBar:v4];

  v5 = [(CNContactListViewController *)self contactListStyleApplier];
  v6 = [(CNContactListViewController *)self navigationController];
  v7 = [v6 navigationBar];
  [v5 applyContactListStyleToNavigationBar:v7];

  v8 = [(CNContactListViewController *)self contactListStyleApplier];
  v9 = [(CNContactListViewController *)self collectionView];
  [v8 applyContactListStyleToCollectionView:v9];

  [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
  v10 = [(CNContactListViewController *)self contactListStyleApplier];
  v11 = [(CNContactListViewController *)self meContactBanner];
  [v11 setContactListStyleApplier:v10];

  if ([(CNContactListViewController *)self isHandlingSearch])
  {
    v12 = [(CNContactListViewController *)self contactListStyleApplier];
    v13 = [(CNContactListViewController *)self searchResultsController];
    [v13 setContactListStyleApplier:v12];
  }

  if ([(CNContactListViewController *)self isViewLoaded])
  {
    v14 = [(CNContactListViewController *)self collectionView];
    v15 = [v14 window];

    if (v15)
    {
      v16 = *MEMORY[0x1E6996530];
      v20 = [(CNContactListViewController *)self collectionView];
      v17 = [v20 indexPathsForVisibleItems];
      if ((*(v16 + 16))(v16, v17))
      {
      }

      else
      {
        v18 = [(CNContactListViewController *)self collectionView];
        v19 = [v18 window];

        if (v19)
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
  v3 = [(CNContactListViewController *)&v6 _contentUnavailableConfigurationState];
  v4 = [(CNContactListViewController *)self filteredSearchString];
  [v3 setSearchControllerText:v4];

  return v3;
}

- (id)filteredSearchString
{
  objc_opt_class();
  v3 = [(CNContactListViewController *)self dataSource];
  v4 = [v3 filter];
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
    v7 = [v6 fullTextString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldEmbedContentUnavailableViewInCell
{
  v2 = [(CNContactListViewController *)self listHeaderView];
  [v2 frame];
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
  v3 = [(CNContactListViewController *)self isDisplayingContentUnavailableViewAsCell];
  result = 0.0;
  if (v3)
  {
    v5 = [(CNContactListViewController *)self collectionView];
    [v5 frame];
    Height = CGRectGetHeight(v14);

    [(CNContactListViewController *)self contactListHeaderHeight];
    v8 = v7;
    v9 = [(CNContactListViewController *)self collectionView];
    [v9 directionalLayoutMargins];
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

  v4 = [(CNContactDataSource *)self->_dataSource sections];
  v3 = [v4 count] > 1;

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
    v3 = [(CNContactListViewController *)self collectionView];
    v4 = [v3 isEditing] ^ 1;
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
  v3 = [(CNContactListViewController *)self pendingLayoutBlocks];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_460];

  [(CNContactListViewController *)self setPendingLayoutBlocks:MEMORY[0x1E695E0F0]];
  if ([(CNContactListViewController *)self pendingSearchControllerActivation])
  {
    v4 = [(CNContactListViewController *)self searchController];
    [v4 setActive:1];

    [(CNContactListViewController *)self setPendingSearchControllerActivation:0];
  }

  v5 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v5 userInterfaceIdiom] == 1)
  {
  }

  else
  {
    v6 = [(CNContactListViewController *)self meContactBanner];

    if (v6)
    {
      [(CNContactListViewController *)self updateMeContactBannerTopKeyline];
    }
  }

  [(CNContactListViewController *)self layoutSelectButtonView];
}

- (void)layoutSelectButtonView
{
  v3 = [(CNContactListViewController *)self collectionView];
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{-[CNContactListViewController additionalSectionsAtTopCount](self, "additionalSectionsAtTopCount")}];
  v38 = [v3 layoutAttributesForItemAtIndexPath:v4];

  v5 = [(CNContactListViewController *)self searchBar];
  [v38 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(CNContactListViewController *)self view];
  [v5 convertRect:v14 toView:{v7, v9, v11, v13}];
  v16 = v15;

  v17 = [(CNContactListViewController *)self collectionView];
  [v17 frame];
  v19 = v18;
  v20 = [(CNContactListViewController *)self collectionView];
  [v20 layoutMargins];
  v22 = v19 - v21;
  v23 = [(CNContactListViewController *)self selectButton];
  [v23 bounds];
  v25 = v22 - v24 + -20.0;

  v26 = [(CNContactListViewController *)self searchBar];
  [v26 bounds];
  v28 = v16 + v27;
  [(CNContactListViewController *)self selectAllButtonOffsetAccountingForSectionHeaders];
  v30 = v28 + v29;

  v31 = [(CNContactListViewController *)self selectButton];
  [v31 bounds];
  v33 = v32;

  v34 = [(CNContactListViewController *)self selectButton];
  [v34 bounds];
  v36 = v35;

  v37 = [(CNContactListViewController *)self selectButtonView];
  [v37 setFrame:{v25, v30, v36, v33}];
}

- (float)selectAllButtonOffsetAccountingForSectionHeaders
{
  v3 = [(CNContactListViewController *)self collectionView];
  v4 = [v3 numberOfSections];
  v5 = [(CNContactListViewController *)self additionalSectionsAtTopCount]+ 1;

  LODWORD(v6) = 8.0;
  if (v4 > v5)
  {
    v7 = [(CNContactListViewController *)self isShowingLimitedAccessTip];
    LODWORD(v6) = -1036779520;
    if (v7)
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
  v3 = [(CNContactListViewController *)self medicalIDLookupToken];

  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = [(CNContactListViewController *)self contactStore];
    v5 = [(CNContactListViewController *)self environment];
    v6 = [v5 healthStoreManager];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke;
    v16[3] = &unk_1E74E7268;
    objc_copyWeak(&v18, &location);
    v7 = v4;
    v17 = v7;
    v8 = [v6 registerMedicalIDDataHandler:v16];
    [(CNContactListViewController *)self setMedicalIDLookupRegistrationToken:v8];
    v9 = MEMORY[0x1E6996668];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__CNContactListViewController_startHandlingEmergencyContacts__block_invoke_5;
    v13[3] = &unk_1E74E77C0;
    v10 = v6;
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
  v3 = [(CNContactListViewController *)self splitViewController];

  if (v3)
  {
    v5 = [(CNContactListViewController *)self splitViewController];
    v4 = [v5 view];
    [v4 endEditing:1];
  }
}

- (void)updateSelectedContactCount
{
  objc_opt_class();
  v3 = [(CNContactListViewController *)self collectionView];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
    v4 = [(CNContactListViewController *)self limitedAccessContactsFromCurrentSelection];
    v3 = [(CNContactListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 didUpdateLimitedAccessSelection:v4];
    }

    [(CNContactListViewController *)self updateSelectAllButtonTitle];
    -[CNContactListViewController updateNavTitleWithCount:](self, "updateNavTitleWithCount:", [v4 count]);
  }
}

- (void)tipKitStopObservation
{
  v2 = +[_TtC10ContactsUI12CNTipsHelper shared];
  [v2 tipKitStopObservation];
}

- (void)updatelimitedAccessContactSelection
{
  v3 = [(CNContactListViewController *)self limitedAccessContactsFromCurrentSelection];
  [(CNContactListViewController *)self setLimitedAccessContactSelection:v3];
}

- (id)limitedAccessContactsFromCurrentSelection
{
  v20 = *MEMORY[0x1E69E9840];
  if ([CNLimitedAccessPickerSupport isPickerLimitedAccessWithMultiSelect:[(CNContactListViewController *)self limitedAccessPickerType]])
  {
    v3 = [(CNContactListViewController *)self limitedAccessContactSelection];
    v4 = [v3 mutableCopy];

    v5 = MEMORY[0x1E695DFA8];
    v6 = [(CNContactListViewController *)self selectedContacts];
    v7 = [v6 _cn_map:&__block_literal_global_698];
    v8 = [v5 setWithArray:v7];

    v9 = MEMORY[0x1E695DFA8];
    v10 = [(CNContactListViewController *)self contactSelectionOnViewLoad];
    v11 = [v9 setWithSet:v10];

    [v11 minusSet:v8];
    v12 = [MEMORY[0x1E695DFA8] setWithSet:v8];
    v13 = [(CNContactListViewController *)self contactSelectionOnViewLoad];
    [v12 minusSet:v13];

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

+ (id)collectionViewLayoutWithFloatingHeaderViews:(BOOL)a3 contactListStyleApplier:(id)a4 trailingSwipeActionsProvider:(id)a5 shouldDisplaySupplementaryHeaderItemForSection:(id)a6 shouldShowSeparatorsForSection:(id)a7 directionalLayoutMargins:(id)a8 collectionViewIsShowingIndexBar:(id)a9 numberOfItemsInSection:(id)a10 contentUnavailable:(id)a11 collectionViewIsSelectingIndexPath:(id)a12
{
  v63[2] = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = objc_alloc(MEMORY[0x1E69DC808]);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __340__CNContactListViewController_collectionViewLayoutWithFloatingHeaderViews_contactListStyleApplier_trailingSwipeActionsProvider_shouldDisplaySupplementaryHeaderItemForSection_shouldShowSeparatorsForSection_directionalLayoutMargins_collectionViewIsShowingIndexBar_numberOfItemsInSection_contentUnavailable_collectionViewIsSelectingIndexPath___block_invoke;
  v51[3] = &unk_1E74E36A8;
  v52 = v16;
  v53 = v22;
  v54 = v19;
  v55 = v20;
  v56 = v24;
  v57 = v17;
  v62 = a3;
  v58 = v18;
  v59 = v21;
  v60 = v23;
  v61 = a1;
  v50 = v23;
  v48 = v21;
  v46 = v18;
  v45 = v17;
  v44 = v24;
  v43 = v20;
  v42 = v19;
  v26 = v22;
  v27 = v16;
  v28 = [v25 initWithSectionProvider:v51];
  v29 = [v28 configuration];
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
  [v29 setBoundarySupplementaryItems:v40];

  [v28 setConfiguration:v29];

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

+ (id)layoutSectionForLayoutConfiguration:(id)a3 layoutEnvironment:(id)a4 section:(int64_t)a5 contactListStyleApplier:(id)a6 shouldDisplaySupplementaryHeaderItemForSection:(id)a7 headerViewsFloat:(BOOL)a8 directionalLayoutMargins:(id)a9 collectionViewIsShowingIndexBar:(id)a10 contentUnavailable:(id)a11
{
  v51[1] = *MEMORY[0x1E69E9840];
  v44 = a3;
  v14 = a4;
  v15 = a7;
  v16 = *(a11 + 2);
  v17 = a10;
  v18 = a9;
  v19 = a6;
  v20 = v16(a11);
  if (v20 <= 0.0)
  {
    v31 = v44;
    v30 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v44 layoutEnvironment:v14];
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

    v31 = v44;
  }

  v32 = v18[2](v18);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = v17[2](v17);
  [v19 applyContactListDirectionalLayoutMargins:v30 toLayoutSection:v39 collectionViewIsShowingIndexBar:{v32, v34, v36, v38}];

  v40 = [v30 boundarySupplementaryItems];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __257__CNContactListViewController_layoutSectionForLayoutConfiguration_layoutEnvironment_section_contactListStyleApplier_shouldDisplaySupplementaryHeaderItemForSection_headerViewsFloat_directionalLayoutMargins_collectionViewIsShowingIndexBar_contentUnavailable___block_invoke;
  v47[3] = &unk_1E74E3658;
  v48 = v15;
  v49 = a5;
  v50 = a8;
  v41 = v15;
  v42 = [v40 _cn_compactMap:v47];
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

- (void)duplicatesBannerCellDidTapDismiss:(id)a3
{
  v4 = [(CNContactListViewController *)self duplicatesController];
  [v4 ignoreNewDuplicatesBanner];

  [(CNContactListViewController *)self removeDuplicatesBanner];
}

- (void)addContactsToListTappedWithSourceView:(id)a3
{
  v7 = a3;
  v4 = [(CNContactListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactListViewController *)self delegate];
    [v6 contactListViewControllerSelectedAddContactToList:self withSourceView:v7];
  }
}

- (void)setBottomEdgesInset:(double)a3
{
  v5 = [(CNContactListViewController *)self collectionView];
  [v5 contentInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CNContactListViewController *)self view];

  if (v12)
  {
    v13 = [(CNContactListViewController *)self collectionView];
    [v13 setContentInset:{v7, v9, a3, v11}];

    v14 = [(CNContactListViewController *)self collectionView];
    [v14 setNeedsLayout];

    v15 = [(CNContactListViewController *)self collectionView];
    [v15 layoutIfNeeded];
  }
}

- (void)createNewContactTapped
{
  v3 = [(CNContactListViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNContactListViewController *)self delegate];
    [v5 contactListViewControllerSelectedCreateNewContact:self];
  }
}

- (void)addContactTapped:(id)a3
{
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:29];

  v7 = [(CNContactListViewController *)self delegate];
  if (!v6)
  {
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      return;
    }

LABEL_5:
    v12 = [(CNContactListViewController *)self delegate];
    [v12 contactListViewControllerSelectedCreateNewContact:self];
    goto LABEL_6;
  }

  v8 = objc_opt_respondsToSelector();

  v9 = [(CNContactListViewController *)self delegate];
  v12 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  [v9 contactListAddContactButtonTapped:self];
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

- (BOOL)isPathToContentUnavailableRow:(id)a3
{
  v4 = a3;
  if ([(CNContactListViewController *)self isDisplayingContentUnavailableViewAsCell])
  {
    v5 = [(CNContactListViewController *)self pathToContentUnavailableRow];
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isPathToCreateNewContactRow:(id)a3
{
  v4 = a3;
  if ([(CNContactListViewController *)self shouldDisplayCreateNewContactAsRow])
  {
    v5 = [(CNContactListViewController *)self pathToCreateNewContactRow];
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsPathToContentUnavailableRow:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__CNContactListViewController_containsPathToContentUnavailableRow___block_invoke;
  v4[3] = &unk_1E74E3A80;
  v4[4] = self;
  return [a3 _cn_any:v4];
}

- (BOOL)containsPathToCreateNewContactRow:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__CNContactListViewController_containsPathToCreateNewContactRow___block_invoke;
  v4[3] = &unk_1E74E3A80;
  v4[4] = self;
  return [a3 _cn_any:v4];
}

- (BOOL)isContentUnavailableRowSection:(int64_t)a3
{
  v5 = [(CNContactListViewController *)self isDisplayingContentUnavailableViewAsCell];
  if (v5)
  {
    LOBYTE(v5) = [(CNContactListViewController *)self contentUnavailableRowSection]== a3;
  }

  return v5;
}

- (BOOL)isCreateNewContactRowSection:(int64_t)a3
{
  v5 = [(CNContactListViewController *)self shouldDisplayCreateNewContactAsRow];
  if (v5)
  {
    LOBYTE(v5) = [(CNContactListViewController *)self createNewContactRowSection]== a3;
  }

  return v5;
}

- (BOOL)isPerformingDuplicatesMerge
{
  if (!self->_duplicatesController)
  {
    return 0;
  }

  v2 = [(CNContactListViewController *)self duplicatesController];
  v3 = [v2 isPerformingMerge];

  return v3;
}

- (void)didPerformDuplicatesMerge:(id)a3
{
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:16];

  if (v6)
  {
    v7 = [MEMORY[0x1E69966E8] currentEnvironment];
    v8 = [v7 schedulerProvider];
    v9 = [v8 mainThreadScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__CNContactListViewController_didPerformDuplicatesMerge___block_invoke;
    v10[3] = &unk_1E74E6A88;
    v10[4] = self;
    [v9 performBlock:v10];
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

- (void)willPerformDuplicatesMergeAll:(id)a3
{
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:16];

  if (v6)
  {

    [(CNContactListViewController *)self refreshDuplicatesBanner];
  }
}

- (void)duplicatesDidChange:(id)a3
{
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:16];

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

- (BOOL)isPathToDuplicatesBanner:(id)a3
{
  v4 = a3;
  if ([(CNContactListViewController *)self isShowingDuplicatesBanner])
  {
    v5 = [(CNContactListViewController *)self pathToDuplicatesBanner];
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsPathToDuplicatesBanner:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__CNContactListViewController_containsPathToDuplicatesBanner___block_invoke;
  v4[3] = &unk_1E74E3A80;
  v4[4] = self;
  return [a3 _cn_any:v4];
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
  v3 = [(CNContactListViewController *)self collectionView];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [(CNContactListViewController *)self collectionView];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __83__CNContactListViewController_updateDataSourceAndCollectionViewForDuplicatesBanner__block_invoke;
    v7[3] = &unk_1E74E6A88;
    v7[4] = self;
    [v5 performBatchUpdates:v7 completion:0];
  }

  else
  {
    [(CNContactListViewController *)self updateAdditionalSectionsAtTop];
    v6 = [(CNContactListViewController *)self collectionView];
    [v6 reloadData];
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
  v3 = [(CNContactListViewController *)self duplicatesBannerCell];
  if (v3)
  {
    v5 = v3;
    v4 = [(CNContactListViewController *)self duplicatesController];
    [v4 decorateBannerViewCell:v5];

    v3 = v5;
  }
}

- (id)duplicatesBannerCell
{
  v3 = [(CNContactListViewController *)self pathToDuplicatesBanner];
  v4 = [(CNContactListViewController *)self collectionView];
  v5 = [v4 cellForItemAtIndexPath:v3];

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
    v3 = [(CNContactListViewController *)self duplicatesBannerCell];
    [v3 setDelegate:0];
    [(CNContactListViewController *)self updateDataSourceAndCollectionViewForDuplicatesBanner];
  }
}

- (void)refreshDuplicatesBanner
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 schedulerProvider];
  v5 = [v4 mainThreadScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CNContactListViewController_refreshDuplicatesBanner__block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [v5 performBlock:v6];
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
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:16];

  if (v5)
  {
    if ([(CNContactListViewController *)self isSearching])
    {
      [(CNContactListViewController *)self cancelSearch:self];
    }

    v6 = [(CNContactListViewController *)self duplicatesController];
    [v6 presentSheetBasedMergeForController:self showsIgnored:1];

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
      v3 = [MEMORY[0x1E69966E8] currentEnvironment];
      v4 = [v3 schedulerProvider];
      v5 = [v4 mainThreadScheduler];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58__CNContactListViewController_initializeDuplicateContacts__block_invoke;
      v7[3] = &unk_1E74E6A88;
      v7[4] = self;
      v6 = [v5 afterDelay:v7 performBlock:4.0];
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

  v3 = [(CNContactListViewController *)self collectionView];
  if ([v3 isEditing])
  {
    v4 = [(CNContactListViewController *)self collectionView];
    v5 = [v4 allowsMultipleSelectionDuringEditing];

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = [(CNContactListViewController *)self duplicatesController];
  v8 = [v7 canMergeDuplicates];

  return v8;
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
  v3 = [(CNContactListViewController *)self collectionView];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && [v5 contactCount] >= 1 && self->_duplicatesController)
  {
    v6 = [(CNContactListViewController *)self duplicatesController];
    v7 = [v6 wantsToDisplayNewDuplicatesBanner:3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDuplicatesRowSection:(int64_t)a3
{
  result = [(CNContactListViewController *)self isShowingDuplicatesBanner];
  if (a3)
  {
    return 0;
  }

  return result;
}

- (void)updateNavTitleWithCount:(unint64_t)a3
{
  if ([(CNContactListViewController *)self isShowingCustomTitle])
  {
    objc_opt_class();
    v5 = [(CNContactListViewController *)self dataSource];
    v6 = [v5 filter];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = MEMORY[0x1E696AEC0];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"SELECTED_COUNT" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [v9 localizedStringWithFormat:v11, a3];
    [v8 setCustomDisplayName:v12];

    [(CNContactListViewController *)self reloadTitle];
  }
}

- (void)updateSelectAllButtonTitle
{
  v3 = [(CNContactListViewController *)self selectButtonView];

  if (v3)
  {
    v4 = [(CNContactListViewController *)self hasAllRowsSelected];
    v5 = CNContactsUIBundle();
    v6 = v5;
    if (v4)
    {
      v7 = @"LIMITED_CONTACTS_DESELECT_ALL";
    }

    else
    {
      v7 = @"LIMITED_CONTACTS_SELECT_ALL";
    }

    v11 = [v5 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized"];

    v8 = [(CNContactListViewController *)self selectButton];
    [v8 setTitle:v11 forState:0];

    v9 = [(CNContactListViewController *)self selectButton];
    [v9 setNeedsLayout];

    v10 = [(CNContactListViewController *)self selectButton];
    [v10 layoutIfNeeded];

    [(CNContactListViewController *)self layoutSelectButtonView];
  }
}

- (void)addSelectButtonView
{
  v26[2] = *MEMORY[0x1E69E9840];
  if ([CNLimitedAccessPickerSupport isPickerLimitedAccessWithLists:[(CNContactListViewController *)self limitedAccessPickerType]])
  {
    v3 = [(CNContactListViewController *)self selectButtonView];

    if (!v3)
    {
      if ([(CNContactListViewController *)self showingGroup])
      {
        v4 = [(CNContactListViewController *)self totalNumberOfRows];
        if (v4 - [(CNContactListViewController *)self additionalSectionsAtTopCount]>= 6)
        {
          v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
          [v5 setClipsToBounds:1];
          [v5 setAutoresizingMask:2];
          [v5 setTranslatesAutoresizingMaskIntoConstraints:1];
          v6 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
          v7 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
          v8 = [v6 background];
          [v8 setBackgroundColor:v7];

          v9 = [MEMORY[0x1E69DC730] effectWithStyle:4];
          v10 = [v6 background];
          [v10 setVisualEffect:v9];

          v11 = [MEMORY[0x1E69DC888] linkColor];
          [v6 setBaseForegroundColor:v11];

          [v6 setCornerStyle:4];
          [v6 setButtonSize:2];
          [v6 setContentInsets:{6.0, 10.0, 6.0, 10.0}];
          v12 = CNContactsUIBundle();
          v13 = [v12 localizedStringForKey:@"LIMITED_CONTACTS_SELECT_ALL" value:&stru_1F0CE7398 table:@"Localized"];
          [v6 setTitle:v13];

          [v6 setTitleTextAttributesTransformer:&__block_literal_global_667];
          v14 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v6 primaryAction:0];
          [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v14 addTarget:self action:sel_handleSelectAllTapped forControlEvents:64];
          [v5 addSubview:v14];
          [(CNContactListViewController *)self setSelectButton:v14];
          v25 = [(CNContactListViewController *)self selectButton];
          v23 = [v25 centerYAnchor];
          v24 = v5;
          v15 = [v5 centerYAnchor];
          v16 = [v23 constraintEqualToAnchor:v15];
          v26[0] = v16;
          v17 = [(CNContactListViewController *)self selectButton];
          v18 = [v17 centerXAnchor];
          v19 = [v5 centerXAnchor];
          v20 = [v18 constraintEqualToAnchor:v19];
          v26[1] = v20;
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

          [MEMORY[0x1E696ACD8] activateConstraints:v21];
          v22 = [(CNContactListViewController *)self view];
          [v22 addSubview:v24];

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

- (void)selectAllIndexPathsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNContactListViewController *)self additionalSectionsAtTopCount];
  v6 = [(CNContactListViewController *)self collectionView];
  v7 = [v6 numberOfSections];

  if (v5 < v7)
  {
    do
    {
      v8 = [(CNContactListViewController *)self collectionView];
      v9 = [v8 numberOfItemsInSection:v5];

      if (v9 >= 1)
      {
        v10 = 0;
        do
        {
          v11 = [(CNContactListViewController *)self collectionView];
          v12 = [MEMORY[0x1E696AC88] indexPathForRow:v10 inSection:v5];
          [v11 selectItemAtIndexPath:v12 animated:v3 scrollPosition:0];

          ++v10;
          v13 = [(CNContactListViewController *)self collectionView];
          v14 = [v13 numberOfItemsInSection:v5];
        }

        while (v10 < v14);
      }

      ++v5;
      v15 = [(CNContactListViewController *)self collectionView];
      v16 = [v15 numberOfSections];
    }

    while (v5 < v16);
  }
}

- (unint64_t)totalNumberOfRows
{
  v3 = [(CNContactListViewController *)self collectionView];
  v4 = [v3 numberOfSections];

  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = [(CNContactListViewController *)self collectionView];
    v6 += [v7 numberOfItemsInSection:v5];

    ++v5;
    v8 = [(CNContactListViewController *)self collectionView];
    v9 = [v8 numberOfSections];
  }

  while (v5 < v9);
  return v6;
}

- (BOOL)hasAllRowsSelected
{
  v2 = self;
  v3 = [(CNContactListViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v5 = [v4 count];
  v6 = [(CNContactListViewController *)v2 totalNumberOfRows];
  LOBYTE(v2) = v5 == v6 - [(CNContactListViewController *)v2 additionalSectionsAtTopCount];

  return v2;
}

- (void)didResetLimitedAccessSelectionTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CNUILogContactList();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v16 = [v4 count];
    _os_log_debug_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEBUG, "Reset Limited to %lu contacts", buf, 0xCu);
  }

  if ([(CNContactListViewController *)self limitedAccessPickerType]== 5)
  {
    objc_opt_class();
    v6 = [(CNContactListViewController *)self dataSource];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 filter];
    [v9 setLimitedAccessIdentifiers:v4];

    [v8 reloadAsynchronously];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CNContactsUIBundle();
    v12 = [v11 localizedStringForKey:@"LIMITED_CONTACTS_SELECTED_PROMPT" value:&stru_1F0CE7398 table:@"Localized"];
    v13 = [v10 localizedStringWithFormat:v12, objc_msgSend(v4, "count")];
    v14 = [(CNContactListViewController *)self navigationItem];
    [v14 setPrompt:v13];

    [(CNContactListViewController *)self setLimitedAccessContactSelection:v4];
  }

  else
  {
    [(CNContactListViewController *)self deselectAllSelectedIndexPathsAnimated:0];
    [(CNContactListViewController *)self setLimitedAccessContactSelection:v4];
    [(CNContactListViewController *)self setupViewWithLimitedAccessContactSelection];
    [(CNContactListViewController *)self updateInResponseToLimitedAccessSelectionChanged];
  }
}

- (void)setupViewWithLimitedAccessContactSelection
{
  v22 = *MEMORY[0x1E69E9840];
  if ([CNLimitedAccessPickerSupport isPickerLimitedAccessWithMultiSelect:[(CNContactListViewController *)self limitedAccessPickerType]])
  {
    v3 = [(CNContactListViewController *)self limitedAccessContactSelection];
    v4 = [v3 allObjects];
    v5 = [(CNContactListViewController *)self limitedAccessAppBundleId];
    v6 = [CNLimitedAccessPickerSupport contactsFromIdentifiers:v4 withBundleId:v5];

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
    v13 = [(CNContactListViewController *)self selectedContacts];
    v14 = [v13 _cn_map:&__block_literal_global_698];
    v15 = [v12 setWithArray:v14];

    v16 = [(CNContactListViewController *)self contactSelectionOnViewLoad];

    if (!v16)
    {
      [(CNContactListViewController *)self setLimitedAccessContactSelection:v15];
    }

    [(CNContactListViewController *)self setContactSelectionOnViewLoad:v15, v17];
  }
}

- (void)limitedAccessTipCellDidTapDismiss:(id)a3
{
  if ([(CNContactListViewController *)self isShowingLimitedAccessTip])
  {
    v4 = [(CNContactListViewController *)self limitedAccessTipCell];
    [v4 setDelegate:0];

    [(CNContactListViewController *)self setShouldShowLimitedAccessTip:0];
    objc_opt_class();
    v5 = [(CNContactListViewController *)self navigationItem];
    v6 = [v5 titleView];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    [v8 setHasIcon:1];
    [(CNContactListViewController *)self updateDataSourceAndCollectionViewForLimitedAccessTip];
    v9 = [(CNContactListViewController *)self limitedAccessAppBundleId];
    [CNPrivateAccessAggregator recordPickerTipDismissalForBundleIdentifier:v9];
  }
}

- (void)updateDataSourceAndCollectionViewForLimitedAccessTip
{
  v3 = [(CNContactListViewController *)self collectionView];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [(CNContactListViewController *)self collectionView];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __83__CNContactListViewController_updateDataSourceAndCollectionViewForLimitedAccessTip__block_invoke;
    v6[3] = &unk_1E74E6A88;
    v6[4] = self;
    [v5 performBatchUpdates:v6 completion:0];
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
  v3 = [(CNContactListViewController *)self pathToLimitedAccessTipRow];
  v4 = [(CNContactListViewController *)self collectionView];
  v5 = [v4 cellForItemAtIndexPath:v3];

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
  v3 = [(CNContactListViewController *)self limitedAccessAppName];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {

    v4 = [(CNContactListViewController *)self limitedAccessAppBundleId];
    v3 = [CNLimitedAccessPickerSupport appNameForBundleId:v4];

    [(CNContactListViewController *)self setLimitedAccessAppName:v3];
  }

  return v3;
}

- (BOOL)containsPathToLimitedAccessTipRow:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__CNContactListViewController_containsPathToLimitedAccessTipRow___block_invoke;
  v4[3] = &unk_1E74E3A80;
  v4[4] = self;
  return [a3 _cn_any:v4];
}

- (BOOL)isPathToLimitedAccessTipRow:(id)a3
{
  v4 = a3;
  if ([(CNContactListViewController *)self isShowingLimitedAccessTip])
  {
    v5 = [(CNContactListViewController *)self pathToLimitedAccessTipRow];
    v6 = v5 == v4;
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

- (BOOL)isLimitedAccessTipRowSection:(int64_t)a3
{
  v5 = [(CNContactListViewController *)self isShowingLimitedAccessTip];
  if (v5)
  {
    LOBYTE(v5) = [(CNContactListViewController *)self limitedAccessTipSection]== a3;
  }

  return v5;
}

- (id)getVisibleIndexPaths
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(CNContactListViewController *)self isViewLoaded])
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v3 = [(CNContactListViewController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  if ([v4 count])
  {
    v5 = [(CNContactListViewController *)self collectionView];
    v6 = [v5 visibleCells];
    v7 = [v6 count];

    if ([v4 count] != v7)
    {
      v8 = CNUILogContactList();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [v4 count];
        v11 = [(CNContactListViewController *)self collectionView];
        v12 = [v11 visibleCells];
        v13 = 134218240;
        v14 = v10;
        v15 = 2048;
        v16 = [v12 count];
        _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "indexPathsForVisibleRows.count %lu != visibleCells.count = %lu", &v13, 0x16u);
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v4;
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
  v3 = [(CNContactListViewController *)self vCardImportController];

  if (!v3)
  {
    v11 = [(CNContactListViewController *)self contactStore];
    objc_opt_class();
    v4 = [(CNContactListViewController *)self navigationController];
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
      v7 = [v6 targetGroupForNewContact];
      v8 = [v6 targetContainerForNewContactWithTargetGroup:v7];
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = [[CNVCardImportController alloc] initWithContactStore:v11 presentationDelegate:self targetGroup:v7 targetContainer:v8];
    [(CNContactListViewController *)self setVCardImportController:v9];

    v10 = [(CNContactListViewController *)self vCardImportController];
    [v10 setDelegate:self];
  }
}

- (void)pasteContacts:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v5 = *MEMORY[0x1E6996530];
  v6 = [v4 itemProviders];
  v7 = (*(v5 + 16))(v5, v6);

  if ((v7 & 1) == 0)
  {
    [(CNContactListViewController *)self setupVCardImportController];
    v8 = [(CNContactListViewController *)self contactProvidersOnPasteboard];
    if (((*(v5 + 16))(v5, v8) & 1) == 0)
    {
      v23 = self;
      v24 = v4;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v8;
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
            v20 = [v18 future];
            v21 = [v20 result:0];

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
      block[4] = v23;
      v27 = v12;
      v22 = v12;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v4 = v24;
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
  v2 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = *MEMORY[0x1E6996530];
  v4 = [v2 itemProviders];
  LOBYTE(v3) = (*(v3 + 16))(v3, v4);

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 itemProviders];
    v5 = [v6 _cn_filter:&__block_literal_global_645];
  }

  return v5;
}

uint64_t __59__CNContactListViewController_contactProvidersOnPasteboard__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 canLoadObjectOfClass:objc_opt_class()];

  return v3;
}

- (void)vCardImportController:(id)a3 didSaveContacts:(id)a4
{
  v5 = [a4 firstObject];
  v6 = v5;
  if (v5)
  {
    v10 = v5;
    [(CNContactListViewController *)self selectContact:v5 animated:0 scrollPosition:2];
    v7 = [(CNContactListViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    v6 = v10;
    if (v8)
    {
      v9 = [(CNContactListViewController *)self delegate];
      [v9 contactListViewController:self didSelectContact:v10 shouldScrollToContact:0];

      v6 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)vCardImportController:(id)a3 presentViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(CNContactListViewController *)self splitViewController];
  [v8 presentViewController:v7 animated:v5 completion:0];
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v5 = [objc_alloc(MEMORY[0x1E69DC838]) initWithDropOperation:2 dropLocation:2];

  return v5;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  [(CNContactListViewController *)self setupVCardImportController];
  v6 = [v5 dropSession];
  v7 = [v6 canLoadObjectsOfClass:objc_opt_class()];

  if (v7)
  {
    v8 = [v5 dropSession];
    v9 = [MEMORY[0x1E695CE30] descriptorForRequiredKeys];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__CNContactListViewController_collectionView_performDropWithCoordinator___block_invoke;
    v14[3] = &unk_1E74E42C0;
    v14[4] = self;
    [CNUIDraggingContacts provideContactsForDropSession:v8 withKeys:v9 completionBlock:v14];

LABEL_5:
    goto LABEL_6;
  }

  v10 = [v5 dropSession];
  v15[0] = *MEMORY[0x1E69637C0];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [v10 hasItemsConformingToTypeIdentifiers:v11];

  if (v12)
  {
    v8 = [v5 dropSession];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__CNContactListViewController_collectionView_performDropWithCoordinator___block_invoke_2;
    v13[3] = &unk_1E74E3A10;
    v13[4] = self;
    [CNUIDraggingContacts provideVCardURLForDropSession:v8 completionBlock:v13];
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

- (id)dragItemsForIndexPath:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNContactListViewController *)self isPathToCreateNewContactRow:v4]|| [(CNContactListViewController *)self isPathToDuplicatesBanner:v4]|| [(CNContactListViewController *)self isPathToContentUnavailableRow:v4]|| [(CNContactListViewController *)self isPathToLimitedAccessTipRow:v4])
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:v4];
    if (v7)
    {
      v8 = [(CNContactListViewController *)self contactStore];
      v9 = [CNUIDraggingContacts dragItemForContact:v7 withContactStore:v8];
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

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v7 = a5;
  if ([(CNContactListViewController *)self shouldAllowDrags])
  {
    v8 = [(CNContactListViewController *)self dragItemsForIndexPath:v7];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v6 = a5;
  if ([(CNContactListViewController *)self shouldAllowDrags])
  {
    v7 = [(CNContactListViewController *)self dragItemsForIndexPath:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)selectPreviousContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactListViewController *)self navigationController];
  [v5 selectPreviousContact:v4];
}

- (void)selectNextContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactListViewController *)self navigationController];
  [v5 selectNextContact:v4];
}

- (void)copyContacts:(id)a3
{
  v4 = [(CNContactListViewController *)self collectionView];
  v7 = [v4 indexPathsForSelectedItems];

  v5 = [(CNContactListViewController *)self contactsForActionsAtIndexPaths:v7];
  v6 = [(CNContactListViewController *)self actionHelper];
  [v6 copyContacts:v5];
}

- (void)mergeUnifyContacts:(id)a3
{
  v4 = [(CNContactListViewController *)self mergableContacts];
  if (v4)
  {
    v6 = v4;
    v5 = [(CNContactListViewController *)self actionHelper];
    [v5 mergeContacts:v6];

    v4 = v6;
  }
}

- (id)mergableContacts
{
  v3 = [(CNContactListViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  if ([v4 count] < 2)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(CNContactListViewController *)self contactsForActionsAtIndexPaths:v4];
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

- (void)deleteContact:(id)a3
{
  v4 = [(CNContactListViewController *)self collectionView];
  v11 = [v4 indexPathsForSelectedItems];

  if ([v11 count])
  {
    v5 = [(CNContactListViewController *)self contactsForActionsAtIndexPaths:v11];
    objc_opt_class();
    v6 = [(CNContactListViewController *)self dataSource];
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

    v10 = [(CNContactListViewController *)self actionHelper];
    [v10 deleteContacts:v5 dataSourceFilter:v9];
  }
}

- (void)startSearchingForString:(id)a3 setSearchBarAsFirstResponder:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  if (-[CNContactListViewController isViewLoaded](self, "isViewLoaded") && (-[CNContactListViewController view](self, "view"), v6 = objc_claimAutoreleasedReturnValue(), [v6 window], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [(CNContactListViewController *)self searchController];
    v9 = [v8 isActive];

    if (v9)
    {
      v10 = [(CNContactListViewController *)self searchController];
      v11 = [v10 searchBar];
      [v11 setText:v13];

      if (!v4)
      {
        goto LABEL_9;
      }

      v12 = [(CNContactListViewController *)self searchBar];
      [v12 becomeFirstResponder];
    }

    else
    {
      [(CNContactListViewController *)self setPendingSearchQuery:v13];
      [(CNContactListViewController *)self setShouldSearchBarBecomeFirstResponder:v4];
      v12 = [(CNContactListViewController *)self searchController];
      [v12 setActive:1];
    }
  }

  else
  {
    [(CNContactListViewController *)self setPendingSearchQuery:v13];
    [(CNContactListViewController *)self setShouldSearchBarBecomeFirstResponder:v4];
    [(CNContactListViewController *)self setPendingSearchControllerActivation:1];
  }

LABEL_9:
}

- (void)cancelSearch:(id)a3
{
  v4 = [(CNContactListViewController *)self searchController];
  [v4 setActive:0];

  v5 = [(CNContactListViewController *)self searchBar];
  [(CNContactListViewController *)self searchBarCancelButtonClicked:v5];
}

- (void)beginSearch:(id)a3
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(CNContactListViewController *)self searchController];
    v5 = [v4 searchBar];
    [v5 setText:v10];
  }

  v6 = [(CNContactListViewController *)self searchController];
  if ([v6 isActive])
  {
    v7 = [(CNContactListViewController *)self shouldSearchBarBecomeFirstResponder];

    if (v7)
    {
      v8 = [(CNContactListViewController *)self searchController];
      v9 = [v8 searchBar];
      [v9 becomeFirstResponder];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [(CNContactListViewController *)self searchController];
  [v8 setActive:1];
LABEL_8:
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_isEqual(a3, sel_mergeUnifyContacts_))
  {
    v7 = [(CNContactListViewController *)self mergableContacts];
    LOBYTE(a3) = v7 != 0;
  }

  else if (sel_isEqual(a3, sel_pasteContacts_))
  {
    a3 = *MEMORY[0x1E6996530];
    v8 = [(CNContactListViewController *)self contactProvidersOnPasteboard];
    LODWORD(a3) = (*(a3 + 2))(a3, v8) ^ 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CNContactListViewController;
    LOBYTE(a3) = [(CNContactListViewController *)&v10 canPerformAction:a3 withSender:v6];
  }

  return a3;
}

- (void)didUpdateContentForAvatarViewController:(id)a3
{
  v4 = [(CNContactListViewController *)self environment];
  v3 = [v4 launchCheckinRegistrar];
  [v3 checkInLaunchTasks:2];
}

- (void)bannerView:(id)a3 wasSelectedToPresentMeContact:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(CNContactListViewController *)self collectionView];
  v7 = [v6 indexPathsForSelectedItems];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
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

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [(CNContactListViewController *)self collectionView];
        [v13 deselectItemAtIndexPath:v12 animated:1];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v9);
  }

  v21 = *MEMORY[0x1E695C258];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v15 = [v5 copyWithPropertyKeys:v14];

  v16 = [(CNContactListViewController *)self delegate];
  [v16 contactListViewController:self shouldPresentContact:v15 shouldScrollToContact:0];
}

- (void)suggestionsController:(id)a3 didChangeToHeight:(double)a4
{
  [(CNContactListViewController *)self setSuggestionsControllerHeight:a3, a4];

  [(CNContactListViewController *)self refreshTableViewHeader];
}

- (id)ignoredContactIdentifiersForSuggestionsController:(id)a3
{
  v3 = [(CNContactListViewController *)self suggestionsIgnoredContactIdentifiers];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)suggestionsController:(id)a3 didDeselectContact:(id)a4
{
  v5 = a4;
  if ([(CNContactListViewController *)self allowsMultiSelection])
  {
    [(CNContactListViewController *)self setCellStateSelected:0 forContact:v5 animated:0];
  }
}

- (void)suggestionsController:(id)a3 didSelectContact:(id)a4
{
  v6 = a4;
  v5 = [(CNContactListViewController *)self delegate];
  [v5 contactListViewController:self didSelectContact:v6];

  if ([(CNContactListViewController *)self allowsMultiSelection])
  {
    [(CNContactListViewController *)self setCellStateSelected:1 forContact:v6 animated:0];
  }
}

- (BOOL)suggestionsController:(id)a3 shouldSelectContact:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNContactListViewController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CNContactListViewController *)self delegate];
    v14 = [v13 contactSuggestionViewController:v8 shouldSelectContact:v9 atIndexPath:v10];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)suggestionsController:(id)a3 canSelectContact:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 contactListViewController:self canSelectContact:v5];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)updateMeContactBannerContentsWithTopKeyline:(BOOL)a3
{
  v3 = a3;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = [(CNContactListViewController *)self preferredForNameMeContact];
  v7 = [(CNContactListViewController *)self meContactBanner];
  v8 = [(CNContactListViewController *)self contactStore];
  [v7 setContactStore:v8];

  if (v6)
  {
    v9 = [(CNContactListViewController *)self meBannerAvatarController];

    if (!v9)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"_CNContactListViewController.m" lineNumber:3054 description:@"Avatar Controller should be created in init"];
    }

    v19[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v11 = [(CNContactListViewController *)self meBannerAvatarController];
    [v11 setContacts:v10];
  }

  else
  {
    v10 = [objc_opt_class() emptyContact];
    v18 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v12 = [(CNContactListViewController *)self meBannerAvatarController];
    [v12 setContacts:v11];
  }

  v13 = [(CNContactListViewController *)self meBannerAvatarController];
  v14 = [v13 view];
  [v7 setAvatarView:v14];

  v15 = [(CNContactListViewController *)self meContactBannerFootnoteLabel];
  v16 = [(CNContactListViewController *)self meContactBannerFootnoteValue];
  [v7 setMeContact:v6 footnoteTitle:v15 footnoteValue:v16];

  if (v3)
  {
    [(CNContactListViewController *)self updateMeContactBannerTopKeyline];
  }
}

- (void)setMeContactBannerFootnoteValue:(id)a3
{
  v5 = a3;
  if (self->_meContactBannerFootnoteValue != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_meContactBannerFootnoteValue, a3);
    [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
    v5 = v6;
  }
}

- (void)setMeContactBannerFootnoteLabel:(id)a3
{
  v5 = a3;
  if (self->_meContactBannerFootnoteLabel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_meContactBannerFootnoteLabel, a3);
    [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
    v5 = v6;
  }
}

- (void)setShouldDisplayMeContactBanner:(BOOL)a3
{
  if (self->_shouldDisplayMeContactBanner != a3)
  {
    self->_shouldDisplayMeContactBanner = a3;
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
    v8 = [(CNContactListViewController *)self suggestionsInteractionDomains];
    [(CNContactSuggestionsViewController *)self->_suggestionsController setInteractionDomains:v8];

    v9 = [(CNContactListViewController *)self suggestedContacts];
    [(CNContactSuggestionsViewController *)self->_suggestionsController setOverrideSuggestedContacts:v9];

    suggestionsController = self->_suggestionsController;
  }

  return suggestionsController;
}

- (void)setShouldDisplaySuggestionsController:(BOOL)a3
{
  if (self->_shouldDisplaySuggestionsController != a3)
  {
    self->_shouldDisplaySuggestionsController = a3;
    if ([(CNContactListViewController *)self isViewLoaded])
    {

      [(CNContactListViewController *)self refreshTableViewHeader];
    }
  }
}

- (void)refreshTableViewHeaderWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__27050;
  v112 = __Block_byref_object_dispose__27051;
  v113 = 0;
  v6 = [(CNContactListViewController *)self collectionView];
  v7 = [(CNContactListViewController *)self shouldDisplayMeContactBanner];
  v8 = [(CNContactListViewController *)self shouldDisplaySuggestionsController];
  [v6 contentOffset];
  v10 = v9;
  v12 = v11;
  v13 = [MEMORY[0x1E695DF70] array];
  if ([(CNContactListViewController *)self isSearchController])
  {
    v14 = 0;
LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  if (![(CNContactListViewController *)self shouldDisplayTipContentView]|| [(CNContactListViewController *)self isSearching])
  {
    v15 = [(CNContactListViewController *)self tipKitContentView];
    v14 = v15 != 0;

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
    v18 = [MEMORY[0x1E695DF70] array];
    [v6 adjustedContentInset];
    v20 = v12 + v19;
    v78 = v12 + v19 == 0.0;
    if (v14)
    {
      v21 = [(CNContactListViewController *)self tipKitContentView];
      v22 = [v21 superview];
      v23 = v22 != 0;

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
      v31 = [(CNContactListViewController *)self tipKitContentView];
      [v31 setTranslatesAutoresizingMaskIntoConstraints:1];
      LODWORD(v32) = 1148846080;
      LODWORD(v33) = 1132068864;
      [v31 systemLayoutSizeFittingSize:v102[6] withHorizontalFittingPriority:0.0 verticalFittingPriority:{v32, v33}];
      v35 = v34;
      v37 = v36;
      if (v31)
      {
        [v18 addObject:v31];
        if (v7)
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

      if (!v7)
      {
        v31 = 0;
LABEL_38:
        v39 = 0;
        goto LABEL_39;
      }
    }

    else
    {
      v37 = *(MEMORY[0x1E695F060] + 8);
      v35 = *MEMORY[0x1E695F060];
      if (!v7)
      {
        v31 = 0;
        v39 = 0;
        v35 = *MEMORY[0x1E695F060];
        v37 = *(MEMORY[0x1E695F060] + 8);
LABEL_39:
        v47 = v30;
        v75 = v29;
LABEL_40:
        v49 = v35;
        if (v8)
        {
          v50 = [(CNContactListViewController *)self suggestionsController];
          v51 = [v50 view];

          v52 = [(CNContactListViewController *)self view];
          [v52 bounds];
          v54 = v53;
          [(CNContactListViewController *)self suggestionsControllerHeight];
          v30 = v55;

          v56 = [(CNContactListViewController *)self suggestionsController];
          [v56 willMoveToParentViewController:self];

          [v18 addObject:v51];
          v57 = [(CNContactListViewController *)self suggestionsController];
          [(CNContactListViewController *)self addChildViewController:v57];
          v29 = v54 + -10.0;
        }

        else
        {
          v51 = 0;
        }

        v102[7] = v37 + v47 + v30;
        [(CNContactListViewController *)self setEstimatedListHeaderViewHeight:*&v75];
        v58 = [(CNContactListViewController *)self listHeaderView];

        if (v58)
        {
          v59 = [(CNContactListViewController *)self listHeaderView];
          v60 = v109[5];
          v109[5] = v59;

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
        v68 = v51;
        v87 = &v108;
        v89 = v29;
        v90 = v30;
        v82 = v68;
        v83 = self;
        v69 = v31;
        v84 = v69;
        v91 = v49;
        v92 = v37;
        v70 = v39;
        v85 = v70;
        v93 = v76;
        v94 = v47;
        v97 = v64;
        v98 = v78;
        v95 = v79;
        v96 = v12;
        v99 = v77;
        v86 = v6;
        v88 = &v101;
        v71 = [v81 copy];
        v72 = _Block_copy(v71);
        [v13 addObject:v72];

        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __62__CNContactListViewController_refreshTableViewHeaderWithSize___block_invoke_5;
        v80[3] = &unk_1E74E39E8;
        v80[4] = &v108;
        [v18 enumerateObjectsUsingBlock:v80];

        _Block_object_dispose(&v101, 8);
        v10 = v79;
        goto LABEL_47;
      }
    }

    v41 = [MEMORY[0x1E69DC938] currentDevice];
    v38 = [v41 userInterfaceIdiom] != 1;

    v31 = 0;
LABEL_29:
    [(CNContactListViewController *)self updateMeContactBannerContentsWithTopKeyline:v38];
    v39 = [(CNContactListViewController *)self meContactBanner];
    v42 = [(CNContactListViewController *)self meContactBanner];
    [v42 sizeThatFits:{width, height}];
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
    if (v39)
    {
      [v18 addObject:v39];
    }

    else
    {
      v48 = CNUILogContactList();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_199A75000, v48, OS_LOG_TYPE_ERROR, "Attempting to display meContactBanner when view is nil", buf, 2u);
      }

      v39 = 0;
    }

    goto LABEL_40;
  }

  if (!v7)
  {
    v25 = [(CNContactListViewController *)self environment];
    v26 = [v25 launchCheckinRegistrar];
    [v26 checkInLaunchTasks:2];
  }

  [(CNContactListBannerView *)self->_meContactBanner removeFromSuperview];
  v27 = [(CNContactSuggestionsViewController *)self->_suggestionsController view];
  [v27 removeFromSuperview];

  v28 = 0;
LABEL_47:
  [(CNContactListViewController *)self setListHeaderView:v109[5]];
  [v6 setContentOffset:{v10, v12}];
  [v13 _cn_each:&__block_literal_global_613];
  if (v28 || [(CNContactListViewController *)self headerViewNeedsUpdate])
  {
    self->_headerViewNeedsUpdate = 0;
    [(CNContactListViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
    v73 = [(CNContactListViewController *)self collectionView];
    v74 = [v73 collectionViewLayout];
    [v74 invalidateLayout];
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

  v4 = [(CNContactListViewController *)self shouldDisplayMeContactBanner];
  v5 = [(CNContactListViewController *)self shouldDisplaySuggestionsController];
  v6 = [(CNContactSuggestionsViewController *)self->_suggestionsController viewIfLoaded];
  v7 = [v6 superview];

  v8 = [(CNContactListViewController *)self meContactBanner];
  v9 = [v8 superview];

  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5;
  }

  if (v4 && v9 && (v10 & 1) == 0)
  {

    [(CNContactListViewController *)self updateMeContactBannerContentsWithTopKeyline:0];
  }

  else
  {
    if (v7)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 && !v4 && v9 == 0;
    if ((v12 | v10))
    {
      v13 = ~v12;
    }

    else
    {
      v13 = v4 || v9 != 0;
    }

    if (v13)
    {

      [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
    }
  }
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  if (CNUIIsContacts() || CNUIIsMobilePhone())
  {
    v5 = [(CNContactListViewController *)self view];
    [v5 safeAreaInsets];
    v7 = 0.0 - (v6 + 1.0);

    v8 = [(CNContactListViewController *)self collectionView];
    [v8 setContentOffset:v3 animated:{0.0, v7}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    [CNContactListViewController scrollToItemAtIndexPath:"scrollToItemAtIndexPath:animated:scrollPosition:" animated:? scrollPosition:?];
  }
}

- (double)contactListHeaderHeight
{
  v3 = [(CNContactListViewController *)self listHeaderView];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(CNContactListViewController *)self listHeaderView];
  [v4 frame];
  v6 = v5;

  return v6;
}

- (void)refreshTableViewHeaderIfVisibleWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(CNContactListViewController *)self isViewLoaded])
  {
    v6 = [(CNContactListViewController *)self view];
    v7 = [v6 window];

    if (v7)
    {

      [(CNContactListViewController *)self refreshTableViewHeaderWithSize:width, height];
    }
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [(CNContactListViewController *)self updateSelectedContactCount];
  if (self->_suggestionsController && [(CNContactListViewController *)self allowsMultiSelection])
  {
    v5 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:v6];
    [(CNContactSuggestionsViewController *)self->_suggestionsController setCellStateSelected:0 forContact:v5 animated:0];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (![(CNContactListViewController *)self isPathToDuplicatesBanner:v6]&& ![(CNContactListViewController *)self isPathToCreateNewContactRow:v6]&& ![(CNContactListViewController *)self isPathToContentUnavailableRow:v6]&& ![(CNContactListViewController *)self isPathToLimitedAccessTipRow:v6])
  {
    if (self->_suggestionsController && [(CNContactListViewController *)self allowsMultiSelection])
    {
      v7 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:v6];
      [(CNContactSuggestionsViewController *)self->_suggestionsController setCellStateSelected:1 forContact:v7 animated:0];
    }

    [(CNContactListViewController *)self updateSelectedContactCount];
    if ([MEMORY[0x1E69DCBB8] isInHardwareKeyboardMode])
    {
      v8 = [(CNContactListViewController *)self collectionView];
      v9 = [v8 allowsMultipleSelection];

      if (v9)
      {
        v10 = [v12 indexPathsForSelectedItems];
        v11 = [v10 count];

        if (v11 <= 1)
        {
          [(CNContactListViewController *)self showCardForSelectedContactAtIndexPath:v6];
        }
      }
    }
  }
}

- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4
{
  v4 = a3;
  if ([v4 isEditing] && (objc_msgSend(v4, "allowsMultipleSelectionDuringEditing") & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 indexPathsForSelectedItems];
    v5 = [v6 count] > 1;
  }

  return v5;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(CNContactListViewController *)self isPathToDuplicatesBanner:v5])
  {
    v6 = [(CNContactListViewController *)self canPerformDuplicatesMerge];
    goto LABEL_8;
  }

  if ([(CNContactListViewController *)self isPathToCreateNewContactRow:v5])
  {
    [(CNContactListViewController *)self createNewContactTapped];
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if ([(CNContactListViewController *)self isPathToContentUnavailableRow:v5]|| [(CNContactListViewController *)self isPathToLimitedAccessTipRow:v5])
  {
    goto LABEL_7;
  }

  v8 = [(CNContactListViewController *)self canSelectContactAtCollectionViewIndexPath:v5];
  if (v5)
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

LABEL_8:

  return v6;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  if (![(CNContactListViewController *)self isPathToCreateNewContactRow:v5])
  {
    if ([(CNContactListViewController *)self isPathToDuplicatesBanner:v5]|| [(CNContactListViewController *)self isPathToContentUnavailableRow:v5]|| [(CNContactListViewController *)self isPathToLimitedAccessTipRow:v5]|| ![(CNContactListViewController *)self canSelectContactAtCollectionViewIndexPath:v5]|| [(CNContactListViewController *)self limitedAccessPickerType]== 5)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v8 = [(CNContactListViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:v5];
      v11 = [(CNContactListViewController *)self delegate];
      v6 = [v11 contactListViewController:self shouldSelectContact:v10 atIndexPath:v5];

      goto LABEL_9;
    }
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v5 = a4;
  objc_opt_class();
  v8 = v5;
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

- (BOOL)collectionView:(id)a3 canEditItemAtIndexPath:(id)a4
{
  v4 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:a4];
  v5 = [v4 isSuggested];

  return v5 ^ 1;
}

- (id)collectionView:(id)a3 indexPathForIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v7 = [(CNContactDataSource *)self->_dataSource indexSections:a3];
  v8 = [v7 objectAtIndexedSubscript:a5];

  v9 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v8, "range")}];
  v10 = [(CNContactListViewController *)self collectionViewIndexPathForDataSourceIndexPath:v9];

  return v10;
}

- (id)indexTitlesForCollectionView:(id)a3
{
  v4 = *MEMORY[0x1E6996530];
  v5 = [(CNContactListViewController *)self _sections];
  LOBYTE(v4) = (*(v4 + 16))(v4, v5);

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(CNContactDataSource *)self->_dataSource indexSections];
    v6 = [v7 valueForKey:@"title"];
  }

  return v6;
}

- (void)setContactFormatter:(id)a3
{
  v7 = a3;
  v5 = [(CNContactListViewController *)self contactFormatter];

  if (v5 != v7)
  {
    objc_storeStrong(&self->_contactFormatter, a3);
    v6 = [(CNContactListViewController *)self searchResultsController];
    [v6 setContactFormatter:v7];
  }
}

- (BOOL)isContactWithIdentifierEmergencyContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContactListViewController *)self emergencyContactIdentifiers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)isContactWithIdentifierMeContactOrLinkedToMeContact:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContactListViewController *)self preferredForNameMeContact];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 identifier];
    v8 = [v7 isEqualToString:v4];

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
      v10 = [v6 linkedContacts];
      v9 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v11 = *v17;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v10);
            }

            v13 = [*(*(&v16 + 1) + 8 * i) identifier];
            v14 = [v13 isEqualToString:v4];

            if (v14)
            {
              LOBYTE(v9) = 1;
              goto LABEL_15;
            }
          }

          v9 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)canSelectContactAtCollectionViewIndexPath:(id)a3
{
  v3 = self;
  v4 = [(CNContactListViewController *)self dataSourceIndexPathForCollectionViewIndexPath:a3];
  LOBYTE(v3) = [(CNContactListViewController *)v3 canSelectContactAtIndexPath:v4];

  return v3;
}

- (BOOL)canSelectContactAtIndexPath:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNContactListViewController *)self _contactAtIndexPath:v4];
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 contactListViewController:self canSelectContact:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"CNContactListLayoutFooterIdentifier"])
  {
    v11 = [(CNContactListViewController *)self collectionView];
    v12 = [v11 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"CNContactListCountFooterViewIdentifier" forIndexPath:v10];

    v13 = [MEMORY[0x1E69DC6E8] clearConfiguration];
    [v12 setBackgroundConfiguration:v13];

    [v12 setShouldHideCountFooter:{+[CNLimitedAccessPickerSupport isPickerLimitedAccess:](CNLimitedAccessPickerSupport, "isPickerLimitedAccess:", -[CNContactListViewController limitedAccessPickerType](self, "limitedAccessPickerType"))}];
    objc_opt_class();
    v14 = v8;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      [v16 setContactCountView:v12];
      [v12 setDelegate:self];
    }
  }

  else
  {
    v17 = [v9 isEqualToString:@"CNContactListLayoutHeaderIdentifier"];
    v18 = [(CNContactListViewController *)self collectionView];
    v19 = v18;
    if (v17)
    {
      v12 = [v18 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"CNContactListHeaderViewIdentifier" forIndexPath:v10];

      v20 = [MEMORY[0x1E69DC6E8] clearConfiguration];
      [v12 setBackgroundConfiguration:v20];

      v16 = [(CNContactListViewController *)self listHeaderView];
      [v12 setHeaderView:v16];
    }

    else
    {
      v12 = [v18 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"CNContactListSectionHeaderFooterIdentifier" forIndexPath:v10];

      v16 = [(CNContactListViewController *)self dataSourceIndexPathForCollectionViewIndexPath:v10];
      v21 = [v9 isEqualToString:*MEMORY[0x1E69DDC08]];
      if ([(CNContactListViewController *)self isHandlingSearch])
      {
        v22 = -[CNContactListViewController titleForHeaderInSection:](self, "titleForHeaderInSection:", [v16 section]);
        v23 = [(CNContactListViewController *)self contactListStyleApplier];
        [v23 applyContactListStyleToSearchHeader:v12 withTitle:v22];
      }

      else if (v21)
      {
        v24 = [(CNContactListViewController *)self view];
        v25 = [v24 traitCollection];
        v34 = [v25 layoutDirection];

        v26 = [(CNContactListViewController *)self contactListStyleApplier];
        v27 = [v26 contactListStyle];
        v28 = [v12 traitCollection];
        v29 = [v27 listAppearanceForTraitCollection:v28];

        v30 = -[CNContactListViewController titleForHeaderInSection:](self, "titleForHeaderInSection:", [v16 section]);
        v31 = [(CNContactListViewController *)self contactListStyleApplier];

        if (v31)
        {
          v32 = [(CNContactListViewController *)self contactListStyleApplier];
          [v8 directionalLayoutMargins];
          [v32 applyContactListStyleToHeaderFooter:v12 withTitle:v30 isRTL:v34 == 1 listAppearance:v29 superviewDirectionalLayoutMargins:?];
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

- (void)setImageForContact:(id)a3 imageUpdateBlock:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CNContactListViewController *)self avatarRenderer];

  if (!v8)
  {
    v9 = [CNAvatarImageRenderer alloc];
    v10 = [CNAvatarImageRendererSettings defaultSettingsWithCacheSize:8];
    v11 = [(CNAvatarImageRenderer *)v9 initWithSettings:v10];
    [(CNContactListViewController *)self setAvatarRenderer:v11];
  }

  v12 = [(CNContactListViewController *)self traitCollection];
  v13 = [v12 layoutDirection] == 1;

  v14 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v14 scale];
  v16 = [CNAvatarImageRenderingScope scopeWithPointSize:v13 scale:0 rightToLeft:48.0 style:48.0, v15];

  v17 = [(CNContactListViewController *)self avatarRenderer];
  v20[0] = v6;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v19 = [v17 avatarImageForContacts:v18 scope:v16];
  v7[2](v7, v19);
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CNContactListViewController *)self isPathToContentUnavailableRow:v7])
  {
    v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"CNContactListContentUnavailableCellIdentifier" forIndexPath:v7];
    v9 = [(CNContactListViewController *)self cellContentUnavailableConfiguration];
    [(__CFString *)v8 setContentConfiguration:v9];
LABEL_6:

    goto LABEL_7;
  }

  if ([(CNContactListViewController *)self isPathToDuplicatesBanner:v7])
  {
    v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"CNContactListDuplicatesBannerIdentifier" forIndexPath:v7];
    [(__CFString *)v8 setDelegate:self];
    v10 = [(CNContactListViewController *)self contactListStyleApplier];
    [(__CFString *)v8 setContactListStyleApplier:v10];

    if (self->_duplicatesController)
    {
      v9 = [(CNContactListViewController *)self duplicatesController];
      [v9 decorateBannerViewCell:v8];
      goto LABEL_6;
    }

    [(__CFString *)v8 updateWithCount:[(CNContactListViewController *)self newDuplicatesCountToDisplay]];
  }

  else if ([(CNContactListViewController *)self isPathToCreateNewContactRow:v7])
  {
    v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"CNContactListAddNewContactCellIdentifier" forIndexPath:v7];
    v12 = [(__CFString *)v8 defaultContentConfiguration];
    v13 = CNContactsUIBundle();
    v14 = [v13 localizedStringForKey:@"ADD_NEW_CONTACT_CELL_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [v12 setText:v14];

    v15 = +[CNUIColorRepository contactListAddNewContactLabelTextColor];
    v16 = [v12 textProperties];
    [v16 setColor:v15];

    [(__CFString *)v8 setContentConfiguration:v12];
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

  else if ([(CNContactListViewController *)self isPathToLimitedAccessTipRow:v7])
  {
    v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"CNContactListLimitedAccessTipIdentifier" forIndexPath:v7];
    [(__CFString *)v8 setDelegate:self];
    v19 = [(CNContactListViewController *)self contactListStyleApplier];
    [(__CFString *)v8 setContactListStyleApplier:v19];

    v20 = [(CNContactListViewController *)self appName];
    [(__CFString *)v8 updateWithAppName:v20 isLimited:[CNLimitedAccessPickerSupport isPickerLimitedAccess:[(CNContactListViewController *)self limitedAccessPickerType]]];
  }

  else
  {
    v21 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:v7];
    if ([(CNContactListViewController *)self limitedAccessPickerType]== 6)
    {
      v22 = [v6 dequeueReusableCellWithReuseIdentifier:@"CNLimitedAccessContactListCellIdentifier" forIndexPath:v7];
      v23 = [(CNContactListViewController *)self contactFormatter];
      [v22 setContactFormatter:v23];

      [v22 setUserInteractionEnabled:{-[CNContactListViewController canSelectContactAtCollectionViewIndexPath:](self, "canSelectContactAtCollectionViewIndexPath:", v7)}];
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
      v25 = [(CNContactListViewController *)self isHandlingSearch];
      v26 = @"CNContactListCellIdentifier";
      if (v25)
      {
        v26 = @"CNSearchListCellIdentifier";
      }

      v24 = v26;
      v8 = [v6 dequeueReusableCellWithReuseIdentifier:v24 forIndexPath:v7];
      v27 = [(CNContactListViewController *)self contactListStyleApplier];
      [(__CFString *)v8 setContactListStyleApplier:v27];

      v28 = [(CNContactListViewController *)self contactFormatter];
      [(__CFString *)v8 setContactFormatter:v28];

      v29 = [(CNContactDataSource *)self->_dataSource contactMatchInfos];
      v30 = [v21 identifier];
      v31 = [v29 objectForKey:v30];

      objc_initWeak(&location, self);
      objc_initWeak(&from, v8);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __69__CNContactListViewController_collectionView_cellForItemAtIndexPath___block_invoke_3;
      v37[3] = &unk_1E74E3920;
      objc_copyWeak(&v38, &from);
      objc_copyWeak(&v39, &location);
      [(__CFString *)v8 setContactMatchInfo:v31 completionBlock:v37];
      [(__CFString *)v8 setUserInteractionEnabled:[(CNContactListViewController *)self canSelectContactAtCollectionViewIndexPath:v7]];
      [(__CFString *)v8 setContact:v21];
      v32 = [(CNContactListViewController *)self shouldDisplayEmergencyContacts];
      if (v32)
      {
        v30 = [v21 identifier];
        v33 = [(CNContactListViewController *)self isContactWithIdentifierEmergencyContact:v30];
      }

      else
      {
        v33 = 0;
      }

      [(__CFString *)v8 setIsEmergencyContact:v33];
      if (v32)
      {
      }

      [(__CFString *)v8 setDidFetchBlockStatus:0];
      v34 = [v21 identifier];
      [(__CFString *)v8 setIsMeCard:[(CNContactListViewController *)self isContactWithIdentifierMeContactOrLinkedToMeContact:v34]];

      if ([v6 allowsMultipleSelectionDuringEditing])
      {
        v35 = [v6 isEditing];
      }

      else
      {
        v35 = 0;
      }

      [(__CFString *)v8 setAllowsMultiSelection:v35];
      [(__CFString *)v8 setAllowsMultiSelectContextMenus:[(CNContactListViewController *)self shouldEnableMultiSelectContextMenus]];
      if ([(CNContactListViewController *)self isHandlingSearch])
      {
        v36 = [(CNContactListViewController *)self contactListStyleApplier];
        [v36 applyContactListStyleToSearchCell:v8];
      }

      else
      {
        v36 = [(CNContactListViewController *)self contactListStyleApplier];
        [v36 applyContactListStyleToCell:v8];
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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if ([(CNContactListViewController *)self isDuplicatesRowSection:a4]|| [(CNContactListViewController *)self isCreateNewContactRowSection:a4]|| [(CNContactListViewController *)self isContentUnavailableRowSection:a4]|| [(CNContactListViewController *)self isLimitedAccessTipRowSection:a4])
  {
    return 1;
  }

  v8 = [(CNContactListViewController *)self dataSourceSectionIndexForCollectionViewSection:a4];
  v9 = [(CNContactListViewController *)self _sections];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v10 = [(CNContactDataSource *)self->_dataSource contacts];
    v6 = [v10 count];
  }

  else
  {
    v10 = [v9 objectAtIndexedSubscript:v8];
    [v10 range];
    v6 = v11;
  }

  return v6;
}

- (id)titleForHeaderInSection:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(CNContactListViewController *)self _sections];
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v5 = [v4 count];
    v6 = v5;
    if ((a3 & 0x8000000000000000) == 0 && v5 > a3)
    {
      v7 = [v4 objectAtIndexedSubscript:a3];
      v8 = [v7 title];

      goto LABEL_9;
    }

    v9 = CNUILogContactList();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 134218240;
      v12 = a3;
      v13 = 2048;
      v14 = v6;
      _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "Requesting header title for index out of bounds: %ld, sectionCount: %ld", &v11, 0x16u);
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (BOOL)shouldDisplaySupplementaryHeaderItemForSection:(int64_t)a3
{
  if (![(CNContactListViewController *)self hasNoContacts])
  {
    if ([(CNContactListViewController *)self isHandlingSearch])
    {
      return 1;
    }

    if (![(CNContactListViewController *)self isDuplicatesRowSection:a3]&& ![(CNContactListViewController *)self isCreateNewContactRowSection:a3]&& ![(CNContactListViewController *)self isContentUnavailableRowSection:a3]&& ![(CNContactListViewController *)self isLimitedAccessTipRowSection:a3])
    {
      v7 = [(CNContactListViewController *)self _sections];
      v5 = [v7 count] > 1;

      return v5;
    }
  }

  return 0;
}

- (void)updateAdditionalSectionsAtTop
{
  v3 = [(CNContactListViewController *)self shouldShowDuplicateBannerView];

  [(CNContactListViewController *)self setIsShowingDuplicatesBanner:v3];
}

- (id)collectionViewIndexPathForDataSourceIndexPath:(id)a3
{
  if (a3)
  {
    v5 = MEMORY[0x1E696AC88];
    v6 = a3;
    v7 = [v6 item];
    v8 = [v6 section];

    v9 = [v5 indexPathForItem:v7 inSection:{-[CNContactListViewController additionalSectionsAtTopCount](self, "additionalSectionsAtTopCount") + v8}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dataSourceIndexPathForCollectionViewIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[CNContactListViewController dataSourceSectionIndexForCollectionViewSection:](self, "dataSourceSectionIndexForCollectionViewSection:", [v4 section]);
  v6 = MEMORY[0x1E696AC88];
  v7 = [v4 item];

  return [v6 indexPathForItem:v7 inSection:v5];
}

- (id)_contactAtCollectionViewIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || -[CNContactListViewController isDuplicatesRowSection:](self, "isDuplicatesRowSection:", [v4 section]) || -[CNContactListViewController isPathToCreateNewContactRow:](self, "isPathToCreateNewContactRow:", v5) || -[CNContactListViewController isPathToContentUnavailableRow:](self, "isPathToContentUnavailableRow:", v5) || -[CNContactListViewController isPathToLimitedAccessTipRow:](self, "isPathToLimitedAccessTipRow:", v5))
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

- (id)_contactAtIndexPath:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v5 = [(CNContactListViewController *)self _sections];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v6 = [v4 row];
LABEL_7:
    v11 = [(CNContactDataSource *)self->_dataSource contacts];
    if ([v11 count] <= v6)
    {
      v7 = 0;
    }

    else
    {
      v12 = [(CNContactDataSource *)self->_dataSource contacts];
      v7 = [v12 objectAtIndexedSubscript:v6];
    }

    goto LABEL_12;
  }

  v8 = [v4 section];
  if (v8 < [v5 count])
  {
    v9 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
    v10 = [v9 range];
    v6 = v10 + [v4 row];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_12:

LABEL_13:

  return v7;
}

- (void)contactDataSourceMeContactDidChange:(id)a3
{
  v4 = +[CNUIContactsEnvironment currentEnvironment];
  v5 = [v4 defaultSchedulerProvider];
  v6 = [v5 mainThreadScheduler];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CNContactListViewController_contactDataSourceMeContactDidChange___block_invoke;
  v7[3] = &unk_1E74E6A88;
  v7[4] = self;
  [v6 performBlock:v7];
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
    v3 = [(CNContactDataSource *)self->_dataSource displayName];
    [(CNContactListViewController *)self setTitle:v3];
  }
}

- (void)contactDataSourceDisplayNameDidChange:(id)a3
{
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v5 displayName];
    [(CNContactListViewController *)self setTitle:v4];
  }
}

- (void)contactDataSourceDidChange:(id)a3
{
  v4 = a3;
  v5 = [(CNContactListViewController *)self environment];
  v6 = [v5 defaultSchedulerProvider];
  v7 = [v6 mainThreadScheduler];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CNContactListViewController_contactDataSourceDidChange___block_invoke;
  v9[3] = &unk_1E74E77C0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 performBlock:v9];
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

- (id)contentUnavailableConfigurationForState:(id)a3
{
  v4 = a3;
  if (![(CNContactListViewController *)self hasNoContacts])
  {
    v6 = 0;
    goto LABEL_6;
  }

  if ([(CNContactListViewController *)self isHandlingSearch]|| [(CNContactListViewController *)self isShowingServerSearch])
  {
    v5 = [MEMORY[0x1E69DC8C8] searchConfiguration];
    v6 = [v5 updatedConfigurationForState:v4];

    goto LABEL_6;
  }

  v8 = [MEMORY[0x1E69DC8C8] emptyProminentConfiguration];
  v6 = [v8 updatedConfigurationForState:v4];

  if (![(CNContactListViewController *)self shouldDisplayMeContactBanner])
  {
    v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.fill"];
    [v6 setImage:v9];
  }

  v10 = [(CNContactListViewController *)self delegate];
  v11 = [v10 conformsToProtocol:&unk_1F0DC1F30];

  if (v11)
  {
    v12 = [(CNContactListViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 isAddContactButtonShowing];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  [(CNContactListBannerView *)self->_meContactBanner bounds];
  [v6 setDirectionalLayoutMargins:{-v14, 0.0, 0.0, 0.0}];
  v15 = CNContactsUIBundle();
  v16 = [v15 localizedStringForKey:@"NO_CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
  [v6 setText:v16];

  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"NO_CONTACTS_HINT" value:&stru_1F0CE7398 table:@"Localized"];
  [v6 setSecondaryText:v18];

  v19 = [(CNContactListViewController *)self showingGroup];
  v20 = [(CNContactListViewController *)self collectionViewShouldDisplayCreateNewContact];
  if (!v13 || !v19)
  {
    if (((v13 | v20) & 1) == 0)
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
    v31 = [v6 buttonProperties];
    v32 = [v31 configuration];
    [v32 setTitle:v30];

    v25 = MEMORY[0x1E69DC628];
    v26 = CNContactsUIBundle();
    v27 = [v26 localizedStringForKey:@"CREATE_NEW_CONTACT_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __71__CNContactListViewController_contentUnavailableConfigurationForState___block_invoke;
    v43 = &unk_1E74E7608;
    v44 = self;
    v28 = &v40;
    goto LABEL_23;
  }

  v21 = CNContactsUIBundle();
  v22 = [v21 localizedStringForKey:@"ADD_CONTACTS_TO_LIST_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v23 = [v6 buttonProperties];
  v24 = [v23 configuration];
  [v24 setTitle:v22];

  v25 = MEMORY[0x1E69DC628];
  v26 = CNContactsUIBundle();
  v27 = [v26 localizedStringForKey:@"ADD_CONTACTS_TO_LIST_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v35 = MEMORY[0x1E69E9820];
  v36 = 3221225472;
  v37 = __71__CNContactListViewController_contentUnavailableConfigurationForState___block_invoke_2;
  v38 = &unk_1E74E7608;
  v39 = self;
  v28 = &v35;
LABEL_23:
  v33 = [v25 actionWithTitle:v27 image:0 identifier:0 handler:{v28, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44}];
  v34 = [v6 buttonProperties];
  [v34 setPrimaryAction:v33];

LABEL_6:

  return v6;
}

void __71__CNContactListViewController_contentUnavailableConfigurationForState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sender];
  [*(a1 + 32) addContactsToListTappedWithSourceView:v3];
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = a3;
  v12 = [(CNContactListViewController *)self cellContentUnavailableConfiguration];
  v5 = [(CNContactListViewController *)self contentUnavailableConfigurationForState:v4];

  v6 = [(CNContactListViewController *)self shouldEmbedContentUnavailableViewInCell];
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  [(CNContactListViewController *)self setCellContentUnavailableConfiguration:v7];
  [(CNContactListViewController *)self _setContentUnavailableConfiguration:v8];
  v9 = [(CNContactListViewController *)self cellContentUnavailableConfiguration];
  v10 = v9;
  if (v12 != v9 && (!v12 || !v9 || ([v12 isEqual:v9] & 1) == 0))
  {
    v11 = [(CNContactListViewController *)self collectionView];
    [v11 reloadData];
  }
}

- (BOOL)isShowingCustomTitle
{
  objc_opt_class();
  v3 = [(CNContactListViewController *)self dataSource];
  v4 = [v3 filter];
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
    v7 = [v6 customDisplayName];
    v8 = v7 != 0;
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
  v3 = [(CNContactListViewController *)self dataSource];
  v4 = [v3 filter];
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
    v7 = [v6 isServerFilter];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)showingGroup
{
  objc_opt_class();
  v3 = [(CNContactListViewController *)self dataSource];
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
    v6 = [v5 filterShowsSingleGroup];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)didDismissSearchController:(id)a3
{
  v4 = [(CNContactListViewController *)self navigationItem];
  [v4 setBackButtonTitle:0];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(CNContactDataSource *)self->_dataSource shouldReturnToAccountsAndGroupsViewAfterSearchIsCanceled])
  {
    v5 = [(CNContactListViewController *)self navigationController];
    [v5 presentGroupsViewController:0];
  }

  v6 = [(CNContactListViewController *)self navigationController];
  [v6 clearServerSearchIfNeeded:0];

  if ([(CNContactListViewController *)self isPickerWithToolbarSearchField])
  {
    [(CNContactListSearchController *)self->_searchController setAutomaticallyShowsCancelButton:1];
    v7 = [(CNContactListViewController *)self navigationController];
    [v7 setNavigationBarHidden:0];
  }
}

- (void)willDismissSearchController:(id)a3
{
  +[CNUIDataCollectionSearchSession end];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(CNContactDataSource *)self->_dataSource displayName];
    [(CNContactListViewController *)self setTitle:v4];
  }

  v5 = [(CNContactListViewController *)self collectionView];
  [v5 setHidden:0];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [(CNContactListViewController *)self searchBar];
  v5 = [v4 searchField];
  v24 = [v5 text];

  v6 = [&stru_1F0CE7398 isEqual:v24];
  v7 = v6;
  if (v6)
  {
    v8 = [(CNContactListViewController *)self searchResultsController];
    v9 = [v8 dataSource];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(CNContactListViewController *)self searchResultsController];
      v12 = [v11 dataSource];
      [v12 reset];
    }
  }

  [(CNContactListViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
  v13 = [(CNContactDataSource *)self->_dataSource filter];
  v14 = [v13 copy];

  [v14 setFullTextString:v24];
  v15 = [(CNContactListViewController *)self searchResultsController];
  v16 = [v15 dataSource];
  v17 = [v16 filter];
  v18 = [v14 isEqual:v17];

  if ((v18 & 1) == 0)
  {
    v19 = +[CNUIDataCollectionSearchSession currentSession];
    [v19 searchStringDidChange];

    v20 = [(CNContactListViewController *)self searchResultsController];
    v21 = [v20 dataSource];
    [v21 setFilter:v14];

    if ((v7 & 1) == 0)
    {
      v22 = [(CNContactListViewController *)self searchResultsController];
      v23 = [v22 dataSource];

      if (objc_opt_respondsToSelector())
      {
        [v23 reloadAsynchronously];
      }

      else
      {
        [v23 reload];
      }
    }
  }
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v12 = a3;
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  if (([v5 isFeatureEnabled:29] & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [(CNContactListViewController *)self searchController];
  v7 = [v6 isActive];

  if (!v7)
  {
LABEL_6:
    v11 = [(CNContactListViewController *)self searchController];
    [(CNContactListViewController *)self updateSearchResultsForSearchController:v11];
    goto LABEL_7;
  }

  v8 = *MEMORY[0x1E6996568];
  v9 = [v12 text];
  LODWORD(v8) = (*(v8 + 16))(v8, v9);

  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = [(CNContactListViewController *)self searchController];
  [(CNContactListViewController *)self updateSearchResultsForSearchController:v10];

  v11 = [(CNContactListViewController *)self searchController];
  [v11 setActive:0];
LABEL_7:

LABEL_8:
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = [(CNContactListViewController *)self searchBar];
  [v4 setText:&stru_1F0CE7398];

  v5 = [(CNContactListViewController *)self searchController];
  [(CNContactListViewController *)self updateSearchResultsForSearchController:v5];
}

- (void)didPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = [(CNContactListViewController *)self pendingSearchQuery];

  if (v5)
  {
    v6 = [(CNContactListViewController *)self pendingSearchQuery];
    v7 = [v4 searchBar];
    [v7 setText:v6];

    [(CNContactListViewController *)self setPendingSearchQuery:0];
  }

  v8 = [(CNContactListViewController *)self shouldSearchBarBecomeFirstResponder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CNContactListViewController_didPresentSearchController___block_invoke;
  v10[3] = &unk_1E74E4768;
  v12 = v8;
  v11 = v4;
  v9 = v4;
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

- (void)willPresentSearchController:(id)a3
{
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SEARCH_NAV_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [(CNContactListViewController *)self navigationItem];
  [v6 setBackButtonTitle:v5];

  +[CNUIDataCollectionSearchSession begin];
  if (CNUIIsFaceTime())
  {
    goto LABEL_6;
  }

  v7 = [(CNContactListViewController *)self view];
  if (([v7 isOpaque] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = [(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers];

  if (v8)
  {
LABEL_6:
    v9 = [(CNContactListViewController *)self collectionView];
    [v9 setHidden:1];
  }

  if ([(CNContactListViewController *)self isPickerWithToolbarSearchField])
  {
    v10 = [(CNContactListViewController *)self navigationController];
    [v10 setNavigationBarHidden:1];
  }
}

- (NSString)currentSearchString
{
  v3 = [(CNContactListViewController *)self searchBar];

  if (v3)
  {
    v4 = [(CNContactListViewController *)self searchBar];
    v5 = [v4 text];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"effectiveFilter"])
  {
    v13 = [(CNContactListViewController *)self searchCompletionBlock];

    if (v13)
    {
      v14 = [(CNContactListViewController *)self searchCompletionBlock];
      [(CNContactListViewController *)self setSearchCompletionBlock:0];
      v14[2](v14);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CNContactListViewController;
    [(CNContactListViewController *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)searchForString:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v10 = a3;
  v7 = a5;
  if (v10)
  {
    [(CNContactListSearchController *)self->_searchController setActive:1];
    if (self->_shouldSearchBarBecomeFirstResponder)
    {
      [(UISearchBar *)self->_searchBar becomeFirstResponder];
    }

    [(CNContactListViewController *)self setSearchCompletionBlock:v7];
    v8 = [(CNContactListViewController *)self searchResultsController];
    v9 = [v8 dataSource];
    [v9 addObserver:self forKeyPath:@"effectiveFilter" options:0 context:0];

    [(UISearchBar *)self->_searchBar setText:v10];
  }

  else
  {
    [(CNContactListViewController *)self setSearchCompletionBlock:0];
    [(CNContactListSearchController *)self->_searchController setActive:0];
  }
}

- (BOOL)hasSearchPrefix
{
  v3 = [(CNContactListViewController *)self isSearching];
  if (v3)
  {
    v4 = *MEMORY[0x1E6996570];
    v5 = [(CNContactListViewController *)self currentSearchString];
    LOBYTE(v4) = (*(v4 + 16))(v4, v5);

    LOBYTE(v3) = v4;
  }

  return v3;
}

- (void)_handleCoalescedBlockListDidChange
{
  v5 = [(CNContactListViewController *)self collectionView];
  v3 = [(CNContactListViewController *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];
  [v5 reloadItemsAtIndexPaths:v4];
}

- (void)_searchBarDidEndEditing:(id)a3
{
  v4 = [(CNContactListViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNContactListViewController *)self searchBar];
    v7 = [v6 searchField];
    [v7 resignFirstResponder];

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

- (void)contentSizeCategoryDidChange:(id)a3
{
  [(CNContactListViewController *)self reloadContacts];

  [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
}

- (void)_applicationEnteringForeground:(id)a3
{
  [MEMORY[0x1E695CD10] _cnui_requestRefreshWithUserAction:0];
  v4 = [MEMORY[0x1E69966E8] currentEnvironment];
  v5 = [v4 featureFlags];
  v6 = [v5 isFeatureEnabled:16];

  if (v6)
  {

    [(CNContactListViewController *)self refreshDuplicates];
  }
}

- (void)contactStoreDidChangeWithNotification:(id)a3
{
  v4 = [(CNUIContactsEnvironment *)self->_environment defaultSchedulerProvider];
  v5 = [v4 mainThreadScheduler];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__CNContactListViewController_contactStoreDidChangeWithNotification___block_invoke;
  v6[3] = &unk_1E74E6A88;
  v6[4] = self;
  [v5 performBlock:v6];
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

- (void)fetchDuplicatesCountWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69966E8] currentEnvironment];
  v6 = [v5 schedulerProvider];
  v7 = [v6 backgroundSchedulerWithQualityOfService:4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CNContactListViewController_fetchDuplicatesCountWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E74E6DD0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
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

- (void)_updateCountStringNow:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = [(CNContactListViewController *)self collectionView];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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
    if (v3)
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

- (void)_contactCountTelemetry:(unint64_t)a3
{
  v4 = *&_LargeDatabasesSignpostLastContactsCountLogTimestamp + 60.0;
  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSince1970];
  v7 = v6;

  if (v4 < v7)
  {
    v8 = _LargeDatabasesSignpostLogQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__CNContactListViewController__contactCountTelemetry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a3;
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

- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __77__CNContactListViewController_selectItemAtIndexPath_animated_scrollPosition___block_invoke;
  v20 = &unk_1E74E38D0;
  v23 = a5;
  v21 = self;
  v9 = v8;
  v22 = v9;
  v24 = v6;
  v10 = _Block_copy(&v17);
  if ([(CNContactListViewController *)self isValidIndexPath:v9, v17, v18, v19, v20, v21])
  {
    v11 = [(CNContactListViewController *)self collectionView];
    [v11 selectItemAtIndexPath:v9 animated:v6 scrollPosition:a5];

    v12 = [(CNContactListViewController *)self collectionView];
    if ([v12 isEditing])
    {
      v13 = [(CNContactListViewController *)self collectionView];
      v14 = [v13 allowsMultipleSelectionDuringEditing];

      if (v14)
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

- (void)scrollToItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v8 = a3;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __79__CNContactListViewController_scrollToItemAtIndexPath_animated_scrollPosition___block_invoke;
  v17 = &unk_1E74E38D0;
  v18 = self;
  v19 = v8;
  v20 = a5;
  v21 = a4;
  v9 = v8;
  v10 = _Block_copy(&v14);
  if (-[CNContactListViewController isViewLoaded](self, "isViewLoaded", v14, v15, v16, v17, v18) && (-[CNContactListViewController collectionView](self, "collectionView"), v11 = objc_claimAutoreleasedReturnValue(), [v11 window], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    v10[2](v10);
  }

  else
  {
    v13 = [(CNContactListViewController *)self pendingSearchQuery];

    if (v13)
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

- (BOOL)selectContact:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5 shouldScroll:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = [(CNContactDataSource *)self->_dataSource indexPathForContact:a3];
  if (v10)
  {
    v11 = [(CNContactListViewController *)self collectionViewIndexPathForDataSourceIndexPath:v10];
    v12 = [(CNContactListViewController *)self isValidIndexPath:v11];
    if (v12)
    {
      if (v6)
      {
        [(CNContactListViewController *)self selectItemAtIndexPath:v11 animated:v8 scrollPosition:a5];
      }

      else
      {
        v13 = [(CNContactListViewController *)self collectionView];
        [v13 selectItemAtIndexPath:v11 animated:v8 scrollPosition:a5];
      }
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)scrollTopToContactWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __73__CNContactListViewController_scrollTopToContactWithIdentifier_animated___block_invoke;
  v16 = &unk_1E74E77C0;
  v17 = self;
  v18 = v5;
  v6 = v5;
  v7 = _Block_copy(&v13);
  if ([(CNContactListViewController *)self isViewLoaded:v13])
  {
    v8 = [(CNContactListViewController *)self collectionView];
    v9 = [v8 window];
    if (v9)
    {
      v10 = v9;
      v11 = [(CNContactListViewController *)self pendingSearchQuery];

      if (!v11)
      {
        v7[2](v7);
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v12 = [(CNContactListViewController *)self pendingSearchQuery];

  if (v12)
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

- (void)deselectAllSelectedIndexPathsAnimated:(BOOL)a3
{
  v5 = [(CNContactListViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];

  if ([(CNContactListViewController *)self isSearching])
  {
    v7 = [(CNContactListViewController *)self searchResultsController];
    v8 = [v7 collectionView];
    v9 = [v8 indexPathsForSelectedItems];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E6996530];
  if (((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], v6) & 1) == 0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__CNContactListViewController_deselectAllSelectedIndexPathsAnimated___block_invoke;
    v18[3] = &unk_1E74E3880;
    v18[4] = self;
    v19 = a3;
    [v6 _cn_each:v18];
  }

  if (((*(v10 + 16))(v10, v9) & 1) == 0)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__CNContactListViewController_deselectAllSelectedIndexPathsAnimated___block_invoke_2;
    v16[3] = &unk_1E74E3880;
    v16[4] = self;
    v17 = a3;
    [v9 _cn_each:v16];
  }

  suggestionsController = self->_suggestionsController;
  if (suggestionsController)
  {
    v12 = [(CNContactSuggestionsViewController *)suggestionsController collectionView];
    v13 = [v12 indexPathsForSelectedItems];

    if (((*(v10 + 16))(v10, v13) & 1) == 0)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69__CNContactListViewController_deselectAllSelectedIndexPathsAnimated___block_invoke_3;
      v14[3] = &unk_1E74E3880;
      v14[4] = self;
      v15 = a3;
      [v13 _cn_each:v14];
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

- (void)setCellStateSelected:(BOOL)a3 forContact:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v13 = a4;
  v8 = [(CNContactDataSource *)self->_dataSource indexPathForContact:?];
  v9 = [(CNContactListViewController *)self collectionViewIndexPathForDataSourceIndexPath:v8];
  if (![(CNContactListViewController *)self isValidIndexPath:v9])
  {
    goto LABEL_11;
  }

  v10 = [(CNContactListViewController *)self collectionView];
  v11 = v10;
  if (v6)
  {
    [v10 selectItemAtIndexPath:v9 animated:v5 scrollPosition:0];

    if (!-[CNContactListViewController shouldDisplayListHeaderView](self, "shouldDisplayListHeaderView") || ![v9 isEqual:v8])
    {
      goto LABEL_8;
    }

    v11 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v9 inSection:{"item"), objc_msgSend(v9, "section") + 1}];
    [(CNContactListViewController *)self setIndexPathToSelect:v11];
  }

  else
  {
    [v10 deselectItemAtIndexPath:v9 animated:v5];
  }

LABEL_8:
  suggestionsController = self->_suggestionsController;
  if (suggestionsController)
  {
    [(CNContactSuggestionsViewController *)suggestionsController setCellStateSelected:v6 forContact:v13 animated:v5];
  }

  [(CNContactListViewController *)self updateInResponseToLimitedAccessSelectionChanged];
LABEL_11:
}

- (BOOL)isValidIndexPath:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 section] != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend(v5, "section") & 0x8000000000000000) == 0)
  {
    v6 = [v5 section];
    v7 = [(CNContactListViewController *)self collectionView];
    if (v6 >= [v7 numberOfSections] || objc_msgSend(v5, "row") == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "row") < 0)
    {
    }

    else
    {
      v8 = [v5 row];
      v9 = [(CNContactListViewController *)self collectionView];
      v10 = [v9 numberOfItemsInSection:{objc_msgSend(v5, "section")}];

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
  v4 = [v3 allObjects];

  return v4;
}

- (NSArray)selectedContacts
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactListViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
    v12 = [(CNContactListViewController *)self suggestionsController];
    v13 = [v12 selectedContacts];
    [v5 addObjectsFromArray:v13];
  }

  return v5;
}

- (void)setupForMultiSelection
{
  [(CNContactListViewController *)self setAllowsMultiSelection:1];
  if ([(CNContactListViewController *)self shouldDisplaySuggestionsController])
  {
    v3 = [(CNContactListViewController *)self suggestionsController];
    [v3 setAllowsMultiSelection:1];
  }

  if (![(CNContactListViewController *)self shouldAllowSearchForMultiSelect])
  {
    [(CNContactListViewController *)self disableSearchUI];
  }

  v4 = [(CNContactListViewController *)self collectionView];
  [v4 setAllowsMultipleSelectionDuringEditing:1];
  [v4 setEditing:1];
}

- (BOOL)isPickerWithToolbarSearchField
{
  if (CNUIIsContacts() || CNUIIsMobilePhone() || ![(CNContactListViewController *)self presentsSearchUI])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  if ([v4 isFeatureEnabled:29])
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = ![v5 userInterfaceIdiom] && -[CNContactListViewController limitedAccessPickerType](self, "limitedAccessPickerType") != 4 && -[CNContactListViewController limitedAccessPickerType](self, "limitedAccessPickerType") != 1 && -[CNContactListViewController limitedAccessPickerType](self, "limitedAccessPickerType") != 3;
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
  v3 = [(CNContactListViewController *)self searchController];

  if (v3)
  {
    v4 = [(CNContactListViewController *)self navigationItem];
    [v4 setSearchController:0];

    [(CNContactListViewController *)self setSearchResultsController:0];
    [(CNContactListViewController *)self setSearchController:0];

    [(CNContactListViewController *)self setSearchBar:0];
  }
}

- (void)performWhenSearchCompleted:(id)a3
{
  v5 = [a3 copy];
  v4 = [(CNContactListViewController *)self searchResultsController];
  [v4 setSearchCompletionBlock:v5];
}

- (void)performWhenViewIsLaidOut:(id)a3
{
  v4 = a3;
  v8 = [(CNContactListViewController *)self pendingLayoutBlocks];
  v5 = [v4 copy];

  v6 = _Block_copy(v5);
  v7 = [v8 arrayByAddingObject:v6];
  [(CNContactListViewController *)self setPendingLayoutBlocks:v7];
}

- (void)reloadVisibleItems
{
  if ([(CNContactListViewController *)self isViewLoaded])
  {
    v3 = [(CNContactListViewController *)self collectionView];
    v4 = [v3 window];

    if (v4)
    {
      v5 = *MEMORY[0x1E6996530];
      v10 = [(CNContactListViewController *)self collectionView];
      v6 = [v10 indexPathsForVisibleItems];
      if (((*(v5 + 16))(v5, v6) & 1) == 0)
      {
        v7 = [(CNContactListViewController *)self collectionView];
        v8 = [v7 window];

        if (!v8)
        {
          return;
        }

        v10 = [(CNContactListViewController *)self collectionView];
        v6 = [(CNContactListViewController *)self collectionView];
        v9 = [v6 indexPathsForVisibleItems];
        [v10 reloadItemsAtIndexPaths:v9];
      }
    }
  }
}

- (void)reconfigureVisibleItems
{
  if ([(CNContactListViewController *)self isViewLoaded])
  {
    v3 = [(CNContactListViewController *)self collectionView];
    v4 = [v3 window];

    if (v4)
    {
      v5 = *MEMORY[0x1E6996530];
      v10 = [(CNContactListViewController *)self collectionView];
      v6 = [v10 indexPathsForVisibleItems];
      if (((*(v5 + 16))(v5, v6) & 1) == 0)
      {
        v7 = [(CNContactListViewController *)self collectionView];
        v8 = [v7 window];

        if (!v8)
        {
          return;
        }

        v10 = [(CNContactListViewController *)self collectionView];
        v6 = [(CNContactListViewController *)self collectionView];
        v9 = [v6 indexPathsForVisibleItems];
        [v10 reconfigureItemsAtIndexPaths:v9];
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

- (void)setContactListStyleApplier:(id)a3
{
  objc_storeStrong(&self->_contactListStyleApplier, a3);
  if ([(CNContactListViewController *)self isViewLoaded])
  {

    [(CNContactListViewController *)self applyStyle];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = CNContactListViewController;
  v7 = a4;
  [(CNContactListViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  [v7 animateAlongsideTransition:v9 completion:v8];
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

- (void)willMoveToParentViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v6 willMoveToParentViewController:?];
  if (!a3)
  {
    if ([(CNContactListViewController *)self isSearching])
    {
      v5 = [(CNContactListViewController *)self searchBar];
      [(CNContactListViewController *)self searchBarCancelButtonClicked:v5];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v6 viewDidDisappear:a3];
  if (![(CNContactListViewController *)self isSearchController])
  {
    [(CNContactListViewController *)self tipKitStopObservation];
  }

  [(CNContactListViewController *)self updatelimitedAccessContactSelection];
  v4 = [(CNContactListViewController *)self selectButtonView];

  if (v4)
  {
    v5 = [(CNContactListViewController *)self selectButtonView];
    [v5 removeFromSuperview];

    [(CNContactListViewController *)self setSelectButtonView:0];
  }

  [(CNContactListViewController *)self setIsCurrentViewStillOpen:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v13 viewDidAppear:a3];
  [(CNContactListViewController *)self setIsCurrentViewStillOpen:1];
  [(CNContactListViewController *)self setDidDeleteContact:0];
  v4 = [(CNContactDataSource *)self->_dataSource delegate];

  if (v4 != self)
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
  v5 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v6 = [(CNContactListViewController *)self listHeaderView];
  [v6 frame];
  v8 = v7;
  v9 = [(CNContactListViewController *)self view];
  [v9 frame];
  v11 = v10;

  if ((v5 & 1) != 0 || v8 != v11)
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (![(CNContactListViewController *)self isCurrentViewStillOpen])
  {
    v26.receiver = self;
    v26.super_class = CNContactListViewController;
    [(CNContactListViewController *)&v26 viewWillAppear:v3];
    [(CNContactListViewController *)self _setNeedsUpdateContentUnavailableConfiguration];
    [(CNContactListViewController *)self configureNavigationBar];
    v5 = [(CNContactListViewController *)self splitViewController];
    if (!v5 || (v6 = v5, -[CNContactListViewController splitViewController](self, "splitViewController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isCollapsed], v7, v6, v8))
    {
      [(CNContactListViewController *)self deselectAllSelectedIndexPathsAnimated:v3];
      [(CNContactListViewController *)self adjustTableViewOffsetForIncomingSearchUI];
    }

    if (![(CNContactListViewController *)self isSearchController])
    {
      [(CNContactListViewController *)self tipKitStartObservation];
    }

    v9 = [(CNContactListViewController *)self indexPathToSelect];
    if (v9)
    {
      v10 = v9;
      v11 = [(CNContactListViewController *)self listHeaderView];
      if (v11)
      {
        v12 = v11;
        v13 = [(CNContactListViewController *)self indexPathToSelect];
        v14 = [(CNContactListViewController *)self isValidIndexPath:v13];

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
      v15 = [(CNContactListViewController *)self navigationItem];
      v16 = [v15 titleView];
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      v19 = [(CNContactListViewController *)self navigationItem];
      v20 = [v19 title];
      [v18 setTitle:v20];
    }

    [(CNContactListViewController *)self applyStyle];
    v21 = [(CNContactListViewController *)self collectionView];
    if ([v21 isEditing])
    {
      v22 = [(CNContactListViewController *)self collectionView];
      v23 = [v22 allowsMultipleSelectionDuringEditing];

      if (v23)
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
      v24 = [(CNContactListViewController *)self navigationController];
      [v24 setToolbarHidden:0];
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
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:29];

  if (v5)
  {
    v6 = [(CNContactListViewController *)self navigationController];
    v7 = [v6 navigationBar];
    [v7 setPrefersLargeTitles:0];

    v8 = [(CNContactListViewController *)self navigationItem];
    [v8 setLargeTitleDisplayMode:2];

    v9 = [(CNContactListViewController *)self traitCollection];
    v10 = [v9 _splitViewControllerContext] != 0;
    v11 = [(CNContactListViewController *)self navigationController];
    v12 = [v11 navigationBar];
    v13 = [v12 standardAppearance];
    [v13 _setTitleControlHidden:v10];

    [(CNContactListViewController *)self updateBarButtonItems];
  }

  else
  {
    v14 = [(CNContactListViewController *)self shouldUseLargeTitle];
    v15 = [(CNContactListViewController *)self navigationController];
    v16 = [v15 navigationBar];
    [v16 setPrefersLargeTitles:v14];

    if ([(CNContactListViewController *)self shouldUseLargeTitle])
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v18 = [(CNContactListViewController *)self navigationItem];
    [v18 setLargeTitleDisplayMode:v17];
  }
}

- (id)contextMenuInteraction
{
  v2 = [(CNContactListViewController *)self collectionView];
  v3 = [v2 contextMenuInteraction];

  return v3;
}

- (void)listActionHelper:(id)a3 didUpdateWithMenu:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v8 = [(CNContactListViewController *)self collectionView];
  v9 = [v8 contextMenuInteraction];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CNContactListViewController_listActionHelper_didUpdateWithMenu___block_invoke;
  v11[3] = &unk_1E74E3858;
  v13 = v14;
  v10 = v7;
  v12 = v10;
  [v9 updateVisibleMenuWithBlock:v11];

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

- (void)actionDidFinish:(id)a3
{
  if (![a3 shouldReloadListOnCompletion])
  {
    return;
  }

  [(CNContactListViewController *)self reloadContacts];
  v4 = [(CNContactListViewController *)self collectionView];
  v24 = [v4 indexPathsForSelectedItems];

  [(CNContactListViewController *)self deselectAllSelectedIndexPathsAnimated:0];
  v5 = [(CNContactListViewController *)self splitViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [(CNContactListViewController *)self splitViewController];
    v8 = [v7 isCollapsed];

    if (!v8)
    {
      v12 = [(CNContactListViewController *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = [(CNContactListViewController *)self delegate];
        v11 = [v14 currentlyDisplayedContact];

        if (v11 && [(CNContactListViewController *)self selectContact:v11 animated:1 scrollPosition:0])
        {
LABEL_15:
          if ([(CNContactListViewController *)self selectContact:v11 animated:1 scrollPosition:0])
          {
LABEL_17:
            if ([(CNContactListViewController *)self selectContact:v11 animated:1 scrollPosition:0])
            {
              v19 = [(CNContactListViewController *)self delegate];
              v20 = objc_opt_respondsToSelector();

              if ((v20 & 1) == 0)
              {
                goto LABEL_23;
              }

              v21 = [(CNContactListViewController *)self delegate];
              [v21 contactListViewController:self updatedSelectedContact:v11];
LABEL_22:

              goto LABEL_23;
            }

LABEL_20:
            v22 = [(CNContactListViewController *)self delegate];
            v23 = objc_opt_respondsToSelector();

            if ((v23 & 1) == 0)
            {
              goto LABEL_23;
            }

            v21 = [(CNContactListViewController *)self delegate];
            [v21 resetContactViewController];
            goto LABEL_22;
          }

LABEL_16:
          v17 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
          v18 = [(CNContactListViewController *)self _contactAtIndexPath:v17];

          v11 = v18;
          if (!v18)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v11 = 0;
      }

      if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
      {
        v15 = [v24 firstObject];
        v16 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:v15];

        v11 = v16;
      }

      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v9 = [(CNContactListViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CNContactListViewController *)self delegate];
    [v11 resetContactViewController];
LABEL_23:
  }
}

- (void)action:(id)a3 presentViewController:(id)a4
{
  v21 = a4;
  v5 = [v21 popoverPresentationController];
  v6 = [v5 sourceView];

  if (!v6)
  {
    v7 = [(CNContactListViewController *)self collectionView];
    v8 = [v21 popoverPresentationController];
    [v8 setSourceView:v7];

    v9 = [(CNContactListViewController *)self collectionView];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v21 popoverPresentationController];
    [v18 setSourceRect:{v11, v13, v15, v17}];
  }

  v19 = [(CNContactListViewController *)self splitViewController];

  if (v19)
  {
    [(CNContactListViewController *)self splitViewController];
  }

  else
  {
    [(CNContactListViewController *)self navigationController];
  }
  v20 = ;
  [v20 presentViewController:v21 animated:1 completion:0];
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v5 = [(CNContactListViewController *)self actionHelper:a3];
  [v5 willDismissMenu];
}

- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a3;
  v8 = [(CNContactListViewController *)self actionHelper];
  v7 = [v6 contextMenuInteraction];

  [v8 willDisplayMenuWithContextMenuInteraction:v7];
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = a5;
  v7 = [(CNContactListViewController *)self actionHelper];
  v8 = [v7 contacts];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v10 = [(CNContactListViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __104__CNContactListViewController_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
      v12[3] = &unk_1E74E6A88;
      v12[4] = self;
      [v6 addCompletion:v12];
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

- (id)contextMenuConfigurationForContactsAtIndexPaths:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(CNContactListViewController *)self containsPathToDuplicatesBanner:v4]|| [(CNContactListViewController *)self containsPathToCreateNewContactRow:v4]|| [(CNContactListViewController *)self containsPathToContentUnavailableRow:v4]|| [(CNContactListViewController *)self containsPathToLimitedAccessTipRow:v4]|| [(CNContactListViewController *)self disableContextMenus])
  {
    v5 = 0;
    goto LABEL_7;
  }

  v7 = [(CNContactListViewController *)self contactsForActionsAtIndexPaths:v4];
  objc_opt_class();
  v8 = [v7 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
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
      v20 = [v7 firstObject];
      *buf = 138412290;
      v29 = v20;
      _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "contextMenuConfiguration on non-contact: %@", buf, 0xCu);
    }

LABEL_19:
    v5 = 0;
    goto LABEL_21;
  }

  v11 = [(CNContactListViewController *)self collectionView];
  v12 = [v4 firstObject];
  v13 = [v11 cellForItemAtIndexPath:v12];

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

  v14 = [(CNContactListViewController *)self actionHelper];
  v15 = [v14 searchMenuActionProviderForContacts:v7];

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

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  if ([v6 count] && (-[CNContactListViewController shouldEnableMultiSelectContextMenus](self, "shouldEnableMultiSelectContextMenus") || objc_msgSend(v6, "count") == 1))
  {
    v7 = [(CNContactListViewController *)self contextMenuConfigurationForContactsAtIndexPaths:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)showCardForSelectedContactAtIndexPath:(id)a3
{
  v12 = a3;
  if (![(CNContactListViewController *)self isPathToCreateNewContactRow:?]&& ![(CNContactListViewController *)self isPathToContentUnavailableRow:v12])
  {
    v4 = [(CNContactListViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:v12];
      if ([(CNContactListViewController *)self isHandlingSearch])
      {
        v7 = +[CNUIDataCollectionSearchSession currentSession];
        [v7 didSelectResult:v6];
      }

      v8 = [(CNContactListViewController *)self delegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v10 = [(CNContactListViewController *)self delegate];
        [v10 setAllowsContactBlocking:1];
      }

      v11 = [(CNContactListViewController *)self delegate];
      [v11 contactListViewController:self didSelectContact:v6 shouldScrollToContact:0];
    }
  }
}

- (void)deselectAllItemsExceptIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(CNContactListViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CNContactListViewController_deselectAllItemsExceptIndexPath___block_invoke;
  v8[3] = &unk_1E74E3810;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 _cn_each:v8];
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

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 isEditing])
  {
    v7 = [v10 allowsMultipleSelectionDuringEditing];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v10 indexPathsForSelectedItems];
  v9 = [v8 count];

  if (v9 >= 2 && (v7 & 1) == 0)
  {
    [(CNContactListViewController *)self deselectAllItemsExceptIndexPath:v6];
  }

  [(CNContactListViewController *)self showCardForSelectedContactAtIndexPath:v6];
}

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = !-[CNContactListViewController isPathToCreateNewContactRow:](self, "isPathToCreateNewContactRow:", v7) && !-[CNContactListViewController isPathToContentUnavailableRow:](self, "isPathToContentUnavailableRow:", v7) && (![v6 isEditing] || (objc_msgSend(v6, "allowsMultipleSelectionDuringEditing") & 1) == 0) && -[CNContactListViewController canSelectContactAtCollectionViewIndexPath:](self, "canSelectContactAtCollectionViewIndexPath:", v7);

  return v8;
}

- (BOOL)collectionView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  if ([(CNContactListViewController *)self isHandlingSearch:a3])
  {
    return 0;
  }

  return [(CNContactListViewController *)self shouldEnableMultiSelectContextMenus];
}

- (void)setAllowsMultiSelectContextMenus:(BOOL)a3
{
  if (self->_allowsMultiSelectContextMenus != a3)
  {
    self->_allowsMultiSelectContextMenus = a3;
    [(CNContactListViewController *)self setupContactListForMultiSelectContextMenus];
  }
}

- (id)contactForActionsAtIndexPath:(id)a3 forMultiSelectAction:(BOOL)a4
{
  v4 = a4;
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CNContactListViewController *)self _contactAtCollectionViewIndexPath:v6];
  dataSource = self->_dataSource;
  v9 = [CNContactListActionHelper descriptorForRequiredKeysForMultiSelectAction:v4];
  v20[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v11 = [(CNContactDataSource *)dataSource completeContactFromContact:v7 fromMainStoreOnly:1 keysToFetch:v10];

  v12 = [MEMORY[0x1E695DFB0] null];
  LODWORD(v9) = [v11 isEqual:v12];

  if (v9)
  {
    v13 = CNUILogContactList();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "NSNull returned when attempting to refetch contact at  indexPath: %@, contact: %@", &v16, 0x16u);
    }
  }

  v14 = (*(*MEMORY[0x1E6996590] + 16))();

  return v14;
}

- (id)contactsForActionsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __62__CNContactListViewController_contactsForActionsAtIndexPaths___block_invoke;
  v12 = &unk_1E74E37E8;
  v13 = self;
  v14 = v5 > 1;
  v6 = [v4 _cn_map:&v9];

  v7 = [v6 _cn_filter:{&__block_literal_global_421, v9, v10, v11, v12}];

  return v7;
}

- (void)refreshActionHelper
{
  if (self->_actionHelper)
  {
    v3 = [(CNContactListViewController *)self allowsEditingActions];
    actionHelper = self->_actionHelper;

    [(CNContactListActionHelper *)actionHelper setIncludesEditingActions:v3];
  }
}

- (CNContactListActionHelper)actionHelper
{
  actionHelper = self->_actionHelper;
  if (!actionHelper)
  {
    v4 = [CNContactListActionHelper alloc];
    v5 = [(CNContactListViewController *)self contactStore];
    v6 = [(CNContactListViewController *)self environment];
    v7 = [(CNContactListViewController *)self contactFormatter];
    v8 = [(CNContactListViewController *)self undoManager];
    v9 = [(CNContactListActionHelper *)v4 initWithContactStore:v5 environment:v6 contactFormatter:v7 undoManager:v8];
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
  v3 = [(CNContactListViewController *)self dataSource];
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
    v6 = [v5 filteredContainer];
    v7 = [v6 type] == 1004;
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
  v3 = [(CNContactListViewController *)self dataSource];
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
    v6 = [v5 filteredContainer];
    v7 = [v6 type] == 1003;
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

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CNContactListViewController;
  v4 = a3;
  [(CNContactListViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 _splitViewControllerContext];

  v6 = [(CNContactListViewController *)self traitCollection];
  v7 = [v6 _splitViewControllerContext];

  if (v5 != v7)
  {
    [(CNContactListViewController *)self configureNavigationBar];
  }
}

- (void)updateBarButtonItems
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    if (CNUIIsContacts() && [(CNContactListViewController *)self allowsListEditing])
    {
      v5 = [(CNContactListViewController *)self traitCollection];
      v6 = [v5 _splitViewControllerContext];

      if (v6)
      {
        v16 = [(CNContactListViewController *)self navigationItem];
        [v16 setRightBarButtonItem:0];
      }

      else
      {
        v16 = [(CNContactListViewController *)self addButton];
        v15 = [(CNContactListViewController *)self navigationItem];
        [v15 setRightBarButtonItem:v16];
      }
    }
  }

  else
  {
    v7 = [(CNContactListViewController *)self searchController];

    if (v7 && [(CNContactListViewController *)self allowsListEditing])
    {
      v8 = [(CNContactListViewController *)self isAcceptedIntroductionsDataSource];
      v9 = [(CNContactListViewController *)self searchController];
      v10 = [v9 _inlineToolbarSearchBarItem];
      v11 = v10;
      if (v8)
      {
        v18[0] = v10;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        [(CNContactListViewController *)self setToolbarItems:v12];
      }

      else
      {
        v17[0] = v10;
        v12 = [MEMORY[0x1E69DC708] flexibleSpaceItem];
        v17[1] = v12;
        v13 = [(CNContactListViewController *)self addButton];
        v17[2] = v13;
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
    v3 = [(CNContactListViewController *)self searchResultsController];
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (id)indexPathForGlobalIndex:(int64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(CNContactListViewController *)self dataSource];
  v6 = [v5 sections];

  if (v6)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v6;
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
        v14 = a3;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v22 + 1) + 8 * v12) range];
          a3 = v14 - v15;
          if (v14 < v15)
          {
            a3 = v14;
            v10 = v13;
            goto LABEL_14;
          }

          ++v13;
          ++v12;
          v14 -= v15;
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
    v17 = a3;
    v18 = v10;
  }

  else
  {
    v16 = MEMORY[0x1E696AC88];
    v17 = a3;
    v18 = 0;
  }

  v19 = [v16 indexPathForItem:v17 inSection:{v18, v22}];
  v20 = [(CNContactListViewController *)self collectionViewIndexPathForDataSourceIndexPath:v19];

  return v20;
}

- (unint64_t)globalIndexForCollectionViewIndexPath:(id)a3
{
  v4 = a3;
  if (-[CNContactListViewController isDuplicatesRowSection:](self, "isDuplicatesRowSection:", [v4 section]))
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = [(CNContactListViewController *)self dataSourceIndexPathForCollectionViewIndexPath:v4];
    v7 = [v6 section];
    v8 = [(CNContactListViewController *)self dataSource];
    v9 = [v8 sections];

    if (v9)
    {
      if ((v7 & 0x8000000000000000) != 0 || v7 >= [v9 count])
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = [v9 objectAtIndexedSubscript:v7];
        v11 = [v10 range];
        v5 = v11 + [v6 row];
      }
    }

    else
    {
      v5 = [v6 item];
    }
  }

  return v5;
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

- (void)setDataSource:(id)a3
{
  v8 = a3;
  [(CNContactListViewController *)self willChangeValueForKey:@"dataSource"];
  objc_storeStrong(&self->_dataSource, a3);
  [(CNContactDataSource *)self->_dataSource setDelegate:self];
  v5 = [(CNContactListViewController *)self searchResultsController];
  v6 = [v8 copyWithZone:0];
  [v5 setDataSource:v6];

  if ([(CNContactListViewController *)self canManageDuplicateContacts])
  {
    if (self->_duplicatesController)
    {
      v7 = [(CNContactListViewController *)self duplicatesController];
      [v7 setDataSource:self->_dataSource];
    }

    [(CNContactListViewController *)self refreshDuplicates];
  }

  [(CNContactListViewController *)self refreshActionHelper];
  [(CNContactListViewController *)self didChangeValueForKey:@"dataSource"];
  [(CNContactListViewController *)self contactDataSourceDidChange:v8];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = [(CNContactListViewController *)self searchResultsController];
    [v5 setDelegate:obj];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(CNContactListViewController *)self blockListNotificationToken];
  [v4 cancel];

  [(CNContactListViewController *)self setBlockListNotificationToken:0];
  v5 = [(CNContactListViewController *)self medicalIDLookupToken];
  [v5 cancel];

  [(CNContactListViewController *)self setMedicalIDLookupToken:0];
  v6.receiver = self;
  v6.super_class = CNContactListViewController;
  [(CNContactListViewController *)&v6 dealloc];
}

- (CNContactListViewController)initWithDataSource:(id)a3 shouldUseLargeTitle:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[CNUIContactsEnvironment currentEnvironment];
  v8 = [(CNContactListViewController *)self initWithDataSource:v6 environment:v7 shouldUseLargeTitle:v4];

  return v8;
}

- (CNContactListViewController)initWithDataSource:(id)a3 searchable:(BOOL)a4 environment:(id)a5 shouldUseLargeTitle:(BOOL)a6
{
  v11 = a3;
  v12 = a5;
  v13 = +[CNContactListViewController collectionViewLayout];
  v32.receiver = self;
  v32.super_class = CNContactListViewController;
  v14 = [(CNContactListViewController *)&v32 initWithCollectionViewLayout:v13];

  if (v14)
  {
    [(CNContactListViewController *)v14 setClearsSelectionOnViewWillAppear:0];
    objc_storeStrong(&v14->_environment, a5);
    objc_storeStrong(&v14->_dataSource, a3);
    v14->_presentsSearchUI = a4;
    v14->_isHandlingSearch = !a4;
    pendingLayoutBlocks = v14->_pendingLayoutBlocks;
    v14->_pendingLayoutBlocks = MEMORY[0x1E695E0F0];

    if (objc_opt_respondsToSelector())
    {
      v16 = [v11 displayName];
      [(CNContactListViewController *)v14 setTitle:v16];
    }

    else
    {
      v16 = CNContactsUIBundle();
      v17 = [v16 localizedStringForKey:@"CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
      [(CNContactListViewController *)v14 setTitle:v17];
    }

    v14->_shouldUseLargeTitle = a6;
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
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v14 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E695C3D8] object:0];

    v20 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v20 addObserver:v14 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E6996440] object:0];

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v14 selector:sel__applicationEnteringForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v14 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

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

- (void)setTipView:(id)a3
{
  v23 = a3;
  v4 = [(CNContactListViewController *)self tipKitContentView];
  v5 = (v23 == 0) ^ (v4 != 0);

  if ((v5 & 1) == 0)
  {
    +[_TtC10ContactsUI15CNTipHeaderView verticalInsetTotal];
    if (v23)
    {
      v7 = v6;
      v8 = *MEMORY[0x1E695F058];
      v9 = *(MEMORY[0x1E695F058] + 8);
      v10 = *(MEMORY[0x1E695F058] + 24);
      v11 = [(CNContactListViewController *)self view];
      [v11 bounds];
      Width = CGRectGetWidth(v25);

      [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
      v26.origin.x = v8;
      v26.origin.y = v9;
      v26.size.width = Width;
      v26.size.height = v10;
      v13 = CGRectGetWidth(v26) - v7;
      [v23 bounds];
      if (v13 != CGRectGetWidth(v27))
      {
        [v23 bounds];
        [v23 setBounds:?];
      }

      LODWORD(v14) = 1148846080;
      LODWORD(v15) = 1132068864;
      [v23 systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v14, v15}];
      v17 = v7 + v16;
      v18 = [_TtC10ContactsUI15CNTipHeaderView alloc];
      v19 = [(CNTipHeaderView *)v18 initWithFrame:v8 separatorInset:v9, Width, v17, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
      [(CNTipHeaderView *)v19 setHostingView:v23];
      [(CNTipHeaderView *)v19 setDisplaysBottomSeparator:0];
      v20 = +[_TtC10ContactsUI12CNTipsHelper shared];
      [v20 setCurrentTipView:v19];
    }

    else
    {
      v21 = +[_TtC10ContactsUI12CNTipsHelper shared];
      v22 = [v21 currentTipView];
      [v22 removeFromSuperview];

      v19 = +[_TtC10ContactsUI12CNTipsHelper shared];
      [(CNTipHeaderView *)v19 setCurrentTipView:0];
    }

    [(CNContactListViewController *)self refreshTableViewHeaderIfVisible];
  }
}

- (id)getRecentCallCountAndSpeakableName
{
  v36[1] = *MEMORY[0x1E69E9840];
  v20 = [(CNContactListViewController *)self contactStore];
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
  v19 = [[v3 alloc] initWithDataSource:v20];
  v5 = [(CNContactListViewController *)self recentOutgoingCalls];
  v36[0] = *MEMORY[0x1E695C240];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v25 = 0;
  v7 = [v19 contactsByHandleForCalls:v5 keyDescriptors:v6 error:&v25];
  v18 = v25;

  if (v18 || !v7)
  {
    v14 = CNUILogContactList();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v14, OS_LOG_TYPE_ERROR, "No recent calls", buf, 2u);
    }

    v15 = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v7 allValues];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v35 count:16];
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
          objc_enumerationMutation(v8);
        }

        if (v11 == v12)
        {
          break;
        }

        v13 = [*(*(&v21 + 1) + 8 * v12) firstObject];
        v14 = [v13 firstName];
        if (v14 && [(CNContactListViewController *)self isEasyToRecognizeWord:v14])
        {

          goto LABEL_21;
        }

        if (v9 == ++v12)
        {
          v9 = [v8 countByEnumeratingWithState:&v21 objects:v35 count:16];
          v14 = 0;
          v11 = v17;
          if (v9)
          {
            goto LABEL_7;
          }

          goto LABEL_21;
        }
      }
    }

    v14 = 0;
LABEL_21:

    v15 = +[CNRecentCallCountAndName instanceWithName:callCount:](CNRecentCallCountAndName, "instanceWithName:callCount:", v14, [v5 count]);
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

  v3 = [MEMORY[0x1E695DF58] systemLanguages];
  if ([v3 count])
  {
    v4 = [(objc_class *)getAFPreferencesClass_46300() sharedPreferences];
    v5 = [v4 languageCode];

    if ([v5 length])
    {
      v6 = MEMORY[0x1E696AAE8];
      v7 = [MEMORY[0x1E695DF58] preferredLanguages];
      v8 = [v6 preferredLocalizationsFromArray:v3 forPreferences:v7];
      v9 = [v8 firstObject];

      v10 = MEMORY[0x1E696AAE8];
      v15[0] = v5;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v12 = [v10 preferredLocalizationsFromArray:v3 forPreferences:v11];
      v13 = [v12 firstObject];

      v2 = [v9 isEqualToString:v13];
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
    v2 = 0;
  }

  else
  {
    v3 = [(objc_class *)getAFPreferencesClass_46300() sharedPreferences];
    v2 = [v3 assistantIsEnabled];
  }

  v4 = CNUILogContactList();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_debug_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEBUG, "Assitant enabled = %d", v6, 8u);
  }

  return v2;
}

- (void)setTipKitContext:(id)a3
{
  v3 = a3;
  v4 = +[_TtC10ContactsUI12CNTipsHelper shared];
  [v4 tipKitSetSiriTipContext:v3];
}

- (BOOL)isEasyToRecognizeWord:(id)a3
{
  v3 = MEMORY[0x1E695DF58];
  v4 = a3;
  v5 = [v3 currentLocale];
  v6 = [(objc_class *)get_EARUserProfileBuilderClass() isEasyToRecognizeWord:v4 forLocale:v5];

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
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t getkCHCallTypeNormal(void)"];
    [v25 handleFailureInFunction:v26 file:@"CNCallHistory.h" lineNumber:16 description:{@"%s", dlerror()}];

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
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t getkCHCallStatusCancelled(void)"];
    [v27 handleFailureInFunction:v28 file:@"CNCallHistory.h" lineNumber:17 description:{@"%s", dlerror()}];

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
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t getkCHCallStatusConnectedOutgoing(void)"];
    [v29 handleFailureInFunction:v30 file:@"CNCallHistory.h" lineNumber:18 description:{@"%s", dlerror()}];

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