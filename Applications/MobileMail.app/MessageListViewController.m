@interface MessageListViewController
+ (OS_os_log)log;
+ (id)signpostLog;
- (BOOL)_allowReadLaterActions;
- (BOOL)_allowsAutoSelectionOfInitialMessage;
- (BOOL)_canDisplayMessage:(id)a3;
- (BOOL)_canPerformExpandOp:(int64_t)a3;
- (BOOL)_hasSelectedMessages;
- (BOOL)_inMultiSelectionMode;
- (BOOL)_isActivityEligibleForPredictionWithPayload:(id)a3;
- (BOOL)_isExpandedIndexPath:(id)a3;
- (BOOL)_isExpandedItemID:(id)a3;
- (BOOL)_isFlaggedMailbox;
- (BOOL)_isInSearch;
- (BOOL)_isIniCloudContext;
- (BOOL)_prioritySectionVisibleAndActive;
- (BOOL)_restoreDraftOrOutboxItemAtIndexPath:(id)a3;
- (BOOL)_selectAndDisplayInitialMessageIfNecessary;
- (BOOL)_shouldDisplaySearchButtons;
- (BOOL)_shouldPopToMessageListViewControllerFromConversationViewController:(id)a3;
- (BOOL)_shouldProcessButtonUpdates;
- (BOOL)_shouldShowButtonImages;
- (BOOL)_shouldShowClearHighImpactForMessageListItem:(id)a3;
- (BOOL)_shouldShowHighlights;
- (BOOL)_shouldShowItemIDAsConversation:(id)a3;
- (BOOL)_shouldShowSwipeActionsAtIndexPath:(id)a3;
- (BOOL)_shouldUsePluralPrompt;
- (BOOL)canHandleAction:(SEL)a3 withMailMenuCommand:(id)a4;
- (BOOL)canMoveDragItem:(id)a3 toBucket:(int64_t)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4;
- (BOOL)conversationViewController:(id)a3 canAdvanceToNextConversationWithDirection:(int)a4;
- (BOOL)conversationViewControllerCanShowNoMessageSelectedView:(id)a3;
- (BOOL)isFilterButtonAvailable;
- (BOOL)isFilterButtonEnabled;
- (BOOL)isInExpandedEnvironment;
- (BOOL)isPresentingSearchViewController;
- (BOOL)isSearchControllerActive;
- (BOOL)isSearchViewControllerEditing;
- (BOOL)isTransferStackVisible;
- (BOOL)layoutUsesSplitViewStylingForMessageListSeparatorController:(id)a3;
- (BOOL)messageListSeparatorController:(id)a3 hasHeaderInSection:(int64_t)a4;
- (BOOL)messageListSeparatorController:(id)a3 hasHeaderInSectionAfterSection:(int64_t)a4;
- (BOOL)messageListSeparatorController:(id)a3 hasMessageContentInSection:(int64_t)a4;
- (BOOL)messageListSeparatorController:(id)a3 hasMessageSectionAboveSection:(int64_t)a4;
- (BOOL)messageListSeparatorController:(id)a3 hasNonMessageSectionAboveSection:(int64_t)a4;
- (BOOL)messageListSeparatorController:(id)a3 isExpandedChildAtIndexPath:(id)a4;
- (BOOL)messageListSeparatorController:(id)a3 isExpandedParentAtIndexPath:(id)a4;
- (BOOL)messageListSeparatorController:(id)a3 isItemAtIndexPathFocused:(id)a4;
- (BOOL)messageListSeparatorController:(id)a3 isItemAtIndexPathSelected:(id)a4;
- (BOOL)messageListSeparatorController:(id)a3 isItemExpandedAtIndexPath:(id)a4;
- (BOOL)messageListSeparatorController:(id)a3 isLastItemAtIndexPath:(id)a4;
- (BOOL)messageListUnbundledSectionDataSourceIsInExpandedEnvironment:(id)a3;
- (BOOL)selectionModel:(id)a3 isItemIDExpandedThread:(id)a4;
- (BOOL)selectionModel:(id)a3 isThreadedItemID:(id)a4;
- (BOOL)shouldEnableEditButton;
- (BOOL)shouldRouteActionToConversation:(SEL)a3 withCommand:(id)a4;
- (BOOL)shouldShowNavigationBarSubtitle;
- (BOOL)shouldShowSubtitle;
- (BOOL)shouldShowUnreadCountForMailStatusViewController:(id)a3;
- (BOOL)shouldUseCustomNavigationBarTitleView;
- (BOOL)shouldUseSelectionDataSourceForConversationViewController:(id)a3;
- (BOOL)showingPopoverViewController;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (CGPoint)lastScrolledContentOffset;
- (Class)sectionListCellClassForMessageListSectionDataSource:(id)a3;
- (ConversationViewController)conversationViewController;
- (EFFuture)initialLoadCompletedFuture;
- (EFPair)lastSeenDatesForSelectedBucket;
- (LongPressableButtonItem)deleteButtonItem;
- (MFMailboxFilterBarButtonItem)filterButtonItem;
- (MFMailboxFilterCriteriaBarButtonItem)filterCriteriaButtonItem;
- (MFMailboxFilterPickerControl)filterPickerControl;
- (MFSearchBar)searchBar;
- (MFTransferStackViewController)transferStackViewController;
- (MUIMessageListHighlightsSupplementaryView)highlightsSupplementaryView;
- (MUIMessageListNavigationBarTitleView)navigationBarTitleView;
- (MailMainScene)scene;
- (MailboxPickerDelegate)mailboxPickerDelegate;
- (MessageListSearchViewController)messageListSearchViewController;
- (MessageListViewController)initWithMainScene:(id)a3 mailboxes:(id)a4 accountsProvider:(id)a5 favoritesShortcutsProvider:(id)a6 contactStore:(id)a7 diagnosticsHelper:(id)a8;
- (MessageTriageInteractionHelper)messageTriageInteractionHelper;
- (NSDirectionalEdgeInsets)mf_extraNavigationBarMargins;
- (UIBarButtonItem)composeButtonItem;
- (UIBarButtonItem)configureButtonItem;
- (UIBarButtonItem)filterPickerButtonItem;
- (UIBarButtonItem)markButtonItem;
- (UIBarButtonItem)moveButtonItem;
- (UIBarButtonItem)selectAllButtonItem;
- (UIBarButtonItem)shelfButtonItem;
- (UIRefreshControl)refreshControl;
- (UIViewController)iCloudMailCleanupOnboardingViewController;
- (UIViewController)tipPopoverController;
- (_TtC10MobileMail30MessageListSeparatorController)separatorController;
- (double)dragItemCornerRadius:(id)a3;
- (double)editingSeparatorInset;
- (id)_bulkMarkMenuForCurrentSelection;
- (id)_categoryGroupingPreferenceMenuForBucket:(int64_t)a3;
- (id)_configureSelectButtonWithTitle:(id)a3;
- (id)_contextMenuConfigurationForIndexPaths:(id)a3 orbedIndexPath:(id)a4;
- (id)_createMailActionViewHeader;
- (id)_currentBulkSelectionWithDebugLabel:(id)a3;
- (id)_deferredMenuForConfigureButtonItem;
- (id)_displayMetrics;
- (id)_draftOrOutboxMessageAtIndexPath:(id)a3;
- (id)_identifierForInstantAnswerItemID:(id)a3;
- (id)_identifierForTopHitItemID:(id)a3;
- (id)_layoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layout:(int64_t)a5;
- (id)_mailActionsViewControllerFromPresentedViewController:(id)a3;
- (id)_mailActionsViewDataSourceForMailActionsViewController:(id)a3 messageListItem:(id)a4 predictedMailbox:(id)a5 indexPath:(id)a6 cell:(id)a7;
- (id)_mailCategorizationOptionView;
- (id)_markAllAsReadTriageInteractionIfSupported;
- (id)_menuForConfigureButtonItem;
- (id)_menuTitleForSelection;
- (id)_messageListItemSelectionCreateIfNeeded:(BOOL)a3;
- (id)_noContentTitleForMailboxTypeString;
- (id)_observedMailboxesAndSmartMailboxPredicate;
- (id)_plistDictionaryFromSender:(id)a3;
- (id)_preSolariumSelectMessageListViewButtonItem;
- (id)_previewActionsForItemIDs:(id)a3 orbedItem:(id)a4;
- (id)_previewMessagesForSelectAllMode:(BOOL)a3;
- (id)_sceneActivationConfigurationForItemAtIndexPath:(id)a3;
- (id)_solariumSelectButtonItem;
- (id)_swipeActionForTriageAction:(int64_t)a3 indexPath:(id)a4;
- (id)_transferControllerWithMessages:(id)a3 options:(unint64_t)a4 interaction:(id)a5 didDismissHandler:(id)a6;
- (id)actionViewHeaderForCategorizationInteraction:(id)a3 messageListItem:(id)a4;
- (id)captureRestorationState;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 sceneActivationConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)continuityMailboxActivityPayloadFromMailboxes:(id)a3 account:(id)a4 currentActivityPayload:(id)a5;
- (id)conversationViewController:(id)a3 messageListItemWithItemID:(id)a4;
- (id)conversationViewController:(id)a3 messagesToActOnForReferenceMessage:(id)a4;
- (id)createChangeFilterStateInteraction;
- (id)createMailboxFilterController;
- (id)createSearchMessagesInteraction;
- (id)currentEditButtonItem;
- (id)dropMailboxesForMessageListDragDropHelper:(id)a3;
- (id)ef_publicDescription;
- (id)iCloudMailCleanupService;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)inputLanguages;
- (id)itemIDsForStateCaptureWithErrorString:(id *)a3;
- (id)labelForStateCapture;
- (id)lastSeenDatesForBucket:(int64_t)a3;
- (id)lastSelectedItemID;
- (id)leadingSwipeActionsConfigurationAtIndexPath:(id)a3;
- (id)mailboxQualifier;
- (id)messageContentRepresentationRequestForMessageTriageInteractionHelper:(id)a3 message:(id)a4;
- (id)messageDragDropHelper:(id)a3 itemContextForIndexPath:(id)a4;
- (id)messageListForMessageTriageInteractionHelper:(id)a3 messageListItem:(id)a4;
- (id)messageListItemSelectionForConversationViewController:(id)a3;
- (id)messageRepositoryForTriageInteraction:(id)a3;
- (id)messageTriageInteractionHelper:(id)a3 senderRepositoryForMessageListItems:(id)a4;
- (id)messageTriageInteractionHelperForConversationViewController:(id)a3;
- (id)mf_preferredTitle;
- (id)moreTriageInteraction:(id)a3 actionsViewControllerWithInteractionTarget:(id)a4 didDismissHandler:(id)a5;
- (id)parsecInstantAnswerForInstantAnswer:(id)a3;
- (id)parsecInstantAnswerForItemID:(id)a3 date:(id)a4 inlineCard:(id)a5 isUpdated:(BOOL)a6;
- (id)parsecTopHitForItemID:(id)a3 date:(id)a4 mailRankingSignals:(id)a5;
- (id)preferredFocusEnvironments;
- (id)presentingViewControllerForTriageInteraction:(id)a3;
- (id)referenceMessageListItem;
- (id)referenceMessageListItemForFirstConversationWithSingleMessage:(BOOL)a3 markAsRead:(BOOL)a4;
- (id)requiredUserInfoKeysFromUserActivityPayload:(id)a3;
- (id)selectMessageListViewButtonItem;
- (id)selectionModel:(id)a3 itemIDsInExpandedThread:(id)a4;
- (id)selectionModel:(id)a3 messageListItemsForItemIDs:(id)a4;
- (id)selectionModel:(id)a3 objectIDsForItemIDs:(id)a4;
- (id)selectionModel:(id)a3 predictMailboxForMovingMessagesWithIDs:(id)a4;
- (id)selectionModel:(id)a3 threadItemIDForItemInExpandedThread:(id)a4;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)trailingSwipeActionsConfigurationAtIndexPath:(id)a3;
- (id)transferStackViewController:(id)a3 displayMessageForMessageListItemWithItemID:(id)a4;
- (id)transferStackViewController:(id)a3 itemIDsToDisplayFromItemIDs:(id)a4;
- (id)undoManager;
- (id)undoManagerForMessageListDragDropHelper:(id)a3;
- (int64_t)_bucketForMailboxes:(id)a3 senderSpecificMessageListItem:(id)a4;
- (int64_t)_expandOpFromPlist:(id)a3;
- (int64_t)preferredMessageListLayoutForSection:(int64_t)a3;
- (int64_t)selectedBucketForMUIMessageListUnbundledSectionDataSource:(id)a3;
- (int64_t)unreadBadgeCountForMessageTriageInteractionHelper:(id)a3;
- (unint64_t)_stackViewTransferOptions;
- (unint64_t)signpostID;
- (void)_addMessagesToStackWithItemIDs:(id)a3;
- (void)_adjustNoContentMessageAlpha:(id)a3;
- (void)_appStoreReviewNotifyFilterCriterionIfNecessaryFor:(id)a3;
- (void)_applySelectionModel:(id)a3;
- (void)_archiveShortcutInvoked:(id)a3;
- (void)_bulkDeleteButtonLongPressed:(id)a3;
- (void)_bulkDeleteButtonPressed:(id)a3;
- (void)_bulkTransferButtonPressed:(id)a3;
- (void)_cancelOrCleanupStateRestoration;
- (void)_checkMessageListLoadingCompleted:(id)a3;
- (void)_clearNavigationBarButtonItemMenu;
- (void)_clearVisibleSwipeActions;
- (void)_collapseThreadKeyCommandInvoked:(id)a3;
- (void)_commonInitWithDaemonInterface:(id)a3 mailboxes:(id)a4;
- (void)_configureLayoutListConfiguration:(id)a3 atSection:(int64_t)a4;
- (void)_configureSearch;
- (void)_deleteMessageCommandInvoked:(id)a3;
- (void)_deleteMessagesWithPreference:(unint64_t)a3;
- (void)_deleteOrArchiveConversationReferenceItemWithPreference:(unint64_t)a3;
- (void)_deregisterViewInteractions;
- (void)_didPerformMoveOrDestructiveInteraction:(id)a3;
- (void)_disableFocusFilter:(BOOL)a3;
- (void)_dismissSearchResults;
- (void)_dismissSearchViewController;
- (void)_displayBucketBar;
- (void)_displayBucketBarOnNotification:(id)a3;
- (void)_doInitialMessageSelection;
- (void)_doOnInitialLoadCompletion:(id)a3;
- (void)_editButtonTapped:(id)a3;
- (void)_escapeShortcutInvoked:(id)a3;
- (void)_exitMultiSelectionForce:(BOOL)a3;
- (void)_expandCollapseThreadCommand:(id)a3;
- (void)_expandThreadKeyCommandInvoked:(id)a3;
- (void)_favoriteMailboxShortcutInvoked:(id)a3;
- (void)_filterCommand:(id)a3;
- (void)_finalizeMultipleSelection;
- (void)_finishRefreshingWaitForDraggingToEnd:(BOOL)a3;
- (void)_generativeModelsAvailabilityDidChange:(id)a3;
- (void)_handleDidSelectItemID:(id)a3 messageList:(id)a4 referenceItem:(id)a5 scrollToVisible:(BOOL)a6 userInitiated:(BOOL)a7 canRestoreDraft:(BOOL)a8 animated:(BOOL)a9 showConversationView:(BOOL)a10;
- (void)_handleDidSelectItemID:(id)a3 referenceItem:(id)a4 scrollToVisible:(BOOL)a5 userInitiated:(BOOL)a6 canRestoreDraft:(BOOL)a7 animated:(BOOL)a8 showConversationView:(BOOL)a9;
- (void)_handleSelectedItem:(id)a3 itemID:(id)a4 messageList:(id)a5 referenceItem:(id)a6 scrollToVisible:(BOOL)a7 userInitiated:(BOOL)a8 canRestoreDraft:(BOOL)a9 animated:(BOOL)a10 showConversationView:(BOOL)a11 indexPath:(id)a12;
- (void)_hideBucketBar;
- (void)_hideMailboxPickerOrMessageListAfterSelectionIfNeeded;
- (void)_initializeMailboxBrowseUserActivityWithMailboxes:(id)a3;
- (void)_invalidateCachedUseCompactRows;
- (void)_invalidateCollectionLayoutForHighlights;
- (void)_loadMessageWithItemID:(id)a3 messageList:(id)a4 messageListItem:(id)a5 scrollToVisible:(BOOL)a6 userInitiated:(BOOL)a7 animated:(BOOL)a8 showConversationView:(BOOL)a9 showAsConversation:(BOOL)a10;
- (void)_loadMoreMessagesWithMaxVisibleIndexPath:(id)a3;
- (void)_mailboxSearchKeyCommandInvoked:(id)a3;
- (void)_markAllAsReadCommandInvoked:(id)a3;
- (void)_moveMessageToFavoriteMailboxShortcutInvoked:(id)a3;
- (void)_nextMailboxShortcutInvoked:(id)a3;
- (void)_openMessageCommandInvoked:(id)a3;
- (void)_openMessages:(id)a3;
- (void)_prepareForMoveOrDestructiveInteraction:(id)a3 completion:(id)a4;
- (void)_previousMailboxShortcutInvoked:(id)a3;
- (void)_refresh:(id)a3;
- (void)_registerViewInteractions;
- (void)_reloadFlattenedMailboxes;
- (void)_removeMessagesFromStackWithItemIDs:(id)a3;
- (void)_reportReadTriageInteraction:(id)a3 didPerform:(BOOL)a4;
- (void)_restoreDraftOrOutboxItem:(id)a3;
- (void)_sceneDidBecomeActive:(id)a3;
- (void)_sceneDidEnterBackground;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)_scrollMessageListToTop:(id)a3;
- (void)_scrollToCurrentMessage:(id)a3;
- (void)_selectAllButtonPressed:(id)a3;
- (void)_selectInitialMessageNow;
- (void)_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)a3 conversationViewController:(id)a4;
- (void)_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)a3 showConversationView:(BOOL)a4;
- (void)_selectOrDeselectAll:(BOOL)a3;
- (void)_setContentUnavailableTitle:(id)a3 animated:(BOOL)a4;
- (void)_setEditing:(BOOL)a3 animated:(BOOL)a4 preserveSelection:(BOOL)a5;
- (void)_setMailboxes:(id)a3;
- (void)_setRowDeletionEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)_shelfButtonTapped:(id)a3;
- (void)_showConversationViewWithMessageListItem:(id)a3 itemID:(id)a4 messageList:(id)a5 referenceItem:(id)a6 scrollToVisible:(BOOL)a7 userInitiated:(BOOL)a8 canRestoreDraft:(BOOL)a9 animated:(BOOL)a10 showConversationView:(BOOL)a11 indexPath:(id)a12;
- (void)_showMoveMessageShortcutErrorForMailbox:(id)a3 count:(int64_t)a4;
- (void)_showTransferPickerForNonPredictiveMoveOfMessages:(id)a3;
- (void)_startObservationForStatusBarBadgeCountWithObservedMailboxes:(id)a3 smartMailboxPredicate:(id)a4;
- (void)_testing_disableMessageListFilter;
- (void)_testing_enableMessageListFilter;
- (void)_toggleSidebar:(id)a3;
- (void)_updateBackButtonImage;
- (void)_updateBackButtonImageWithCount:(unint64_t)a3;
- (void)_updateBarButtonsWithForce:(BOOL)a3;
- (void)_updateBucketBarIsHidden:(BOOL)a3;
- (void)_updateFiltersPickerAccessibilityHUD;
- (void)_updateLastSeenDates:(id)a3 forMailboxes:(id)a4 bucket:(int64_t)a5;
- (void)_updateLastSeenDatesForMessageListItemFuture:(id)a3 atIndexPath:(id)a4;
- (void)_updateLayoutMargins;
- (void)_updateListForChange:(id)a3;
- (void)_updateMailboxPositionUserActivity;
- (void)_updateNavigationBarButtonsWithForce:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateNoContentViewAnimated:(BOOL)a3 suppressNoContentView:(BOOL)a4;
- (void)_updatePaletteWithForce:(BOOL)a3;
- (void)_updateResolvedMailboxObjectIDs;
- (void)_updateSelectionModelDidDeselectItemID:(id)a3;
- (void)_updateSelectionModelDidSelectItemID:(id)a3;
- (void)_updateSelectionPromiseForItemID:(id)a3 messageList:(id)a4 messageListCell:(id)a5 referenceItem:(id)a6 scrollToVisible:(BOOL)a7 userInitiated:(BOOL)a8 canRestoreDraft:(BOOL)a9 animated:(BOOL)a10 showConversationView:(BOOL)a11 indexPath:(id)a12;
- (void)_updateStackViewController;
- (void)_updateStatusObservers;
- (void)_updateStatusPrefix;
- (void)_updateThreadingPreference:(id)a3;
- (void)_updateTitle;
- (void)_updateToolbarButtons;
- (void)aboutCategoriesViewControllerDidSelectResetButton:(id)a3;
- (void)applyFilterPredicate:(id)a3;
- (void)badgeCountUpdated:(id)a3 badgeCount:(int64_t)a4;
- (void)beginSearchWithQueryString:(id)a3 scope:(id)a4;
- (void)beginSearchWithSuggestion:(id)a3 scope:(id)a4;
- (void)changeCategoryOfDragItem:(id)a3 toBucket:(int64_t)a4 completion:(id)a5;
- (void)changeTipShouldDisplayTo:(BOOL)a3;
- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionViewDidEndMultipleSelectionInteraction:(id)a3;
- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4;
- (void)conversationViewController:(id)a3 advanceToNextConversationWithDirection:(int)a4;
- (void)conversationViewController:(id)a3 didPerform:(BOOL)a4 triageInteraction:(id)a5;
- (void)conversationViewController:(id)a3 didRemoveAllVisibleMessagesWithItemIDs:(id)a4;
- (void)conversationViewController:(id)a3 performTriageAction:(int64_t)a4 presentationSource:(id)a5;
- (void)conversationViewController:(id)a3 willRemoveAllVisibleMessagesWithItemIDs:(id)a4;
- (void)currentFocusChanged:(id)a3;
- (void)dealloc;
- (void)decreaseSize:(id)a3;
- (void)deleteAction:(id)a3 showChoices:(BOOL)a4 preferDeleteOrArchive:(unint64_t)a5;
- (void)deleteMessagesWithItemIDs:(id)a3;
- (void)deselectAllItemsInCollectionView:(id)a3 animated:(BOOL)a4;
- (void)deselectSelectedItemsInCollectionView;
- (void)didDismissSearchController:(id)a3;
- (void)didFinishLoadViewController;
- (void)didSelectTopHitWithItemID:(id)a3 messageList:(id)a4 animated:(BOOL)a5;
- (void)dismissSearchResultsAnimated:(BOOL)a3;
- (void)dismissTip;
- (void)enterEditMode;
- (void)exitEditMode;
- (void)filterMailboxMessagesUsingFilterMailboxType:(int64_t)a3;
- (void)filterPickerButtonPressed;
- (void)filterPickerButtonPressedWithSourceItem:(id)a3;
- (void)filterPickerViewModelDidChangeSelectedAccounts:(id)a3;
- (void)filterUIWithFilterInteraction:(id)a3;
- (void)focusSearchBarAnimated:(BOOL)a3;
- (void)handleListViewTappedForOptionView:(id)a3;
- (void)highlightedMessagesController:(id)a3 didFindMessages:(id)a4;
- (void)highlightedMessagesViewDidProvideFeedbackForMessage:(id)a3 feedbackType:(int64_t)a4 feedbackFeature:(int64_t)a5;
- (void)highlightedMessagesViewDidSelectMessage:(id)a3;
- (void)increaseSize:(id)a3;
- (void)learnMoreForMessageListSectionDataSource:(id)a3;
- (void)mailActionsViewController:(id)a3 didSelectAction:(id)a4;
- (void)mailStatusViewControllerUndoButtonTapped:(id)a3;
- (void)mailboxFilterPickerViewController:(id)a3 didFinishPickingWithSelectedFilters:(id)a4;
- (void)mailboxStatusUpdatedWithStatusInfo:(id)a3 forMailboxObjectID:(id)a4;
- (void)messageListDataSource:(id)a3 didConfigureSupplementaryView:(id)a4 elementKind:(id)a5 section:(id)a6;
- (void)messageListDataSource:(id)a3 didUpdateWithChange:(id)a4 section:(id)a5 animated:(BOOL)a6;
- (void)messageListDataSource:(id)a3 willUpdateWithChange:(id)a4 section:(id)a5 animated:(BOOL)a6 cleanSnapshot:(BOOL)a7;
- (void)messageListDataSourceDidSkipUpdate:(id)a3 section:(id)a4 change:(id)a5;
- (void)messageListSectionDataSource:(id)a3 deletedMessagesWithItemIdentifiers:(id)a4;
- (void)messageListSectionDataSource:(id)a3 didConfigureCell:(id)a4 atIndexPath:(id)a5 item:(id)a6 itemWasCached:(BOOL)a7 duration:(double)a8;
- (void)messageListSectionDataSource:(id)a3 didMoveMessagesWithItemIdentifiers:(id)a4 toSection:(id)a5;
- (void)messageListSectionDataSource:(id)a3 handleRowSelectionAfterMovingMessagesWithItemIdentifiers:(id)a4;
- (void)parsecEventQueuePerformBlock:(id)a3;
- (void)performOnLocalAndRemoteSearchCompletion:(id)a3;
- (void)presentSearchController:(id)a3;
- (void)presentTransferUIWithMoveInteraction:(id)a3 prediction:(id)a4 fromViewController:(id)a5 didDismissHandler:(id)a6;
- (void)presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)refreshHighlightedMessagesController;
- (void)reloadDataSource;
- (void)reportEngagementAction:(int64_t)a3 onItemID:(id)a4 atIndexPath:(id)a5;
- (void)restoreState:(id)a3;
- (void)resumeRefreshAnimationIfNecessary;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)selectAll:(id)a3;
- (void)selectMessageAtIndex:(int64_t)a3;
- (void)selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)a3;
- (void)selectionModel:(id)a3 deselectItemID:(id)a4;
- (void)selectionModel:(id)a3 selectItemID:(id)a4;
- (void)setFilterButtonEnabled:(BOOL)a3;
- (void)setFiltersEnabled:(BOOL)a3;
- (void)setLastSelectedItemID:(id)a3;
- (void)setMailboxes:(id)a3;
- (void)setMailboxes:(id)a3 forceReload:(BOOL)a4;
- (void)setMailboxes:(id)a3 senderSpecificMessageListItem:(id)a4 bucket:(int64_t)a5 forceReload:(BOOL)a6;
- (void)setReferenceMessageListItem:(id)a3 referenceMessageList:(id)a4 showAsConversation:(BOOL)a5 animated:(BOOL)a6;
- (void)setSplitViewControllerNeedsFocusUpdate;
- (void)setSwipeActionVisible:(BOOL)a3;
- (void)setlastSeenDatesForSelectedBucket:(id)a3;
- (void)setupTipsObserver;
- (void)showBlankCellAlertForMessageListSectionDataSource:(id)a3 itemID:(id)a4 indexPath:(id)a5 reason:(id)a6;
- (void)suspendRefreshAnimationIfNecessary;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFilterByUnreadRules;
- (void)updateFilterControlWithFilterViewModel:(id)a3;
- (void)updateForSplitViewControllerHidingMessageList;
- (void)updateHighlightsVisibility;
- (void)updateSelectedBucket:(int64_t)a3 unseenPredicate:(id)a4;
- (void)updateState:(id)a3 withMailboxes:(id)a4;
- (void)updateToolbarButtonTitles;
- (void)updateUserActivityState:(id)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willBeginDragForMessageListDragDropHelper:(id)a3;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation MessageListViewController

- (MailMainScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DED0;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD350 != -1)
  {
    dispatch_once(&qword_1006DD350, block);
  }

  v2 = qword_1006DD348;

  return v2;
}

- (id)ef_publicDescription
{
  v3 = objc_opt_class();
  v4 = [(MessageListViewController *)self messageRepository];
  v5 = [(MessageListViewController *)self mailboxes];
  v6 = [NSString stringWithFormat:@"<%@: %p> Repository:%@ Mailboxes:%@", v3, self, v4, v5];

  return v6;
}

- (void)_updateResolvedMailboxObjectIDs
{
  v3 = +[NSMutableSet set];
  resolvedMailboxObjectIDs = self->_resolvedMailboxObjectIDs;
  self->_resolvedMailboxObjectIDs = v3;

  [(MessageListViewController *)self mailboxes];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          buf[0] = 0;
          v10 = [v9 mailboxScope];
          v11 = [(MessageListViewController *)self mailboxRepository];
          v12 = [v10 allMailboxObjectIDsWithMailboxTypeResolver:v11 forExclusion:buf];

          [(NSMutableSet *)self->_resolvedMailboxObjectIDs unionSet:v12];
        }

        else
        {
          v13 = self->_resolvedMailboxObjectIDs;
          v14 = [v9 objectID];
          [(NSMutableSet *)v13 addObject:v14];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v6);
  }

  v15 = +[MessageListViewController log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = self->_resolvedMailboxObjectIDs;
    *buf = 138413058;
    v24 = v17;
    v25 = 2048;
    v26 = self;
    v27 = 2114;
    v28 = v18;
    v29 = 2114;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<%@: %p> Updated resolved mailbox object ids: %{public}@, mailboxes: %{public}@", buf, 0x2Au);
  }
}

- (void)_updateStatusObservers
{
  v9 = [(MessageListViewController *)self _observedMailboxesAndSmartMailboxPredicate];
  v3 = [v9 first];
  v4 = [v9 second];
  v5 = [(MessageListViewController *)self mailboxes];
  v6 = sub_10016FE78(self, 0);
  sub_10016FFF0(self, v5, v6);

  [(MessageListViewController *)self _startObservationForStatusBarBadgeCountWithObservedMailboxes:v3 smartMailboxPredicate:v4];
  v7 = [(MessageListViewController *)self messageTriageInteractionHelper];
  [v7 startObservingMailboxes:v3];

  v8 = [(MessageListViewController *)self messageListFetchHelper];
  [v8 setMailboxes:v3];
}

- (id)_observedMailboxesAndSmartMailboxPredicate
{
  v25 = objc_alloc_init(NSMutableArray);
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(MessageListViewController *)self mailboxes];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v4)
  {
    v6 = *v29;
    *&v5 = 138413058;
    v24 = v5;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        if ([v8 isSmartMailbox])
        {
          v9 = v8;
          v10 = [v9 makePredicate];
          [v25 addObject:v10];

          v27 = 0;
          v11 = [v9 mailboxScope];
          v12 = [(MessageListViewController *)self mailboxRepository];
          v13 = [v11 allMailboxObjectIDsWithMailboxTypeResolver:v12 forExclusion:&v27];

          if (v27 == 1)
          {
            v14 = +[MessageListViewController log];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = objc_opt_class();
              v16 = NSStringFromClass(v15);
              *buf = v24;
              v33 = v16;
              v34 = 2048;
              v35 = self;
              v36 = 2112;
              v37 = v13;
              v38 = 2112;
              v39 = v9;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "<%@: %p> Unexpectedly received exclusion mailboxes: %@ for smart mailbox: %@", buf, 0x2Au);
            }
          }

          else
          {
            v17 = [(MessageListViewController *)self mailboxRepository];
            v18 = [v13 allObjects];
            v14 = [v17 mailboxesIfAvailableForObjectIDs:v18];

            [v3 addObjectsFromArray:v14];
          }
        }

        else
        {
          [v3 addObject:v8];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v4);
  }

  if ([v25 count])
  {
    v19 = [NSCompoundPredicate andPredicateWithSubpredicates:v25];
  }

  else
  {
    v19 = 0;
  }

  v20 = [EFPair alloc];
  v21 = [v3 allObjects];
  v22 = [v20 initWithFirst:v21 second:v19];

  return v22;
}

- (MessageTriageInteractionHelper)messageTriageInteractionHelper
{
  messageTriageInteractionHelper = self->_messageTriageInteractionHelper;
  if (!messageTriageInteractionHelper)
  {
    v4 = [MessageTriageInteractionHelper alloc];
    v5 = [(MessageListViewController *)self scene];
    v6 = [(MessageTriageInteractionHelper *)v4 initWithDataSource:self triageInteractionDelegate:self scene:v5 presentingViewController:self];
    v7 = self->_messageTriageInteractionHelper;
    self->_messageTriageInteractionHelper = v6;

    messageTriageInteractionHelper = self->_messageTriageInteractionHelper;
  }

  return messageTriageInteractionHelper;
}

- (id)mf_preferredTitle
{
  v2 = [(MessageListViewController *)self mailboxes];
  v3 = [v2 firstObject];
  v4 = [v3 name];

  return v4;
}

- (void)viewDidLoad
{
  v37.receiver = self;
  v37.super_class = MessageListViewController;
  [(MessageListViewController *)&v37 viewDidLoad];
  [(MessageListViewController *)self _invalidateCachedUseCompactRows];
  objc_initWeak(&location, self);
  v3 = [UICollectionViewCompositionalLayout alloc];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10001CC30;
  v34 = &unk_10064F3F8;
  objc_copyWeak(&v35, &location);
  v4 = [v3 initWithSectionProvider:&v31];
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v5 = objc_opt_class();
    v6 = [MUIPriorityMessageListBackgroundDecorationView elementKind:v31];
    [v4 registerClass:v5 forDecorationViewOfKind:v6];
  }

  v7 = [(MessageListViewController *)self view:v31];
  v8 = +[UIColor mailMessageListBackgroundColor];
  [v7 setBackgroundColor:v8];

  v9 = [UICollectionView alloc];
  [v7 bounds];
  v10 = [v9 initWithFrame:v4 collectionViewLayout:?];
  v11 = objc_opt_class();
  v12 = +[MessageListCollectionViewCell reusableIdentifier];
  [v10 registerClass:v11 forCellWithReuseIdentifier:v12];

  [v10 _setAllowsVisibleCellUpdatesDuringUpdateAnimations:1];
  [v10 setAutoresizingMask:18];
  [v10 setDelegate:self];
  v13 = +[UIColor mailMessageListBackgroundColor];
  [v10 setBackgroundColor:v13];

  [v10 setAlwaysBounceVertical:1];
  [v10 setKeyboardDismissMode:2];
  [v10 setAccessibilityIdentifier:MSAccessibilityIdentifierMailMessageList];
  v14 = [(MessageListViewController *)self refreshControl];
  [v10 setRefreshControl:v14];

  v15 = [(MessageListViewController *)self messageListDragDropHelper];
  [v10 setDragDelegate:v15];

  v16 = [(MessageListViewController *)self messageListDragDropHelper];
  [v10 setDropDelegate:v16];

  [v10 setAllowsMultipleSelection:1];
  [v10 setAllowsMultipleSelectionDuringEditing:1];
  [v10 setFocusGroupIdentifier:@"MessageListFocusGroupIdentifier"];
  [(MessageListViewController *)self setCollectionView:v10];
  v17 = +[UIDevice mf_isPadIdiom];
  v18 = [(MessageListViewController *)self collectionView];
  v19 = [v18 panGestureRecognizer];
  [v19 setDelaysTouchesBegan:v17];

  v20 = [MessageListPositionHelper alloc];
  v21 = [(MessageListViewController *)self dataSource];
  v22 = [v21 collectionViewDataSource];
  v23 = [v20 initWithCollectionView:v10 dataSource:v22];
  [(MessageListViewController *)self setMessageListPositionHelper:v23];

  [v7 addSubview:v10];
  [(MessageListViewController *)self _configureSearch];
  [(MessageListViewController *)self setPrimitiveFocusFilterEnabled:1];
  v24 = [(MessageListViewController *)self scene];
  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"_sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:v24];

  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"_sceneDidEnterBackground:" name:UISceneDidEnterBackgroundNotification object:v24];

  v27 = +[NSNotificationCenter defaultCenter];
  [v27 addObserver:self selector:"_displayBucketBarOnNotification:" name:@"MailCleanupShowCategories" object:0];

  v28 = +[NSNotificationCenter defaultCenter];
  [v28 addObserver:self selector:"_sceneDidBecomeActive:" name:UISceneDidActivateNotification object:v24];

  v29 = [(MessageListViewController *)self viewSetupPromise];
  v30 = +[NSNull null];
  [v29 finishWithResult:v30];

  +[MUIIntelligenceLightDefaults setInitialSettingsIfNecessary];
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)_invalidateCachedUseCompactRows
{
  v4 = [(MessageListViewController *)self scene];
  v5 = [v4 isInExpandedEnvironment];

  v6 = [(MessageListViewController *)self traitCollection];
  v7 = [v6 verticalSizeClass];

  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v13 = 138413314;
    v14 = v10;
    v15 = 2048;
    v16 = self;
    v17 = 2114;
    v18 = v11;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v7 == 1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@: %p> %{public}@ isInExpandedEnvironment: %{BOOL}d, isVerticallyCompact: %{BOOL}d", &v13, 0x2Cu);
  }

  v12 = [(MessageListViewController *)self state];
  [v12 setIsCompact:v5 & (v7 == 1)];
}

- (UIRefreshControl)refreshControl
{
  if ([(MessageListViewController *)self isSearchViewController])
  {
    v3 = 0;
  }

  else
  {
    refreshControl = self->_refreshControl;
    if (!refreshControl)
    {
      v5 = objc_alloc_init(UIRefreshControl);
      v6 = self->_refreshControl;
      self->_refreshControl = v5;

      [(UIRefreshControl *)self->_refreshControl addTarget:self action:"_refresh:" forControlEvents:4096];
      refreshControl = self->_refreshControl;
    }

    v3 = refreshControl;
  }

  return v3;
}

- (void)_configureSearch
{
  if (![(MessageListViewController *)self isSearchViewController])
  {
    v10 = [(MessageListViewController *)self messageListSearchViewController];
    v3 = [(MessageListViewController *)self searchController];

    if (!v3)
    {
      v4 = [[MFSearchController alloc] initWithSearchResultsController:v10];
      [(MFSearchController *)v4 setDelegate:self];
      [(MFSearchController *)v4 setSearchResultsUpdater:v10];
      if (MUISolariumFeatureEnabled())
      {
        [(MFSearchController *)v4 setHidesNavigationBarDuringPresentation:0];
      }

      [(MessageListViewController *)self setSearchController:v4];
      v5 = [(MFSearchController *)v4 searchBar];
      [v5 setDelegate:v10];
      v6 = [v5 searchTextField];
      [v6 setDelegate:v10];

      v7 = [v5 searchTextField];
      [v7 setPasteDelegate:v10];

      [v5 setFocusGroupIdentifier:@"SearchFocusGroupIdentifier"];
    }

    v8 = [(MessageListViewController *)self navigationItem];
    v9 = [(MessageListViewController *)self searchController];
    [v8 setSearchController:v9];

    [v8 setHidesSearchBarWhenScrolling:0];
    if (MUISolariumFeatureEnabled())
    {
      [v8 setSearchBarPlacementAllowsExternalIntegration:1];
    }
  }
}

- (MessageListSearchViewController)messageListSearchViewController
{
  if ([(MessageListViewController *)self isSearchViewController])
  {
    v3 = 0;
  }

  else
  {
    messageListSearchViewController = self->_messageListSearchViewController;
    if (!messageListSearchViewController)
    {
      v5 = [MessageListSearchViewController alloc];
      v6 = [(MessageListViewController *)self scene];
      v7 = [(MessageListViewController *)self mailboxes];
      v8 = [(MessageListViewController *)self accountsProvider];
      v9 = [(MessageListViewController *)self contactStore];
      v10 = [(MessageListSearchViewController *)v5 initWithMainScene:v6 mailboxes:v7 accountsProvider:v8 favoritesShortcutsProvider:0 contactStore:v9];
      [(MessageListViewController *)self setMessageListSearchViewController:v10];

      messageListSearchViewController = self->_messageListSearchViewController;
    }

    v3 = messageListSearchViewController;
  }

  return v3;
}

- (void)refreshHighlightedMessagesController
{
  v4.receiver = self;
  v4.super_class = MessageListViewController;
  [(MessageListViewController *)&v4 refreshHighlightedMessagesController];
  v3 = [(MessageListViewController *)self highlightsSupplementaryView];
  [v3 showBelowLineMessages:0];
}

- (BOOL)isFilterButtonEnabled
{
  v3 = [(MessageListViewController *)self filterButtonItem];
  if ([v3 isFilterEnabled])
  {
    v4 = [(MessageListViewController *)self filterViewModel];
    v5 = [v4 isFilterAvailable];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MFMailboxFilterBarButtonItem)filterButtonItem
{
  filterButtonItem = self->_filterButtonItem;
  if (!filterButtonItem)
  {
    v4 = [[MFMailboxFilterBarButtonItem alloc] initWithTarget:self action:"filterButtonPressed:"];
    v5 = self->_filterButtonItem;
    self->_filterButtonItem = v4;

    filterButtonItem = self->_filterButtonItem;
  }

  return filterButtonItem;
}

- (MUIMessageListHighlightsSupplementaryView)highlightsSupplementaryView
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightsSupplementaryView);

  return WeakRetained;
}

- (void)_reloadFlattenedMailboxes
{
  v3 = [(MessageListViewController *)self flattenedMailboxesFuture];
  [v3 cancel];

  v4 = [(MessageListViewController *)self state];
  if ([v4 isUnifiedMailbox])
  {
    v5 = +[EFPromise promise];
    v6 = [v5 future];
    [(MessageListViewController *)self setFlattenedMailboxesFuture:v6];

    v7 = [(MessageListViewController *)self mailboxes];
    v8 = [v7 ef_map:&stru_100652498];

    v9 = [NSCompoundPredicate orPredicateWithSubpredicates:v8];
    v10 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v9 sortDescriptors:&__NSArray0__struct];
    v11 = [(MessageListViewController *)self mailboxRepository];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100172040;
    v15[3] = &unk_10064CE98;
    v12 = v5;
    v16 = v12;
    [v11 performQuery:v10 completionHandler:v15];
  }

  else if (([v4 containsSmartMailbox] & 1) == 0)
  {
    v13 = [(MessageListViewController *)self mailboxes];
    v14 = [EFFuture futureWithResult:v13];
    [(MessageListViewController *)self setFlattenedMailboxesFuture:v14];
  }
}

- (id)createMailboxFilterController
{
  v3 = [(MessageListViewController *)self shouldDisplayGroupedSenders];
  v4 = [MUIMailboxFilterController alloc];
  v5 = [(MessageListViewController *)self mailboxes];
  v6 = [(MessageListViewController *)self currentFocus];
  v7 = MFMailDirectory();
  v8 = objc_opt_class();
  LOBYTE(v11) = v3 ^ 1;
  v9 = [v4 initWithMailboxes:v5 focus:v6 baseStoragePath:v7 defaultsRepresentationProvider:&stru_1006527D8 filterRepresentationProvider:&stru_100652858 mailboxFilterClass:v8 filterProviderClass:objc_opt_class() isFilteringAvailable:v11];

  return v9;
}

- (MFMailboxFilterCriteriaBarButtonItem)filterCriteriaButtonItem
{
  filterCriteriaButtonItem = self->_filterCriteriaButtonItem;
  if (!filterCriteriaButtonItem)
  {
    v4 = [[MFMailboxFilterCriteriaBarButtonItem alloc] initWithTarget:self action:"filterCriteriaButtonPressed:"];
    v5 = self->_filterCriteriaButtonItem;
    self->_filterCriteriaButtonItem = v4;

    filterCriteriaButtonItem = self->_filterCriteriaButtonItem;
  }

  return filterCriteriaButtonItem;
}

- (void)reloadDataSource
{
  [(MessageListViewController *)self loadViewIfNeeded];
  [(MessageListViewController *)self setCurrentUnreadCount:0x8000000000000000];
  v6 = [(MessageListViewController *)self mailboxes];
  v3 = [(MessageListViewController *)self createMessageListForReload];
  if (v3)
  {
    v4 = [(MessageListViewController *)self currentFilterPredicate];
    v5 = sub_10016FE78(self, v4);
    sub_10016FFF0(self, v6, v5);
  }

  if ([(MessageListViewController *)self _isInSearch])
  {
    [(MessageListViewController *)self dismissSearchResultsAnimated:1];
  }

  [(MessageListViewController *)self setSuppressNoContentView:1];
  [(MessageListViewController *)self _setContentUnavailableTitle:0 animated:0];
  [(MessageListViewController *)self reloadDataSourceWithMessageList:v3];
}

- (BOOL)_isInSearch
{
  v2 = [(MessageListViewController *)self searchController];
  v3 = [v2 isActive];

  return v3;
}

- (BOOL)shouldShowSubtitle
{
  if ([(MessageListViewController *)self _isFlaggedMailbox])
  {
    return 0;
  }

  v4 = [(MessageListViewController *)self state];
  if ([v4 containsDraftsMailbox])
  {
    v5 = 1;
  }

  else
  {
    v5 = MUISolariumFeatureEnabled();
  }

  return v5 ^ 1;
}

- (void)_updateTitle
{
  if (sub_10017E098(self))
  {
    sub_10048A188(self);
  }

  else
  {
    sub_10017AD64(self);
  }

  [(MessageListViewController *)self _updateBackButtonImage];
  v3 = [(MessageListViewController *)self scene];
  [v3 mf_resetPreferredTitle];
}

- (MFSearchBar)searchBar
{
  v2 = [(MessageListViewController *)self searchController];
  v3 = [v2 searchBar];

  return v3;
}

- (BOOL)shouldUseCustomNavigationBarTitleView
{
  if (([(MessageListViewController *)self isBucketBarHidden]& 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(MessageListViewController *)self bucketsViewController];
    v5 = [v4 viewIfLoaded];
    v6 = [v5 superview];
    if (v6)
    {
      v3 = MUISolariumFeatureEnabled() ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)_updateBackButtonImage
{
  v3 = [(MessageListViewController *)self mailStatusObserver];
  -[MessageListViewController _updateBackButtonImageWithCount:](self, "_updateBackButtonImageWithCount:", [v3 badgeCount]);
}

- (void)_updateToolbarButtons
{
  v3 = [(MessageListViewController *)self navigationItem];
  v4 = [(MessageListViewController *)self _shouldProcessButtonUpdates];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v48 = v3;
  if (self && MUISolariumFeatureEnabled())
  {
    v6 = +[UIDevice mf_isPadIdiom];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(MessageListViewController *)self isEditing];
  v37 = [(MessageListViewController *)self deleteButtonItem];
  v36 = [(MessageListViewController *)self moveButtonItem];
  v8 = [(MessageListViewController *)self markButtonItem];
  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v47 = [(MessageListViewController *)self currentEditButtonItem:v9];
  v46 = +[UIBarButtonItem mf_newFixedSpaceItem];
  v44 = [(MessageListViewController *)self filterButtonItem];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_100018ED8;
  v81[3] = &unk_100652658;
  v10 = v3;
  v82 = v10;
  v83 = self;
  v11 = objc_retainBlock(v81);
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10017CE14;
  v71[3] = &unk_100652680;
  v43 = v7;
  v79 = v7;
  v71[4] = self;
  v12 = v8;
  v72 = v12;
  v13 = v9;
  v73 = v13;
  v14 = v36;
  v74 = v14;
  v15 = v37;
  v75 = v15;
  v42 = v47;
  v76 = v42;
  v80 = v6;
  v77 = v10;
  v16 = v46;
  v78 = v16;
  v17 = objc_retainBlock(v71);
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10017D22C;
  v66[3] = &unk_1006526A8;
  v66[4] = self;
  v41 = v12;
  v67 = v41;
  v18 = v13;
  v68 = v18;
  v40 = v14;
  v69 = v40;
  v39 = v15;
  v70 = v39;
  v49 = objc_retainBlock(v66);
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_100018A78;
  v64[3] = &unk_1006526D0;
  v64[4] = self;
  v38 = v16;
  v65 = v38;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_10017D31C;
  v57[3] = &unk_1006526F8;
  v19 = objc_retainBlock(v64);
  v61 = v19;
  v63 = v6;
  v20 = v18;
  v58 = v20;
  v21 = v44;
  v59 = v21;
  v60 = self;
  v22 = v11;
  v62 = v22;
  v23 = objc_retainBlock(v57);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100018BD4;
  v50[3] = &unk_1006526F8;
  v24 = v19;
  v54 = v24;
  v45 = v21;
  v51 = v45;
  v52 = self;
  v56 = v6;
  v25 = v20;
  v53 = v25;
  v26 = v22;
  v55 = v26;
  v27 = objc_retainBlock(v50);
  if ([(MessageListViewController *)self _shouldDisplaySearchButtons])
  {
    v28 = [(MessageListViewController *)self isSearchSuggestionsVisible];
    v29 = v43 | ~v28;
    if (v28)
    {
      v30 = v49;
    }

    else
    {
      v30 = v17;
    }

    if (v29)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v30 = v49;
  if ((v43 & 1) == 0)
  {
LABEL_16:
    if (v6 & 1 | ![(MessageListViewController *)self isFilterButtonEnabled])
    {
      v30 = v27;
    }

    else
    {
      v30 = v23;
    }
  }

LABEL_19:
  v31 = (v30[2])();
  if (MUISolariumFeatureEnabled())
  {
    v32 = [(MessageListViewController *)self isFilterButtonEnabled];
    v33 = [(MessageListViewController *)self navigationItem];
    v34 = v33;
    if (v32)
    {
      v35 = 4;
    }

    else
    {
      v35 = 3;
    }

    [v33 setPreferredSearchBarPlacement:v35];
  }

  [(MessageListViewController *)self setToolbarItems:v31 animated:1];

  v3 = v48;
LABEL_25:
}

- (BOOL)_shouldProcessButtonUpdates
{
  v3 = [(MessageListViewController *)self navigationItem];

  if (v3)
  {
    if ((MUISolariumFeatureEnabled() & 1) != 0 || ![(MessageListViewController *)self _shouldDisplaySearchButtons]|| (v4 = [(MessageListViewController *)self isSearchViewController]))
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_shouldDisplaySearchButtons
{
  if ([(MessageListViewController *)self isSearchViewController])
  {
    return 1;
  }

  return [(MessageListViewController *)self _isInSearch];
}

- (LongPressableButtonItem)deleteButtonItem
{
  deleteButtonItem = self->_deleteButtonItem;
  if (!deleteButtonItem)
  {
    if ([(MessageListViewController *)self _shouldShowButtonImages])
    {
      v4 = [LongPressableButtonItem alloc];
      v5 = [UIImage systemImageNamed:MFImageGlyphTrash];
      v6 = [(LongPressableButtonItem *)v4 initWithImage:v5 style:0 target:self action:"_bulkDeleteButtonPressed:"];
    }

    else
    {
      v7 = [LongPressableButtonItem alloc];
      v5 = +[NSBundle mainBundle];
      v8 = [v5 localizedStringForKey:@"DELETE_BUTTON" value:&stru_100662A88 table:@"Main"];
      v6 = [(LongPressableButtonItem *)v7 initWithTitle:v8 style:7 target:self action:"_bulkDeleteButtonPressed:"];
    }

    [(LongPressableButtonItem *)v6 setLongPressTarget:self action:"_bulkDeleteButtonLongPressed:"];
    v9 = self->_deleteButtonItem;
    self->_deleteButtonItem = v6;

    deleteButtonItem = self->_deleteButtonItem;
  }

  return deleteButtonItem;
}

- (BOOL)_shouldShowButtonImages
{
  if ([(MessageListViewController *)self isSearchViewController])
  {
    return 1;
  }

  return MUISolariumFeatureEnabled();
}

- (UIBarButtonItem)moveButtonItem
{
  if (!self->_moveButtonItem)
  {
    v3 = [(MessageListViewController *)self _shouldShowButtonImages];
    v4 = [UIBarButtonItem alloc];
    if (v3)
    {
      v5 = [UIImage systemImageNamed:MFImageGlyphMove];
      v6 = [v4 initWithImage:v5 style:0 target:self action:"_bulkTransferButtonPressed:"];
      moveButtonItem = self->_moveButtonItem;
      self->_moveButtonItem = v6;
    }

    else
    {
      v5 = +[NSBundle mainBundle];
      moveButtonItem = [v5 localizedStringForKey:@"MOVE_BUTTON" value:&stru_100662A88 table:@"Main"];
      v8 = [v4 initWithTitle:moveButtonItem style:0 target:self action:"_bulkTransferButtonPressed:"];
      v9 = self->_moveButtonItem;
      self->_moveButtonItem = v8;
    }
  }

  v10 = self->_moveButtonItem;

  return v10;
}

- (UIBarButtonItem)markButtonItem
{
  markButtonItem = self->_markButtonItem;
  if (!markButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithPrimaryAction:0];
    v5 = self->_markButtonItem;
    self->_markButtonItem = v4;

    if ([(MessageListViewController *)self _shouldShowButtonImages])
    {
      v6 = [UIImage systemImageNamed:MFImageGlyphMarkElipsis];
      [(UIBarButtonItem *)self->_markButtonItem setImage:v6];
    }

    else
    {
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"MARK_BUTTON" value:&stru_100662A88 table:@"Main"];
      [(UIBarButtonItem *)self->_markButtonItem setTitle:v7];
    }

    [(UIBarButtonItem *)self->_markButtonItem setSecondaryActionsArePrimary:1];
    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100181B0C;
    v9[3] = &unk_1006529D0;
    objc_copyWeak(&v10, &location);
    [(UIBarButtonItem *)self->_markButtonItem _setSecondaryActionsProvider:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    markButtonItem = self->_markButtonItem;
  }

  return markButtonItem;
}

- (id)currentEditButtonItem
{
  if ([(MessageListViewController *)self _shouldDisplaySearchButtons])
  {
    v3 = [(MessageListViewController *)self searchEditButtonItem];

    if (!v3)
    {
      v4 = [UIBarButtonItem mf_newMultiBarButtonItemWithTarget:self action:"_editButtonTapped:"];
      [(MessageListViewController *)self setSearchEditButtonItem:v4];
    }

    v5 = [(MessageListViewController *)self searchEditButtonItem];
  }

  else
  {
    v6 = [(MessageListViewController *)self multiEditButtonItem];

    if (!v6)
    {
      v7 = [UIBarButtonItem mf_newMultiBarButtonItemWithTarget:self action:"_editButtonTapped:"];
      [(MessageListViewController *)self setMultiEditButtonItem:v7];
    }

    v5 = [(MessageListViewController *)self multiEditButtonItem];
  }

  return v5;
}

- (UIBarButtonItem)composeButtonItem
{
  v3 = [(MessageListViewController *)self scene];
  if (!v3)
  {
    v4 = +[MessageListViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      NSStringFromClass(v5);
      objc_claimAutoreleasedReturnValue();
      sub_10048A44C();
    }
  }

  composeButtonItem = self->_composeButtonItem;
  if (!composeButtonItem)
  {
    v7 = [v3 newComposeButtonItem];
    v8 = self->_composeButtonItem;
    self->_composeButtonItem = v7;

    composeButtonItem = self->_composeButtonItem;
  }

  v9 = composeButtonItem;

  return composeButtonItem;
}

- (id)_deferredMenuForConfigureButtonItem
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100180C00;
  v4[3] = &unk_1006529A8;
  v4[4] = self;
  v2 = [UIDeferredMenuElement elementWithUncachedProvider:v4];

  return v2;
}

- (id)selectMessageListViewButtonItem
{
  if (MUISolariumFeatureEnabled())
  {
    [(MessageListViewController *)self _solariumSelectButtonItem];
  }

  else
  {
    [(MessageListViewController *)self _preSolariumSelectMessageListViewButtonItem];
  }
  v3 = ;

  return v3;
}

- (void)_doInitialMessageSelection
{
  if (([UIApp launchedToTest] & 1) != 0 || +[EMInternalPreferences preferenceEnabled:](EMInternalPreferences, "preferenceEnabled:", 12))
  {
    v11 = +[MessageListViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      NSStringFromClass(v4);
      objc_claimAutoreleasedReturnValue();
      sub_10001B23C();
    }

    goto LABEL_5;
  }

  v5 = [(MessageListViewController *)self conversationViewController];
  v11 = [v5 referenceMessageListItem];

  v6 = [(MessageListViewController *)self scene];
  if (!v11 && [v6 isInExpandedEnvironment])
  {
    v7 = [v6 splitViewController];
    v8 = [v7 displayMode];
    if (v8 != 2)
    {
      v2 = [v6 splitViewController];
      if ([v2 displayMode] != 3)
      {
        goto LABEL_12;
      }
    }

    v9 = [(MessageListViewController *)self state];
    if ([v9 containsDraftsOrOutbox])
    {

      if (v8 == 2)
      {
LABEL_13:

LABEL_17:
        [(MessageListViewController *)self _selectInitialMessageNow];
        goto LABEL_18;
      }

LABEL_12:

      goto LABEL_13;
    }

    v10 = sub_10001C994(self);

    if (v8 != 2)
    {
    }

    if (v10)
    {
      goto LABEL_17;
    }

    [(MessageListViewController *)self setShouldSelectInitialMessage:[(MessageListViewController *)self _allowsAutoSelectionOfInitialMessage]];
  }

LABEL_18:

LABEL_5:
}

- (void)_registerViewInteractions
{
  if (![(MessageListViewController *)self isSearchViewController])
  {
    if (!self || !self->_searchMessagesInteraction)
    {
      v3 = [(MessageListViewController *)self createSearchMessagesInteraction];
      sub_100489FCC(self, v3);

      v4 = [(MessageListViewController *)self searchBar];
      if (self)
      {
        searchMessagesInteraction = self->_searchMessagesInteraction;
      }

      else
      {
        searchMessagesInteraction = 0;
      }

      v9 = v4;
      [v4 addInteraction:searchMessagesInteraction];
    }

    if (!self || !self->_changeFilterStateInteraction)
    {
      v6 = [(MessageListViewController *)self createChangeFilterStateInteraction];
      sub_100489FE0(self, v6);

      v7 = [(MessageListViewController *)self view];
      if (self)
      {
        changeFilterStateInteraction = self->_changeFilterStateInteraction;
      }

      else
      {
        changeFilterStateInteraction = 0;
      }

      v10 = v7;
      [v7 addInteraction:changeFilterStateInteraction];
    }
  }
}

- (id)createSearchMessagesInteraction
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_10001B440();
  _objc_release(self);

  return v5;
}

- (id)createChangeFilterStateInteraction
{
  swift_getObjectType();
  _objc_retain(self);
  v5 = sub_10001B768();
  _objc_release(self);

  return v5;
}

- (ConversationViewController)conversationViewController
{
  conversationViewController = self->_conversationViewController;
  if (!conversationViewController)
  {
    v4 = [(MessageListViewController *)self scene];
    v5 = [v4 splitViewController];
    v6 = [v5 messageDetailNavController];
    v7 = [v6 conversationViewController];

    if (v7)
    {
      v8 = v7;
      v9 = self->_conversationViewController;
      self->_conversationViewController = v8;
    }

    else
    {
      v10 = [ConversationViewController alloc];
      v11 = [(MessageListViewController *)self contactStore];
      v12 = [(MessageListViewController *)self avatarGenerator];
      v13 = [(ConversationViewController *)v10 initWithScene:v4 contactStore:v11 avatarGenerator:v12];
      v14 = self->_conversationViewController;
      self->_conversationViewController = v13;

      [(ConversationViewControllerBase *)self->_conversationViewController setDelegate:self];
      [(ConversationViewControllerBase *)self->_conversationViewController setIsPrimary:1];
      v9 = [(MessageListViewController *)self diagnosticsHelper];
      [(ConversationViewController *)self->_conversationViewController setDiagnosticsHelper:v9];
    }

    conversationViewController = self->_conversationViewController;
  }

  return conversationViewController;
}

- (void)viewLayoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = MessageListViewController;
  [(MessageListViewController *)&v3 viewLayoutMarginsDidChange];
  [(MessageListViewController *)self _updateLayoutMargins];
}

- (void)_updateLayoutMargins
{
  [(MessageListViewController *)self systemMinimumLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v32 = [(MessageListViewController *)self layoutValuesHelper];
  [v32 setSystemLayoutMargins:{v4, v6, v8, v10}];

  [(MessageListViewController *)self mf_updateExtraNavigationBarMargins];
  v33 = [(MessageListViewController *)self view];
  [v33 layoutMargins];
  v12 = v11;
  v14 = v13;

  v34 = [(MessageListViewController *)self view];
  [v34 layoutMargins];
  v16 = v15;

  v35 = [(MessageListViewController *)self view];
  [v35 layoutMargins];
  v18 = v17;

  v36 = [(MessageListViewController *)self searchBar];
  [v36 _setOverrideContentInsets:10 forRectEdges:{v12, v16, v14, v18}];

  if ([(MessageListViewController *)self focusAllowed])
  {
    v37 = [(MessageListViewController *)self state];
    v19 = 0.0;
    if ([v37 useSplitViewStyling])
    {
      v20 = [(MessageListViewController *)self view];
      [v20 safeAreaInsets];
      v19 = v16 - v21;
    }

    v38 = [(MessageListViewController *)self state];
    v22 = 0.0;
    if ([v38 useSplitViewStyling])
    {
      v23 = [(MessageListViewController *)self view];
      [v23 directionalLayoutMargins];
      v22 = v24;
    }

    v39 = [(MessageListViewController *)self layoutValuesHelper];
    v25 = [v39 defaultLayoutValues];
    [v25 leadingToIndicatorMargin];
    v27 = v26;
    v28 = [(MessageListViewController *)self layoutValuesHelper];
    v29 = [v28 defaultLayoutValues];
    [v29 indicatorToTrailingMargin];
    v31 = v22 + v30;

    v40 = sub_10048A100(self);
    [v40 setDirectionalLayoutMargins:{0.0, v19 + v27, 0.0, v31}];
  }
}

- (NSDirectionalEdgeInsets)mf_extraNavigationBarMargins
{
  v3 = [(MessageListViewController *)self state];
  v4 = [v3 useSplitViewStyling];

  v5 = 8.0;
  if ((v4 & 1) == 0)
  {
    v6 = [(MessageListViewController *)self layoutValuesHelper];
    v7 = [v6 defaultLayoutValues];
    [v7 leadingPadding];
    v9 = v8;
    [(MessageListViewController *)self systemMinimumLayoutMargins];
    v5 = v9 - v10;
  }

  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v14 = v5;
  result.trailing = v13;
  result.bottom = v12;
  result.leading = v14;
  result.top = v11;
  return result;
}

- (BOOL)_isFlaggedMailbox
{
  v3 = [(MessageListViewController *)self mailboxes];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(MessageListViewController *)self mailboxes];
  v6 = [v5 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v8 = [(MessageListViewController *)self mailboxes];
  v9 = [v8 firstObject];

  v10 = [v9 smartMailboxType] == 1;
  return v10;
}

- (id)mailboxQualifier
{
  v3 = [(MessageListViewController *)self state];
  v4 = [v3 containsDraftsMailbox];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"DRAFTS_FORMAT" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    v7 = [(MessageListViewController *)self _isFlaggedMailbox];
    v8 = +[NSBundle mainBundle];
    v5 = v8;
    if (v7)
    {
      [v8 localizedStringForKey:@"FLAGGED_FORMAT" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v8 localizedStringForKey:@"UNREAD_FORMAT" value:&stru_100662A88 table:@"Main"];
    }
    v6 = ;
  }

  v9 = v6;

  return v9;
}

- (BOOL)_shouldShowHighlights
{
  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable())
  {

    return [(MessageListViewController *)self _hasHighlightedMessages];
  }

  else
  {
    if (!_os_feature_enabled_impl() || !EMIsGreymatterAvailable())
    {
      return 0;
    }

    v3 = [(MessageListViewController *)self showHighlights];
    if ([v3 isEnabled])
    {
      v4 = [(MessageListViewController *)self highlightedMessages];
      v5 = [v4 count] != 0;
    }

    else
    {
      v5 = 0;
    }

    return v5;
  }
}

- (_TtC10MobileMail30MessageListSeparatorController)separatorController
{
  separatorController = self->_separatorController;
  if (!separatorController)
  {
    v4 = [[_TtC10MobileMail30MessageListSeparatorController alloc] initWithDelegate:self];
    v5 = self->_separatorController;
    self->_separatorController = v4;

    separatorController = self->_separatorController;
  }

  return separatorController;
}

- (id)lastSelectedItemID
{
  lastSelectedItemID = self->_lastSelectedItemID;
  if (lastSelectedItemID)
  {
    v3 = lastSelectedItemID;
  }

  else
  {
    v5 = [(MessageListViewController *)self conversationViewController];
    v6 = [v5 referenceMessageListItem];
    v7 = [v6 itemID];

    if (v7)
    {
      objc_storeStrong(&self->_lastSelectedItemID, v7);
    }

    v3 = self->_lastSelectedItemID;
  }

  return v3;
}

- (MFTransferStackViewController)transferStackViewController
{
  if (!self->_transferStackViewController)
  {
    v3 = [MFTransferStackViewController alloc];
    v4 = [(MessageListViewController *)self scene];
    v5 = [(MFTransferStackViewController *)v3 initWithScene:v4];
    transferStackViewController = self->_transferStackViewController;
    self->_transferStackViewController = v5;

    [(MFTransferStackViewController *)self->_transferStackViewController setDataSource:self];
  }

  v7 = [(MessageListViewController *)self conversationViewController];
  v8 = [v7 collectionView];
  [v8 layoutMargins];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(MFTransferStackViewController *)self->_transferStackViewController view];
  [v17 setLayoutMargins:{v10, v12, v14, v16}];

  v18 = self->_transferStackViewController;

  return v18;
}

- (BOOL)isTransferStackVisible
{
  v3 = [(MessageListViewController *)self scene];
  v4 = [v3 splitViewController];
  v5 = [v4 messageDetailNavController];
  v6 = [v5 presentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 topViewController];
    v8 = [(MessageListViewController *)self transferStackViewController];
    v9 = v7 == v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)changeTipShouldDisplayTo:(BOOL)a3
{
  swift_getObjectType();
  _objc_retain(self);
  _convertObjCBoolToBool(_:)();
  sub_1000207D0();
  _objc_release(self);
}

- (id)undoManager
{
  v2 = [(MessageListViewController *)self scene];
  v3 = [v2 undoManager];

  return v3;
}

- (void)didFinishLoadViewController
{
  if ([(MessageListViewController *)self isInitialCellConfigurationCompleted]&& ([(MessageListViewController *)self didNotifyExtendedLaunchTracker]& 1) == 0 && ![(MessageListViewController *)self isSearchViewController])
  {
    v3 = +[MessageListViewController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Launch] Did finish load view controller", buf, 2u);
    }

    [(MessageListViewController *)self setDidNotifyExtendedLaunchTracker:1];
    [(MessageListViewController *)self cancelQueueSuspensionTimeout];
    v4 = [(MessageListViewController *)self scene];
    v5 = [v4 extendedLaunchTracker];
    [v5 didFinishLoadViewController:self scene:v4];

    v6 = dispatch_time(0, 250000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016F1E0;
    block[3] = &unk_10064C7E8;
    block[4] = self;
    dispatch_after(v6, &_dispatch_main_q, block);
  }
}

- (void)resumeRefreshAnimationIfNecessary
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  v2 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v2 performBlock:&v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)selectMessageAtIndex:(int64_t)a3
{
  v8 = [(MessageListViewController *)self dataSource];
  v5 = [v8 sectionIndexForSection:MessageListSectionRecent];

  v9 = [NSIndexPath indexPathForRow:a3 inSection:v5];
  v6 = [(MessageListViewController *)self collectionView];
  [v6 selectItemAtIndexPath:v9 animated:0 scrollPosition:0];

  v7 = [(MessageListViewController *)self collectionView];
  [(MessageListViewController *)self collectionView:v7 didSelectItemAtIndexPath:v9];
}

- (id)referenceMessageListItemForFirstConversationWithSingleMessage:(BOOL)a3 markAsRead:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(MessageListViewController *)self dataSource];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 itemIdentifiers];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (!v8)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_17;
  }

  v9 = *v16;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v16 != v9)
    {
      objc_enumerationMutation(v7);
    }

    v11 = [v6 messageListItemForItemID:*(*(&v15 + 1) + 8 * v10)];
    v12 = [v11 result];

    if (!v5)
    {
      break;
    }

    if ([v12 count] == 1)
    {
      goto LABEL_13;
    }

LABEL_10:

    if (v8 == ++v10)
    {
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }
  }

  if ([v12 count] <= 1)
  {
    goto LABEL_10;
  }

LABEL_13:

  if (!v12)
  {
    goto LABEL_18;
  }

  v19 = v12;
  v13 = [NSArray arrayWithObjects:&v19 count:1];
  v7 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItems:v13 undoManager:0 origin:2 actor:2 reason:4];

  if (v4 && ([v7 flagState] & 1) == 0)
  {
    [v7 performInteraction];
  }

LABEL_17:

LABEL_18:

  return v12;
}

+ (id)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016C04C;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD360 != -1)
  {
    dispatch_once(&qword_1006DD360, block);
  }

  v2 = qword_1006DD358;

  return v2;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (MessageListViewController)initWithMainScene:(id)a3 mailboxes:(id)a4 accountsProvider:(id)a5 favoritesShortcutsProvider:(id)a6 contactStore:(id)a7 diagnosticsHelper:(id)a8
{
  v14 = a3;
  v40 = a4;
  obj = a5;
  v35 = a5;
  v32 = a6;
  v34 = a6;
  v39 = a7;
  v37 = v14;
  v38 = a8;
  v36 = [v14 daemonInterface];
  v33 = [v14 daemonInterface];
  v15 = +[UIApplication sharedApplication];
  v16 = [v15 focusController];
  v17 = +[UIApplication sharedApplication];
  v18 = [v17 mailboxCategoryCloudStorage];
  v19 = +[UIApplication sharedApplication];
  v20 = [v19 avatarGenerator];
  v21 = +[UIApplication sharedApplication];
  v22 = [v21 bucketBarConfigurationController];
  v41.receiver = self;
  v41.super_class = MessageListViewController;
  v23 = [(MessageListViewController *)&v41 initWithDaemonInterface:v33 focusController:v16 mailboxCategoryCloudStorage:v18 avatarGenerator:v20 bucketBarConfigurationController:v22 mailboxes:v40 contactStore:v39 diagnosticsHelper:v38];

  if (v23)
  {
    objc_storeWeak(&v23->_scene, v37);
    objc_storeStrong(&v23->_accountsProvider, obj);
    objc_storeStrong(&v23->_favoritesShortcutsProvider, v32);
    v24 = [[EFLocked alloc] initWithObject:&__kCFBooleanFalse];
    isRefreshing = v23->_isRefreshing;
    v23->_isRefreshing = v24;

    v26 = objc_alloc_init(NSMutableSet);
    ignoredFocusUpdatesForItemIDs = v23->_ignoredFocusUpdatesForItemIDs;
    v23->_ignoredFocusUpdatesForItemIDs = v26;

    v28 = objc_alloc_init(_TtC10MobileMail44MessageListBarButtonItemConfigurationManager);
    barButtonItemConfigurationManager = v23->_barButtonItemConfigurationManager;
    v23->_barButtonItemConfigurationManager = v28;

    [(MessageListViewController *)v23 _commonInitWithDaemonInterface:v36 mailboxes:v40];
  }

  return v23;
}

- (void)filterMailboxMessagesUsingFilterMailboxType:(int64_t)a3
{
  v5 = [(MessageListViewController *)self iCloudMailCleanupDashboardViewController];

  if (v5)
  {
    v8 = [(MessageListViewController *)self iCloudMailCleanupDashboardViewController];
    [v8 dismissViewControllerAnimated:1 completion:0];
  }

  v9 = [[MFMailboxFilter alloc] initForSmartMailboxType:a3];
  v6 = [NSArray arrayWithObject:?];
  v7 = [(MessageListViewController *)self filterViewModel];
  [v7 setSelectedFilters:v6];

  [(MessageListViewController *)self setFiltersEnabled:1];
}

- (void)setlastSeenDatesForSelectedBucket:(id)a3
{
  v5 = a3;
  v4 = [(MessageListViewController *)self _bucketsViewControllerSession];
  [v4 setlastSeenDates:v5 forBucket:{-[MessageListViewController selectedBucket](self, "selectedBucket")}];
}

- (EFPair)lastSeenDatesForSelectedBucket
{
  v3 = [(MessageListViewController *)self selectedBucket];

  return [(MessageListViewController *)self lastSeenDatesForBucket:v3];
}

- (id)lastSeenDatesForBucket:(int64_t)a3
{
  v4 = [(MessageListViewController *)self _bucketsViewControllerSession];
  v5 = [v4 lastSeenDatesForBucket:a3];

  return v5;
}

- (void)_commonInitWithDaemonInterface:(id)a3 mailboxes:(id)a4
{
  v41 = a3;
  v6 = a4;
  v7 = [[MessageListDragDropHelper alloc] initWithDataSource:self delegate:self];
  messageListDragDropHelper = self->_messageListDragDropHelper;
  self->_messageListDragDropHelper = v7;

  v9 = +[EFPromise promise];
  viewSetupPromise = self->_viewSetupPromise;
  self->_viewSetupPromise = v9;

  [(MessageListViewController *)self setDefinesPresentationContext:1];
  v11 = [(MessageListViewController *)self state];
  [(MessageListViewController *)self updateState:v11 withMailboxes:v6];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_updateThreadingPreference:" name:MailApplicationsDisableThreadingKeyChanged object:0];
  [v12 addObserver:self selector:"_updateListForChange:" name:MailApplicationDidChangePreviewLinesNotification object:0];
  [v12 addObserver:self selector:"_updateListForChange:" name:MailApplicationDidChangeShowToCCNotification object:0];
  [v12 addObserver:self selector:"_didReceivePreferredFontChangedNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];
  [v12 addObserver:self selector:"_connectedScenesDidChange:" name:UISceneWillConnectNotification object:0];
  [v12 addObserver:self selector:"_connectedScenesDidChange:" name:UISceneDidDisconnectNotification object:0];
  v13 = [(MessageListViewController *)self isSearchViewController];
  v14 = [v41 outgoingMessageRepository];
  if (!v13 || !MUISolariumFeatureEnabled() || (+[EFDevice currentDevice](EFDevice, "currentDevice"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isRealityDevice], v15, v16))
  {
    v17 = [MailStatusObserver alloc];
    v18 = [(MessageListViewController *)self mailboxRepository];
    v19 = [(MailStatusObserver *)v17 initWithMailboxRepository:v18 delegate:self];
    mailStatusObserver = self->_mailStatusObserver;
    self->_mailStatusObserver = v19;

    v21 = [MailStatusViewController alloc];
    v22 = [(MessageListViewController *)self mailboxRepository];
    v23 = [(MessageListViewController *)self scene];
    v24 = [(MailStatusViewController *)v21 initWithMailboxRepository:v22 outgoingMessageRepository:v14 scene:v23];
    mailStatusViewController = self->_mailStatusViewController;
    self->_mailStatusViewController = v24;
  }

  [(MessageListViewController *)self _updateResolvedMailboxObjectIDs];
  [(MessageListViewController *)self _updateStatusObservers];
  v26 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.MessageListViewController.parsecFeedback" qualityOfService:17];
  parsecEventQueue = self->_parsecEventQueue;
  self->_parsecEventQueue = v26;

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    EFRegisterContentProtectionObserver();
  }

  v28 = [EMCollectionItemIDStateCapturer alloc];
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v31 = [v28 initWithTitle:v30 delegate:self];
  stateCapturer = self->_stateCapturer;
  self->_stateCapturer = v31;

  if (v13)
  {
    v33 = +[MessageListViewController log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138412546;
      v50 = v35;
      v51 = 2048;
      v52 = self;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "<%@: %p> Skip web view preallocation", buf, 0x16u);
    }
  }

  else if (qword_1006DD368 != -1)
  {
    sub_10048A234();
  }

  v36 = [(MessageListViewController *)self state];
  [v36 setIsSearch:v13];

  objc_initWeak(buf, self);
  if (EMBlackPearlIsFeatureEnabled())
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10016CE14;
    v47[3] = &unk_100650F40;
    objc_copyWeak(&v48, buf);
    v37 = [EMInternalPreferences observeChangesForPreference:37 autoCancelToken:1 usingBlock:v47];
    [(MessageListViewController *)self setShouldShowCategorizationStatusToken:v37];

    v38 = +[NSUserDefaults em_userDefaults];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10016CE94;
    v45[3] = &unk_10064E0C0;
    objc_copyWeak(&v46, buf);
    v39 = [v38 ef_observeKeyPath:EMUserDefaultHideMessageListAvatar options:5 autoCancelToken:1 usingBlock:v45];
    [(MessageListViewController *)self setShouldHideMessageListAvatarToken:v39];

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10016D004;
    v43[3] = &unk_100650F40;
    objc_copyWeak(&v44, buf);
    v40 = [EMInternalPreferences observeChangesForPreference:41 autoCancelToken:1 usingBlock:v43];
    [(MessageListViewController *)self setScrollDigestToken:v40];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);
  }

  objc_destroyWeak(buf);
}

- (void)dealloc
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    EFUnregisterContentProtectionObserver();
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MessageListViewController;
  [(MessageListViewController *)&v4 dealloc];
}

- (void)updateState:(id)a3 withMailboxes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MessageListViewController;
  [(MessageListViewController *)&v15 updateState:v7 withMailboxes:v8];
  v9 = [v7 isOutgoingMailbox];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v4 = +[NSUserDefaults em_userDefaults];
    v10 = [v4 BOOLForKey:DisableThreadingKey] ^ 1;
  }

  [(MessageListViewController *)self setThreaded:v10];
  if ((v9 & 1) == 0)
  {
  }

  v11 = [(MessageListViewController *)self scene];
  v12 = [v11 daemonInterface];
  v13 = [v12 interactionLogger];
  v14 = [v13 messageListTypeForMailboxes:v8];
  [(MessageListViewController *)self setMessageListType:v14];
}

- (id)_noContentTitleForMailboxTypeString
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"NO_MAIL" value:&stru_100662A88 table:@"Main"];

  if ([(MessageListViewController *)self isSearchViewController])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"NO_SEARCH_RESULTS" value:&stru_100662A88 table:@"Main"];
LABEL_3:
    v7 = v6;
LABEL_19:

    v4 = v7;
LABEL_20:
  }

  else
  {
    v8 = [(MessageListViewController *)self state];
    v9 = [v8 containsSmartMailbox];

    if (v9)
    {
      v10 = [(MessageListViewController *)self mailboxes];
      v5 = [v10 ef_firstObjectPassingTest:&stru_100652338];

      switch([v5 smartMailboxType])
      {
        case 0uLL:
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"NO_VIP_MAIL" value:&stru_100662A88 table:@"Main"];
          goto LABEL_18;
        case 1uLL:
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"NO_FLAGGED_MAIL" value:&stru_100662A88 table:@"Main"];
          goto LABEL_18;
        case 2uLL:
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"NO_UNREAD_MAIL" value:&stru_100662A88 table:@"Main"];
          goto LABEL_18;
        case 3uLL:
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"NO_MESSAGES_TO_ME" value:&stru_100662A88 table:@"Main"];
          goto LABEL_18;
        case 4uLL:
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"NO_MESSAGES_WITH_ATTACHMENTS" value:&stru_100662A88 table:@"Main"];
          goto LABEL_18;
        case 5uLL:
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"NO_IMPORTANT_MAIL" value:&stru_100662A88 table:@"Main"];
          goto LABEL_18;
        case 6uLL:
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"NO_MESSAGES_TODAY" value:&stru_100662A88 table:@"Main"];
          goto LABEL_18;
        case 7uLL:
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"NO_MUTED_MAIL" value:&stru_100662A88 table:@"Main"];
          goto LABEL_18;
        case 9uLL:
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"NO_MESSAGES_READ_LATER" value:&stru_100662A88 table:@"Main"];
          goto LABEL_18;
        case 0xAuLL:
          v11 = +[NSBundle mainBundle];
          v12 = [v11 localizedStringForKey:@"NO_MESSAGES_FOLLOW_UP" value:&stru_100662A88 table:@"Main"];
LABEL_18:
          v7 = v12;

          v4 = v11;
          goto LABEL_19;
        case 0xBuLL:
        case 0xCuLL:
          v6 = sub_10016D69C();
          goto LABEL_3;
        case 0xEuLL:
          v6 = sub_10016D6D8();
          goto LABEL_3;
        default:
          goto LABEL_20;
      }
    }
  }

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = MessageListViewController;
  [(MessageListViewController *)&v7 viewDidLayoutSubviews];
  v3 = [(MessageListViewController *)self view];
  [v3 frame];
  Width = CGRectGetWidth(v8);

  [(MessageListViewController *)self previousPaletteWidth];
  v6 = Width - v5;
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 >= 2.22044605e-16)
  {
    [(MessageListViewController *)self setPreviousPaletteWidth:Width];
    [(MessageListViewController *)self _updatePaletteWithForce:1];
  }
}

- (int64_t)preferredMessageListLayoutForSection:(int64_t)a3
{
  if ([(MessageListViewController *)self isSearchViewController])
  {
    return 1;
  }

  v6 = [(MessageListViewController *)self dataSource];
  if ([v6 isSection:MessageListSectionBucketBar atIndex:a3])
  {

    return 2;
  }

  v7 = [(MessageListViewController *)self dataSource];
  v8 = [v7 isSection:MessageListSectionOnboardingTip atIndex:a3];

  if (v8)
  {
    return 2;
  }

  [(MessageListViewController *)self selectedBucket];
  if (MUIBucketIsBusinessBucket())
  {
    return 3;
  }

  if (![(MessageListViewController *)self _shouldShowHighlights])
  {
    return 0;
  }

  v9 = [(MessageListViewController *)self dataSource];
  v10 = [v9 isSection:MessageListSectionPriority atIndex:a3];

  if (!v10)
  {
    return 0;
  }

  v11 = +[MessageListViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = 138412546;
    v15 = v13;
    v16 = 2048;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@: %p> Should display priority section supplementary view", &v14, 0x16u);
  }

  return 4;
}

- (id)_layoutSectionAtSection:(int64_t)a3 layoutEnvironment:(id)a4 layout:(int64_t)a5
{
  v8 = a4;
  v9 = a3 >= 1 && [(MessageListViewController *)self preferredMessageListLayoutForSection:a3 - 1]== 4;
  objc_initWeak(&location, self);
  [(MessageListViewController *)self systemMinimumLayoutMargins];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10016DB50;
  v20[3] = &unk_100652360;
  objc_copyWeak(v21, &location);
  v21[1] = a3;
  v18 = [MessageListLayoutFactory layoutSectionAtSection:a3 layoutEnvironment:v8 layoutMargins:a5 layout:v9 previousSectionIsPriority:v20 configuration:v11, v13, v15, v17];
  objc_destroyWeak(v21);
  objc_destroyWeak(&location);

  return v18;
}

- (void)_configureLayoutListConfiguration:(id)a3 atSection:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10016E1EC;
  v29[3] = &unk_100652388;
  objc_copyWeak(&v30, &location);
  [v6 setLeadingSwipeActionsConfigurationProvider:v29];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10016E268;
  v27[3] = &unk_100652388;
  objc_copyWeak(&v28, &location);
  [v6 setTrailingSwipeActionsConfigurationProvider:v27];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10016E2E4;
  v25[3] = &unk_10064C838;
  objc_copyWeak(&v26, &location);
  [v6 _setWillBeginSwipingHandler:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10016E344;
  v23[3] = &unk_10064C838;
  objc_copyWeak(&v24, &location);
  [v6 _setDidEndSwipingHandler:v23];
  if (EMBlackPearlIsFeatureEnabled())
  {
    v7 = +[UIColor clearColor];
    [v6 setBackgroundColor:v7];
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10016E3A4;
  v22[3] = &unk_1006523B0;
  v22[4] = self;
  v22[5] = a4;
  [v6 setItemSeparatorHandler:v22];
  v8 = [(MessageListViewController *)self dataSource];
  v9 = [v8 viewModelForSupplementaryViewKind:UICollectionElementKindSectionHeader sectionAtIndex:a4];

  if ([v9 shouldDisplaySupplementaryView])
  {
    v10 = [(MessageListViewController *)self dataSource];
    if (([v10 isSection:MessageListSectionGroupedSenderUnseen atIndex:a4] & 1) == 0)
    {
      v11 = [(MessageListViewController *)self dataSource];
      if (([v11 isSection:MessageListSectionGroupedSender atIndex:a4] & 1) == 0)
      {
        v12 = [(MessageListViewController *)self dataSource];
        if (![v12 isSection:MessageListSectionRecentUnseen atIndex:a4])
        {
          v20 = [(MessageListViewController *)self dataSource];
          v21 = [v20 isSection:MessageListSectionRecent atIndex:a4];

          if ((v21 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }
      }
    }

LABEL_10:
    [v6 setHeaderTopPadding:6.0];
  }

LABEL_11:
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v13 = [(MessageListViewController *)self dataSource];
    if ([v13 isSection:MessageListSectionPriority atIndex:a4])
    {
      v14 = [(MessageListViewController *)self selectedBucket]== 1;

      if (v14)
      {
        v15 = [MUIMessageListSupplementaryViewModel supplementaryViewModelWithDisplay:[(MessageListViewController *)self _shouldShowHighlights] kind:UICollectionElementKindSectionHeader sectionIndex:a4 reason:4];

        v9 = v15;
        if ([v15 shouldDisplaySupplementaryView])
        {
          [v6 setHeaderTopPadding:4.0];
        }
      }
    }

    else
    {
    }
  }

  if ([v9 shouldDisplaySupplementaryView])
  {
    v16 = +[MessageListViewController log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [v9 ef_publicDescription];
      *buf = 138543874;
      v33 = v18;
      v34 = 2048;
      v35 = self;
      v36 = 2114;
      v37 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> %{public}@", buf, 0x20u);
    }
  }

  [v6 setHeaderMode:{objc_msgSend(v9, "shouldDisplaySupplementaryView")}];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MessageListViewController;
  [(MessageListViewController *)&v17 traitCollectionDidChange:v4];
  v5 = [(MessageListViewController *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {
    v6 = [(MessageListViewController *)self layoutValuesHelper];
    v7 = [(MessageListViewController *)self view];
    [v6 updateTintColorFromView:v7];
  }

  if ([v5 mf_traitDifferenceAffectsTextLayout:v4])
  {
    v8 = [v5 mf_useSplitViewStyling];
    v9 = [(MessageListViewController *)self state];
    [v9 setUseSplitViewStyling:v8];

    v10 = [(MessageListViewController *)self layoutValuesHelper];
    [v10 setTraitCollection:v5];

    [(MessageListViewController *)self _updateToolbarButtons];
    [(MessageListViewController *)self _updateListForChange:0];
    [(MessageListViewController *)self _updateLayoutMargins];
    [(MessageListViewController *)self _updateStackViewController];
    v11 = [(MessageListViewController *)self collectionView];
    v12 = [v11 collectionViewLayout];
    [v12 invalidateLayout];
  }

  v13 = [(MessageListViewController *)self presentedViewController];
  v14 = [(MessageListViewController *)self _mailActionsViewControllerFromPresentedViewController:v13];

  v15 = [(MessageListViewController *)self presentedViewController];

  if (v15 && v14)
  {
    v16 = [(MessageListViewController *)self _displayMetrics];
    [v14 updateHeaderDisplayMetrics:v16];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v22.receiver = self;
  v22.super_class = MessageListViewController;
  [(MessageListViewController *)&v22 viewWillAppear:?];
  v5 = [(MessageListViewController *)self traitCollection];
  v6 = [(MessageListViewController *)self state];
  [v6 setUseSplitViewStyling:{objc_msgSend(v5, "mf_useSplitViewStyling")}];
  v7 = [(MessageListViewController *)self scene];
  v8 = [v7 dockContainer];
  [v8 addPresentationControllerDelegateObserver:self];

  v9 = [(MessageListViewController *)self layoutValuesHelper];
  [v9 setTraitCollection:v5];
  [(MessageListViewController *)self systemMinimumLayoutMargins];
  [v9 setSystemLayoutMargins:?];
  v10 = [(MessageListViewController *)self view];
  [v9 updateTintColorFromView:v10];

  v11 = [(MessageListViewController *)self scene];
  if (![(MessageListViewController *)self isSearchViewController]&& ([(MessageListViewController *)self didNotifyExtendedLaunchTracker]& 1) == 0)
  {
    v12 = [v11 extendedLaunchTracker];
    [v12 observeViewController:self scene:v11];
  }

  [(MessageListViewController *)self _invalidateCachedUseCompactRows];
  [(MessageListViewController *)self updateBarButtons];
  *(self + 8) |= 1u;
  if ([v6 containsOutbox])
  {
    v13 = [v11 daemonInterface];
    v14 = [v13 outgoingMessageRepository];
    [v14 suspendDeliveryQueue];
  }

  if ([(MessageListViewController *)self isReappearing])
  {
    if ([v11 isInExpandedEnvironment])
    {
      v15 = [(MessageListViewController *)self lastSelectedItemID];

      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = [(MessageListViewController *)self lastSelectedItemID];
      [(MessageListViewController *)self selectRowOfItemID:v16 scrollToVisible:0 animated:v3];
    }

    else
    {
      v17 = [(MessageListViewController *)self collectionView];
      [(MessageListViewController *)self deselectAllItemsInCollectionView:v17 animated:v3];

      v16 = [v11 splitViewController];
      v18 = [(MessageListViewController *)self parentViewController];
      [v16 setFocusedViewController:v18];
    }
  }

  else
  {
    [(MessageListViewController *)self _doInitialMessageSelection];
  }

LABEL_13:
  v19 = [(MessageListViewController *)self highlightsSupplementaryView];
  if (v19)
  {
    v20 = [(MessageListViewController *)self transitionCoordinator];
    [v19 parentViewController:self viewWillAppearWithTransitionCoordinator:v20];
  }

  [(MessageListViewController *)self _registerViewInteractions];
  v21 = [(MessageListViewController *)self conversationViewController];
  [v21 setNeedsUpdateContentUnavailableConfiguration];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = MessageListViewController;
  [(MessageListViewController *)&v11 viewWillDisappear:a3];
  *(self + 8) &= ~1u;
  v4 = [(MessageListViewController *)self state];
  v5 = [v4 containsOutbox];

  if (v5)
  {
    v6 = [(MessageListViewController *)self scene];
    v7 = [v6 daemonInterface];
    v8 = [v7 outgoingMessageRepository];
    [v8 resumeDeliveryQueue];
  }

  v9 = [(MessageListViewController *)self userActivity];
  [v9 resignCurrent];

  sub_10016ED28(self);
  [(MessageListViewController *)self _deregisterViewInteractions];
  if (![(MessageListViewController *)self isSearchViewController]&& ![(MessageListViewController *)self _isInSearch])
  {
    [(MessageListViewController *)self dismissTip];
    [(MessageListViewController *)self changeTipShouldDisplayTo:0];
  }

  v10 = [(MessageListViewController *)self conversationViewController];
  [v10 setNeedsUpdateContentUnavailableConfiguration];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = MessageListViewController;
  [(MessageListViewController *)&v14 viewDidDisappear:a3];
  v4 = +[MessageListViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v16 = v6;
    v17 = 2048;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> viewDidDisappear", buf, 0x16u);
  }

  [(MessageListViewController *)self mf_updateAlertSuppressionContextsForReason:@"MessageListViewController did disappear"];
  v7 = [(MessageListViewController *)self scene];
  v8 = [v7 dockContainer];
  [v8 removePresentationControllerDelegateObserver:self];

  v9 = [v7 daemonInterface];
  v10 = [v9 interactionLogger];
  [v10 messageListDisplayEndedForAllListItems];

  [(MessageListViewController *)self _clearVisibleSwipeActions];
  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterSupported())
    {
      v11 = [(MessageListViewController *)self highlightedMessagesController];
      v12 = [v11 messageList];
      v13 = v12 == 0;

      if (!v13)
      {
        [(MessageListViewController *)self refreshHighlightedMessagesController];
      }
    }
  }

  [(MessageListViewController *)self setInitialCellConfigurationCompleted:1];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MessageListViewController;
  [(MessageListViewController *)&v8 viewDidAppear:a3];
  [(MessageListViewController *)self mf_updateAlertSuppressionContextsForReason:@"mailbox content did appear"];
  if (![(MessageListViewController *)self isSearchViewController]&& ![(MessageListViewController *)self _isInSearch])
  {
    v4 = [(MessageListViewController *)self conversationViewController];
    [v4 setDelegate:self];
  }

  v5 = [(MessageListViewController *)self presentedViewController];
  v6 = [(MessageListViewController *)self searchController];

  if (v5 == v6)
  {
    v7 = [(MessageListViewController *)self messageListSearchViewController];
    [v7 updateBarButtons];
  }

  else
  {
    [(MessageListViewController *)self changeTipShouldDisplayTo:1];
  }
}

- (BOOL)showingPopoverViewController
{
  v3 = [(MessageListViewController *)self presentedViewController];
  v4 = [v3 popoverPresentationController];

  v5 = [v4 barButtonItem];
  if (v5 && ([v4 barButtonItem], v6 = objc_claimAutoreleasedReturnValue(), -[MessageListViewController filterPickerButtonItem](self, "filterPickerButtonItem"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v6 == v7) || (objc_msgSend(v4, "barButtonItem"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v4, "barButtonItem"), v9 = objc_claimAutoreleasedReturnValue(), -[MessageListViewController deleteButtonItem](self, "deleteButtonItem"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v9 == v10) || (objc_msgSend(v4, "sourceView"), v11 = objc_claimAutoreleasedReturnValue(), -[MessageListViewController view](self, "view"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isDescendantOfView:", v12), v12, v11, (v13 & 1) != 0))
  {
    v14 = 1;
  }

  else
  {
    v15 = [v4 delegate];
    v14 = v15 == self;
  }

  return v14;
}

- (void)updateForSplitViewControllerHidingMessageList
{
  if ([(MessageListViewController *)self isEditing])
  {
    [(MessageListViewController *)self _setEditing:0 animated:1 preserveSelection:1];

    [(MessageListViewController *)self _updateTitle];
  }
}

- (void)_sceneWillEnterForeground:(id)a3
{
  v7 = [(MessageListViewController *)self state];
  if ([v7 containsOutbox])
  {
    v4 = *(self + 8);

    if ((v4 & 1) == 0)
    {
      return;
    }

    v7 = [(MessageListViewController *)self scene];
    v5 = [v7 daemonInterface];
    v6 = [v5 outgoingMessageRepository];
    [v6 suspendDeliveryQueue];
  }
}

- (void)_sceneDidEnterBackground
{
  if (([(MessageListViewController *)self isEditing]& 1) == 0)
  {
    [(MessageListViewController *)self setPreviousMessageListSelectionModel:0];
  }

  [(MessageListViewController *)self refreshHighlightedMessagesController];
  v6 = [(MessageListViewController *)self cellsController];
  [v6 reportMessageListCellMetrics];

  v7 = [(MessageListViewController *)self ignoredFocusUpdatesForItemIDs];
  [v7 removeAllObjects];

  v8 = [(MessageListViewController *)self state];
  if ([v8 containsOutbox])
  {
    v3 = *(self + 8);

    if ((v3 & 1) == 0)
    {
      return;
    }

    v8 = [(MessageListViewController *)self scene];
    v4 = [v8 daemonInterface];
    v5 = [v4 outgoingMessageRepository];
    [v5 resumeDeliveryQueue];
  }
}

- (void)setMailboxes:(id)a3
{
  v4 = a3;
  [(MessageListViewController *)self setMailboxes:v4 forceReload:0 bucket:[MessageListViewController _bucketForMailboxes:"_bucketForMailboxes:senderSpecificMessageListItem:" senderSpecificMessageListItem:?]];
}

- (void)setMailboxes:(id)a3 forceReload:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(MessageListViewController *)self setMailboxes:v6 forceReload:v4 bucket:[MessageListViewController _bucketForMailboxes:"_bucketForMailboxes:senderSpecificMessageListItem:" senderSpecificMessageListItem:?]];
}

- (void)setMailboxes:(id)a3 senderSpecificMessageListItem:(id)a4 bucket:(int64_t)a5 forceReload:(BOOL)a6
{
  v34 = a6;
  v36 = a3;
  v37 = a4;
  v8 = [(MessageListViewController *)self mailboxes];
  v9 = [v8 isEqualToArray:v36];

  v10 = v9 ^ 1;
  if ([(MessageListViewController *)self isBlackPearlEnabled])
  {
    v11 = [(MessageListViewController *)self senderSpecificMessageListItem];

    v12 = [(MessageListViewController *)self selectedBucket];
    v13 = v11 == v37 && v12 == a5;
    v14 = !v13;
    if (v13)
    {
      v10 = v10;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [(MessageListViewController *)self conversationViewController];
  [v15 setDelegate:self];

  v16 = +[MessageListViewController log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v36 firstObject];
    v20 = [v19 ef_publicDescription];
    v21 = [(MessageListViewController *)self mailboxes];
    v22 = [v21 firstObject];
    v23 = [v22 ef_publicDescription];
    *buf = 138413570;
    v39 = v18;
    v40 = 2048;
    v41 = self;
    v42 = 1024;
    *v43 = v10;
    *&v43[4] = 2114;
    *&v43[6] = v20;
    *&v43[14] = 2114;
    *&v43[16] = v23;
    *&v43[24] = 1024;
    *&v43[26] = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<%@: %p> should update: %{BOOL}d mailbox set: %{public}@ current mailbox: %{public}@ categorization update: %{BOOL}d", buf, 0x36u);
  }

  if (v10)
  {
    [(MessageListViewController *)self setSenderSpecificMessageListItem:v37];
    [(MessageListViewController *)self setSelectedBucket:a5];
    [(MessageListViewController *)self setUnseenPredicate:0];
    v24 = [(MessageListViewController *)self bucketsViewController];
    [v24 clearSessionState];

    [(MessageListViewController *)self _selectBucket:a5];
    [(MessageListViewController *)self _setMailboxes:v36];
    [(MessageListViewController *)self setPreviousMessageListSelectionModel:0];
    [(MessageListViewController *)self setLastSelectedMessageListItems:0];
    [(MessageListViewController *)self _updateTitle];
  }

  else if (!v34)
  {
    goto LABEL_20;
  }

  v25 = +[MessageListViewController log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v36 firstObject];
    v29 = [v36 firstObject];
    v30 = [v29 objectID];
    v31 = [v30 url];
    v32 = [EFPrivacy ec_redactedStringForMailboxURL:v31];
    v33 = [v37 ef_publicDescription];
    *buf = 138413314;
    v39 = v27;
    v40 = 2048;
    v41 = self;
    v42 = 2112;
    *v43 = v28;
    *&v43[8] = 2114;
    *&v43[10] = v32;
    *&v43[18] = 2112;
    *&v43[20] = v33;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "<%@: %p> Setting message list view to new mailboxes (first mailbox = %@), mailbox:%{public}@ sender: %@", buf, 0x34u);
  }

  [(MessageListViewController *)self reloadFromMailboxes];
LABEL_20:
  [(MessageListViewController *)self _updatePaletteWithForce:v10];
  [(MessageListViewController *)self mf_updateAlertSuppressionContextsForReason:@"Message list mailboxes did change"];
}

- (void)_setMailboxes:(id)a3
{
  v6 = a3;
  [(MessageListViewController *)self setPrimitiveMailboxes:?];
  [(MessageListViewController *)self _updateResolvedMailboxObjectIDs];
  [(MessageListViewController *)self _reloadFlattenedMailboxes];
  [(MessageListViewController *)self _updateStatusObservers];
  v4 = [(MessageListViewController *)self mailboxes];
  [(MessageListViewController *)self _initializeMailboxBrowseUserActivityWithMailboxes:v4];

  v5 = [(MessageListViewController *)self cellsController];
  [v5 reportMessageListCellMetrics];
}

- (int64_t)_bucketForMailboxes:(id)a3 senderSpecificMessageListItem:(id)a4
{
  v5 = a3;
  v6 = [(MessageListViewController *)self bucketBarConfigurationController];
  if (v6 && (-[MessageListViewController bucketBarConfigurationController](self, "bucketBarConfigurationController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isBucketBarHiddenForMailboxes:v5], v7, v6, (v8 & 1) == 0))
  {
    v10 = [(MessageListViewController *)self bucketBarConfigurationController];
    v9 = [v10 selectedBucketForMailboxes:v5];

    v11 = [(MessageListViewController *)self messageToDisplayOnReload];
    v12 = [v11 category];

    if (v12 && v9 != 5)
    {
      v13 = [v11 category];
      [v13 type];
      v9 = MUIBucketFromEMCategoryType();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_startObservationForStatusBarBadgeCountWithObservedMailboxes:(id)a3 smartMailboxPredicate:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(MessageListViewController *)self mailStatusViewController];
  [v7 stopObserving];

  v8 = [(MessageListViewController *)self isSearchViewController];
  v9 = @"Message list status";
  if (v8)
  {
    v9 = @"Search status";
  }

  v10 = v9;
  v11 = [(MessageListViewController *)self updatedPredicateForFocusedAccounts:v6];
  v12 = sub_10016FE78(self, v11);

  v13 = [(MessageListViewController *)self mailStatusViewController];
  [v13 startObservingForVisibleMailboxes:v14 delegate:self filterPredicate:v12 label:v10];
}

- (double)editingSeparatorInset
{
  v2 = [(MessageListViewController *)self state];
  if ([v2 useSplitViewStyling])
  {
    v3 = 36.0;
  }

  else
  {
    v3 = 41.0;
  }

  return v3;
}

- (BOOL)isSearchViewControllerEditing
{
  v3 = [(MessageListViewController *)self presentedViewController];
  v4 = [(MessageListViewController *)self searchController];

  if (v3 != v4)
  {
    return 0;
  }

  v6 = [(MessageListViewController *)self messageListSearchViewController];
  v5 = [v6 isEditing];

  return v5;
}

- (BOOL)isPresentingSearchViewController
{
  v2 = self;
  v3 = [(MessageListViewController *)self presentedViewController];
  v4 = [(MessageListViewController *)v2 searchController];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (BOOL)isInExpandedEnvironment
{
  v2 = [(MessageListViewController *)self scene];
  v3 = [v2 isInExpandedEnvironment];

  return v3;
}

- (BOOL)isSearchControllerActive
{
  v2 = [(MessageListViewController *)self searchController];
  v3 = [v2 isActive];

  return v3;
}

- (void)setSplitViewControllerNeedsFocusUpdate
{
  v3 = [(MessageListViewController *)self scene];
  v2 = [v3 splitViewController];
  [v2 setNeedsFocusUpdate];
}

- (id)captureRestorationState
{
  v3 = [(MessageListViewController *)self messageListPositionHelper];
  v4 = [v3 actuallyVisibleItemIDs];

  v5 = [(MessageListViewController *)self dataSource];
  v6 = [v5 messageListItemsForItemIDs:v4];
  v7 = [EFFuture join:v6];

  v27 = 0;
  v8 = [v7 resultWithTimeout:&v27 error:0.1];
  v9 = v27;
  if (v9)
  {
    v10 = +[MessageListViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v9 ef_publicDescription];
      *buf = 138412802;
      v29 = v25;
      v30 = 2048;
      v31 = self;
      v32 = 2112;
      v33 = v26;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "<%@: %p> Fetching visible items for the restoration state failed with error: %@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    v12 = [(MessageListViewController *)self collectionView];
    [v12 contentOffset];
    v14 = v13;
    v15 = [(MessageListViewController *)self layoutValuesHelper];
    v16 = [v15 defaultLayoutValues];
    [v16 compactRowHeight];
    v18 = v17;

    v19 = [MessageListRestorationState alloc];
    v10 = [(MessageListViewController *)self dataSource];
    v20 = [v10 messageListForSection:MessageListSectionRecent];
    v21 = [(MessageListViewController *)self mailboxes];
    v22 = [(MessageListViewController *)self lastSelectedItemID];
    v11 = [(MessageListRestorationState *)v19 initWithMessageList:v20 mailboxes:v21 visibleItems:v8 scrolledToTop:v14 < v18 lastSelectedItemID:v22];
  }

  return v11;
}

- (void)restoreState:(id)a3
{
  v4 = a3;
  v5 = +[MessageListViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v24 = v7;
    v25 = 2048;
    v26 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: Received restoration state future. Will restore state when it's loaded.", buf, 0x16u);
  }

  v8 = [(MessageListViewController *)self stateRestorationFuture];
  [v8 cancel];

  [(MessageListViewController *)self setShouldSelectInitialMessage:0];
  v9 = [(MessageListViewController *)self viewSetupPromise];
  v10 = [v9 future];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100170C28;
  v21[3] = &unk_1006523D8;
  v21[4] = self;
  v11 = v4;
  v22 = v11;
  v12 = [v10 then:v21];

  objc_initWeak(buf, self);
  v13 = +[EFScheduler mainThreadScheduler];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100170D30;
  v19[3] = &unk_100652450;
  objc_copyWeak(&v20, buf);
  v14 = [v12 onScheduler:v13 then:v19];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001717F0;
  v17[3] = &unk_10064C838;
  objc_copyWeak(&v18, buf);
  [v14 always:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10017184C;
  v16[3] = &unk_100652478;
  v16[4] = self;
  [v14 addSuccessBlock:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100171940;
  v15[3] = &unk_10064D028;
  v15[4] = self;
  [v14 addFailureBlock:v15];
  [(MessageListViewController *)self setStateRestorationFuture:v14];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (void)_cancelOrCleanupStateRestoration
{
  v3 = [(MessageListViewController *)self stateRestorationFuture];

  if (v3)
  {
    v4 = +[MessageListViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v9 = 138412546;
      v10 = v6;
      v11 = 2048;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: Cleaning up...", &v9, 0x16u);
    }

    v7 = [(MessageListViewController *)self stateRestorationFuture];
    [v7 cancel];

    [(MessageListViewController *)self setStateRestorationFuture:0];
    v8 = [(MessageListViewController *)self scrollItemIndexPathPromise];
    [v8 cancel];

    [(MessageListViewController *)self setScrollItemIndexPathPromise:0];
    [(MessageListViewController *)self setInitialScrollItemID:0];
    [(MessageListViewController *)self setViewSetupPromise:0];
  }
}

- (void)_updateBucketBarIsHidden:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MessageListViewController;
  [(MessageListViewController *)&v7 _updateBucketBarIsHidden:a3];
  v4 = [(MessageListViewController *)self _observedMailboxesAndSmartMailboxPredicate];
  v5 = [v4 first];
  v6 = [v4 second];
  [(MessageListViewController *)self _startObservationForStatusBarBadgeCountWithObservedMailboxes:v5 smartMailboxPredicate:v6];
}

- (void)_updateLastSeenDates:(id)a3 forMailboxes:(id)a4 bucket:(int64_t)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(MessageListViewController *)self _bucketsViewControllerSession];
  [v9 updateLastSeenDates:v10 forMailboxes:v8 bucket:a5];
}

- (void)updateSelectedBucket:(int64_t)a3 unseenPredicate:(id)a4
{
  v6 = a4;
  v7.receiver = self;
  v7.super_class = MessageListViewController;
  [(MessageListViewController *)&v7 updateSelectedBucket:a3 unseenPredicate:v6];
  [(MessageListViewController *)self _updateStatusPrefix];
  [(MessageListViewController *)self _updateStatusObservers];
  [(MessageListViewController *)self _updateNavigationBarButtonsWithForce:0 animated:1];
}

- (BOOL)_canDisplayMessage:(id)a3
{
  v4 = [a3 mailboxObjectIDs];
  [(MessageListViewController *)self resolvedMailboxObjectIDs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100172134;
  v9 = v8[3] = &unk_1006524C0;
  v5 = v9;
  v6 = [v4 ef_any:v8];

  return v6;
}

- (void)_doOnInitialLoadCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self initialLoadCompletedPromise];
  v6 = [v5 future];
  v7 = +[EFScheduler mainThreadScheduler];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100172264;
  v9[3] = &unk_10064DB68;
  v8 = v4;
  v10 = v8;
  [v6 onScheduler:v7 addSuccessBlock:v9];
}

- (EFFuture)initialLoadCompletedFuture
{
  v2 = [(MessageListViewController *)self initialLoadCompletedPromise];
  v3 = [v2 future];

  return v3;
}

- (void)performOnLocalAndRemoteSearchCompletion:(id)a3
{
  v5 = a3;
  [(MessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MessageListViewController performOnLocalAndRemoteSearchCompletion:]", "MessageListViewController.m", 1546, "0");
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  v8 = [(MessageListViewController *)self state];
  v23 = [(MessageListViewController *)self scene];
  v9 = [(MessageListViewController *)self _draftOrOutboxMessageAtIndexPath:v5];
  if (v9)
  {
    [(MessageListViewController *)self _restoreDraftOrOutboxItem:v9];
  }

  v10 = [v23 isInExpandedEnvironment];
  if (v10 & 1) != 0 || ([v8 containsOutbox] & 1) != 0 || ((v11 = objc_msgSend(v8, "containsDraftsMailbox"), v9) ? (v12 = 1) : (v12 = v11), (v12))
  {
    v13 = +[MessageListViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v7;
      v22 = v8;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v5 ef_publicDescription];
      v17 = [v8 containsOutbox];
      v18 = [v22 containsDraftsMailbox];
      v19 = [v9 ef_publicDescription];
      *buf = 138545154;
      v25 = v15;
      v26 = 2048;
      v27 = self;
      v28 = 2114;
      v29 = v16;
      v30 = 2114;
      v31 = v21;
      v32 = 1024;
      v33 = v10;
      v34 = 1024;
      v35 = v17;
      v36 = 1024;
      v37 = v18;
      v7 = v21;
      v38 = 2114;
      v39 = v19;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Skip showing conversation view - indexPath=%{public}@, messageID=%{public}@, isInExpandedEnvironment=%{BOOL}d, containsOutbox=%{BOOL}d, containsDraftsMailbox=%{BOOL}d, draftOrOutboxMessage=%{public}@", buf, 0x46u);

      v8 = v22;
    }
  }

  else
  {
    v20 = [v23 splitViewController];
    [v20 showConversationViewControllerAnimated:1 completion:0];
  }

  [(MessageListViewController *)self _hideMailboxPickerOrMessageListAfterSelectionIfNeeded];
  [(MessageListViewController *)self reportEngagementAction:0 onItemID:v7 atIndexPath:v5];
}

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = a4;
  if (([(MessageListViewController *)self isEditing]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1001726B8(self, v5);
  }

  return v6;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = _os_activity_create(&_mh_execute_header, "[MessageListViewController collectionView:didSelectItemAtIndexPath:]", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v6, &state);
  v7 = [(MessageListViewController *)self dataSource];
  v8 = [v7 itemIdentifierForIndexPath:v5];

  v9 = [(MessageListViewController *)self isEditing];
  v10 = [(MessageListViewController *)self messageListSelectionModel];

  v11 = +[MessageListViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138413570;
    v27 = v13;
    v28 = 2048;
    v29 = self;
    v30 = 2114;
    v31 = v8;
    v32 = 2112;
    v33 = v5;
    v34 = 1024;
    v35 = v9;
    v36 = 1024;
    v37 = v10 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@: %p> collectionView:didSelectItem: %{public}@, atIndexPath: %@, isEditing: %{BOOL}d, hasSelectionModel: %{BOOL}d", buf, 0x36u);
  }

  if (v10)
  {
    [(MessageListViewController *)self _updateSelectionModelDidSelectItemID:v8];
    [(MessageListViewController *)self reportEngagementAction:4 onItemID:v8 atIndexPath:v5];
  }

  else
  {
    v14 = MFMessageSelectionLifecycleSignpostLog();
    v15 = os_signpost_id_make_with_pointer(v14, v8);

    v16 = MFMessageSelectionLifecycleSignpostLog();
    v17 = v16;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 138543362;
      v27 = v8;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Message selection lifecycle", "User selected message with itemID: %{public}@", buf, 0xCu);
    }

    LOBYTE(v24) = 0;
    [(MessageListViewController *)self _handleDidSelectItemID:v8 referenceItem:0 scrollToVisible:0 userInitiated:1 canRestoreDraft:0 animated:1 showConversationView:v24];
  }

  v18 = [(MessageListViewController *)self scene];
  v19 = [v18 splitViewController];
  [v19 setFocusedViewController:0];

  [(MessageListViewController *)self _cancelOrCleanupStateRestoration];
  v20 = [(MessageListViewController *)self state];
  if ([v20 useSplitViewStyling])
  {
    v21 = [(MessageListViewController *)self _inMultiSelectionMode];

    if (v21)
    {
      sub_100171C90(self, v8, v5);
    }
  }

  else
  {
  }

  if (!_os_feature_enabled_impl() || (EMIsGreymatterSupported() & 1) == 0)
  {
    v22 = [(MessageListViewController *)self highlightsSupplementaryView];
    v23 = [(MessageListViewController *)self transitionCoordinator];
    [v22 parentViewController:self didSelectItemWithTransitionCoordinator:v23];
  }

  os_activity_scope_leave(&state);
}

- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4
{
  v5 = a3;
  if (([(MessageListViewController *)self isEditing]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v5 indexPathsForSelectedItems];
    v6 = [v7 count] > 1;
  }

  return v6;
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v10 = a4;
  v5 = [(MessageListViewController *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v10];

  v7 = [(MessageListViewController *)self _inMultiSelectionMode];
  if ([(MessageListViewController *)self _inMultiSelectionMode])
  {
    [(MessageListViewController *)self _updateSelectionModelDidDeselectItemID:v6];
  }

  v8 = [(MessageListViewController *)self state];
  v9 = [v8 useSplitViewStyling] & v7;

  if (v9 == 1)
  {
    sub_100171C90(self, v6, v10);
  }

  [(MessageListViewController *)self scene];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (objc_opt_respondsToSelector())
  {
    v9 = [v7 messageListItemFuture];
    [(MessageListViewController *)self _updateLastSeenDatesForMessageListItemFuture:v9 atIndexPath:v8];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (_os_feature_enabled_impl())
    {
      if (EMIsGreymatterSupported())
      {
        v10 = [(MessageListViewController *)self showHighlights];
        v11 = [v10 isEnabled];

        if (v11)
        {
          v12 = [v8 section];
          if (v12 == [(MessageListViewController *)self _prioritySectionIndex])
          {
            [(MessageListViewController *)self _shimmerViewIfNeededForPriorityCellWillDisplay:1];
          }
        }
      }
    }

    v13 = v7;
    v14 = [v13 cellHelper];
    v39 = [v14 cellView];
    v15 = [v14 messageListItem];
    if ([v13 isHidden] & 1) != 0 || (objc_msgSend(v13, "isHiddenOrHasHiddenAncestor"))
    {
      goto LABEL_14;
    }

    [v13 alpha];
    if (v16 < 0.0)
    {
      v16 = -v16;
    }

    if (v16 < 2.22044605e-16)
    {
LABEL_14:
      v17 = +[MessageListViewController log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v27 = [v8 section];
        v35 = [v8 item];
        v37 = [v13 _layoutAttributes];
        v33 = [v13 isHidden];
        v28 = [v13 isHiddenOrHasHiddenAncestor];
        [v13 alpha];
        *buf = 134219778;
        v42 = self;
        v43 = 2048;
        v44 = v27;
        v45 = 2048;
        v46 = v35;
        v47 = 1024;
        v48 = v15 != 0;
        v49 = 2114;
        v50 = v37;
        v51 = 1024;
        v52 = v33;
        v53 = 1024;
        v54 = v28;
        v55 = 2048;
        v56 = v29;
        _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%p: Cell is unexpectedly hidden:\n\tindexPath: (%ld, %ld)\n\thasItem: %{BOOL}d\n\tlayoutAttributes: %{public}@\n\tisHidden: %{BOOL}d\n\tisHiddenOrHasHiddenAncestor: %{BOOL}d\n\talpha: %f", buf, 0x46u);
      }
    }

    v40 = 0;
    v18 = [v39 verifyContentVisibility:&v40];
    v19 = v40;
    if ((v18 & 1) == 0)
    {
      v20 = +[MessageListViewController log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v38 = [v19 ef_publicDescription];
        v36 = [v8 ef_publicDescription];
        v30 = [v13 _layoutAttributes];
        *buf = 134219010;
        v42 = self;
        v43 = 2114;
        v44 = v38;
        v45 = 2114;
        v46 = v36;
        v47 = 1024;
        v48 = v15 != 0;
        v49 = 2114;
        v50 = v30;
        v34 = v30;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%p: Cell is unexpectedly hidden - %{public}@:\n\tindexPath: %{public}@\n\thasItem: %{BOOL}d\n\tlayoutAttributes: %{public}@", buf, 0x30u);
      }
    }

    if (v15)
    {
      v21 = [(MessageListViewController *)self scene];
      v22 = [v21 daemonInterface];
      v23 = [v22 interactionLogger];

      v24 = [(MessageListViewController *)self messageListType];
      v25 = [v8 row];
      v26 = sub_1000239BC([v14 style]);
      [v23 messageListDisplayStartedForListItem:v15 messageListType:v24 row:v25 cellStyle:v26];
    }

    else
    {
      v23 = +[MessageListViewController log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138412802;
        v42 = v32;
        v43 = 2048;
        v44 = self;
        v45 = 2112;
        v46 = v8;
        _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "<%@: %p> Looks like collection view tried to display a cell that is no longer valid. Ignoring interaction log for indexPath: %@", buf, 0x20u);
      }
    }
  }
}

- (void)_updateLastSeenDatesForMessageListItemFuture:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(MessageListViewController *)self isBucketBarHidden]& 1) == 0)
  {
    if (v6)
    {
      v8 = [(MessageListViewController *)self mailboxes];
      v9 = [(MessageListViewController *)self selectedBucket];
      objc_initWeak(location, self);
      v10 = +[EFScheduler mainThreadScheduler];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100173908;
      v13[3] = &unk_1006524E8;
      objc_copyWeak(v16, location);
      v16[1] = v9;
      v14 = v7;
      v11 = v8;
      v15 = v11;
      [v6 onScheduler:v10 addSuccessBlock:v13];

      objc_destroyWeak(v16);
      objc_destroyWeak(location);
    }

    else
    {
      v11 = +[MessageListViewController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v7 ef_publicDescription];
        sub_10048A248(v12, location, v11);
      }
    }
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 cellHelper];
    v10 = [v9 messageListItem];
    if (v10)
    {
      v11 = [(MessageListViewController *)self scene];
      v12 = [v11 daemonInterface];
      v13 = [v12 interactionLogger];

      v14 = sub_1000239BC([v9 style]);
      [v13 messageListDisplayEndedForListItem:v10 cellStyle:v14];
    }

    else
    {
      v15 = +[MessageListViewController log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = 138412802;
        v19 = v17;
        v20 = 2048;
        v21 = self;
        v22 = 2112;
        v23 = v8;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "<%@: %p> Looks like collection view tried to end displaying a cell that is no longer valid. Ignoring interaction log for indexPath: %@", &v18, 0x20u);
      }
    }
  }
}

- (BOOL)_inMultiSelectionMode
{
  v3 = [(MessageListViewController *)self messageListSelectionModel];
  if (v3)
  {
    v4 = [(MessageListViewController *)self messageListSelectionModel];
    if ([v4 count] <= 1)
    {
      v5 = [(MessageListViewController *)self isEditing];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_exitMultiSelectionForce:(BOOL)a3
{
  v3 = a3;
  v5 = [(MessageListViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];

  v7 = [v6 count];
  v8 = [(MessageListViewController *)self messageListSelectionModel];
  v9 = v8;
  v10 = v8 != 0;
  if (v8 && v7 != 1)
  {
    v10 = [v8 count] < 2;
  }

  if (([(MessageListViewController *)self isEditing]& 1) != 0 || !v3 && !v10)
  {
    v17 = +[MessageListViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v22 = v19;
      v23 = 2048;
      v24 = self;
      v25 = 1024;
      v26 = v10;
      v27 = 1024;
      v28 = v9 != 0;
      v29 = 1024;
      v30 = v3;
      v31 = 1024;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Don't modify selection mode (hasMultiSelection: %{BOOL}d, hasSelectionModel: %{BOOL}d, editing: %{BOOL}d, force: %{BOOL}d)", buf, 0x2Eu);
    }

    goto LABEL_14;
  }

  v11 = +[MessageListViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544130;
    v22 = v13;
    v23 = 2048;
    v24 = self;
    v25 = 1024;
    v26 = v3;
    v27 = 1024;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Exit multi-selection (force: %{BOOL}d, hasMultiSelection: %{BOOL}d)", buf, 0x22u);
  }

  v14 = [(MessageListViewController *)self layoutValuesHelper];
  [v14 setInMultiSelectionMode:0];

  [(MessageListViewController *)self setMessageListSelectionModel:0];
  [(MessageListViewController *)self _setRowDeletionEnabled:0 animated:1];
  [(MessageListViewController *)self _updateTitle];
  if (v7 == 1)
  {
    v15 = [(MessageListViewController *)self dataSource];
    v16 = [v6 firstObject];
    v17 = [v15 itemIdentifierForIndexPath:v16];

    if ([(MessageListViewController *)self isPresentingSearchViewController])
    {
      [(MessageListViewController *)self selectRowOfItemID:v17 scrollToVisible:0 animated:0];
    }

    else
    {
      LOBYTE(v20) = 0;
      [(MessageListViewController *)self _handleDidSelectItemID:v17 referenceItem:0 scrollToVisible:0 userInitiated:0 canRestoreDraft:0 animated:0 showConversationView:v20];
    }

LABEL_14:
  }
}

- (void)collectionView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543874;
    v30 = v10;
    v31 = 2048;
    v32 = self;
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> didBeginMultipleSelectionInteractionAtIndexPath: %{public}@", buf, 0x20u);
  }

  v11 = [(MessageListViewController *)self layoutValuesHelper];
  [v11 setInMultiSelectionMode:1];

  LODWORD(v11) = [(MessageListViewController *)self isEditing];
  if (v11 != [v6 isEditing])
  {
    [(MessageListViewController *)self changeTipShouldDisplayTo:0];
    -[MessageListViewController setEditing:animated:](self, "setEditing:animated:", [v6 isEditing], 1);
  }

  v12 = [(MessageListViewController *)self dataSource];
  v13 = [(MessageListViewController *)self collectionView];
  v14 = [v13 indexPathsForSelectedItems];

  v15 = [(MessageListViewController *)self messageListSelectionModel];
  LODWORD(v13) = v15 == 0;

  if (v13)
  {
    v16 = [[MessageListSelectionModel alloc] initWithDataSource:self delegate:self];
    [(MessageListViewController *)self setMessageListSelectionModel:v16];

    v17 = [(MessageListViewController *)self conversationViewController];
    [v17 setSelectionDataSource:self];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [v12 itemIdentifierForIndexPath:{*(*(&v24 + 1) + 8 * v21), v24}];
          [(MessageListViewController *)self _updateSelectionModelDidSelectItemID:v22];

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }

  v23 = [(MessageListViewController *)self messageListSelectionModel];
  [v23 setMultipleSelectionActive:1];
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(id)a3
{
  v5 = +[MessageListViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138543874;
    v10 = v7;
    v11 = 2048;
    v12 = self;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> %{public}@", &v9, 0x20u);
  }

  [(MessageListViewController *)self _finalizeMultipleSelection];
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 sectionAtIndex:{objc_msgSend(v5, "section")}];
  v8 = [v6 isMessagesSection:v7];

  return v8;
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v10 = a4;
  if ([(MessageListViewController *)self isEditing])
  {
    v6 = [v10 nextFocusedIndexPath];
    if (v6)
    {
      v7 = [(MessageListViewController *)self dataSource];
      v8 = [v10 nextFocusedIndexPath];
      v9 = [v7 itemIdentifierForIndexPath:v8];
      sub_10048A174(self, v9);
    }
  }
}

- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4
{
  v5 = [(MessageListViewController *)self shouldIgnoreNextFocusUpdate:a3];
  if (v5)
  {
    [(MessageListViewController *)self setShouldIgnoreNextFocusUpdate:0];
  }

  return v5 ^ 1;
}

- (id)collectionView:(id)a3 sceneActivationConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v5 = [(MessageListViewController *)self _sceneActivationConfigurationForItemAtIndexPath:a4, a5.x, a5.y];

  return v5;
}

- (id)_sceneActivationConfigurationForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self dataSource];
  v6 = [v5 messageListItemAtIndexPath:v4];
  v7 = [v6 result];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
  }

  else
  {
    v9 = [v5 messageListAtSectionIndex:{objc_msgSend(v4, "section")}];
    v10 = [(MessageListViewController *)self state];
    if ([v10 containsDraftsOrOutbox])
    {
      v24 = v10;
      v25 = v9;
      v11 = [(MessageListViewController *)self mailboxes];
      v12 = [v11 ef_compactMapSelector:"objectID"];

      v23 = v12;
      v13 = [v7 mailboxObjectIDs];
      v26 = [v13 firstObjectCommonWithArray:v12];

      if ([v10 containsDraftsMailbox])
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }

      v15 = [_MFMailCompositionContext alloc];
      v16 = [v7 displayMessageObjectID];
      v17 = [(MessageListViewController *)self messageRepository];
      v18 = +[UIApplication sharedApplication];
      v19 = [v18 mailboxProvider];
      v20 = [v15 initWithComposeType:v14 objectID:v16 mailboxID:v26 subject:0 autosaveID:0 messageRepository:v17 mailboxProvider:v19];

      v21 = [(MessageListViewController *)self scene];
      v8 = [MFBayAdoption composeWindowSceneActivationConfigurationWithContext:v20 presentationSource:0 requestingScene:v21];

      v10 = v24;
      v9 = v25;
    }

    else
    {
      v8 = [MFBayAdoption openMessageInNewWindowConfigurationWithMessageListItem:v7 messageList:v9];
    }
  }

  return v8;
}

- (id)preferredFocusEnvironments
{
  v13.receiver = self;
  v13.super_class = MessageListViewController;
  v3 = [(MessageListViewController *)&v13 preferredFocusEnvironments];
  v4 = [(MessageListViewController *)self searchController];
  v5 = [v4 isActive];

  if ((v5 & 1) == 0)
  {
    if (self && (v6 = self->_keyboardFocusedItemID) != 0 || ([(MessageListViewController *)self lastSelectedItemID], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [(MessageListViewController *)self dataSource];
      v8 = [v7 indexPathForItemIdentifier:v6];

      if (v8)
      {
        v9 = [(MessageListViewController *)self collectionView];
        v10 = [v9 cellForItemAtIndexPath:v8];

        if (v10)
        {
          v14 = v10;
          v11 = [NSArray arrayWithObjects:&v14 count:1];

          v3 = v11;
        }
      }
    }
  }

  return v3;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v4 = a3;
  if (self && (v5 = self->_keyboardFocusedItemID) != 0 || ([(MessageListViewController *)self lastSelectedItemID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(MessageListViewController *)self dataSource];
    v7 = [v6 indexPathForItemIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_finalizeMultipleSelection
{
  v3 = [(MessageListViewController *)self dataSource];
  v4 = [(MessageListViewController *)self collectionView];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MessageListViewController *)self messageListSelectionModel];
  v6 = [v5 itemsToDeselectAfterMultipleSelection];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [v3 indexPathForItemIdentifier:*(*(&v15 + 1) + 8 * v9)];
        [v4 deselectItemAtIndexPath:v10 animated:0];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [(MessageListViewController *)self messageListSelectionModel];
  [v11 setMultipleSelectionActive:0];

  v12 = [(MessageListViewController *)self dataSource];
  v13 = [(MessageListViewController *)self messageListSelectionModel];
  v14 = [v13 itemIDs];
  [v12 reloadItemsWithItemIDs:v14];
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(MessageListViewController *)self messageListPositionHelper];

  if (v8)
  {
    v9 = [(MessageListViewController *)self messageListPositionHelper];
    [v9 targetContentOffsetForProposedContentOffset:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = [(MessageListViewController *)self scene];
    if ([v14 isInExpandedEnvironment])
    {
    }

    else
    {

      if (v11 != x || v13 != y)
      {
        [v7 flashScrollIndicators];
      }
    }
  }

  else
  {
    v11 = x;
    v13 = y;
  }

  v15 = v11;
  v16 = v13;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = [(MessageListViewController *)self messageListPositionHelper];
  [v3 setUserIsScrolling:1];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v8 = [(MessageListViewController *)self scene];
  v6 = [v8 splitViewController];
  v7 = [(MessageListViewController *)self parentViewController];
  [v6 setFocusedViewController:v7];

  [(MessageListViewController *)self _cancelOrCleanupStateRestoration];
  if (!a4)
  {
    v9 = [(MessageListViewController *)self messageListPositionHelper];
    [v9 setUserIsScrolling:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v3 = [(MessageListViewController *)self messageListPositionHelper];
  [v3 setUserIsScrolling:0];
}

- (void)scrollViewDidScrollToTop:(id)a3
{
  v3 = [(MessageListViewController *)self messageListPositionHelper];
  [v3 recalculateFirstVisibleIndex];
}

- (void)_adjustNoContentMessageAlpha:(id)a3
{
  v9 = a3;
  v4 = [(MessageListViewController *)self noContentView];
  if (v4 && (-[MessageListViewController messageListPositionHelper](self, "messageListPositionHelper"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 userIsScrolling], v5, v6))
  {
    if ((-[UIRefreshControl isHidden](self->_refreshControl, "isHidden") & 1) == 0 && [v9 isDragging])
    {
      [(MessageListViewController *)self suppressNoContentViewAnimated:0];
      [(MessageListViewController *)self setSuppressNoContentView:0];
    }
  }

  else
  {
    v7 = [(MessageListViewController *)self suppressNoContentView];
    if (v4)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if ((v8 & 1) == 0 && [(UIRefreshControl *)self->_refreshControl isHidden]&& [(MessageListViewController *)self isInitialCellConfigurationCompleted])
    {
      [(MessageListViewController *)self updateNoContentViewAnimated:1];
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v25 = a3;
  [(MessageListViewController *)self _adjustNoContentMessageAlpha:?];
  if (*(self + 8))
  {
    [v25 contentOffset];
    v5 = v4;
    v7 = v6;
    if (([(MessageListViewController *)self isBucketBarHidden]& 1) == 0)
    {
      v8 = [(MessageListViewController *)self bucketsViewController];
      v9 = [v8 viewIfLoaded];
      v10 = [v9 superview];

      if (v10)
      {
        v11 = [(MessageListViewController *)self navigationItem];
        v12 = [v11 titleView];

        v13 = [(MessageListViewController *)self shouldShowNavigationBarSubtitle];
        if ((((v12 == 0) ^ v13) & 1) == 0)
        {
          [(MessageListViewController *)self _updateTitle];
        }

        v14 = [(MessageListViewController *)self navigationBarTitleView];
        [v14 setSubtitleHidden:v13 ^ 1 animated:1];
      }
    }

    v15 = [(MessageListViewController *)self oldestItemsIDsByMailboxObjectID];

    if (v15)
    {
      v16 = v25;
      if ([v16 isTracking])
      {
        v17 = 1;
      }

      else
      {
        v17 = [v16 isDecelerating];
      }

      y = self->_lastScrolledContentOffset.y;
      [v16 contentInset];
      v20 = v19;
      +[NSDate timeIntervalSinceReferenceDate];
      if (v17 && v7 > y && v7 > -v20 && v21 >= self->_nextAvailableLoadMoreInterval)
      {
        v22 = [v16 indexPathsForVisibleItems];
        v23 = [v22 lastObject];

        if (v23)
        {
          [(MessageListViewController *)self _loadMoreMessagesWithMaxVisibleIndexPath:v23];
          +[NSDate timeIntervalSinceReferenceDate];
          self->_nextAvailableLoadMoreInterval = v24 + 0.5;
        }
      }

      self->_lastScrolledContentOffset.x = v5;
      self->_lastScrolledContentOffset.y = v7;
    }
  }
}

- (void)_loadMoreMessagesWithMaxVisibleIndexPath:(id)a3
{
  v30 = a3;
  v29 = +[NSMutableArray array];
  v28 = [(MessageListViewController *)self resolvedMailboxObjectIDs];
  if ([v28 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v28;
    v4 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (!v4)
    {
      goto LABEL_23;
    }

    v5 = *v33;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = [(MessageListViewController *)self mailboxesPendingOldestItemsUpdates];
        v9 = [v8 containsObject:v7];

        if (v9)
        {
          v10 = +[MessageListViewController log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = objc_opt_class();
            v12 = NSStringFromClass(v11);
            v13 = [v7 ef_publicDescription];
            *buf = 138412802;
            v37 = v12;
            v38 = 2048;
            v39 = self;
            v40 = 2114;
            v41 = v13;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> Mailbox object id (%{public}@) is already pending oldest item update", buf, 0x20u);
          }

          goto LABEL_21;
        }

        v14 = [(MessageListViewController *)self oldestItemsIDsByMailboxObjectID];
        v10 = [v14 objectForKeyedSubscript:v7];

        if (!v10)
        {
          goto LABEL_15;
        }

        v15 = [(MessageListViewController *)self dataSource];
        v16 = [v15 indexPathForItemIdentifier:v10];

        if (!v16)
        {
          v17 = +[MessageListViewController log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            *buf = 138412546;
            v37 = v24;
            v38 = 2048;
            v39 = self;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "<%@: %p> cannot find the index of a tracked oldest item", buf, 0x16u);
          }

LABEL_15:
          v16 = [NSIndexPath indexPathForRow:sub_10001C994(self) inSection:0];
        }

        v18 = [v30 row];
        if ([v16 row] * 0.75 < v18)
        {
          [v29 addObject:v7];
          v19 = +[MessageListViewController log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = [v7 ef_publicDescription];
            *buf = 138412802;
            v37 = v21;
            v38 = 2048;
            v39 = self;
            v40 = 2114;
            v41 = v22;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<%@: %p> Need to load older messages for mailbox %{public}@", buf, 0x20u);
          }
        }

LABEL_21:
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (!v4)
      {
LABEL_23:

        if ([v29 count])
        {
          v25 = [(MessageListViewController *)self mailboxesPendingOldestItemsUpdates];
          [v25 addObjectsFromArray:v29];

          v26 = [(MessageListViewController *)self messageRepository];
          [v26 loadOlderMessagesForMailboxes:v29];
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }
  }

  v26 = +[MessageListViewController log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    sub_10048A304();
  }

LABEL_27:

LABEL_28:
}

- (BOOL)_isExpandedIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];
  LOBYTE(self) = [(MessageListViewController *)self _isExpandedItemID:v6];

  return self;
}

- (BOOL)_isExpandedItemID:(id)a3
{
  v4 = a3;
  if (([(MessageListViewController *)self isThreaded]& 1) != 0)
  {
    v5 = [(MessageListViewController *)self dataSource];
    v6 = [v5 anyExpandedThreadContainsItemID:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_applySelectionModel:(id)a3
{
  v5 = a3;
  v6 = +[MessageListViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    *buf = 138413058;
    v20 = v8;
    v21 = 2048;
    v22 = self;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> %{public}@ model: %{public}@", buf, 0x2Au);
  }

  if (v5)
  {
    [(MessageListViewController *)self setMessageListSelectionModel:v5];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v10 = [v5 itemIDs];
    v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v11)
    {
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [(MessageListViewController *)self _updateSelectionModelDidSelectItemID:*(*(&v14 + 1) + 8 * v13)];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_updateSelectionModelDidSelectItemID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MessageListViewController *)self dataSource];
    v6 = [(MessageListViewController *)self collectionView];
    v22 = [(MessageListViewController *)self messageListSelectionModel];
    v21 = [v22 selectItemWithItemID:v4];
    v7 = +[MessageListViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138413314;
      v29 = v9;
      v30 = 2048;
      v31 = self;
      v32 = 2114;
      v33 = v4;
      v34 = 2048;
      v35 = [v22 count];
      v36 = 2114;
      v37 = v21;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@: %p> Select Item: %{public}@ (Total: %ld). Including: %{public}@", buf, 0x34u);
    }

    if ([v22 isMultipleSelectionActive])
    {
      v10 = [v22 itemsToDeselectAfterMultipleSelection];
      [v10 removeObject:v4];

      v11 = [v22 itemsToDeselectAfterMultipleSelection];
      [v11 ef_removeObjectsInArray:v21];
    }

    else
    {
      v11 = [v5 indexPathForItemIdentifier:v4];
      [v6 selectItemAtIndexPath:v11 animated:0 scrollPosition:0];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = v21;
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = [v5 indexPathForItemIdentifier:*(*(&v23 + 1) + 8 * i)];
            [v6 selectItemAtIndexPath:v17 animated:0 scrollPosition:0];
          }

          v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }
    }

    [(MessageListViewController *)self _updateTitle];
    [(MessageListViewController *)self updateBarButtons];
    [(MessageListViewController *)self _updateStackViewController];
    v18 = [v22 cascadedItemIDsForItemID:v4 isSelecting:1];
    v19 = [v18 arrayByAddingObject:v4];
    [(MessageListViewController *)self _addMessagesToStackWithItemIDs:v19];

    [(MessageListViewController *)self isEditing];
    v20 = [(MessageListViewController *)self conversationViewController];
    [v20 _updateBarButtonsAnimated:1 force:1 isShowingTitle:0];
  }

  else
  {
    v5 = +[MessageListViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      NSStringFromClass(v12);
      objc_claimAutoreleasedReturnValue();
      sub_10048A348();
    }
  }
}

- (void)_updateSelectionModelDidDeselectItemID:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self dataSource];
  v6 = [(MessageListViewController *)self collectionView];
  v7 = [(MessageListViewController *)self messageListSelectionModel];
  v28 = [v7 deselectItemWithItemID:v4];
  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138413314;
    v35 = v10;
    v36 = 2048;
    v37 = self;
    v38 = 2114;
    v39 = v4;
    v40 = 2048;
    v41 = [v7 count];
    v42 = 2114;
    v43 = v28;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@: %p> Deselect Item: %{public}@ (Total: %ld). Including: %{public}@", buf, 0x34u);
  }

  v11 = [(MessageListViewController *)self messageListSelectionModel];
  v12 = [v11 isSelectAll];

  if (v12)
  {
    v13 = +[MessageListViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412546;
      v35 = v15;
      v36 = 2048;
      v37 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<%@: %p> Leaving Select All mode. All items have been deselected manually", buf, 0x16u);
    }

    v16 = [v7 itemIDs];
    v17 = [v16 count];
    v18 = v17 == sub_10001C994(self);

    if (v18)
    {
      [v7 disableSelectAll];
    }
  }

  if ([v7 isMultipleSelectionActive])
  {
    v19 = [v7 itemsToDeselectAfterMultipleSelection];
    [v19 addObject:v4];

    v20 = [v7 itemsToDeselectAfterMultipleSelection];
    [v20 addObjectsFromArray:v28];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v28;
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v21)
    {
      v22 = *v30;
      do
      {
        v23 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [v5 indexPathForItemIdentifier:*(*(&v29 + 1) + 8 * v23)];
          [v6 deselectItemAtIndexPath:v24 animated:0];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v21);
    }
  }

  [(MessageListViewController *)self _updateTitle];
  [(MessageListViewController *)self updateBarButtons];
  [(MessageListViewController *)self _updateStackViewController];
  v25 = [v7 cascadedItemIDsForItemID:v4 isSelecting:0];
  v26 = [v25 arrayByAddingObject:v4];
  [(MessageListViewController *)self _removeMessagesFromStackWithItemIDs:v26];

  [(MessageListViewController *)self _exitMultiSelectionForce:0];
  v27 = [(MessageListViewController *)self conversationViewController];
  [v27 _updateBarButtonsAnimated:1 force:1];
}

- (void)didSelectTopHitWithItemID:(id)a3 messageList:(id)a4 animated:(BOOL)a5
{
  v15 = a3;
  v8 = a4;
  BYTE1(v14) = 1;
  LOBYTE(v14) = a5;
  [(MessageListViewController *)self _handleDidSelectItemID:v15 messageList:v8 referenceItem:0 scrollToVisible:0 userInitiated:1 canRestoreDraft:1 animated:v14 showConversationView:?];
  v9 = +[UIApplication sharedApplication];
  v10 = [v9 appStoreReviewManager];
  [v10 notifyCriterionMet:6];

  v11 = [(MessageListViewController *)self scene];
  if (v11)
  {
    v12 = +[UIApplication sharedApplication];
    v13 = [v12 appStoreReviewManager];
    [v13 attemptToShowPromptIn:v11 reason:6];
  }
}

- (void)_handleDidSelectItemID:(id)a3 referenceItem:(id)a4 scrollToVisible:(BOOL)a5 userInitiated:(BOOL)a6 canRestoreDraft:(BOOL)a7 animated:(BOOL)a8 showConversationView:(BOOL)a9
{
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v19 = a3;
  v15 = a4;
  v16 = [(MessageListViewController *)self dataSource];
  v17 = [v16 messageListForMessageListItemWithIdentifier:v19];

  BYTE1(v18) = a9;
  LOBYTE(v18) = a8;
  [(MessageListViewController *)self _handleDidSelectItemID:v19 messageList:v17 referenceItem:v15 scrollToVisible:v12 userInitiated:v11 canRestoreDraft:v10 animated:v18 showConversationView:?];
}

- (void)_handleDidSelectItemID:(id)a3 messageList:(id)a4 referenceItem:(id)a5 scrollToVisible:(BOOL)a6 userInitiated:(BOOL)a7 canRestoreDraft:(BOOL)a8 animated:(BOOL)a9 showConversationView:(BOOL)a10
{
  v51 = a6;
  v52 = a7;
  v13 = a3;
  v56 = a4;
  v53 = a5;
  v14 = [(MessageListViewController *)self dataSource];
  v55 = [v14 indexPathForItemIdentifier:v13];

  v15 = [(MessageListViewController *)self collectionView];
  v54 = [v15 cellForItemAtIndexPath:v55];

  if ([(MessageListViewController *)self isSearchControllerActive])
  {
    v16 = [(MessageListViewController *)self searchController];
    v17 = [v16 searchBar];
    [v17 resignFirstResponder];
  }

  v18 = +[MessageListViewController log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v56 ef_publicDescription];
    v22 = [v53 ef_publicDescription];
    *buf = 138414338;
    v59 = v20;
    v60 = 2048;
    v61 = self;
    v62 = 2114;
    v63 = v13;
    v64 = 2114;
    *v65 = v21;
    *&v65[8] = 2114;
    *&v66 = v22;
    WORD4(v66) = 1024;
    *(&v66 + 10) = v51;
    HIWORD(v66) = 1024;
    *v67 = v52;
    *&v67[4] = 1024;
    v68 = a9;
    v69 = 1024;
    v70 = a10;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "<%@: %p> handleDidSelectItemID: %{public}@, messageList: %{public}@, referenceItem: %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x4Cu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v54;
    v24 = [v23 messageListItemFuture];
    v25 = [v24 resultIfAvailable];
    v26 = v25 == 0;

    if (v26)
    {
      v35 = +[MessageListViewController log];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138413826;
        v59 = v37;
        v60 = 2048;
        v61 = self;
        v62 = 2114;
        v63 = v13;
        v64 = 1024;
        *v65 = v51;
        *&v65[4] = 1024;
        *&v65[6] = v52;
        LOWORD(v66) = 1024;
        *(&v66 + 2) = a9;
        WORD3(v66) = 1024;
        DWORD2(v66) = a10;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "<%@: %p> handleDidSelectItemID: Message hasn't finished loading, updating selection promise %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x38u);
      }
    }

    else
    {
      v27 = [v23 cellHelper];
      v28 = [v27 messageListItem];
      v29 = v28 == 0;

      if (!v29)
      {

        goto LABEL_9;
      }

      v35 = +[MessageListViewController log];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        *buf = 138413826;
        v59 = v47;
        v60 = 2048;
        v61 = self;
        v62 = 2114;
        v63 = v13;
        v64 = 1024;
        *v65 = v51;
        *&v65[4] = 1024;
        *&v65[6] = v52;
        LOWORD(v66) = 1024;
        *(&v66 + 2) = a9;
        WORD3(v66) = 1024;
        DWORD2(v66) = a10;
        _os_log_fault_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "<%@: %p> handleDidSelectItemID: Trying to select a message list cell that has no message list item. %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x38u);
      }
    }

    BYTE2(v48) = a10;
    BYTE1(v48) = a9;
    LOBYTE(v48) = a8;
    [MessageListViewController _updateSelectionPromiseForItemID:"_updateSelectionPromiseForItemID:messageList:messageListCell:referenceItem:scrollToVisible:userInitiated:canRestoreDraft:animated:showConversationView:indexPath:" messageList:v13 messageListCell:v56 referenceItem:v23 scrollToVisible:v53 userInitiated:v51 canRestoreDraft:v52 animated:v48 showConversationView:v55 indexPath:?];
    goto LABEL_28;
  }

LABEL_9:
  v30 = [(MessageListViewController *)self _shouldShowItemIDAsConversation:v13];
  if (!v13)
  {
    v34 = +[MessageListViewController log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138413826;
      v59 = v43;
      v60 = 2048;
      v61 = self;
      v62 = 2114;
      v63 = 0;
      v64 = 1024;
      *v65 = v51;
      *&v65[4] = 1024;
      *&v65[6] = v52;
      LOWORD(v66) = 1024;
      *(&v66 + 2) = a9;
      WORD3(v66) = 1024;
      DWORD2(v66) = a10;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "<%@: %p> handleDidSelectItemID: Selected a message list cell with no item ID: %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x38u);
    }

    v32 = [(MessageListViewController *)self conversationViewController];
    [v32 setReferenceMessageListItem:0 referenceMessageList:v56 showAsConversation:v30 animated:a9];
    goto LABEL_24;
  }

  v31 = [v56 messageListItemForItemID:v13];
  v57 = 0;
  v23 = [v31 resultWithTimeout:&v57 error:0.3];
  v32 = v57;
  if (v32)
  {
    v33 = +[MessageListViewController log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138414082;
      v59 = v41;
      v60 = 2048;
      v61 = self;
      v62 = 2114;
      v63 = v13;
      v64 = 2114;
      *v65 = v32;
      *&v65[8] = 1024;
      LODWORD(v66) = v51;
      WORD2(v66) = 1024;
      *(&v66 + 6) = v52;
      WORD5(v66) = 1024;
      HIDWORD(v66) = a9;
      *v67 = 1024;
      *&v67[2] = a10;
      v49 = v41;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "<%@: %p> handleDidSelectItemID: Error loading message with item ID: %{public}@, error: %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x42u);
    }
  }

  if (!v23)
  {
    v38 = +[MessageListViewController log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138413826;
      v59 = v45;
      v60 = 2048;
      v61 = self;
      v62 = 2114;
      v63 = v13;
      v64 = 1024;
      *v65 = v51;
      *&v65[4] = 1024;
      *&v65[6] = v52;
      LOWORD(v66) = 1024;
      *(&v66 + 2) = a9;
      WORD3(v66) = 1024;
      DWORD2(v66) = a10;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "<%@: %p> handleDidSelectItemID: Trying to select a message list cell that has no available item. Clearing conversation view. %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x38u);
    }

    v39 = [(MessageListViewController *)self conversationViewController];
    [v39 setReferenceMessageListItem:0 referenceMessageList:v56 showAsConversation:v30 animated:a9];

    BYTE1(v48) = v30;
    LOBYTE(v48) = a10;
    [(MessageListViewController *)self _loadMessageWithItemID:v13 messageList:v56 messageListItem:v31 scrollToVisible:v51 userInitiated:v52 animated:a9 showConversationView:v48 showAsConversation:?];

LABEL_24:
    v23 = 0;
    goto LABEL_28;
  }

  BYTE2(v48) = a10;
  BYTE1(v48) = a9;
  LOBYTE(v48) = a8;
  [MessageListViewController _handleSelectedItem:"_handleSelectedItem:itemID:messageList:referenceItem:scrollToVisible:userInitiated:canRestoreDraft:animated:showConversationView:indexPath:" itemID:v23 messageList:v13 referenceItem:v56 scrollToVisible:v53 userInitiated:v51 canRestoreDraft:v52 animated:v48 showConversationView:v55 indexPath:?];
LABEL_28:
}

- (void)_handleSelectedItem:(id)a3 itemID:(id)a4 messageList:(id)a5 referenceItem:(id)a6 scrollToVisible:(BOOL)a7 userInitiated:(BOOL)a8 canRestoreDraft:(BOOL)a9 animated:(BOOL)a10 showConversationView:(BOOL)a11 indexPath:(id)a12
{
  v12 = a8;
  v13 = a7;
  v26 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a12;
  [(MessageListViewController *)self setLoadingMessageItemID:0];
  if (!v12)
  {
    [(MessageListViewController *)self setShouldSelectInitialMessage:0];
  }

  BYTE2(v25) = a11;
  LOWORD(v25) = __PAIR16__(a10, a9);
  [MessageListViewController _showConversationViewWithMessageListItem:"_showConversationViewWithMessageListItem:itemID:messageList:referenceItem:scrollToVisible:userInitiated:canRestoreDraft:animated:showConversationView:indexPath:" itemID:v26 messageList:v18 referenceItem:v19 scrollToVisible:v20 userInitiated:v13 canRestoreDraft:v12 animated:v25 showConversationView:v21 indexPath:?];
  if (([(MessageListViewController *)self isEditing]& 1) == 0)
  {
    v22 = [v21 item];
    v23 = [(MessageListViewController *)self previouslySelectedIndexPath];
    if (v22 < [v23 item])
    {
      v24 = 0xFFFFFFFFLL;
    }

    else
    {
      v24 = 1;
    }

    [(MessageListViewController *)self setUserBrowseDirection:v24];

    [(MessageListViewController *)self setPreviouslySelectedIndexPath:v21];
  }

  if (v12)
  {
    [(MessageListViewController *)self _hideMailboxPickerOrMessageListAfterSelectionIfNeeded];
  }
}

- (void)_showConversationViewWithMessageListItem:(id)a3 itemID:(id)a4 messageList:(id)a5 referenceItem:(id)a6 scrollToVisible:(BOOL)a7 userInitiated:(BOOL)a8 canRestoreDraft:(BOOL)a9 animated:(BOOL)a10 showConversationView:(BOOL)a11 indexPath:(id)a12
{
  v12 = a8;
  v30 = a7;
  v17 = a3;
  v18 = a4;
  v35 = a5;
  v36 = a6;
  v34 = a12;
  v19 = 0;
  v32 = v17;
  if (v18 && v17 && a9 && v12)
  {
    v19 = [(MessageListViewController *)self _restoreDraftOrOutboxItemAtIndexPath:v34];
  }

  v31 = [(MessageListViewController *)self scene];
  v33 = [v31 isInExpandedEnvironment];
  v20 = [(MessageListViewController *)self _shouldShowItemIDAsConversation:v18];
  if ([(MessageListViewController *)self shouldDisplayGroupedSenders])
  {
    objc_opt_class();
    v20 &= objc_opt_isKindOfClass() ^ 1;
  }

  v21 = +[MessageListViewController log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v36 ef_publicDescription];
    *buf = 138414850;
    v38 = v23;
    v39 = 2048;
    v40 = self;
    v41 = 2114;
    v42 = v18;
    v43 = 1024;
    v44 = v30;
    v45 = 1024;
    v46 = v12;
    v47 = 1024;
    v48 = a10;
    v49 = 1024;
    v50 = v20 & 1;
    v51 = 1024;
    v52 = v33;
    v53 = 1024;
    v54 = v19;
    v55 = 1024;
    v56 = a11;
    v57 = 2114;
    v58 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<%@: %p> handleSelectedItem: %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showAsConversation: %{BOOL}d, isInExpandedEnvironment: %{BOOL}d, restoreDraft: %{BOOL}d, showConversationView: %{BOOL}d referenceItem:%{public}@", buf, 0x54u);
  }

  if (((v36 == 0) & ~(v18 != 0)) != 0)
  {
    v25 = [(MessageListViewController *)self conversationViewController];
    [v25 setReferenceMessageListItem:0 referenceMessageList:v35 showAsConversation:v20 & 1 animated:a10];
LABEL_18:

    goto LABEL_19;
  }

  if (v33 & 1 | ((v19 & 1) == 0))
  {
    v25 = [(MessageListViewController *)self conversationViewController];
    v26 = [(MessageListViewController *)self searchController];
    [v25 setMessagesShowSourceMailbox:{objc_msgSend(v26, "isActive")}];

    v27 = v32;
    if (v36)
    {
      v27 = v36;
    }

    v28 = v27;
    [v25 setReferenceMessageListItem:v28 referenceMessageList:v35 showAsConversation:v20 & 1 animated:a10];
    if (!(v33 & 1 | !a11))
    {
      v29 = [v31 splitViewController];
      [v29 showConversationViewControllerAnimated:a10 completion:0];
    }

    [(MessageListViewController *)self selectRowOfItemID:v18 scrollToVisible:v30 animated:a10];

    goto LABEL_18;
  }

LABEL_19:
}

- (void)_updateSelectionPromiseForItemID:(id)a3 messageList:(id)a4 messageListCell:(id)a5 referenceItem:(id)a6 scrollToVisible:(BOOL)a7 userInitiated:(BOOL)a8 canRestoreDraft:(BOOL)a9 animated:(BOOL)a10 showConversationView:(BOOL)a11 indexPath:(id)a12
{
  v35 = a3;
  v36 = a4;
  v18 = a5;
  v37 = a6;
  v38 = a12;
  v19 = [(MessageListViewController *)self selectionPromise];

  if (v19)
  {
    v20 = +[MessageListViewController log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138412546;
      v53 = v22;
      v54 = 2048;
      v55 = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<%@: %p> New item selected, cancelling existing selection promise.", buf, 0x16u);
    }

    v23 = [(MessageListViewController *)self selectionPromise];
    [v23 cancel];
  }

  v39 = +[EFPromise promise];
  objc_initWeak(buf, self);
  v34 = v18;
  v24 = [v39 future];
  v25 = +[EFScheduler mainThreadScheduler];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100177F24;
  v40[3] = &unk_100652510;
  objc_copyWeak(&v46, buf);
  v26 = v39;
  v41 = v26;
  v33 = v35;
  v42 = v33;
  v27 = v36;
  v43 = v27;
  v28 = v37;
  v29 = a8;
  v30 = v28;
  v44 = v28;
  v47 = a7;
  v48 = v29;
  v49 = a9;
  v50 = a10;
  v51 = a11;
  v31 = v38;
  v45 = v31;
  [v24 onScheduler:v25 addSuccessBlock:v40];

  [(MessageListViewController *)self setSelectionPromise:v26];
  v32 = [v34 messageListItemFuture];
  [v26 finishWithFuture:v32];

  objc_destroyWeak(&v46);
  objc_destroyWeak(buf);
}

- (void)_loadMessageWithItemID:(id)a3 messageList:(id)a4 messageListItem:(id)a5 scrollToVisible:(BOOL)a6 userInitiated:(BOOL)a7 animated:(BOOL)a8 showConversationView:(BOOL)a9 showAsConversation:(BOOL)a10
{
  v16 = a3;
  v23 = a4;
  v24 = a5;
  [(MessageListViewController *)self setLoadingMessageItemID:v16, v16];
  v17 = MFMessageSelectionLifecycleSignpostLog();
  v18 = os_signpost_id_make_with_pointer(v17, v16);

  objc_initWeak(location, self);
  v19 = +[EFScheduler mainThreadScheduler];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001782AC;
  v32[3] = &unk_100652538;
  objc_copyWeak(v35, location);
  v20 = v16;
  v33 = v20;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a9;
  v21 = v23;
  v40 = a10;
  v34 = v21;
  v35[1] = v18;
  [v24 onScheduler:v19 addSuccessBlock:v32];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001785D0;
  v25[3] = &unk_100652560;
  objc_copyWeak(v27, location);
  v22 = v20;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v26 = v22;
  v27[1] = v18;
  [v24 addFailureBlock:v25];

  objc_destroyWeak(v27);
  objc_destroyWeak(v35);
  objc_destroyWeak(location);
}

- (void)_hideMailboxPickerOrMessageListAfterSelectionIfNeeded
{
  v3 = [(MessageListViewController *)self scene];
  if ([v3 isInExpandedEnvironment])
  {
    v4 = [v3 splitViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001788E4;
    v6[3] = &unk_10064CF10;
    v8 = [v4 displayMode];
    v6[4] = self;
    v5 = v4;
    v7 = v5;
    [EFScheduler mf_afterUIDelay:v6 performBlock:0.25];
  }
}

- (void)deselectAllItemsInCollectionView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (([(MessageListViewController *)self isEditing]& 1) == 0)
  {
    v6 = [(MessageListViewController *)self transitionCoordinator];
    [v7 mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:v6 animated:v4];
  }
}

- (BOOL)_allowsAutoSelectionOfInitialMessage
{
  if ([(MessageListViewController *)self isSearchViewController])
  {
    return 0;
  }

  else
  {
    return ![(MessageListViewController *)self disableAutoSelectionOfInitialMessage];
  }
}

- (void)_selectInitialMessageNow
{
  [(MessageListViewController *)self setShouldSelectInitialMessage:[(MessageListViewController *)self _allowsAutoSelectionOfInitialMessage]];

  [(MessageListViewController *)self _selectAndDisplayInitialMessageIfNecessary];
}

- (BOOL)_selectAndDisplayInitialMessageIfNecessary
{
  if (![(MessageListViewController *)self shouldSelectInitialMessage]|| !sub_10001C994(self))
  {
    return 0;
  }

  v4 = [(MessageListViewController *)self lastSelectedItemID];
  v5 = [(MessageListViewController *)self dataSource];
  v6 = [v5 messageListForSection:MessageListSectionRecent];

  if (v4)
  {
    v7 = [v6 messageListItemForItemID:v4];
    v8 = [v7 result];

    v9 = [v8 flags];
    v10 = [v9 deleted];

    if (!v10)
    {

      goto LABEL_10;
    }
  }

  v11 = +[EMMessageListItemPredicates predicateForReadMessages];
  v4 = [v6 itemIDOfFirstMessageListItemMatchingPredicate:v11];

  if (!v4)
  {
    v12 = 0;
    goto LABEL_11;
  }

LABEL_10:
  [(MessageListViewController *)self setShouldSelectInitialMessage:0];
  [(MessageListViewController *)self setDisableAutoSelectionOfInitialMessage:0];
  v12 = 1;
LABEL_11:
  v14 = [(MessageListViewController *)self lastAutoSelectedItemID];
  v15 = [v4 isEqual:v14];

  if ((v12 & v15) == 1 && (-[MessageListViewController conversationViewController](self, "conversationViewController"), v16 = objc_claimAutoreleasedReturnValue(), [v16 referenceMessageListItem], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
  {
    v23 = +[MessageListViewController log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = 138412802;
      v28 = v26;
      v29 = 2048;
      v30 = self;
      v31 = 2112;
      v32 = v4;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "<%@: %p> Autoselection cancelled for message %@", &v27, 0x20u);
    }

    v13 = 0;
    v4 = 0;
  }

  else
  {
    [(MessageListViewController *)self setLastAutoSelectedItemID:v4];
    if (v4)
    {
      v18 = +[MessageListViewController log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        v22 = [(MessageListViewController *)self lastAutoSelectedItemID];
        v27 = 138413314;
        v28 = v20;
        v29 = 2048;
        v30 = self;
        v31 = 2112;
        v32 = v21;
        v33 = 2112;
        v34 = v4;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ - Select initial itemID:%@, lastAutoSelectedItemID:%@", &v27, 0x34u);
      }

      v13 = 1;
      [(MessageListViewController *)self _handleDidSelectItemID:v4 referenceItem:0 scrollToVisible:1 userInitiated:0 animated:0];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)setLastSelectedItemID:(id)a3
{
  v5 = a3;
  if (([(EMCollectionItemID *)self->_lastSelectedItemID isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_lastSelectedItemID, a3);
  }
}

- (BOOL)_shouldShowItemIDAsConversation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v5) = 1;
  }

  else if ([(MessageListViewController *)self isThreaded])
  {
    v6 = [(MessageListViewController *)self dataSource];
    v5 = [v6 anyExpandedThreadContainsItemID:v4] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_draftOrOutboxMessageAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self state];
  if ([v5 containsDraftsOrOutbox])
  {
  }

  else
  {
    v6 = [(MessageListViewController *)self isSearchViewController];

    if ((v6 & 1) == 0)
    {
      v15 = 0;
      goto LABEL_14;
    }
  }

  v7 = [(MessageListViewController *)self dataSource];
  v8 = [v7 messageListItemAtIndexPath:v4];
  v9 = [v8 resultWithTimeout:0 error:0.3];
  v10 = [v9 displayMessage];
  v11 = [v10 resultWithTimeout:0 error:0.3];

  if (v11)
  {
    v12 = [v11 mailboxes];
    v13 = [v12 ef_any:&stru_100652580];

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v16 = +[MessageListViewController log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = 138412802;
      v21 = v19;
      v22 = 2048;
      v23 = self;
      v24 = 2114;
      v25 = v4;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "<%@: %p> Unable to restore message at index path: %{public}@", &v20, 0x20u);
    }

    v15 = 0;
  }

LABEL_14:

  return v15;
}

- (void)_restoreDraftOrOutboxItem:(id)a3
{
  v4 = a3;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 mailboxProvider];
  v7 = [v4 mailboxObjectIDs];
  v8 = [v7 firstObject];
  v9 = [v6 legacyMailboxForObjectID:v8];
  v10 = [MFComposeMailMessage legacyMessageWithMessage:v4 mailboxUid:v9];

  v11 = [(MessageListViewController *)self state];
  LODWORD(v6) = [v11 containsDraftsMailbox];

  if (v6)
  {
    v12 = [[_MFMailCompositionContext alloc] initDraftRestoreOfMessage:v4 legacyMessage:v10];
  }

  else
  {
    v12 = [[_MFMailCompositionContext alloc] initOutboxRestoreOfMessage:v4 legacyMessage:v10];
  }

  v13 = v12;
  objc_initWeak(&location, self);
  v14 = [(MessageListViewController *)self scene];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10017968C;
  v15[3] = &unk_10064C838;
  objc_copyWeak(&v16, &location);
  [v14 showComposeWithContext:v13 animated:1 initialTitle:0 presentationSource:0 completionBlock:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (BOOL)_restoreDraftOrOutboxItemAtIndexPath:(id)a3
{
  v4 = [(MessageListViewController *)self _draftOrOutboxMessageAtIndexPath:a3];
  if (v4)
  {
    [(MessageListViewController *)self _restoreDraftOrOutboxItem:v4];
  }

  return v4 != 0;
}

- (id)messageDragDropHelper:(id)a3 itemContextForIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 messageListAtSectionIndex:{objc_msgSend(v5, "section")}];
  v8 = [v6 messageListItemAtIndexPath:v5];
  v9 = [v8 result];

  v10 = [v6 sectionAtIndex:{objc_msgSend(v5, "section")}];
  v11 = [v6 isMessagesSection:v10];

  if ((v11 & 1) != 0 && (-[MessageListViewController dataSource](self, "dataSource"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v5 section], v14 = objc_msgSend(v12, "isSection:atIndex:", MessageListSectionMailCleanupTip, v13), v12, (v14 & 1) == 0))
  {
    v15 = [MessageListItemDragContext withItem:v9 messageList:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)dropMailboxesForMessageListDragDropHelper:(id)a3
{
  if ([(MessageListViewController *)self isSearchViewController])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(MessageListViewController *)self mailboxes];
  }

  return v4;
}

- (id)undoManagerForMessageListDragDropHelper:(id)a3
{
  v3 = [(MessageListViewController *)self undoManager];

  return v3;
}

- (BOOL)canMoveDragItem:(id)a3 toBucket:(int64_t)a4
{
  v5 = [a3 localObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 messageListItemSelection];
    v7 = [v6 messageListItems];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100179A98;
    v10[3] = &unk_1006525A0;
    v10[4] = a4;
    v8 = [v7 ef_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)changeCategoryOfDragItem:(id)a3 toBucket:(int64_t)a4 completion:(id)a5
{
  v28 = a5;
  v23 = [a3 localObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v23 messageListItemSelection];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v25 = v32 = 0u;
    obj = [v25 messageListItems];
    v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = *v32;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v10 = [v9 senderList];
          v11 = [v10 firstObject];
          v12 = [v11 emailAddressValue];
          v13 = [v12 simpleAddress];

          v14 = [v9 senderList];
          v15 = [v14 firstObject];
          v16 = [v15 emailAddressValue];
          v17 = [v16 em_displayableString];

          v18 = +[UIApplication sharedApplication];
          v19 = [v18 avatarGenerator];
          LOBYTE(v22) = 0;
          LOBYTE(v21) = [v9 isAuthenticated];
          v20 = [MFCategorizationTriageInteraction interactionWithMessageListItemSelection:v25 sender:v13 groupedSenderDisplayName:v17 origin:2 actor:2 bucket:a4 avatarGenerator:v19 isAuthenticated:v21 changeOptions:2 * (a4 == 0) showMenuWithOptions:v22];

          [v20 setDelegate:self];
          [v20 setShouldAskForConfirmation:1];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100179EDC;
          v29[3] = &unk_1006525C8;
          v30 = v28;
          [v20 performInteractionWithCompletion:v29];
        }

        v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v6);
    }
  }
}

- (void)willBeginDragForMessageListDragDropHelper:(id)a3
{
  v4 = [(MessageListViewController *)self scene];
  v5 = [v4 splitViewController];
  v6 = [(MessageListViewController *)self parentViewController];
  [v5 setFocusedViewController:v6];

  [(MessageListViewController *)self setEditing:0 animated:1];

  [(MessageListViewController *)self _cancelOrCleanupStateRestoration];
}

- (double)dragItemCornerRadius:(id)a3
{
  v3 = [(MessageListViewController *)self layoutValuesHelper];
  v4 = [v3 defaultLayoutValues];
  [v4 backgroundCornerRadius];
  v6 = v5;

  return v6;
}

- (void)beginSearchWithQueryString:(id)a3 scope:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(MessageListViewController *)self focusSearchBarAnimated:0];
  v7 = [(MessageListViewController *)self messageListSearchViewController];
  [v7 beginSearchWithQueryString:v8 scope:v6];
}

- (void)beginSearchWithSuggestion:(id)a3 scope:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(MessageListViewController *)self focusSearchBarAnimated:1];
  v7 = [(MessageListViewController *)self messageListSearchViewController];
  [v7 beginSearchWithSuggestion:v8 scope:v6];
}

- (id)inputLanguages
{
  v3 = objc_alloc_init(NSMutableOrderedSet);
  v4 = [(MessageListViewController *)self searchBar];
  v5 = [v4 textInputMode];
  v6 = [v5 primaryLanguage];

  if (v6 || (+[NSLocale preferredLanguages](NSLocale, "preferredLanguages"), v7 = objc_claimAutoreleasedReturnValue(), [v7 firstObject], v6 = objc_claimAutoreleasedReturnValue(), v7, v6) || (+[NSBundle mainBundle](NSBundle, "mainBundle"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "preferredLocalizations"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), v9, v8, v6))
  {
    [v3 addObject:v6];
  }

  v10 = +[UITextInputMode activeInputModes];
  v11 = [v10 ef_map:&stru_100652608];
  [v3 addObjectsFromArray:v11];

  v12 = [v3 array];

  return v12;
}

- (void)presentSearchController:(id)a3
{
  v4 = a3;
  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 willPresentSearchController:v4];
  }

  [(MessageListViewController *)self _updatePaletteWithForce:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10017A640;
  v16[3] = &unk_10064C6B0;
  v16[4] = self;
  v6 = v5;
  v17 = v6;
  v7 = v4;
  v18 = v7;
  [(MessageListViewController *)self presentViewController:v7 animated:1 completion:v16];
  if ([v7 modalPresentationStyle] == 7)
  {
    v8 = [v7 popoverPresentationController];
    v9 = [v7 searchBar];
    [v8 setSourceView:v9];

    v10 = [v7 searchBar];
    [v10 bounds];
    [v8 setSourceRect:?];

    [v8 setPermittedArrowDirections:15];
    v11 = [v7 searchBar];
    v19 = v11;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    [v8 setPassthroughViews:v12];
  }

  v13 = [(MessageListViewController *)self scene];
  v14 = [v13 splitViewController];
  v15 = [(MessageListViewController *)self parentViewController];
  [v14 setFocusedViewController:v15];
}

- (void)willPresentSearchController:(id)a3
{
  v9 = a3;
  if ([(MessageListViewController *)self _inMultiSelectionMode])
  {
    sub_10017A800(self, 0);
  }

  v4 = [(MessageListViewController *)self messageListSearchViewController];
  v5 = [(MessageListViewController *)self mailboxes];
  [v4 setMailboxes:v5];

  [v4 willPresentSearchController:v9];
  if ([v4 shouldShowMenuSuggestions])
  {
    [v9 setAutomaticallyShowsSearchResultsController:0];
  }

  v6 = [(MessageListViewController *)self conversationViewController];
  v7 = [v6 referenceMessageListItem];
  v8 = [v7 itemID];

  if (v8)
  {
    [v4 setLastSelectedItemID:v8];
  }

  sub_10017AA50(self);
}

- (void)willDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self conversationViewController];
  [v5 setDelegate:self];

  v6 = [(MessageListViewController *)self messageListSearchViewController];
  [v6 willDismissSearchController:v4];

  [(MessageListViewController *)self _updatePaletteWithForce:0];
  v7 = [(MessageListViewController *)self searchBar];
  [v7 setRepresentedObjects:0];

  if (([(UIRefreshControl *)self->_refreshControl isHidden]& 1) == 0 && ![(UIRefreshControl *)self->_refreshControl isRefreshing])
  {
    [(UIRefreshControl *)self->_refreshControl beginRefreshing];
    [(UIRefreshControl *)self->_refreshControl endRefreshing];
    v8 = [(MessageListViewController *)self collectionView];
    [v8 setContentOffset:{CGPointZero.x, CGPointZero.y}];

    v9 = +[MessageListViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      objc_claimAutoreleasedReturnValue();
      sub_10048A38C();
    }
  }

  v11 = [(MessageListViewController *)self conversationViewController];
  v12 = [v11 referenceMessageListItem];
  v13 = [v12 itemID];

  v14 = [(MessageListViewController *)self lastSelectedItemID];
  LOBYTE(v12) = [v13 isEqual:v14];

  if ((v12 & 1) == 0)
  {
    [(MessageListViewController *)self deselectSelectedItemsInCollectionView];
    [(MessageListViewController *)self _updateSelectionModelDidSelectItemID:v13];
  }

  [(MessageListViewController *)self changeTipShouldDisplayTo:1];
  sub_10017AD64(self);
}

- (void)didDismissSearchController:(id)a3
{
  v6 = a3;
  v4 = [(MessageListViewController *)self dataSource];
  [v4 removeMessageListSection:MessageListSectionIndexedSearch animated:0];

  v5 = [(MessageListViewController *)self messageListSearchViewController];
  [v5 didDismissSearchController:v6];

  [(MessageListViewController *)self updateBarButtons];
  [(MessageListViewController *)self _updateTitle];
}

- (void)_dismissSearchResults
{
  v3 = [(MessageListViewController *)self searchController];
  v2 = [v3 searchBar];
  [v2 setRepresentedObjects:0];
  [v3 setActive:0];
  [v2 resignFirstResponder];
}

- (void)dismissSearchResultsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:v3];
  [(MessageListViewController *)self _dismissSearchResults];

  [UIView setAnimationsEnabled:v5];
}

- (void)focusSearchBarAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MessageListViewController *)self searchBar];
  if (v5)
  {
    v6 = [(MessageListViewController *)self collectionView];
    [v5 bounds];
    [v6 convertRect:v5 fromView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v6 mui_safeVisibleBounds];
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    v30.origin.x = v8;
    v30.origin.y = v10;
    v30.size.width = v12;
    v30.size.height = v14;
    v19 = CGRectContainsRect(v29, v30);
    v20 = 0.3;
    if (v19)
    {
      v20 = 0.0;
    }

    if (v3)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0.0;
    }

    if (!v19)
    {
      [v6 scrollRectToVisible:v3 animated:{x, y, width, height}];
    }

    objc_initWeak(&location, self);
    v22 = +[EFScheduler mainThreadScheduler];
    UIAnimationDragCoefficient();
    v24 = v21 * v23;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10017B890;
    v26[3] = &unk_10064C838;
    objc_copyWeak(&v27, &location);
    v25 = [v22 afterDelay:v26 performBlock:v24];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)suspendRefreshAnimationIfNecessary
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v4, &location);
  v2 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v2 performBlock:&v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (MFMailboxFilterPickerControl)filterPickerControl
{
  if (!self->_filterPickerControl && (MUISolariumFeatureEnabled() & 1) == 0)
  {
    v3 = [MFMailboxFilterPickerControl alloc];
    v4 = [(MessageListViewController *)self navigationController];
    v5 = [v4 toolbar];
    [v5 bounds];
    v6 = [(MFMailboxFilterPickerControl *)v3 initWithFrame:?];

    [(MFMailboxFilterPickerControl *)v6 addTarget:self action:"filterPickerButtonPressed" forControlEvents:64];
    filterPickerControl = self->_filterPickerControl;
    self->_filterPickerControl = v6;
  }

  v8 = self->_filterPickerControl;

  return v8;
}

- (UIBarButtonItem)filterPickerButtonItem
{
  if (!self->_filterPickerButtonItem && (MUISolariumFeatureEnabled() & 1) == 0)
  {
    v3 = [UIBarButtonItem alloc];
    v4 = [(MessageListViewController *)self filterPickerControl];
    v5 = [v3 initWithCustomView:v4];
    filterPickerButtonItem = self->_filterPickerButtonItem;
    self->_filterPickerButtonItem = v5;

    [(UIBarButtonItem *)self->_filterPickerButtonItem _setFlexible:1];
    [(MessageListViewController *)self _updateFiltersPickerAccessibilityHUD];
  }

  v7 = self->_filterPickerButtonItem;

  return v7;
}

- (void)_updateFiltersPickerAccessibilityHUD
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"FILTERS_CHOOSE" value:&stru_100662A88 table:@"Main"];
  v7 = [NSMutableString stringWithString:v4];

  v5 = [(MessageListViewController *)self filterPickerControl];
  v6 = [v5 filterDescription];

  if ([v6 length])
  {
    [v7 appendString:@"\n"];
    [v7 appendString:v6];
  }

  if ([v7 length])
  {
    [(UIBarButtonItem *)self->_filterPickerButtonItem setTitle:v7];
  }
}

- (void)_updateBarButtonsWithForce:(BOOL)a3
{
  v3 = a3;
  [(MessageListViewController *)self _updateToolbarButtons];

  [(MessageListViewController *)self _updateNavigationBarButtonsWithForce:v3];
}

- (id)_categoryGroupingPreferenceMenuForBucket:(int64_t)a3
{
  v5 = [(MessageListViewController *)self categoryGroupingPreferenceController];
  v6 = [v5 shouldDisableGroupingForBucket:a3];

  objc_initWeak(&location, self);
  v7 = _EFLocalizedString();
  v8 = [UIImage systemImageNamed:MFImageGlyphCategoryGroupingPreference];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10017C01C;
  v14 = &unk_100652630;
  objc_copyWeak(v15, &location);
  v16 = v6;
  v15[1] = a3;
  v9 = [UIAction actionWithTitle:v7 image:v8 identifier:0 handler:&v11];

  [v9 setState:{v6 ^ 1, v11, v12, v13, v14}];
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v9;
}

- (void)_hideBucketBar
{
  v3 = +[MessageListViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Hiding bucket bar", v7, 2u);
  }

  [(MessageListViewController *)self _clearNavigationBarButtonItemMenu];
  v4 = [(MessageListViewController *)self bucketBarConfigurationController];
  v5 = [(MessageListViewController *)self mailboxes];
  [v4 setBucketBarHidden:1 forMailboxes:v5];

  if ([(MessageListViewController *)self _isIniCloudContext])
  {
    v6 = [(MessageListViewController *)self iCloudMailCleanupService];
    [v6 updatePrimaryAccountCategoriesHidden:1];
  }
}

- (id)iCloudMailCleanupService
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 getiCloudMailCleanupService];

  return v3;
}

- (BOOL)_isIniCloudContext
{
  v3 = [(MessageListViewController *)self mailboxes];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(MessageListViewController *)self mailboxes];
  v6 = [v5 firstObject];

  v7 = [v6 account];
  if ([v7 isPrimaryiCloudAccount])
  {
    v8 = [v6 isInboxMailbox];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UIViewController)iCloudMailCleanupOnboardingViewController
{
  iCloudMailCleanupOnboardingViewController = self->_iCloudMailCleanupOnboardingViewController;
  if (!iCloudMailCleanupOnboardingViewController)
  {
    v4 = [(MessageListViewController *)self iCloudMailCleanupService];
    v5 = [v4 getConsentViewController];
    v6 = self->_iCloudMailCleanupOnboardingViewController;
    self->_iCloudMailCleanupOnboardingViewController = v5;

    iCloudMailCleanupOnboardingViewController = self->_iCloudMailCleanupOnboardingViewController;
  }

  return iCloudMailCleanupOnboardingViewController;
}

- (void)_clearNavigationBarButtonItemMenu
{
  if (MUISolariumFeatureEnabled())
  {
    v3 = [(MessageListViewController *)self navigationItem];
    [v3 setAdditionalOverflowItems:0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017C448;
    block[3] = &unk_10064C7E8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {

    [(MessageListViewController *)self _updateNavigationBarButtonsWithForce:1];
  }
}

- (void)_updateNavigationBarButtonsWithForce:(BOOL)a3 animated:(BOOL)a4
{
  v61 = a3;
  v62 = a4;
  if (pthread_main_np() != 1)
  {
    v47 = +[NSAssertionHandler currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"MessageListViewController.m" lineNumber:3174 description:@"Current thread must be main"];
  }

  if ([(MessageListViewController *)self _shouldProcessButtonUpdates])
  {
    v63 = [(MessageListViewController *)self isEditing];
    v57 = [_TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState alloc];
    if ([(MessageListViewController *)self isSearchViewController])
    {
      v56 = 1;
    }

    else
    {
      v56 = [(MessageListViewController *)self isPresentingSearchViewController];
    }

    v60 = [(MessageListViewController *)self state];
    v55 = [v60 containsInbox];
    v54 = [(MessageListViewController *)self isFilterButtonEnabled];
    v59 = [(MessageListViewController *)self mailboxes];
    v53 = [EMMailbox supportsSelectAllForMailboxes:v59];
    v52 = [(MessageListViewController *)self isBucketBarHidden];
    v51 = [(MessageListViewController *)self selectedBucket];
    v50 = [(MessageListViewController *)self shouldDisplayGroupedSenders];
    if (EMBlackPearlIsFeatureEnabled() & 1) != 0 || _os_feature_enabled_impl() && (EMIsGreymatterAvailable())
    {
      v49 = 1;
    }

    else
    {
      v49 = MUISolariumFeatureEnabled();
    }

    v58 = +[EFDevice currentDevice];
    v6 = [v58 isPad];
    v7 = [(MessageListViewController *)self splitViewController];
    v8 = [v7 traitCollection];
    v9 = [v8 horizontalSizeClass];
    v10 = MUISolariumFeatureEnabled();
    IsFeatureEnabled = EMBlackPearlIsFeatureEnabled();
    if (_os_feature_enabled_impl())
    {
      v12 = EMIsGreymatterAvailable();
    }

    else
    {
      v12 = 0;
    }

    v13 = +[UIApplication sharedApplication];
    v14 = [v13 connectedScenes];
    HIBYTE(v48) = v12;
    BYTE6(v48) = IsFeatureEnabled;
    BYTE5(v48) = v10;
    BYTE4(v48) = v9 == 1;
    BYTE3(v48) = v6;
    BYTE2(v48) = v49;
    BYTE1(v48) = v50;
    LOBYTE(v48) = v51 == 5;
    v15 = -[MessageListBarButtonItemConfigurationManagerState initWithIsEditing:isSearching:isInbox:isFiltered:mailboxSupportsSelectAll:isBucketBarHidden:isAllMailSelected:isGroupedBySender:prefersNewSelectButton:isPad:isCompactSizeClass:isSolariumEnabled:isBlackPearlEnabled:isCatchUpAvailable:connectedScenes:](v57, "initWithIsEditing:isSearching:isInbox:isFiltered:mailboxSupportsSelectAll:isBucketBarHidden:isAllMailSelected:isGroupedBySender:prefersNewSelectButton:isPad:isCompactSizeClass:isSolariumEnabled:isBlackPearlEnabled:isCatchUpAvailable:connectedScenes:", v63, v56, v55, v54, v53, v52, v48, [v14 count]);

    v16 = [(MessageListViewController *)self barButtonItemConfigurationManager];
    v17 = v15;
    v18 = [v16 navigationBarConfigurationForState:v15];

    v19 = [(MessageListViewController *)self navigationItem];
    v20 = [(MessageListViewController *)self barButtonItemConfiguration];

    if (v20 == v18 && !v61)
    {
LABEL_51:
      v37 = [v18 isBackVisible];
      if ((v37 & 1) == 0)
      {
        [v19 setBackButtonDisplayMode:0];
        [v19 setBackButtonTitle:0];
        [v19 setBackBarButtonItem:0];
      }

      [v19 setHidesBackButton:v37 ^ 1];
      v38 = [(MessageListViewController *)self shouldEnableEditButton];
      v39 = [(MessageListViewController *)self selectMessageListViewButtonItem];
      [v39 setEnabled:v38];

      v40 = [(MessageListViewController *)self currentEditButtonItem];
      [v40 setEnabled:v38];

      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10017CD64;
      v64[3] = &unk_10064C7E8;
      v64[4] = self;
      [UIView performWithoutAnimation:v64];
      v41 = [v19 _bottomPalette];
      [v41 setUserInteractionEnabled:v63 ^ 1];

      if (v63)
      {
        v42 = 0.5;
      }

      else
      {
        v42 = 1.0;
      }

      v43 = [v19 _bottomPalette];
      v44 = [v43 contentView];
      [v44 setAlpha:v42];

      if (EMBlackPearlIsFeatureEnabled())
      {
        [(MessageListViewController *)self _bucketBarUserInteractionEnabled:v63 ^ 1];
      }

      v45 = [(MessageListViewController *)self scene];
      v46 = [v45 splitViewController];
      [v46 _setForceDisplayModeBarButtonHidden:v63];

      return;
    }

    [(MessageListViewController *)self setBarButtonItemConfiguration:v18];
    if ([v18 isSelectAllVisible])
    {
      v21 = [(MessageListViewController *)self messageListSelectionModel];
      if ([v21 isSelectAll])
      {
        v22 = [(MessageListViewController *)self messageListSelectionModel];
        if ([v22 isSelectAll])
        {
          v23 = [(MessageListViewController *)self messageListSelectionModel];
          v24 = [v23 itemIDs];
          v25 = [v24 count] == 0;
        }

        else
        {
          v25 = 1;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = [(MessageListViewController *)self selectAllButtonItem];
      [UIBarButtonItem mf_configureSelectionBarButtonItem:v26 usingStyle:v25];

      v27 = [(MessageListViewController *)self selectAllButtonItem];
      [v19 setLeftBarButtonItem:v27 animated:v62];
    }

    else
    {
      [v19 setLeftBarButtonItem:0 animated:v62];
    }

    v28 = +[NSMutableArray array];
    if ([v18 isConfigureVisible])
    {
      if (MUISolariumFeatureEnabled())
      {
        v29 = [(MessageListViewController *)self _deferredMenuForConfigureButtonItem];
        goto LABEL_31;
      }

      v30 = [(MessageListViewController *)self configureButtonItem];
      [v28 addObject:v30];
    }

    v29 = 0;
LABEL_31:
    if ([v18 isFilterVisible])
    {
      v31 = [(MessageListViewController *)self filterButtonItem];
      [v28 addObject:v31];
    }

    if (([v18 isSelectVisible] & 1) != 0 || objc_msgSend(v18, "isCancelVisible"))
    {
      if (MUISolariumFeatureEnabled())
      {
        v32 = +[UIBarButtonItem mf_newFixedSpaceItem];
        [v28 addObject:v32];

        [(MessageListViewController *)self _solariumSelectButtonItem];
      }

      else
      {
        [(MessageListViewController *)self selectMessageListViewButtonItem];
      }
      v33 = ;
      [v28 addObject:v33];
    }

    else
    {
      if (([v18 isEditVisible] & 1) == 0 && !objc_msgSend(v18, "isCancelVisible"))
      {
        goto LABEL_46;
      }

      v33 = [(MessageListViewController *)self currentEditButtonItem];
      if (v63)
      {
        v34 = 2;
      }

      else
      {
        v34 = 0;
      }

      [UIBarButtonItem mf_configureMultiBarButtonItem:v33 usingStyle:v34];
      [v28 addObject:v33];
    }

LABEL_46:
    if ([v18 isShelfVisible])
    {
      v35 = +[UIBarButtonItem mf_newFixedSpaceItem];
      [v28 addObject:v35];

      v36 = [(MessageListViewController *)self shelfButtonItem];
      [v28 addObject:v36];
    }

    [v19 setRightBarButtonItems:v28 animated:v62];
    if (MUISolariumFeatureEnabled())
    {
      [v19 setAdditionalOverflowItems:v29];
    }

    goto LABEL_51;
  }
}

- (BOOL)shouldEnableEditButton
{
  v2 = [(MessageListViewController *)self dataSource];
  v3 = [v2 numberOfItemsInMessagesSections] > 0;

  return v3;
}

- (void)_updateNoContentViewAnimated:(BOOL)a3 suppressNoContentView:(BOOL)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017D6A4;
  v5[3] = &unk_100652748;
  v5[4] = self;
  v5[5] = a2;
  v6 = a3;
  v7 = a4;
  v4 = +[EFScheduler mainThreadScheduler];
  [v4 performBlock:v5];
}

- (void)_setContentUnavailableTitle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v34.receiver = self;
  v34.super_class = MessageListViewController;
  v7 = [(MessageListViewController *)&v34 _shouldDisplayOnboardingTip];
  if (!(([v6 length] == 0) | v7 & 1))
  {
    v15 = [(MessageListViewController *)self noContentView];
    if (v15)
    {
LABEL_18:

      goto LABEL_19;
    }

    v17 = +[MessageListViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138412546;
      v36 = v19;
      v37 = 2048;
      v38 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%@: %p> Make no content view visible", buf, 0x16u);
    }

    v20 = +[UIContentUnavailableConfiguration emptyConfiguration];
    [v20 setText:v6];
    v21 = +[UIColor mailMessageListBackgroundColor];
    v22 = [v20 background];
    [v22 setBackgroundColor:v21];

    v15 = [[UIContentUnavailableView alloc] initWithConfiguration:v20];
    [(MessageListViewController *)self setNoContentView:v15];
    [v15 setUserInteractionEnabled:0];
    v23 = 1.0;
    if (v4)
    {
      v23 = 0.0;
    }

    [v15 setAlpha:v23];
    v24 = [(MessageListViewController *)self collectionView];
    [v24 setBackgroundView:v15];

    if (v4)
    {
      objc_initWeak(buf, self);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10017DF78;
      v31[3] = &unk_100652770;
      v15 = v15;
      v32 = v15;
      objc_copyWeak(&v33, buf);
      [UIView animateWithDuration:v31 animations:0.25];
      objc_destroyWeak(&v33);

      objc_destroyWeak(buf);
    }

    else
    {
      v25 = [(MessageListViewController *)self conversationViewController];
      [v25 setNeedsUpdateContentUnavailableConfiguration];
    }

LABEL_17:

    goto LABEL_18;
  }

  v8 = [(MessageListViewController *)self noContentView];

  if (v8)
  {
    v9 = +[MessageListViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v36 = v11;
      v37 = 2048;
      v38 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> Hide no content view", buf, 0x16u);
    }

    v12 = [(MessageListViewController *)self noContentView];
    [(MessageListViewController *)self setNoContentView:0];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10017E004;
    v29[3] = &unk_10064C7E8;
    v13 = v12;
    v30 = v13;
    v14 = objc_retainBlock(v29);
    objc_initWeak(buf, self);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10017E010;
    v26[3] = &unk_100652798;
    v15 = v13;
    v27 = v15;
    objc_copyWeak(&v28, buf);
    v16 = objc_retainBlock(v26);
    if (v4)
    {
      [UIView animateWithDuration:v14 animations:v16 completion:0.25];
    }

    else
    {
      (v14[2])(v14);
      (v16[2])(v16, 1);
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);

    v20 = v30;
    goto LABEL_17;
  }

LABEL_19:
}

- (void)_updateStatusPrefix
{
  if ([(MessageListViewController *)self isSearchViewController]|| [(MessageListViewController *)self isPresentingSearchViewController])
  {
    v9 = [(MessageListViewController *)self mailStatusViewController];
    [v9 updatePrimaryStatusPrefix:0 secondaryStatusPrefix:0];
  }

  else
  {
    v9 = [(MessageListViewController *)self mailStatusViewController];
    v3 = [(MessageListViewController *)self selectedBucket];
    if (v3)
    {
      [(MessageListViewController *)self selectedBucket];
      v4 = MUILocalizedStringFromBucket();
    }

    else
    {
      v4 = 0;
    }

    v5 = [(MessageListViewController *)self mailboxes];
    v6 = [v5 firstObject];
    v7 = [v6 account];
    v8 = [v7 name];
    [v9 updatePrimaryStatusPrefix:v4 secondaryStatusPrefix:v8];

    if (v3)
    {
    }
  }
}

- (BOOL)shouldShowNavigationBarSubtitle
{
  v3 = [(MessageListViewController *)self shouldUseCustomNavigationBarTitleView];
  if (v3)
  {
    v4 = [(MessageListViewController *)self collectionView];
    [v4 contentOffset];
    v6 = v5;

    [(MessageListViewController *)self bucketsViewControllerHeight];
    LOBYTE(v3) = v6 + v7 > kMUIMessageListBucketBarVerticalPadding;
  }

  return v3;
}

- (MUIMessageListNavigationBarTitleView)navigationBarTitleView
{
  navigationBarTitleView = self->_navigationBarTitleView;
  if (!navigationBarTitleView)
  {
    v4 = [(MessageListViewController *)self splitViewController];
    v5 = [v4 messageListNavController];
    v6 = [v5 navigationBar];

    v7 = [v4 viewControllers];
    v8 = [v7 count];

    if (v8 == 1)
    {
      v9 = [v4 viewControllers];
      v10 = [v9 firstObject];

      v11 = [v10 navigationBar];

      v6 = v11;
    }

    v12 = [[MUIMessageListNavigationBarTitleView alloc] initWithNavigationBar:v6];
    v13 = self->_navigationBarTitleView;
    self->_navigationBarTitleView = v12;

    navigationBarTitleView = self->_navigationBarTitleView;
  }

  return navigationBarTitleView;
}

- (void)_updateBackButtonImageWithCount:(unint64_t)a3
{
  v19 = [(MessageListViewController *)self navigationItem];
  if ([(MessageListViewController *)self isSearchViewController]|| [(MessageListViewController *)self isPresentingSearchViewController])
  {
    [v19 setBackButtonTitle:0];
    [v19 setBackBarButtonItem:0];
    [v19 setHidesBackButton:1];
    goto LABEL_25;
  }

  v5 = [(MessageListViewController *)self state];
  v6 = v5;
  if (a3 - 1 > 0x3E6)
  {
    v8 = 0;
  }

  else
  {
    if ([v5 containsDraftsMailbox])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v6 containsOutbox];
    }

    v8 = v7 ^ 1;
  }

  v9 = [(MessageListViewController *)self title];
  if (([(MessageListViewController *)self isBucketBarHidden]& 1) != 0)
  {
LABEL_11:
    v10 = 0;
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_21:
    v18 = [v19 backBarButtonItem];

    if (!v18)
    {
      if (v10)
      {
        goto LABEL_29;
      }

      [v19 setBackButtonTitle:0];
      [v19 setBackBarButtonItem:0];
      goto LABEL_24;
    }

    [v19 setBackBarButtonItem:0];
    v14 = [(MessageListViewController *)self conversationViewController];
    [v14 _setNavigationBarTitleViewNeedsLayout];
LABEL_23:

    goto LABEL_24;
  }

  v11 = [(MessageListViewController *)self senderSpecificMessageListItem];
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    if (![(MessageListViewController *)self selectedBucket])
    {
      goto LABEL_11;
    }

    v17 = _EFLocalizedString();
    v10 = 1;
    v11 = v9;
    v9 = v17;
  }

  if (!v8)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ([(MessageListViewController *)self currentUnreadCount]!= a3)
  {
    [(MessageListViewController *)self setCurrentUnreadCount:a3];
    v12 = [NSNumberFormatter ef_formatUnsignedInteger:a3 withGrouping:1];
    v13 = MUISolariumFeatureEnabled();
    v14 = sub_10022EFA4(v12, v13);
    v15 = [[UIBarButtonItem alloc] initWithImage:v14 style:0 target:0 action:0];
    [v15 setTitle:v9];
    v16 = sub_10022F2FC(v12);
    [v15 setLargeContentSizeImage:v16];

    [v19 setBackBarButtonItem:v15];
    goto LABEL_23;
  }

  if (v10)
  {
LABEL_29:
    [v19 setBackButtonTitle:v9];
    if (MUISolariumFeatureEnabled())
    {
      [v19 setBackButtonDisplayMode:2];
    }
  }

LABEL_24:

LABEL_25:
}

- (void)_filterCommand:(id)a3
{
  v4 = a3;
  if (([(MessageListViewController *)self isEditing]& 1) == 0)
  {
    [(MessageListViewController *)self filterButtonPressed:v4];
  }
}

- (void)setFilterButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(MessageListViewController *)self filterButtonItem];
  [v4 setFilterEnabled:v3];
}

- (BOOL)isFilterButtonAvailable
{
  v2 = [(MessageListViewController *)self filterViewModel];
  v3 = [v2 isFilterAvailable];

  return v3;
}

- (void)setFiltersEnabled:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MessageListViewController;
  [(MessageListViewController *)&v7 setFiltersEnabled:a3];
  if (self && MUISolariumFeatureEnabled() && +[UIDevice mf_isPadIdiom])
  {
    v4 = [(MessageListViewController *)self filterController];
    v5 = [v4 viewModel];
    [(MessageListViewController *)self updateFilterControlWithFilterViewModel:v5];
  }

  else
  {
    [(MessageListViewController *)self updateBarButtons];
  }

  v6 = +[_TtC10MobileMail14MailTipsHelper shared];
  [v6 filterByUnreadUsed];
}

- (void)filterPickerButtonPressed
{
  v3 = [(MessageListViewController *)self filterCriteriaButtonItem];
  [(MessageListViewController *)self filterPickerButtonPressedWithSourceItem:?];
}

- (void)filterPickerButtonPressedWithSourceItem:(id)a3
{
  v11 = a3;
  v4 = [MFMailboxFilterPickerViewModel alloc];
  v5 = [(MessageListViewController *)self filterViewModel];
  v6 = [(MFMailboxFilterPickerViewModel *)v4 initWithFilterViewModel:v5 delegate:self];

  v7 = [[MFMailboxFilterPickerViewController alloc] initWithViewModel:v6 delegate:self];
  v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  [v8 setModalPresentationStyle:7];
  v9 = [v8 popoverPresentationController];
  [v9 setDelegate:self];
  if (MUISolariumFeatureEnabled() && (*(EFIsNotNull + 16))(EFIsNotNull, v11))
  {
    [v9 setSourceItem:v11];
  }

  else
  {
    v10 = [(MessageListViewController *)self filterPickerButtonItem];
    [v9 setBarButtonItem:v10];
  }

  [(MessageListViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)applyFilterPredicate:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MessageListViewController;
  [(MessageListViewController *)&v7 applyFilterPredicate:v4];
  v5 = [(MessageListViewController *)self mailboxes];
  v6 = sub_10016FE78(self, v4);
  sub_10016FFF0(self, v5, v6);
}

- (void)updateFilterControlWithFilterViewModel:(id)a3
{
  v10 = a3;
  if (!MUISolariumFeatureEnabled())
  {
    v4 = [(MessageListViewController *)self filterPickerControl];
    v8 = [v10 isFilterEnabled];
    v6 = v8;
    if (!v8)
    {
      v7 = 0;
      goto LABEL_12;
    }

LABEL_8:
    v7 = [v10 selectedFiltersDescription];
LABEL_12:
    [v4 setFilterDescription:v7];
    goto LABEL_16;
  }

  if (!self || !MUISolariumFeatureEnabled() || !+[UIDevice mf_isPadIdiom])
  {
    v4 = [(MessageListViewController *)self filterCriteriaButtonItem];
    v9 = [v10 isFilterEnabled];
    v6 = v9;
    if (!v9)
    {
      v7 = 0;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v4 = [(MessageListViewController *)self mailStatusViewController];
  v5 = [v10 isFilterEnabled];
  v6 = v5;
  if (v5)
  {
    v7 = [v10 selectedFiltersDescription];
  }

  else
  {
    v7 = 0;
  }

  [v4 updateStatusWithFilterCriteria:v7];
LABEL_16:
  if (v6)
  {
  }
}

- (void)_testing_enableMessageListFilter
{
  v3 = [(MessageListViewController *)self filterButtonItem];
  [(MessageListViewController *)self filterButtonPressed:v3];

  v4 = [(MessageListViewController *)self messageListItems];
  v5 = [v4 count];

  v6 = +[MessageListViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412802;
    v10 = v8;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> Enabling mailbox filter: preChangeCount=%lu", &v9, 0x20u);
  }
}

- (void)_testing_disableMessageListFilter
{
  v3 = [(MessageListViewController *)self filterButtonItem];
  [(MessageListViewController *)self filterButtonPressed:v3];

  v4 = [(MessageListViewController *)self messageListItems];
  v5 = [v4 count];

  v6 = +[MessageListViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412802;
    v10 = v8;
    v11 = 2048;
    v12 = self;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> Disable mailbox filter: preChangeCount=%lu", &v9, 0x20u);
  }
}

- (UIBarButtonItem)shelfButtonItem
{
  shelfButtonItem = self->_shelfButtonItem;
  if (!shelfButtonItem)
  {
    v4 = [UIImage systemImageNamed:MFImageGlyphShelf];
    v5 = [[UIBarButtonItem alloc] initWithImage:v4 style:0 target:self action:"_shelfButtonTapped:"];
    v6 = self->_shelfButtonItem;
    self->_shelfButtonItem = v5;

    shelfButtonItem = self->_shelfButtonItem;
  }

  return shelfButtonItem;
}

- (void)_shelfButtonTapped:(id)a3
{
  v4 = [(MessageListViewController *)self scene];
  v3 = [v4 _sceneIdentifier];
  [MFBayAdoption requestShelfPresentationForSceneWithIdentifier:v3];
}

- (void)deselectSelectedItemsInCollectionView
{
  v3.receiver = self;
  v3.super_class = MessageListViewController;
  [(MessageListViewController *)&v3 deselectSelectedItemsInCollectionView];
  [(MessageListViewController *)self _exitMultiSelectionForce:1];
}

- (void)_setEditing:(BOOL)a3 animated:(BOOL)a4 preserveSelection:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = [(MessageListViewController *)self isEditing];
  if (v9 != v7)
  {
    v10 = v9;
    v37.receiver = self;
    v37.super_class = MessageListViewController;
    [(MessageListViewController *)&v37 setEditing:v7 animated:v6];
    v11 = [(MessageListViewController *)self state];
    [v11 setIsEditing:v7];

    v12 = [(MessageListViewController *)self mailboxPickerDelegate];
    [v12 messageListViewController:self setEditing:v7 animated:v6];

    v13 = [(MessageListViewController *)self previousMessageListSelectionModel];
    v14 = [(MessageListViewController *)self _inMultiSelectionMode];
    v15 = v14;
    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v7;
    }

    if ((v16 & v14) == 1)
    {
      v13 = [(MessageListViewController *)self messageListSelectionModel];
    }

    if (v15)
    {
      v17 = 1;
    }

    else
    {
      v17 = [v13 shouldRestoreSelection];
    }

    v18 = +[MessageListViewController log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v39 = v20;
      v40 = 2048;
      v41 = self;
      v42 = 1024;
      v43 = v7;
      v44 = 1024;
      v45 = v15;
      v46 = 1024;
      v47 = v17;
      v48 = 2114;
      v49 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> setEditing: %{BOOL}d, inMultiSelection: %{BOOL}d, shouldRestoreSelection: %{BOOL}d, previousSelectionModel: %{public}@", buf, 0x32u);
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10017F7C4;
    v31[3] = &unk_1006528D0;
    v31[4] = self;
    v33 = v7;
    v34 = v6;
    v35 = v10;
    v36 = v17;
    v21 = v13;
    v32 = v21;
    v22 = objc_retainBlock(v31);
    if (v7)
    {
      v23 = v21;
      if ((v17 & 1) == 0)
      {
        v23 = [[MessageListSelectionModel alloc] initWithDataSource:self delegate:self];
      }

      [(MessageListViewController *)self setMessageListSelectionModel:v23];
      if ((v17 & 1) == 0)
      {
      }

      [(MessageListViewController *)self setPreviousMessageListSelectionModel:0];
      v24 = [(MessageListViewController *)self conversationViewController];
      [v24 setSelectionDataSource:self];
    }

    else
    {
      if (v5)
      {
        v30 = [(MessageListViewController *)self messageListSelectionModel];
        [v30 preserveSelection];
        [(MessageListViewController *)self setPreviousMessageListSelectionModel:v30];
      }

      else
      {
        [(MessageListViewController *)self setPreviousMessageListSelectionModel:0];
      }

      [(MessageListViewController *)self setMessageListSelectionModel:0];
      sub_10048A174(self, 0);
      v24 = [(MessageListViewController *)self conversationViewController];
      [v24 setSelectionDataSource:0];
    }

    v25 = [(MessageListViewController *)self _inMultiSelectionMode];
    v26 = [(MessageListViewController *)self layoutValuesHelper];
    [v26 setInMultiSelectionMode:v25];

    if (v6)
    {
      (v22[2])(v22);
    }

    else
    {
      [UIView performWithoutAnimation:v22];
    }

    [(MessageListViewController *)self _updateTitle];
    [(MessageListViewController *)self updateBarButtons];
    v27 = [(MessageListViewController *)self searchBar];
    [v27 _setEnabled:v7 ^ 1 animated:v6];

    [(MessageListViewController *)self _setRowDeletionEnabled:v7 animated:v6];
    v28 = [(MessageListViewController *)self state];
    [v28 isEditing];

    v29 = [(MessageListViewController *)self conversationViewController];
    [v29 _updateBarButtonsAnimated:1 force:1 isShowingTitle:0];
  }
}

- (void)_editButtonTapped:(id)a3
{
  [(MessageListViewController *)self setEditing:[(MessageListViewController *)self isEditing]^ 1 animated:1];
  if (![(MessageListViewController *)self isSearchViewController])
  {
    v4 = [(MessageListViewController *)self isEditing]^ 1;

    [(MessageListViewController *)self changeTipShouldDisplayTo:v4];
  }
}

- (void)enterEditMode
{
  if (([(MessageListViewController *)self isEditing]& 1) == 0)
  {

    [(MessageListViewController *)self _editButtonTapped:0];
  }
}

- (void)exitEditMode
{
  if ([(MessageListViewController *)self isEditing])
  {

    [(MessageListViewController *)self _editButtonTapped:0];
  }
}

- (id)_currentBulkSelectionWithDebugLabel:(id)a3
{
  v4 = @"unknown operation";
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [(MessageListViewController *)self messageListSelectionModel];
  v7 = [v6 currentMessageListItemSelection];
  if (!v7)
  {
    v8 = +[MessageListViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v6 ef_publicDescription];
      v13 = 138413058;
      v14 = v11;
      v15 = 2048;
      v16 = self;
      v17 = 2112;
      v18 = v5;
      v19 = 2114;
      v20 = v12;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "<%@: %p> Bulk message selection for %@ is nil: %{public}@", &v13, 0x2Au);
    }
  }

  return v7;
}

- (UIBarButtonItem)configureButtonItem
{
  if (!self->_configureButtonItem)
  {
    if (MUISolariumFeatureEnabled())
    {
      v3 = [UIBarButtonItem alloc];
      v4 = [UIImage systemImageNamed:MFImageGlyphMoreActions];
      v5 = [(MessageListViewController *)self _menuForConfigureButtonItem];
      v6 = [v3 initWithImage:v4 menu:v5];
    }

    else
    {
      v4 = [(MessageListViewController *)self buttonTintColor];
      v5 = [(MessageListViewController *)self _menuForConfigureButtonItem];
      v6 = [UIBarButtonItem mui_capsuleButtonItemWithTitle:0 titleColor:v4 imageName:MFImageGlyphMoreActions menu:v5];
    }

    configureButtonItem = self->_configureButtonItem;
    self->_configureButtonItem = v6;
  }

  v8 = self->_configureButtonItem;

  return v8;
}

- (id)_solariumSelectButtonItem
{
  if ([(MessageListViewController *)self isEditing])
  {
    p_editButtonItem = &self->_editButtonItem;
    editButtonItem = self->_editButtonItem;
    if (editButtonItem)
    {
      goto LABEL_7;
    }

    objc_initWeak(&location, self);
    v5 = _EFLocalizedString();
    v6 = v14;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001803EC;
    v14[3] = &unk_10064F278;
    objc_copyWeak(&v15, &location);
    v7 = [UIAction actionWithTitle:v5 image:0 identifier:0 handler:v14];

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 primaryAction:v7];
  }

  else
  {
    p_editButtonItem = &self->_selectButtonItem;
    editButtonItem = self->_selectButtonItem;
    if (editButtonItem)
    {
      goto LABEL_7;
    }

    objc_initWeak(&location, self);
    v9 = _EFLocalizedString();
    v6 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100180454;
    v12[3] = &unk_10064F278;
    objc_copyWeak(&v13, &location);
    v7 = [UIAction actionWithTitle:v9 image:0 identifier:0 handler:v12];

    v8 = [[UIBarButtonItem alloc] initWithPrimaryAction:v7];
  }

  v10 = *p_editButtonItem;
  *p_editButtonItem = v8;

  objc_destroyWeak(v6 + 4);
  objc_destroyWeak(&location);
  editButtonItem = *p_editButtonItem;
LABEL_7:

  return editButtonItem;
}

- (id)_preSolariumSelectMessageListViewButtonItem
{
  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100180794;
  v14 = &unk_10064F278;
  objc_copyWeak(&v15, &location);
  v3 = [UIAction actionWithHandler:&v11];
  v4 = _EFLocalizedString();
  v5 = _EFLocalizedString();
  if ((EMBlackPearlIsFeatureEnabled() & 1) != 0 || _os_feature_enabled_impl() && EMIsGreymatterAvailable())
  {
    if (self->_selectButtonItem && ([(MessageListViewController *)self isEditing:v11]& 1) != 0)
    {
      v6 = [(MessageListViewController *)self buttonTintColor];
      v7 = [UIBarButtonItem mui_capsuleButtonItemWithTitle:v5 titleColor:v6 imageName:0 action:v3];
    }

    else
    {
      v6 = [(MessageListViewController *)self buttonTintColor:v11];
      v7 = [UIBarButtonItem mui_capsuleButtonItemWithTitle:v4 titleColor:v6 imageName:0 action:v3];
    }
  }

  else if (self->_selectButtonItem && ([(MessageListViewController *)self isEditing:v11]& 1) != 0)
  {
    v6 = [(MessageListViewController *)self _configureSelectButtonWithTitle:v5];
    v7 = [[UIBarButtonItem alloc] initWithCustomView:v6];
  }

  else
  {
    v6 = [(MessageListViewController *)self _configureSelectButtonWithTitle:v4, v11, v12, v13, v14];
    v7 = [[UIBarButtonItem alloc] initWithCustomView:v6];
  }

  selectButtonItem = self->_selectButtonItem;
  self->_selectButtonItem = v7;

  v9 = self->_selectButtonItem;
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

- (id)_configureSelectButtonWithTitle:(id)a3
{
  v4 = a3;
  v5 = +[UIButtonConfiguration filledButtonConfiguration];
  [v5 setCornerStyle:4];
  [v5 setTitle:v4];
  [v5 setTitleTextAttributesTransformer:&stru_100652910];
  v6 = [(MessageListViewController *)self buttonTintColor];
  [v5 setBaseForegroundColor:v6];

  [v5 setContentInsets:{5.0, 12.0, 5.0, 12.0}];
  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100180AC4;
  v14 = &unk_10064F278;
  objc_copyWeak(&v15, &location);
  v7 = [UIAction actionWithHandler:&v11];
  v8 = [UIButton buttonWithConfiguration:v5 primaryAction:v7, v11, v12, v13, v14];

  v9 = +[UIColor quaternarySystemFillColor];
  [v8 setTintColor:v9];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v8;
}

- (id)_mailCategorizationOptionView
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100180BBC;
  v4[3] = &unk_10064DB40;
  v4[4] = self;
  v2 = [UICustomViewMenuElement elementWithViewProvider:v4];

  return v2;
}

- (id)_menuForConfigureButtonItem
{
  v2 = [(MessageListViewController *)self _deferredMenuForConfigureButtonItem];
  v6 = v2;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:v3];

  return v4;
}

- (UIBarButtonItem)selectAllButtonItem
{
  v3 = sub_100181DA8(self);
  if ((MUISolariumFeatureEnabled() & 1) == 0 && ((EMBlackPearlIsFeatureEnabled() & 1) != 0 || _os_feature_enabled_impl() && EMIsGreymatterAvailable()))
  {
    v6 = _EFLocalizedString();
    objc_initWeak(&location, self);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100181E90;
    v16 = &unk_10064F278;
    objc_copyWeak(&v17, &location);
    v7 = [UIAction actionWithHandler:&v13];
    v8 = [(MessageListViewController *)self buttonTintColor:v13];
    v9 = [UIBarButtonItem mui_capsuleButtonItemWithTitle:v6 titleColor:v8 imageName:0 action:v7];
    selectAllButtonItem = self->_selectAllButtonItem;
    self->_selectAllButtonItem = v9;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else if (!self->_selectAllButtonItem)
  {
    v4 = [UIBarButtonItem mf_newSelectionBarButtonItemWithTarget:self action:"_selectAllButtonPressed:"];
    [UIBarButtonItem mf_configureSelectionBarButtonItem:v4 usingStyle:!v3];
    v5 = self->_selectAllButtonItem;
    self->_selectAllButtonItem = v4;
  }

  v11 = self->_selectAllButtonItem;

  return v11;
}

- (void)_dismissSearchViewController
{
  v3 = [(MessageListViewController *)self searchController];
  v4 = [v3 delegate];
  [v4 willDismissSearchController:v3];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100182020;
  v6[3] = &unk_10064C7E8;
  v5 = v3;
  v7 = v5;
  [(MessageListViewController *)self dismissViewControllerAnimated:1 completion:v6];
}

- (void)increaseSize:(id)a3
{
  v5 = a3;
  v4 = [(MessageListViewController *)self conversationViewController];
  [v4 increaseSize:v5];
}

- (void)decreaseSize:(id)a3
{
  v5 = a3;
  v4 = [(MessageListViewController *)self conversationViewController];
  [v4 decreaseSize:v5];
}

- (void)_openMessageCommandInvoked:(id)a3
{
  v4 = [(MessageListViewController *)self _messageListItemSelectionCreateIfNeeded:1];
  v5 = [v4 messageListItems];

  if ([v5 count] < 0xB)
  {
    [(MessageListViewController *)self _openMessages:v5];
  }

  else
  {
    v6 = _EFLocalizedString();
    v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v5 count]);

    v8 = _EFLocalizedString();
    v9 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];
    v10 = _EFLocalizedString();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100182488;
    v15[3] = &unk_100650850;
    v15[4] = self;
    v16 = v5;
    v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v15];
    [v9 addAction:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
    v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
    [v9 addAction:v14];

    [(MessageListViewController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)_openMessages:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [(MessageListViewController *)self dataSource];
        v10 = [v8 itemID];
        v11 = [v9 indexPathForItemIdentifier:v10];

        if (v11)
        {
          v12 = [(MessageListViewController *)self _sceneActivationConfigurationForItemAtIndexPath:v11];
          if (v12)
          {
            v13 = +[UIApplication sharedApplication];
            [v13 _requestSceneSessionActivationWithConfiguration:v12 errorHandler:&stru_1006529F0];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_deleteMessageCommandInvoked:(id)a3
{
  v4 = a3;
  if ([(MessageListViewController *)self isEditing])
  {
    [(MessageListViewController *)self deleteAction:v4 showChoices:0 preferDeleteOrArchive:1];
  }

  else
  {
    [(MessageListViewController *)self _deleteOrArchiveConversationReferenceItemWithPreference:1];
  }
}

- (id)_messageListItemSelectionCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(MessageListViewController *)self messageListSelectionModel];
  v6 = [v5 currentMessageListItemSelection];

  if (!v6 && v3)
  {
    v7 = [(MessageListViewController *)self conversationViewController];
    v8 = [v7 referenceMessageListItem];

    v9 = [MSMessageListItemSelection alloc];
    if (v8)
    {
      v12 = v8;
      v10 = [NSArray arrayWithObjects:&v12 count:1];
    }

    else
    {
      v10 = &__NSArray0__struct;
    }

    v6 = [v9 initWithMessageListItems:v10];
    if (v8)
    {
    }
  }

  return v6;
}

- (void)_archiveShortcutInvoked:(id)a3
{
  v4 = a3;
  if ([(MessageListViewController *)self isEditing])
  {
    [(MessageListViewController *)self deleteAction:v4 showChoices:0 preferDeleteOrArchive:2];
  }

  else
  {
    [(MessageListViewController *)self _deleteOrArchiveConversationReferenceItemWithPreference:2];
  }
}

- (void)_deleteOrArchiveConversationReferenceItemWithPreference:(unint64_t)a3
{
  v6 = [(MessageListViewController *)self lastSelectedItemID];

  if (v6)
  {
    v7 = [(MessageListViewController *)self _messageListItemSelectionCreateIfNeeded:1];
    if ([v7 isSelectAll])
    {
      v11 = +[NSAssertionHandler currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"MessageListViewController.m" lineNumber:4472 description:{@"Crash to avoid deleting all messages in a mailbox without prompting the user: %@", v7}];
    }

    v8 = [(MessageListViewController *)self undoManager];
    v9 = [MFDestructiveTriageInteractionFactory interactionWithMessageListItemSelection:v7 undoManager:v8 origin:2 actor:2 deleteOrArchive:a3];

    [v9 setDelegate:self];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100182B5C;
    v12[3] = &unk_10064D1D0;
    v12[4] = self;
    v10 = v9;
    v13 = v10;
    [v10 performInteractionWithCompletion:v12];
  }
}

- (void)deleteMessagesWithItemIDs:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self dataSource];
  v6 = [v5 messageListItemsForItemIDs:v4];
  v7 = [EFFuture combine:v6];
  v8 = [v7 result];
  v9 = [v8 ef_filter:EFIsNotNull];

  if ([v9 count])
  {
    v10 = [(MessageListViewController *)self undoManager];
    v11 = [MFDestructiveTriageInteractionFactory interactionWithMessageListItems:v9 undoManager:v10 origin:2 actor:2 deleteOrArchive:1];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100182E54;
    v13[3] = &unk_10064D1D0;
    v13[4] = self;
    v14 = v11;
    v12 = v11;
    [v12 performInteractionWithCompletion:v13];
  }
}

- (void)_bulkDeleteButtonPressed:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "User Tap on Delete button", v6, 2u);
  }

  [(MessageListViewController *)self deleteAction:v4 showChoices:0 preferDeleteOrArchive:0];
}

- (void)_bulkDeleteButtonLongPressed:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "User Tap on Delete (with long press) button", v6, 2u);
  }

  [(MessageListViewController *)self deleteAction:v4 showChoices:1 preferDeleteOrArchive:0];
}

- (void)deleteAction:(id)a3 showChoices:(BOOL)a4 preferDeleteOrArchive:(unint64_t)a5
{
  v6 = a4;
  v8 = [(MessageListViewController *)self messageListSelectionModel];
  v9 = [v8 isSelectAll];

  v10 = +[NSUserDefaults em_userDefaults];
  v11 = [v10 BOOLForKey:ShowMessageDeleteConfirmationKey];

  if ((v11 | v6 | v9))
  {
    if (v9)
    {
      v12 = [(MessageListViewController *)self mailboxes];
      LOBYTE(v13) = [EMMailbox deleteMovesToTrashForMailboxes:v12];

      v14 = [(MessageListViewController *)self mailboxes];
      LODWORD(v15) = [EMMailbox supportsArchivingForMailboxes:v14];

      v16 = [(MessageListViewController *)self mailboxes];
      v17 = [EMMailbox shouldArchiveByDefaultForMailboxes:v16];
    }

    else
    {
      v21 = [(MessageListViewController *)self messageListSelectionModel];
      v13 = [v21 deleteSelectionState];

      v17 = (v13 >> 1) & 1;
      v15 = (v13 >> 2) & 1;
    }

    v22 = [(MessageListViewController *)self messageListSelectionModel];
    v23 = [v22 count];

    if (v13)
    {
      if (v9)
      {
        v24 = +[NSBundle mainBundle];
        v63 = [v24 localizedStringForKey:@"TRASH_ALL_ALERT_TITLE" value:&stru_100662A88 table:@"Main"];

        v25 = +[NSBundle mainBundle];
        v26 = [v25 localizedStringForKey:@"TRASH_ALL_ALERT_MESSAGE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        v26 = 0;
        v63 = 0;
      }

      v29 = +[NSBundle mainBundle];
      v30 = v29;
      v31 = @"TRASH_EMAIL";
      if (v23 > 1)
      {
        v31 = @"TRASH_SELECTED_EMAILS";
      }

      if (v9)
      {
        v32 = @"TRASH_ALL_CONFIRMATION";
      }

      else
      {
        v32 = v31;
      }
    }

    else
    {
      if (v9)
      {
        v27 = +[NSBundle mainBundle];
        v63 = [v27 localizedStringForKey:@"DELETE_ALL_ALERT_TITLE" value:&stru_100662A88 table:@"Main"];

        v28 = +[NSBundle mainBundle];
        v26 = [v28 localizedStringForKey:@"DELETE_ALL_ALERT_MESSAGE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        v26 = 0;
        v63 = 0;
      }

      v29 = +[NSBundle mainBundle];
      v30 = v29;
      v33 = @"TRASH_EMAIL";
      if (v23 > 1)
      {
        v33 = @"TRASH_SELECTED_EMAILS";
      }

      if (v9)
      {
        v32 = @"DELETE_ALL_CONFIRMATION";
      }

      else
      {
        v32 = v33;
      }
    }

    v61 = [v29 localizedStringForKey:v32 value:&stru_100662A88 table:@"Main"];

    v34 = +[NSBundle mainBundle];
    v35 = v34;
    v36 = @"ARCHIVE_EMAIL";
    if (v23 > 1)
    {
      v36 = @"ARCHIVE_SELECTED_EMAILS";
    }

    if (v9)
    {
      v37 = @"ARCHIVE_ALL_CONFIRMATION";
    }

    else
    {
      v37 = v36;
    }

    v60 = [v34 localizedStringForKey:v37 value:&stru_100662A88 table:@"Main"];

    v62 = v26;
    v38 = +[NSBundle mainBundle];
    v59 = [v38 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];

    if (v6)
    {
      if (a5)
      {
        v39 = 0;
      }

      else
      {
        v39 = v15;
      }
    }

    else
    {
      v39 = 0;
    }

    if (a5)
    {
      v40 = a5 == 2;
    }

    else
    {
      v40 = v17;
    }

    v41 = [NSMutableArray alloc];
    v42 = +[NSUserDefaults em_userDefaults];
    v43 = [v42 objectForKey:EMUserDefaultLogMassDeletion];
    v44 = [v41 initWithArray:v43];

    v45 = objc_alloc_init(NSMutableDictionary);
    if ([v44 count] >= 0x1F)
    {
      [v44 removeObjectsInRange:{0, 2}];
    }

    v46 = [UIAlertController alertControllerWithTitle:v63 message:v62 preferredStyle:1];
    [v46 setModalPresentationStyle:7];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_100183B48;
    v74[3] = &unk_100652A58;
    v74[4] = self;
    v77 = v9;
    v47 = v45;
    v75 = v47;
    v48 = v44;
    v76 = v48;
    v49 = objc_retainBlock(v74);
    v50 = v17 & v39;
    if ((v17 & v39 & 1) != 0 || !v40)
    {
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_100183D60;
      v70[3] = &unk_100652A80;
      v70[4] = self;
      v73 = v9;
      v71 = v47;
      v72 = v49;
      v17 = [UIAlertAction actionWithTitle:v61 style:2 handler:v70];
      [v46 addAction:v17];
    }

    if ((v40 | v50) == 1)
    {
      if (v9)
      {
        v17 = +[NSBundle mainBundle];
        v51 = [v17 localizedStringForKey:@"ARCHIVE_ALL_ALERT_TITLE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        v51 = 0;
      }

      [v46 setTitle:v51];
      if (v9)
      {

        v17 = +[NSBundle mainBundle];
        v52 = [v17 localizedStringForKey:@"ARCHIVE_ALL_ALERT_MESSAGE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        v52 = 0;
      }

      [v46 setMessage:v52];
      if (v9)
      {
      }

      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_100183EA4;
      v67[3] = &unk_100650800;
      v68 = v47;
      v69 = v49;
      v53 = [UIAlertAction actionWithTitle:v60 style:0 handler:v67];
      [v46 addAction:v53];
    }

    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100183F24;
    v64[3] = &unk_100650850;
    v54 = v47;
    v65 = v54;
    v55 = v48;
    v66 = v55;
    v56 = [UIAlertAction actionWithTitle:v59 style:1 handler:v64];
    [v46 addAction:v56];

    v57 = [v46 popoverPresentationController];
    [v57 setDelegate:self];
    [v57 setPermittedArrowDirections:3];
    v58 = [(MessageListViewController *)self deleteButtonItem];
    [v57 setBarButtonItem:v58];

    [(MessageListViewController *)self presentViewController:v46 animated:1 completion:0];
  }

  else
  {
    v18 = [(MessageListViewController *)self messageListSelectionModel];
    v19 = [v18 deleteSelectionState];

    if ((v19 & 2) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    [(MessageListViewController *)self _deleteMessagesWithPreference:v20];
  }
}

- (void)_deleteMessagesWithPreference:(unint64_t)a3
{
  v5 = [(MessageListViewController *)self messageListSelectionModel];

  if (v5)
  {
    if (![(MessageListViewController *)self isEditing])
    {
      return;
    }

    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(MessageListViewController *)self messageListSelectionModel];
      [v7 type];
      v8 = NSStringFromMessageListSelectionType();
      v9 = [(MessageListViewController *)self messageListSelectionModel];
      *buf = 138412546;
      v26 = v8;
      v27 = 2048;
      v28 = [v9 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Delete/Archive messages with type: %@ (count: %ld)", buf, 0x16u);
    }

    v10 = [(MessageListViewController *)self _currentBulkSelectionWithDebugLabel:@"delete"];
    if (v10)
    {
      v11 = [(MessageListViewController *)self undoManager];
      v12 = [MFDestructiveTriageInteractionFactory interactionWithMessageListItemSelection:v10 undoManager:v11 origin:2 actor:2 deleteOrArchive:a3];

      v13 = [v10 messageListItems];
      if ([v10 isSelectAll])
      {
        v14 = +[MessageListViewController signpostLog];
        v15 = [(MessageListViewController *)self signpostID];
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v15, "MessageListViewController Delete", "The user has clicked SelectAll option to delete the messages", buf, 2u);
        }

        [v12 setDelegate:self];
      }

      else
      {
        v16 = [v10 messageListItems];
        v17 = [v16 count];

        if (v17)
        {
          v18 = [(MessageListViewController *)self messageSelectionStrategy];
          v19 = [v13 firstObject];
          v20 = [v19 itemID];
          v24 = v20;
          v21 = [NSArray arrayWithObjects:&v24 count:1];
          v22 = [v18 itemIDToSelectAfterDeletedMessageItemIDs:v21];
          [(MessageListViewController *)self setItemIDToSelectAfterMoveID:v22];
        }
      }

      [v12 performInteraction];
      v23 = [(MessageListViewController *)self scene];
      -[MessageListViewController setEditing:animated:](self, "setEditing:animated:", 0, [v23 isInExpandedEnvironment]);
    }
  }

  else
  {
    v10 = +[MessageListViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10048A4E8();
    }
  }
}

- (void)_bulkTransferButtonPressed:(id)a3
{
  if ([(MessageListViewController *)self isEditing])
  {
    v4 = [(MessageListViewController *)self moveButtonItem];
    sub_100184494(self, v4);
  }
}

- (void)_showTransferPickerForNonPredictiveMoveOfMessages:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(MessageListViewController *)self messageListSelectionModel];
    v6 = [v5 isSelectAll];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100184C94;
    v22[3] = &unk_100652AA8;
    v25 = v6;
    v22[4] = self;
    v7 = v4;
    v23 = v7;
    v8 = v5;
    v24 = v8;
    v9 = objc_retainBlock(v22);
    v10 = [(MessageListViewController *)self transferStackViewController];
    v18 = [v10 navigationController];

    if (v6)
    {
      v11 = 258;
    }

    else
    {
      v11 = 2;
    }

    v12 = [(MessageListViewController *)self _transferControllerWithMessages:v7 options:v11 interaction:0 didDismissHandler:0];
    v13 = [v12 transferNavigationController];
    [v13 setDidFinish:v9];
    [(MessageListViewController *)self setTransferController:v12];
    v14 = [(MessageListViewController *)self scene];
    v15 = [v14 mf_rootViewController];
    v16 = [(MessageListViewController *)self transferController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001851C8;
    v19[3] = &unk_10064C660;
    v17 = v18;
    v20 = v17;
    v21 = self;
    [v15 presentViewController:v16 animated:1 completion:v19];
  }
}

- (id)_previewMessagesForSelectAllMode:(BOOL)a3
{
  v3 = a3;
  v5 = [(MessageListViewController *)self messageListSelectionModel];
  if ([v5 isSelectAll])
  {
    v6 = [(MessageListViewController *)self collectionView];
    v7 = [(MessageListViewController *)self dataSource];
    v8 = v7;
    if (v3)
    {
      v9 = [v7 numberOfItemsInMessagesSections];
      v10 = [v8 itemIdentifiersInMessagesSections];
      v11 = v10;
      if (v9 >= 5)
      {
        v12 = 5;
      }

      else
      {
        v12 = v9;
      }

      v13 = [v10 subarrayWithRange:{0, v12}];
    }

    else
    {
      v14 = [v6 indexPathsForSelectedItems];
      v15 = [v14 count];

      v16 = [v6 indexPathsForSelectedItems];
      v17 = v16;
      if (v15 >= 5)
      {
        v18 = 5;
      }

      else
      {
        v18 = v15;
      }

      v19 = [v16 subarrayWithRange:{0, v18}];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100185410;
      v21[3] = &unk_100652218;
      v22 = v8;
      v13 = [v19 ef_map:v21];
    }
  }

  else
  {
    v13 = [v5 itemIDs];
  }

  return v13;
}

- (id)_transferControllerWithMessages:(id)a3 options:(unint64_t)a4 interaction:(id)a5 didDismissHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(MessageListViewController *)self scene];
  v14 = [[MFTransferSplitViewController alloc] initWithItems:v10 scene:v13 options:a4 didDismissHandler:v12];
  v15 = [(MessageListViewController *)self transferStackViewController];
  [(MFTransferSplitViewController *)v14 setStackViewController:v15];
  if ([(MessageListViewController *)self _inMultiSelectionMode])
  {
    [(MFTransferSplitViewController *)v14 setModalPresentationStyle:0];
    -[MFTransferSplitViewController setUsePushFromLeftPresentation:](v14, "setUsePushFromLeftPresentation:", [v13 isInExpandedEnvironment]);
  }

  else
  {
    [(MFTransferSplitViewController *)v14 setModalPresentationStyle:7];
    v16 = [v11 presentationSource];
    v17 = [(MFTransferSplitViewController *)v14 popoverPresentationController];
    [v17 setSourceItem:v16];
  }

  return v14;
}

- (void)_setRowDeletionEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [MFUserInteractionAssertion interactionAssertionWithReason:@"setRowDeletionEnabled : [currentTableView setEditing:enabled animated:animated] " timeout:1.0];
  v8 = v5 || [(MessageListViewController *)self isSearchViewController]|| [(MessageListViewController *)self isPresentingSearchViewController];
  v9 = [(MessageListViewController *)self navigationItem];
  [v9 setHidesBackButton:v8 animated:v4];

  v10 = [(MessageListViewController *)self scene];
  v11 = [v10 splitViewController];
  v12 = [v11 traitCollection];
  v13 = [v12 horizontalSizeClass];

  v14 = [(MessageListViewController *)self transferController];
  if (v14)
  {
    v30 = v10;
    v15 = [v10 mf_rootViewController];
    v16 = [v15 presentedViewController];
    v17 = [(MessageListViewController *)self transferController];
    v18 = v16 == v17;

    v10 = v30;
  }

  else
  {
    v18 = 0;
  }

  if ((*(self + 8) & 1) != 0 && v13 == 2 && !v18)
  {
    v19 = [MFUserInteractionAssertion interactionAssertionWithReason:@"Performing Stack View Animations" timeout:1.0];

    v20 = [(MessageListViewController *)self transferStackViewController];
    v21 = [v11 messageDetailNavController];
    v22 = [(MessageListViewController *)self isTransferStackVisible];
    if (v5)
    {
      if ((v22 & 1) == 0)
      {
        v23 = [(MessageListViewController *)self messageListSelectionModel];
        v24 = -[MessageListViewController _previewMessagesForSelectAllMode:](self, "_previewMessagesForSelectAllMode:", [v23 isSelectAll]);

        v25 = [[UINavigationController alloc] initWithRootViewController:v20];
        [v25 setModalPresentationStyle:6];
        [v21 presentViewController:v25 animated:0 completion:0];
        [v20 displayStackedViewsForItemsWithIDs:v24];
        [v19 invalidate];
      }
    }

    else if (v22)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100185BC0;
      v32[3] = &unk_10064C660;
      v33 = v21;
      v34 = v19;
      [v20 removeStackedViewsAnimated:1 completion:v32];
    }

    if (v4)
    {
      v26 = +[UIApplication sharedApplication];
      if (([v26 isRunningTest:@"ExitEditMode"] & 1) != 0 || objc_msgSend(v26, "isRunningTest:", @"ExitEditModeLandscape"))
      {
        v31 = v10;
        v27 = [NSNotification notificationWithName:@"DidFinishExitEditModeTest" object:0];
        v28 = +[NSNotificationCenter defaultCenter];
        UIAnimationDragCoefficient();
        [v28 performSelector:"postNotification:" withObject:v27 afterDelay:v29 * 0.35];

        v10 = v31;
      }
    }

    v7 = v19;
  }

  [v7 invalidate];
}

- (void)_addMessagesToStackWithItemIDs:(id)a3
{
  v5 = a3;
  v4 = [(MessageListViewController *)self transferStackViewController];
  [v4 addStackedItemsWithItemIDs:v5];
}

- (void)_removeMessagesFromStackWithItemIDs:(id)a3
{
  v5 = a3;
  v4 = [(MessageListViewController *)self transferStackViewController];
  [v4 removeStackedItemsWithItemIDs:v5];
}

- (id)_bulkMarkMenuForCurrentSelection
{
  v3 = [(MessageListViewController *)self _currentBulkSelectionWithDebugLabel:@"mark"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isSelectAll];
    v6 = objc_alloc_init(NSMutableArray);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001860B0;
    v28[3] = &unk_100652AD0;
    v28[4] = self;
    v7 = objc_retainBlock(v28);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001860C0;
    v23[3] = &unk_100652AF8;
    v8 = v4;
    v24 = v8;
    v25 = self;
    v9 = v7;
    v26 = v9;
    v27 = v5;
    v10 = objc_retainBlock(v23);
    v11 = [v8 messageListItems];
    LOBYTE(v8) = [v11 ef_any:&stru_100652B18];

    v12 = (v10[2])(v10, 2);
    [v6 ef_addOptionalObject:v12];

    v13 = (v10[2])(v10, 15);
    [v6 ef_addOptionalObject:v13];

    if ((v8 & 1) == 0)
    {
      v14 = (v10[2])(v10, 6);
      [v6 ef_insertOptionalObject:v14 atIndex:0];

      v15 = (v10[2])(v10, 20);
      [v6 ef_addOptionalObject:v15];
    }

    if (v5)
    {
      v16 = [(MessageListViewController *)self messageListSelectionModel];
      v17 = [v16 itemIDs];
      v18 = [v17 count];

      v19 = +[NSBundle mainBundle];
      if (v18)
      {
        [v19 localizedStringForKey:@"INDETERMINATE_MESSAGE_SELECTION" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        [v19 localizedStringForKey:@"ALL_MESSAGES" value:&stru_100662A88 table:@"Main"];
      }
      v21 = ;
    }

    else
    {
      v21 = [(MessageListViewController *)self _menuTitleForSelection];
    }

    v20 = [UIMenu menuWithTitle:v21 children:v6];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_menuTitleForSelection
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
  v5 = [(MessageListViewController *)self messageListSelectionModel];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [v5 count]);

  return v6;
}

- (void)_selectAllButtonPressed:(id)a3
{
  v4 = sub_100181DA8(self);

  [(MessageListViewController *)self _selectOrDeselectAll:v4];
}

- (void)_selectOrDeselectAll:(BOOL)a3
{
  v3 = a3;
  v5 = +[MessageListViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v17 = 138412802;
    v18 = v7;
    v19 = 2048;
    v20 = self;
    v21 = 1024;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> Select All Button Pressed. Is select all: %d", &v17, 0x1Cu);
  }

  v8 = [(MessageListViewController *)self messageListSelectionModel];
  v9 = v8;
  if (v8)
  {
    if (v3)
    {
      v10 = [(MessageListViewController *)self flattenedMailboxesFuture];
      v11 = [v10 result];
      [v9 enableSelectAllWithMailboxes:v11];
    }

    else
    {
      [v8 disableSelectAll];
    }

    v14 = [(MessageListViewController *)self dataSource];
    [v14 reloadVisibleCellsInvalidatingCache:0];

    if (v3)
    {
      v15 = [(MessageListViewController *)self _previewMessagesForSelectAllMode:1];
      [(MessageListViewController *)self _addMessagesToStackWithItemIDs:v15];
    }

    else
    {
      v15 = [(MessageListViewController *)self transferStackViewController];
      [v15 removeStackedViewsAnimated:1 completion:0];
    }

    if (MUISolariumFeatureEnabled())
    {
      v16 = [(MessageListViewController *)self selectAllButtonItem];
      [UIBarButtonItem mf_configureSelectionBarButtonItem:v16 usingStyle:v3];
    }

    else
    {
      [(MessageListViewController *)self _updateNavigationBarButtonsWithForce:1];
    }

    v12 = [(MessageListViewController *)self conversationViewController];
    [v12 _updateBarButtonsAnimated:1 force:1];
  }

  else
  {
    v12 = +[MessageListViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      objc_claimAutoreleasedReturnValue();
      sub_10048A584();
    }
  }
}

- (id)_markAllAsReadTriageInteractionIfSupported
{
  if (sub_1001866D0(self))
  {
    v3 = [[MessageListSelectionModel alloc] initWithDataSource:self delegate:self];
    v4 = [(MessageListViewController *)self flattenedMailboxesFuture];
    v5 = [v4 result];
    [v3 enableSelectAllWithMailboxes:v5];

    v6 = [v3 currentMessageListItemSelection];
    v7 = [(MessageListViewController *)self undoManager];
    v8 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItemSelection:v6 undoManager:v7 origin:2 actor:2 reason:4];

    v9 = [(MessageListViewController *)self messageTriageInteractionHelper];
    [v8 setDelegate:v9];

    if ([v8 flagState])
    {
      v10 = +[MessageListViewController log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(MessageListViewController *)self mailboxes];
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not supported: No unread messages in mailbox(es): %@", &v15, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v12 = v8;
    }
  }

  else
  {
    v3 = +[MessageListViewController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(MessageListViewController *)self mailboxes];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not supported: Select All not supported in mailbox(es): %@", &v15, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)_markAllAsReadCommandInvoked:(id)a3
{
  v3 = [(MessageListViewController *)self _markAllAsReadTriageInteractionIfSupported];
  [v3 performInteraction];
}

- (void)updateToolbarButtonTitles
{
  v53 = [(MessageListViewController *)self messageListSelectionModel];
  v3 = [(MessageListViewController *)self messageListSelectionModel];
  v4 = [v3 isSelectAll];

  v5 = [v53 count];
  v51 = [(MessageListViewController *)self _shouldDisplaySearchButtons];
  v6 = [(MessageListViewController *)self state];
  v7 = v5 != 0;
  v52 = v7 & ~[v6 containsDraftsOrOutbox];

  v50 = v7 & ~v4;
  if (v50 == 1)
  {
    v8 = [NSNumberFormatter ef_formatUnsignedInteger:v5 withGrouping:0];
    v9 = [(MessageListViewController *)self messageListSelectionModel];
    v10 = [v9 deleteSelectionState];

    if (v51)
    {
      if ((v10 & 2) != 0)
      {
        v12 = v10;
        v11 = MFImageGlyphArchive;
        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"ARCHIVE_BUTTON_COUNT_FORMAT_SHORT" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        v11 = MFImageGlyphTrash;
        v12 = v10;
        v13 = +[NSBundle mainBundle];
        if (v10)
        {
          [v13 localizedStringForKey:@"TRASH_BUTTON_COUNT_FORMAT_SHORT" value:&stru_100662A88 table:@"Main"];
        }

        else
        {
          [v13 localizedStringForKey:@"DELETE_BUTTON_COUNT_FORMAT_SHORT" value:&stru_100662A88 table:@"Main"];
        }
        v14 = ;
      }

      v26 = v14;

      v22 = [NSString stringWithFormat:v26, v8];

      if (v52)
      {
        v27 = +[NSBundle mainBundle];
        v28 = [v27 localizedStringForKey:@"MOVE_BUTTON_COUNT_FORMAT_SHORT" value:&stru_100662A88 table:@"Main"];

        v21 = [NSString stringWithFormat:v28, v8];

        v29 = +[NSBundle mainBundle];
        v30 = [v29 localizedStringForKey:@"MARK_BUTTON_COUNT_FORMAT_SHORT" value:&stru_100662A88 table:@"Main"];

        v23 = [NSString stringWithFormat:v30, v8];
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v10 = v12;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v11 = 0;
      v23 = 0;
    }

    v16 = (v10 >> 1) & 1;
    if (!v22)
    {
LABEL_29:
      if (v16)
      {
        v31 = MFImageGlyphArchive;

        v32 = +[NSBundle mainBundle];
        v33 = v32;
        if (v51)
        {
          v34 = @"ARCHIVE_BUTTON_SHORT";
        }

        else
        {
          v34 = @"ARCHIVE_BUTTON";
        }
      }

      else
      {
        v35 = v10;
        v31 = MFImageGlyphTrash;

        if (v35)
        {
          v32 = +[NSBundle mainBundle];
          v33 = v32;
          if (v51)
          {
            v34 = @"TRASH_BUTTON_SHORT";
          }

          else
          {
            v34 = @"TRASH_BUTTON";
          }
        }

        else
        {
          v32 = +[NSBundle mainBundle];
          v33 = v32;
          if (v51)
          {
            v34 = @"DELETE_BUTTON_SHORT";
          }

          else
          {
            v34 = @"DELETE_BUTTON";
          }
        }
      }

      v22 = [v32 localizedStringForKey:v34 value:&stru_100662A88 table:@"Main"];

      v11 = v31;
    }
  }

  else
  {
    v15 = [(MessageListViewController *)self mailboxes];
    LODWORD(v16) = [EMMailbox shouldArchiveByDefaultForMailboxes:v15];

    v17 = [(MessageListViewController *)self mailboxes];
    v18 = [EMMailbox deleteMovesToTrashForMailboxes:v17];

    if (v5)
    {
      if (v16)
      {
        v10 = MFImageGlyphArchive;
        v19 = +[NSBundle mainBundle];
        v20 = [v19 localizedStringForKey:@"ARCHIVE_BUTTON" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        v10 = MFImageGlyphTrash;
        v19 = +[NSBundle mainBundle];
        if (v18)
        {
          [v19 localizedStringForKey:@"TRASH_BUTTON" value:&stru_100662A88 table:@"Main"];
        }

        else
        {
          [v19 localizedStringForKey:@"DELETE_BUTTON" value:&stru_100662A88 table:@"Main"];
        }
        v20 = ;
      }

      v22 = v20;
    }

    else
    {
      v22 = 0;
      v10 = 0;
    }

    if (v52)
    {
      v24 = +[NSBundle mainBundle];
      v21 = [v24 localizedStringForKey:@"MOVE_BUTTON" value:&stru_100662A88 table:@"Main"];

      v25 = +[NSBundle mainBundle];
      v23 = [v25 localizedStringForKey:@"MARK_BUTTON" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v23 = 0;
      v21 = 0;
    }

    v11 = v10;
    LOBYTE(v10) = v18;
    if (!v22)
    {
      goto LABEL_29;
    }
  }

  v36 = [(MessageListViewController *)self deleteButtonItem];
  v37 = [(MessageListViewController *)self moveButtonItem];
  v38 = [(MessageListViewController *)self markButtonItem];
  [v36 setEnabled:v5 != 0];
  v39 = v52;
  [v37 setEnabled:v52];
  [v38 setEnabled:v52];
  v40 = MUISolariumFeatureEnabled();
  if (v11)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (v41 == 1)
  {
    v39 = [UIImage systemImageNamed:v11];
    [v36 setImage:v39];
  }

  [v36 setTitle:v22];
  v42 = v21;
  if (!v21)
  {
    v43 = +[NSBundle mainBundle];
    v39 = v43;
    if (v51)
    {
      v44 = @"MOVE_BUTTON_SHORT";
    }

    else
    {
      v44 = @"MOVE_BUTTON";
    }

    v42 = [v43 localizedStringForKey:v44 value:&stru_100662A88 table:@"Main"];
  }

  [v37 setTitle:v42];
  if (!v21)
  {
  }

  v45 = v23;
  if (!v23)
  {
    v46 = +[NSBundle mainBundle];
    v39 = v46;
    if (v51)
    {
      v47 = @"MARK_BUTTON_SHORT";
    }

    else
    {
      v47 = @"MARK_BUTTON";
    }

    v45 = [v46 localizedStringForKey:v47 value:&stru_100662A88 table:@"Main"];
  }

  [v38 setTitle:v45];
  if (!v23)
  {
  }

  [v36 setLongPressEnabled:v50];
  v48 = [(MessageListViewController *)self currentEditButtonItem];
  if ([(MessageListViewController *)self isEditing])
  {
    v49 = 3;
  }

  else
  {
    v49 = 0;
  }

  [UIBarButtonItem mf_configureMultiBarButtonItem:v48 usingStyle:v49];
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sub_10012F5F0(MailSplitViewController, a3))
  {
    v7 = [(MessageListViewController *)self conversationViewController];
  }

  else if (sub_10048A1D4(self, a3))
  {
    v7 = self;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MessageListViewController;
    v7 = [(MessageListViewController *)&v10 targetForAction:a3 withSender:v6];
  }

  v8 = v7;

  return v8;
}

- (void)_mailboxSearchKeyCommandInvoked:(id)a3
{
  if (([(MessageListViewController *)self isEditing]& 1) != 0)
  {
    return;
  }

  v4 = [(MessageListViewController *)self scene];
  v5 = [v4 splitViewController];
  v6 = [v5 displayMode];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if ([(MessageListViewController *)self isSearchViewController])
    {

      [(MessageListViewController *)self dismissSearchResultsAnimated:1];
      return;
    }
  }

  else
  {
    v7 = [(MessageListViewController *)self splitViewController];
    [v7 showMessageListViewController:1 animated:1 completion:0];
  }

  [(MessageListViewController *)self focusSearchBarAnimated:0];
}

- (int64_t)_expandOpFromPlist:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"MailKBIsLeftArrowPlistKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MessageListViewController *)self view];
    v6 = [v5 effectiveUserInterfaceLayoutDirection];

    if ((v6 != 1) != [v4 BOOLValue])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_canPerformExpandOp:(int64_t)a3
{
  if (![(MessageListViewController *)self isThreaded])
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  sub_100187A18(self, &v11, &v10);
  v5 = v11;
  v6 = v10;
  v7 = [(MessageListViewController *)self dataSource];
  if ([v7 isExpandedThread:v5])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v7 anyExpandedThreadContainsItemID:v5];
  }

  if (a3 != 2)
  {
    v8 = a3 == 1 && (v8 & 1) == 0 && [v6 count] > 1;
  }

  return v8;
}

- (id)_plistDictionaryFromSender:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 propertyList];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldRouteActionToConversation:(SEL)a3 withCommand:(id)a4
{
  if (([(MessageListViewController *)self isEditing:a3]& 1) != 0)
  {
    return 0;
  }

  v6 = [(MessageListViewController *)self collectionView];
  v7 = [v6 indexPathsForSelectedItems];
  v5 = [v7 count] == 0;

  return v5;
}

- (BOOL)canHandleAction:(SEL)a3 withMailMenuCommand:(id)a4
{
  v6 = a4;
  if (sub_10048A1D4(self, a3))
  {
    v7 = [(MessageListViewController *)self view];
    v8 = [v7 window];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = sub_10048C8C4(v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = [(MessageListViewController *)self presentedViewController];
    v12 = (v11 != 0) | v9;

    if (v12)
    {
LABEL_7:
      LOBYTE(v10) = 0;
LABEL_25:

      goto LABEL_26;
    }

    if ("_refresh:" == a3)
    {
      LOBYTE(v10) = 1;
      goto LABEL_25;
    }

    if ("_favoriteMailboxShortcutInvoked:" == a3)
    {
      v13 = [(MessageListViewController *)self _plistDictionaryFromSender:v6];
      v14 = [v13 objectForKeyedSubscript:@"MailKBIsFavoritePlistKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ("_moveMessageToFavoriteMailboxShortcutInvoked:" != a3)
      {
        LOBYTE(v10) = 1;
        if ("_previousMailboxShortcutInvoked:" == a3 || "_nextMailboxShortcutInvoked:" == a3)
        {
          goto LABEL_25;
        }

        if ((*(self + 8) & 1) == 0)
        {
          goto LABEL_7;
        }

        v13 = [(MessageListViewController *)self _plistDictionaryFromSender:v6];
        if (!sub_10012F238(MailSplitViewController, a3))
        {
          if ("_mailboxSearchKeyCommandInvoked:" == a3)
          {
            v14 = [(MessageListViewController *)self navigationController];
            v15 = [v14 topViewController];
            if (v15 == self)
            {
              v17 = [(MessageListViewController *)self searchBar];
              LOBYTE(v10) = [v17 _isEnabled];
            }

            else
            {
              LOBYTE(v10) = 0;
            }

            goto LABEL_21;
          }

          if ("_scrollMessageListToTop:" == a3)
          {
            LOBYTE(v10) = sub_10001C994(self) != 0;
            goto LABEL_24;
          }

          if ("_scrollToCurrentMessage:" != a3)
          {
            if ("_expandCollapseThreadCommand:" == a3)
            {
              v18 = [(MessageListViewController *)self _canPerformExpandOp:[(MessageListViewController *)self _expandOpFromPlist:v13]];
            }

            else
            {
              if ("_filterCommand:" == a3)
              {
                goto LABEL_49;
              }

              if ("selectAll:" != a3)
              {
                if ("_selectPrimary" != a3 && "_selectTransactions" != a3 && "_selectUpdates" != a3 && "_selectPromotions" != a3 && "_selectAllMail" != a3)
                {
                  goto LABEL_24;
                }

                if (([(MessageListViewController *)self isBucketBarHidden]& 1) != 0)
                {
                  LOBYTE(v10) = 0;
                  goto LABEL_24;
                }

LABEL_49:
                LODWORD(v10) = [(MessageListViewController *)self isEditing]^ 1;
                goto LABEL_24;
              }

              v18 = sub_1001866D0(self);
            }

            LOBYTE(v10) = v18;
            goto LABEL_24;
          }
        }

        v14 = [(MessageListViewController *)self collectionView];
        v15 = [v14 indexPathsForSelectedItems];
        LOBYTE(v10) = [(MessageListViewController *)v15 count]!= 0;
LABEL_21:

LABEL_23:
LABEL_24:

        goto LABEL_25;
      }

      v13 = [(MessageListViewController *)self _plistDictionaryFromSender:v6];
      v14 = [v13 objectForKeyedSubscript:@"MailKBMoveMessageToFavoritePlistKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_20:
        v10 = [v14 integerValue];
        v15 = [(MessageListViewController *)self favoritesShortcutsProvider];
        LOBYTE(v10) = sub_1000B9E04(v15, v10);
        goto LABEL_21;
      }
    }

    LOBYTE(v10) = 0;
    goto LABEL_23;
  }

  LOBYTE(v10) = 0;
LABEL_26:

  return v10;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("_escapeShortcutInvoked:" != a3)
  {
    if ("delete:" != a3)
    {
      if ("selectAll:" == a3)
      {
        v10 = sub_1001866D0(self);
        goto LABEL_15;
      }

      v7 = [(MessageListViewController *)self scene];
      v8 = [v7 splitViewController];

      v9 = [v8 messageListCanPerformAction:a3 withSender:v6];
      goto LABEL_12;
    }

    v8 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 mail_isDeleteMessageCommand];
LABEL_12:
      v10 = v9;
      goto LABEL_14;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if ((*(self + 8) & 1) == 0 || ([(MessageListViewController *)self isEditing]& 1) == 0)
  {
    v8 = [(MessageListViewController *)self searchController];
    if ([v8 isActive])
    {
      v11 = [v8 searchBar];
      v10 = [v11 isFirstResponder];

LABEL_14:
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (BOOL)_shouldUsePluralPrompt
{
  v3 = [(MessageListViewController *)self messageListSelectionModel];
  v4 = [v3 count];

  if (v4 > 1)
  {
    return 1;
  }

  v6 = [(MessageListViewController *)self conversationViewController];
  v7 = [v6 referenceMessageListItem];

  v8 = [v7 itemID];
  v9 = [(MessageListViewController *)self dataSource];
  if ([v9 isExpandedThread:v8])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(MessageListViewController *)self dataSource];
    v12 = [v11 anyExpandedThreadContainsItemID:v8];

    v10 = v12 ^ 1;
  }

  v5 = ([v7 count] > 1) & v10;
  return v5;
}

- (BOOL)_hasSelectedMessages
{
  if ([(MessageListViewController *)self isEditing])
  {
    v3 = [(MessageListViewController *)self messageListSelectionModel];
    v4 = [v3 currentMessageListItemSelection];
  }

  else
  {
    v3 = [(MessageListViewController *)self lastSelectedItemID];
    v4 = v3;
  }

  return v4 != 0;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = MessageListViewController;
  [(MessageListViewController *)&v42 validateCommand:v4];
  v5 = [v4 action];
  v6 = v5;
  if (v5 == "delete:")
  {
    if ([(MessageListViewController *)self _shouldUsePluralPrompt])
    {
      v19 = +[NSBundle mainBundle];
      [v19 localizedStringForKey:@"DELETE_EMAIL_PLURAL" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v19 = +[NSBundle mainBundle];
      [v19 localizedStringForKey:@"DELETE_EMAIL" value:&stru_100662A88 table:@"Main"];
    }
    v21 = ;
    [v4 setTitle:v21];

    v22 = [(MessageListViewController *)self _hasSelectedMessages];
LABEL_28:
    if (v22)
    {
      goto LABEL_65;
    }

    goto LABEL_55;
  }

  if (v5 == "_archiveShortcutInvoked:")
  {
    if ([(MessageListViewController *)self _shouldUsePluralPrompt])
    {
      v20 = +[NSBundle mainBundle];
      [v20 localizedStringForKey:@"ARCHIVE_EMAIL_PLURAL" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v20 = +[NSBundle mainBundle];
      [v20 localizedStringForKey:@"ARCHIVE_EMAIL" value:&stru_100662A88 table:@"Main"];
    }
    v25 = ;
    [v4 setTitle:v25];

    v26 = [(MessageListViewController *)self messageListSelectionModel];
    v27 = [v26 currentMessageListItemSelection];

    v28 = [v27 messageListItems];
    v29 = [v28 count];

    if (v29)
    {
      v30 = [(MessageListViewController *)self undoManager];
      v12 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItemSelection:v27 undoManager:v30 origin:3 actor:2];

      if ([v12 isMessageListItemSelectionSourceArchive])
      {
        [v4 setAttributes:1];
      }

      v7 = v27;
    }

    else
    {
      if ([v27 isSelectAll])
      {
        v7 = v27;
LABEL_64:

        goto LABEL_65;
      }

      v33 = [(MessageListViewController *)self conversationViewController];
      v12 = [v33 referenceMessageListItem];

      v34 = [MSMessageListItemSelection alloc];
      if (v12)
      {
        v49 = v12;
        v35 = [NSArray arrayWithObjects:&v49 count:1];
      }

      else
      {
        v35 = &__NSArray0__struct;
      }

      v7 = [v34 initWithMessageListItems:v35];

      if (v12)
      {
      }
    }

LABEL_63:

    goto LABEL_64;
  }

  if (v5 == "_markAllAsReadCommandInvoked:")
  {
    v23 = [(MessageListViewController *)self _markAllAsReadTriageInteractionIfSupported];
    v24 = v23 == 0;

    goto LABEL_31;
  }

  if (v5 == "_filterCommand:")
  {
    if ([(MessageListViewController *)self isFilterButtonEnabled])
    {
      v7 = +[NSBundle mainBundle];
      [v7 localizedStringForKey:@"DISABLE_FILTER" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v7 = +[NSBundle mainBundle];
      [v7 localizedStringForKey:@"ENABLE_FILTER" value:&stru_100662A88 table:@"Main"];
    }
    v32 = ;
    [v4 setTitle:v32];
    v12 = v32;
    goto LABEL_63;
  }

  if (v5 == "selectAll:")
  {
    v22 = sub_1001866D0(self);
    goto LABEL_28;
  }

  if (v5 == "increaseSize:" || v5 == "decreaseSize:")
  {
    v31 = [(MessageListViewController *)self messageListSelectionModel];
    if ([v31 count] > 1)
    {
LABEL_54:

      goto LABEL_55;
    }

    v24 = [(MessageListViewController *)self isEditing];

LABEL_31:
    if ((v24 & 1) == 0)
    {
      goto LABEL_65;
    }

LABEL_55:
    [v4 setAttributes:1];
    goto LABEL_65;
  }

  if (v5 == "_openMessageCommandInvoked:")
  {
    [(MessageListViewController *)self _shouldUsePluralPrompt];
    v36 = sub_10016D69C();
    v37 = v36;
    [v4 setTitle:v36];

    v31 = [(MessageListViewController *)self messageListSelectionModel];
    if ([v31 isSelectAll])
    {
      goto LABEL_54;
    }

    v24 = [(MessageListViewController *)self shouldDisplayGroupedSenders];

    goto LABEL_31;
  }

  if (v5 == "_favoriteMailboxShortcutInvoked:" || v5 == "_moveMessageToFavoriteMailboxShortcutInvoked:")
  {
    v7 = [v4 propertyList];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = off_100651040;
      if (v6 != "_favoriteMailboxShortcutInvoked:")
      {
        v8 = off_100651050;
      }

      v41 = *v8;
      v9 = [v7 objectForKeyedSubscript:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 integerValue];
        v11 = [(MessageListViewController *)self favoritesShortcutsProvider];
        v12 = sub_1000B9E70(v11, v10);

        v13 = [(MessageListViewController *)self favoritesShortcutsProvider];
        v14 = sub_1000B9F24(v13, v10);

        if (v6 == "_moveMessageToFavoriteMailboxShortcutInvoked:")
        {
          v15 = [(MessageListViewController *)self favoritesShortcutsProvider];
          v16 = [(MessageListViewController *)self favoritesShortcutsProvider];
          v17 = sub_1000BA064(v16, v10);
          v18 = sub_1000BA0F4(v15, v17);

          if (!v18 || [v18 isSmartMailbox])
          {
            [v4 setAttributes:1];
          }
        }

        if (v12)
        {
          goto LABEL_62;
        }

        goto LABEL_59;
      }
    }

    v14 = 0;
LABEL_59:
    v38 = +[MessageListViewController log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138412802;
      v44 = v40;
      v45 = 2048;
      v46 = self;
      v47 = 2114;
      v48 = v7;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "<%@: %p> Unexpected request to validate favorite shortcut. plist = %{public}@", buf, 0x20u);
    }

    v12 = 0;
LABEL_62:
    [v4 setTitle:v12];
    [v4 setImage:v14];

    goto LABEL_63;
  }

LABEL_65:
}

- (void)_refresh:(id)a3
{
  v4 = [(MessageListViewController *)self dataSource];
  [v4 refresh];

  v5 = [(MessageListViewController *)self messageListFetchHelper];
  v6 = [v5 fetchMailboxesIsUserInitiated:1];

  v7 = [(MessageListViewController *)self isRefreshing];
  v8 = [NSNumber numberWithBool:v6];
  [v7 setObject:v8];

  if ((v6 & 1) == 0)
  {
    [(MessageListViewController *)self _finishRefreshingWaitForDraggingToEnd:1];
  }

  if (EMBlackPearlIsFeatureEnabled() && ([(MessageListViewController *)self isBucketBarHidden]& 1) == 0)
  {

    [(MessageListViewController *)self _refreshBucketsSession];
  }
}

- (void)_toggleSidebar:(id)a3
{
  v5 = [(MessageListViewController *)self scene];
  v4 = [v5 splitViewController];
  [v4 showMailboxPickerController:-[MessageListViewController _isMailboxListVisibleForController:](self animated:"_isMailboxListVisibleForController:" completion:{v4) ^ 1, 1, 0}];
}

- (void)_finishRefreshingWaitForDraggingToEnd:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018938C;
  v11[3] = &unk_10064C838;
  objc_copyWeak(&v12, &location);
  v4 = objc_retainBlock(v11);
  v5 = v4;
  if (v3)
  {
    v6 = +[NSRunLoop mainRunLoop];
    v14 = NSDefaultRunLoopMode;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    v8 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100189430;
    v10[3] = &unk_10064C598;
    v10[4] = v5;
    [v6 performInModes:v7 block:v10];
  }

  else
  {
    v8 = v9;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100189440;
    v9[3] = &unk_10064C598;
    v9[4] = v4;
    v6 = +[EFScheduler mainThreadScheduler];
    [v6 performBlock:v9];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_favoriteMailboxShortcutInvoked:(id)a3
{
  v5 = a3;
  v6 = +[MessageListViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v15 = 138412802;
    v16 = v8;
    v17 = 2048;
    v18 = self;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@", &v15, 0x20u);
  }

  v10 = [v5 input];
  v11 = [v10 integerValue];

  v12 = [(MessageListViewController *)self favoritesShortcutsProvider];
  v13 = sub_1000BA064(v12, v11 - 1);

  if (v13)
  {
    v14 = [(MessageListViewController *)self mailboxPickerDelegate];
    [v14 messageListViewController:self didSelectFavorite:v13];
  }
}

- (void)_moveMessageToFavoriteMailboxShortcutInvoked:(id)a3
{
  v28 = a3;
  v29 = [(MessageListViewController *)self messageListSelectionModel];
  v4 = [v28 input];
  v5 = [v4 integerValue];

  v6 = [(MessageListViewController *)self favoritesShortcutsProvider];
  v7 = sub_1000BA064(v6, v5 - 1);

  if (!v7)
  {
    v9 = +[MessageListViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      NSStringFromClass(v18);
      objc_claimAutoreleasedReturnValue();
      sub_10048A60C();
    }

    v19 = 0;
    v11 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v8 = [(MessageListViewController *)self favoritesShortcutsProvider];
  v9 = sub_1000BA0F4(v8, v7);

  if ([v29 isSelectAll])
  {
    v10 = [(MessageListViewController *)self flattenedMailboxesFuture];
    v11 = [v10 result];

    v12 = [(MessageListViewController *)self dataSource];
    v13 = [v29 itemIDs];
    v14 = [v12 messageListItemsForItemIDs:v13];
    v15 = [EFFuture combine:v14];
    v16 = [v15 result];
    v17 = [v16 ef_filter:EFIsNotNull];
  }

  else
  {
    v12 = [v29 currentMessageListItemSelection];
    v13 = [v12 messageListItems];
    v17 = [v13 ef_filter:EFIsNotNull];
    v11 = 0;
  }

  if (![v17 count])
  {
    v20 = [(MessageListViewController *)self collectionView];
    v21 = [v20 indexPathsForSelectedItems];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100189C14;
    v30[3] = &unk_100652218;
    v30[4] = self;
    v22 = [v21 ef_map:v30];

    v23 = [(MessageListViewController *)self selectionModel:v29 messageListItemsForItemIDs:v22];
    v24 = [v23 ef_mapSelector:"result"];

    v17 = v24;
  }

  if (![v17 count])
  {
    v26 = +[MessageListViewController log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      NSStringFromClass(v27);
      objc_claimAutoreleasedReturnValue();
      sub_10048A5C8();
    }

    v19 = 0;
    goto LABEL_16;
  }

  v25 = [(MessageListViewController *)self undoManager];
  v19 = [(MFTriageInteraction *)MFMoveMessageTriageInteraction interactionWithMessageListItems:v17 undoManager:v25 origin:2 actor:2];

  if (![v9 isSmartMailbox])
  {
    [v19 setTargetMailbox:v9];
    [v19 setDelegate:self];
    [v19 performInteraction];
LABEL_18:

    sub_10018508C(self, 0);
    goto LABEL_19;
  }

  v26 = [v9 name];
  -[MessageListViewController _showMoveMessageShortcutErrorForMailbox:count:](self, "_showMoveMessageShortcutErrorForMailbox:count:", v26, [v17 count]);
LABEL_16:

LABEL_19:
}

- (void)_showMoveMessageShortcutErrorForMailbox:(id)a3 count:(int64_t)a4
{
  v13 = a3;
  v6 = +[NSBundle mainBundle];
  if (a4 == 1)
  {
    [v6 localizedStringForKey:@"ERROR_TRANSFERRING_LONG_FORMAT" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v6 localizedStringForKey:@"ERROR_TRANSFERRING_LONG_FORMAT_MANY" value:&stru_100662A88 table:@"Main"];
  }
  v7 = ;

  v8 = [NSString stringWithFormat:v7, v13];
  v9 = [UIAlertController alertControllerWithTitle:v8 message:0 preferredStyle:1];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];
  [v9 addAction:v12];

  [(MessageListViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_previousMailboxShortcutInvoked:(id)a3
{
  v5 = +[MessageListViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v7;
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@", &v10, 0x20u);
  }

  v9 = [(MessageListViewController *)self mailboxPickerDelegate];
  [v9 messageListViewControllerWantsToSelectPreviousFavoriteItem:self];
}

- (void)_nextMailboxShortcutInvoked:(id)a3
{
  v5 = +[MessageListViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v7;
    v12 = 2048;
    v13 = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@", &v10, 0x20u);
  }

  v9 = [(MessageListViewController *)self mailboxPickerDelegate];
  [v9 messageListViewControllerWantsToSelectNextFavoriteItem:self];
}

- (void)_expandCollapseThreadCommand:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self _plistDictionaryFromSender:v4];
  if (!v5)
  {
    v8 = +[MessageListViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      NSStringFromClass(v9);
      objc_claimAutoreleasedReturnValue();
      sub_10048A650();
    }

    goto LABEL_10;
  }

  v6 = [(MessageListViewController *)self _expandOpFromPlist:v5];
  v7 = v6;
  if (v6 == 2)
  {
    [(MessageListViewController *)self _collapseThreadKeyCommandInvoked:v4];
    goto LABEL_11;
  }

  if (v6 != 1)
  {
    v8 = +[MessageListViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138413058;
      v13 = v11;
      v14 = 2048;
      v15 = self;
      v16 = 2048;
      v17 = v7;
      v18 = 2080;
      v19 = "[MessageListViewController _expandCollapseThreadCommand:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "<%@: %p> Unexpected op %ld in %s", &v12, 0x2Au);
    }

LABEL_10:

    goto LABEL_11;
  }

  [(MessageListViewController *)self _expandThreadKeyCommandInvoked:v4];
LABEL_11:
}

- (void)_collapseThreadKeyCommandInvoked:(id)a3
{
  v12 = 0;
  v13 = 0;
  sub_100187A18(self, &v13, &v12);
  v4 = v13;
  v5 = v12;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 isExpandedThread:v4];
  v8 = [v6 anyExpandedThreadContainsItemID:v4];
  if (v7)
  {
    v9 = v5;
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_7:
    [v6 didSelectDisclosureButtonForMessageListItem:v9 disclosureEnabled:1];
    if ([(MessageListViewController *)self isEditing])
    {
      if (self && self->_keyboardFocusedItemID)
      {
        sub_10048A174(self, v4);
      }
    }

    else if (v4)
    {
      [(MessageListViewController *)self setLastSelectedItemID:v4];
    }

    goto LABEL_15;
  }

  if (!v8)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v10 = [v6 threadItemIDForItemInExpandedThread:v4];

  if (!v10)
  {
    v9 = 0;
    v4 = 0;
    goto LABEL_15;
  }

  v11 = [v6 messageListItemForItemID:v10];
  v9 = [v11 result];

  v4 = v10;
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_15:
}

- (void)_expandThreadKeyCommandInvoked:(id)a3
{
  v9 = 0;
  sub_100187A18(self, 0, &v9);
  v4 = v9;
  if (v4)
  {
    v5 = [(MessageListViewController *)self dataSource];
    v6 = [v4 itemID];
    v7 = [v5 isExpandedThread:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [(MessageListViewController *)self dataSource];
      [v8 didSelectDisclosureButtonForMessageListItem:v4 disclosureEnabled:0];
    }
  }
}

- (void)selectAll:(id)a3
{
  [(MessageListViewController *)self enterEditMode];

  [(MessageListViewController *)self _selectOrDeselectAll:1];
}

- (void)_escapeShortcutInvoked:(id)a3
{
  v7 = a3;
  if ((*(self + 8) & 1) != 0 && [(MessageListViewController *)self isEditing])
  {
    [(MessageListViewController *)self _editButtonTapped:0];
  }

  else
  {
    v4 = [(MessageListViewController *)self searchController];
    if ([v4 isActive])
    {
      v5 = [(MessageListViewController *)self searchBar];
      v6 = [v5 isFirstResponder];

      if (v6)
      {
        [(MessageListViewController *)self dismissSearchResultsAnimated:1];
      }
    }

    else
    {
    }
  }
}

- (void)_scrollMessageListToTop:(id)a3
{
  v7 = [(MessageListViewController *)self dataSource];
  v4 = [v7 numberOfSections];
  if (v4 >= 1)
  {
    v5 = 0;
    while (![v7 numberOfItemsAtSectionIndex:v5])
    {
      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }

    v6 = [NSIndexPath indexPathForRow:0 inSection:v5];
    sub_10018A6FC(self, v6, 1);
  }

LABEL_7:
}

- (void)_scrollToCurrentMessage:(id)a3
{
  v4 = [(MessageListViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];
  v6 = [v5 firstObject];

  if (v6)
  {
    sub_10018A6FC(self, v6, 0);
  }
}

- (void)_initializeMailboxBrowseUserActivityWithMailboxes:(id)a3
{
  v33 = a3;
  v4 = [v33 firstObject];
  v5 = [v4 account];

  v6 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
  v7 = [(MessageListViewController *)self continuityMailboxActivityPayloadFromMailboxes:v33 account:v5 currentActivityPayload:v6];

  [(MessageListViewController *)self setMailboxBrowseActivityPayload:0];
  if (v7)
  {
    v8 = [[NSMutableDictionary alloc] initWithDictionary:v7];
    [(MessageListViewController *)self setMailboxBrowseActivityPayload:v8];

    v9 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
    v10 = MSMailActivityHandoffTypeBrowseMailbox;
    [v9 setObject:MSMailActivityHandoffTypeBrowseMailbox forKeyedSubscript:MSMailActivityHandoffTypeKey];

    v11 = [(MessageListViewController *)self userActivity];
    v12 = v11;
    if (!v11 || ([v11 activityType], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v10), v13, (v14 & 1) == 0))
    {
      v15 = [[NSUserActivity alloc] initWithActivityType:v10];

      v12 = v15;
      [(MessageListViewController *)self setUserActivity:v15];
    }

    v16 = [v33 firstObject];
    v17 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
    v18 = [v17 objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeyRemoteMailboxURL];

    v19 = +[NSBundle mainBundle];
    if (v18)
    {
      v20 = [v19 localizedStringForKey:@"BROWSING_FOLDER_FROM_ACCOUNT_TITLE" value:&stru_100662A88 table:@"Main"];
      v21 = [v16 name];
      v22 = [v5 name];
      v23 = [NSString stringWithFormat:v20, v21, v22];
      [v12 setTitle:v23];

      v24 = [v16 objectID];
      v25 = [v24 url];
      v26 = [v25 absoluteString];
      [v12 setTargetContentIdentifier:v26];
    }

    else
    {
      v27 = [v19 localizedStringForKey:@"BROWSING_SPECIAL_FOLDER_TITLE" value:&stru_100662A88 table:@"Main"];
      v28 = [v16 name];
      v29 = [NSString stringWithFormat:v27, v28];
      [v12 setTitle:v29];

      v24 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
      v25 = [v24 objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeySpecialMailboxType];
      [v12 setTargetContentIdentifier:v25];
    }

    v30 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
    [v12 setUserInfo:v30];

    v31 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
    v32 = [(MessageListViewController *)self requiredUserInfoKeysFromUserActivityPayload:v31];
    [v12 setRequiredUserInfoKeys:v32];

    [v12 setEligibleForSearch:1];
    [v12 setEligibleForPrediction:0];
    [v12 becomeCurrent];
  }
}

- (void)updateUserActivityState:(id)a3
{
  v5 = a3;
  v4 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
  [v5 setUserInfo:v4];
}

- (id)continuityMailboxActivityPayloadFromMailboxes:(id)a3 account:(id)a4 currentActivityPayload:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [v6 firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    if (v9)
    {
      v10 = v9;
      if (![v9 smartMailboxType])
      {
        v11 = &MSMailActivityHandoffBrowseMailboxSpecialMailboxTypeVIP;
        goto LABEL_15;
      }

      if ([v10 smartMailboxType] == 8 && objc_msgSend(v10, "type") == 7)
      {
        v11 = &MSMailActivityHandoffBrowseMailboxSpecialMailboxTypeAllInboxes;
LABEL_15:
        v15 = *v11;
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  if ([v6 count] == 1)
  {
    v12 = [v8 objectID];
    v13 = [v12 url];
    v14 = [v13 absoluteString];

    v10 = 0;
LABEL_13:
    v15 = 0;
    goto LABEL_17;
  }

  if (![0 isInboxMailbox])
  {
    v10 = 0;
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v15 = MSMailActivityHandoffBrowseMailboxSpecialMailboxTypeAllInboxes;
  v10 = 0;
LABEL_16:
  v14 = 0;
LABEL_17:
  v16 = objc_alloc_init(NSMutableDictionary);
  [v16 setDictionary:v7];
  if (v15)
  {
    [v16 setObject:v15 forKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeySpecialMailboxType];
    v17 = &MSMailActivityHandoffBrowseMailboxKeyRemoteMailboxURL;
LABEL_21:
    [v16 removeObjectForKey:*v17];
    goto LABEL_22;
  }

  if (v14)
  {
    [v16 setObject:v14 forKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeyRemoteMailboxURL];
    v17 = &MSMailActivityHandoffBrowseMailboxKeySpecialMailboxType;
    goto LABEL_21;
  }

  v16 = 0;
LABEL_22:

  return v16;
}

- (id)requiredUserInfoKeysFromUserActivityPayload:(id)a3
{
  v3 = [a3 allKeys];
  v4 = [NSMutableSet setWithArray:v3];

  [v4 removeObject:MSMailActivityHandoffBrowseMailboxKeyFocusedMessageID];

  return v4;
}

- (void)_updateMailboxPositionUserActivity
{
  v3 = [(MessageListViewController *)self userActivity];
  if (v3)
  {
    mailboxBrowseActivityPayload = self->_mailboxBrowseActivityPayload;

    if (mailboxBrowseActivityPayload)
    {
      v5 = [(MessageListViewController *)self userActivity];
      [v5 becomeCurrent];
    }
  }
}

- (BOOL)_isActivityEligibleForPredictionWithPayload:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeySpecialMailboxType];
  v4 = v3 != MSMailActivityHandoffBrowseMailboxSpecialMailboxTypeAllInboxes;

  return v4;
}

- (id)presentingViewControllerForTriageInteraction:(id)a3
{
  v4 = [(MessageListViewController *)self presentedViewController];

  if (v4)
  {
    v5 = [(MessageListViewController *)self presentedViewController];
  }

  else
  {
    v6 = [(MessageListViewController *)self scene];
    v5 = [v6 dockContainer];
  }

  return v5;
}

- (id)messageRepositoryForTriageInteraction:(id)a3
{
  v3 = [(MessageListViewController *)self messageRepository];

  return v3;
}

- (void)presentTransferUIWithMoveInteraction:(id)a3 prediction:(id)a4 fromViewController:(id)a5 didDismissHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v26 = a6;
  v27 = v10;
  v11 = [(MessageListViewController *)self messageListSelectionModel];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10018B748;
  v31[3] = &unk_100652B40;
  v31[4] = self;
  v12 = v9;
  v32 = v12;
  v25 = v11;
  v33 = v25;
  v13 = objc_retainBlock(v31);
  v14 = [(MessageListViewController *)self _stackViewTransferOptions];
  v15 = [v12 messageListItemSelection];
  v16 = [v15 messageListItems];
  v17 = [(MessageListViewController *)self _transferControllerWithMessages:v16 options:v14 | 2 interaction:v12 didDismissHandler:v26];

  v18 = [v17 transferNavigationController];
  [v18 setMailboxPrediction:v10];
  [v18 setDidFinish:v13];
  [(MessageListViewController *)self setTransferController:v17];
  v19 = [(MessageListViewController *)self transferStackViewController];
  v20 = [v19 navigationController];

  v21 = [(MessageListViewController *)self scene];
  v22 = [v21 mf_rootViewController];
  v23 = [(MessageListViewController *)self transferController];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10018B88C;
  v28[3] = &unk_10064C660;
  v24 = v20;
  v29 = v24;
  v30 = self;
  [v22 presentViewController:v23 animated:1 completion:v28];
}

- (unint64_t)_stackViewTransferOptions
{
  if ([(MessageListViewController *)self isThreaded])
  {
    v3 = 68;
  }

  else
  {
    v3 = 76;
  }

  v4 = [(MessageListViewController *)self mailboxes];
  v5 = [EMMailbox shouldArchiveByDefaultForMailboxes:v4];

  if (v5)
  {
    return v3 | 0x10;
  }

  v7 = [(MessageListViewController *)self mailboxes];
  v8 = [EMMailbox deleteMovesToTrashForMailboxes:v7];

  if (v8)
  {
    return v3 | 0x20;
  }

  else
  {
    return v3;
  }
}

- (void)filterUIWithFilterInteraction:(id)a3
{
  v10 = a3;
  v4 = [MFMailboxFilter alloc];
  v5 = [v10 messageListItemSelection];
  v6 = [v5 messageListItems];
  v7 = [v6 firstObject];
  v8 = [(MFMailboxFilter *)v4 initForSender:v7];

  v9 = [(MessageListViewController *)self filterViewModel];
  [v9 setSenderFilter:v8];

  [(MessageListViewController *)self setFiltersEnabled:1];
}

- (void)_updateStackViewController
{
  v3 = [(MessageListViewController *)self splitViewController];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2 && [(MessageListViewController *)self _inMultiSelectionMode])
  {

    [(MessageListViewController *)self _setRowDeletionEnabled:1 animated:0];
  }
}

- (id)transferStackViewController:(id)a3 displayMessageForMessageListItemWithItemID:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 messageListItemForItemID:v5];
  v8 = [EFScheduler globalAsyncSchedulerWithQualityOfService:33];
  v9 = [v7 onScheduler:v8 then:&stru_100652B60];

  return v9;
}

- (id)transferStackViewController:(id)a3 itemIDsToDisplayFromItemIDs:(id)a4
{
  v18 = a3;
  v19 = a4;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v19 count]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v19;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [(MessageListViewController *)self dataSource];
        v14 = [v13 itemIDsInExpandedThread:v12];

        v15 = [v14 count];
        v16 = v14;
        if (!v15)
        {
          v24 = v12;
          v4 = [NSArray arrayWithObjects:&v24 count:1];
          v16 = v4;
        }

        [v7 addObjectsFromArray:v16];
        if (!v15)
        {
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  return v7;
}

- (void)_updateThreadingPreference:(id)a3
{
  v4 = [(MessageListViewController *)self state];
  v5 = [v4 containsDraftsOrOutbox];

  if ((v5 & 1) == 0)
  {
    v6 = +[NSUserDefaults em_userDefaults];
    -[MessageListViewController setThreaded:](self, "setThreaded:", [v6 BOOLForKey:DisableThreadingKey] ^ 1);

    [(MessageListViewController *)self reloadDataSource];
  }
}

- (void)_updateListForChange:(id)a3
{
  v5 = [(MessageListViewController *)self layoutValuesHelper];
  [v5 invalidate];

  [(MessageListViewController *)self _invalidateCachedUseCompactRows];
  v4 = [(MessageListViewController *)self shouldDisplayGroupedSenders];
  v6 = [(MessageListViewController *)self dataSource];
  [v6 reloadVisibleCellsInvalidatingCache:v4];
}

- (id)leadingSwipeActionsConfigurationAtIndexPath:(id)a3
{
  v5 = a3;
  if (![(MessageListViewController *)self _shouldShowSwipeActionsAtIndexPath:v5])
  {
    v9 = +[MessageListViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      *buf = 138413058;
      v68 = v44;
      v69 = 2048;
      v70 = self;
      v71 = 2114;
      v72 = v45;
      v73 = 2114;
      v74 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Disable leading swipe actions at index path: %{public}@", buf, 0x2Au);
    }

    goto LABEL_7;
  }

  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v5 section];
  v8 = [v6 isSection:MessageListSectionMailCleanupTip atIndex:v7];

  if (v8)
  {
    v9 = +[MessageListViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138413058;
      v68 = v11;
      v69 = 2048;
      v70 = self;
      v71 = 2114;
      v72 = v12;
      v73 = 2114;
      v74 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Disable leading swipe actions for mail-cleanup section at index path: %{public}@", buf, 0x2Au);
    }

LABEL_7:
    v13 = 0;
    goto LABEL_45;
  }

  v9 = [(MessageListViewController *)self dataSource];
  v66 = +[NSMutableArray array];
  v14 = [(MessageListViewController *)self collectionView];
  v65 = [v14 cellForItemAtIndexPath:v5];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v65 cellHelper], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "messageListItem"), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
  {
    log = +[MessageListViewController log];
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = NSStringFromSelector(a2);
      *buf = 138413058;
      v68 = v56;
      v69 = 2048;
      v70 = self;
      v71 = 2114;
      v72 = v57;
      v73 = 2114;
      v74 = v5;
      _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "<%@: %p> %{public}@: [Swipe Actions] No message list item at index path: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v17 = [v9 messageListItemAtIndexPath:v5];
    v18 = [v17 result];

    log = v18;
    if (v18)
    {
      v19 = +[MessageListViewController log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        v23 = [v18 ef_publicDescription];
        v24 = [(MessageListViewController *)self mailboxes];
        v25 = [v24 ef_mapSelector:"ef_publicDescription"];
        *buf = 138413570;
        v68 = v21;
        v69 = 2048;
        v70 = self;
        v71 = 2112;
        v72 = v22;
        v73 = 2112;
        v74 = v5;
        v75 = 2112;
        v76 = v23;
        v77 = 2112;
        v78 = v25;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ %@, [Swipe Actions] item: %@\nmailboxes: %@", buf, 0x3Eu);
      }

      v26 = [(MessageListViewController *)self state];
      v27 = [v26 isOutgoingMailbox];

      if (v27)
      {
        goto LABEL_29;
      }

      v28 = +[NSUserDefaults em_userDefaults];
      v29 = [v28 BOOLForKey:@"ShowSecondRightAction"];

      if (v29)
      {
        v30 = +[MessageListViewController log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v58 = objc_opt_class();
          v59 = NSStringFromClass(v58);
          v60 = NSStringFromSelector(a2);
          *buf = 138413058;
          v68 = v59;
          v69 = 2048;
          v70 = self;
          v71 = 2114;
          v72 = v60;
          v73 = 2114;
          v74 = v5;
          _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding Move swipe action for index path: %{public}@", buf, 0x2Au);
        }

        v31 = [(MessageListViewController *)self _swipeActionForTriageAction:7 indexPath:v5];
        [v66 ef_addOptionalObject:v31];
      }

      v32 = sub_10024BB48(0);
      v33 = [MFTriageActionUtilities triageActionForActionKey:v32];

      v34 = [(MessageListViewController *)self state];
      v35 = v34;
      if (v33)
      {
        if (v33 != 16)
        {
LABEL_25:
          v36 = +[MessageListViewController log];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v61 = objc_opt_class();
            v62 = NSStringFromClass(v61);
            v63 = NSStringFromSelector(a2);
            *buf = 138413058;
            v68 = v62;
            v69 = 2048;
            v70 = self;
            v71 = 2114;
            v72 = v63;
            v73 = 2114;
            v74 = v5;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding leading Archive/Delete swipe action for index path: %{public}@", buf, 0x2Au);
          }

          v37 = [(MessageListViewController *)self _swipeActionForTriageAction:v33 indexPath:v5];
          [v66 ef_addOptionalObject:v37];

          goto LABEL_28;
        }

        if (([v34 containsArchiveMailbox] & 1) == 0 && (objc_msgSend(v35, "containsTrashMailbox") & 1) == 0)
        {
          if ([log shouldArchiveByDefault])
          {
            v33 = 8;
          }

          else
          {
            v33 = 9;
          }

          goto LABEL_25;
        }
      }

LABEL_28:

LABEL_29:
      if ([(MessageListViewController *)self _allowSettingReadLaterAction])
      {
        v38 = +[MessageListViewController log];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          v51 = NSStringFromSelector(a2);
          *buf = 138413058;
          v68 = v50;
          v69 = 2048;
          v70 = self;
          v71 = 2114;
          v72 = v51;
          v73 = 2114;
          v74 = v5;
          _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding Read Later swipe action for index path: %{public}@", buf, 0x2Au);
        }

        v39 = [(MessageListViewController *)self _swipeActionForTriageAction:3 indexPath:v5];
        [v66 ef_addOptionalObject:v39];
      }

      if (![v66 count])
      {
        v40 = +[MessageListViewController log];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          v54 = NSStringFromSelector(a2);
          *buf = 138413058;
          v68 = v53;
          v69 = 2048;
          v70 = self;
          v71 = 2114;
          v72 = v54;
          v73 = 2114;
          v74 = v5;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] No leading swipe actions for index path: %{public}@", buf, 0x2Au);
        }
      }

      v13 = [UISwipeActionsConfiguration configurationWithActions:v66];
      goto LABEL_44;
    }

    v41 = +[MessageListViewController log];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      *buf = 138413058;
      v68 = v47;
      v69 = 2048;
      v70 = self;
      v71 = 2114;
      v72 = v48;
      v73 = 2114;
      v74 = v5;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Message list returned nil for index path: %{public}@", buf, 0x2Au);
    }
  }

  v13 = 0;
LABEL_44:

LABEL_45:

  return v13;
}

- (id)trailingSwipeActionsConfigurationAtIndexPath:(id)a3
{
  v5 = a3;
  if (![(MessageListViewController *)self _shouldShowSwipeActionsAtIndexPath:v5])
  {
    v9 = +[MessageListViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = NSStringFromSelector(a2);
      *buf = 138413058;
      v89 = v56;
      v90 = 2048;
      v91 = self;
      v92 = 2114;
      v93 = v57;
      v94 = 2114;
      v95 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Disable trailing swipe actions at index path: %{public}@", buf, 0x2Au);
    }

    goto LABEL_7;
  }

  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v5 section];
  v8 = [v6 isSection:MessageListSectionMailCleanupTip atIndex:v7];

  if (v8)
  {
    v9 = +[MessageListViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138413058;
      v89 = v11;
      v90 = 2048;
      v91 = self;
      v92 = 2114;
      v93 = v12;
      v94 = 2114;
      v95 = v5;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Disable trailing swipe actions for mail-cleanup section at index path: %{public}@", buf, 0x2Au);
    }

LABEL_7:
    v13 = 0;
    goto LABEL_42;
  }

  v9 = [(MessageListViewController *)self dataSource];
  v14 = [v9 messageListItemAtIndexPath:v5];
  v15 = [v14 result];

  v87 = v15;
  if (!v15)
  {
    log = +[MessageListViewController log];
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      v60 = NSStringFromSelector(a2);
      *buf = 138413058;
      v89 = v59;
      v90 = 2048;
      v91 = self;
      v92 = 2114;
      v93 = v60;
      v94 = 2114;
      v95 = v5;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Message list returned nil for index path: %{public}@", buf, 0x2Au);
    }

    v13 = 0;
    goto LABEL_41;
  }

  v16 = [(MessageListViewController *)self collectionView];
  log = [v16 cellForItemAtIndexPath:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = log;
    v18 = [v17 cellHelper];
    v19 = [v18 messageListItem];

    if (!v19)
    {
      v32 = +[MessageListViewController log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        v76 = objc_opt_class();
        v77 = NSStringFromClass(v76);
        v78 = NSStringFromSelector(a2);
        *buf = 138413058;
        v89 = v77;
        v90 = 2048;
        v91 = self;
        v92 = 2114;
        v93 = v78;
        v94 = 2114;
        v95 = v5;
        _os_log_fault_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "<%@: %p> %{public}@: [Swipe Actions] No message list item at index path: %{public}@", buf, 0x2Au);
      }

      v13 = 0;
      goto LABEL_40;
    }

    v20 = [v17 cellHelper];
    v21 = [v20 predictedMailbox];

    if (!v21)
    {
      v100 = v87;
      v22 = [NSArray arrayWithObjects:&v100 count:1];
      v23 = [MFMoveToPredictionTriageInteraction predictMailboxForMovingMessages:v22];

      v24 = [v17 cellHelper];
      [v24 setPredictedMailbox:v23];
    }
  }

  v85 = [v87 shouldArchiveByDefault];
  v25 = +[MessageListViewController log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(a2);
    v29 = [v87 ef_publicDescription];
    v30 = [(MessageListViewController *)self mailboxes];
    v31 = [v30 ef_mapSelector:"ef_publicDescription"];
    *buf = 138413570;
    v89 = v27;
    v90 = 2048;
    v91 = self;
    v92 = 2112;
    v93 = v28;
    v94 = 2112;
    v95 = v5;
    v96 = 2112;
    v97 = v29;
    v98 = 2112;
    v99 = v31;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ %@, [Swipe Actions] item: %@\nmailboxes: %@", buf, 0x3Eu);
  }

  v17 = +[NSMutableArray array];
  v32 = [(MessageListViewController *)self state];
  if ([(MessageListViewController *)self _shouldShowClearHighImpactForMessageListItem:v87])
  {
    v33 = +[MessageListViewController log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      v63 = NSStringFromSelector(a2);
      *buf = 138413058;
      v89 = v62;
      v90 = 2048;
      v91 = self;
      v92 = 2114;
      v93 = v63;
      v94 = 2114;
      v95 = v5;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding Remove-high-impact swipe action for index path: %{public}@", buf, 0x2Au);
    }

    v34 = [(MessageListViewController *)self _swipeActionForTriageAction:21 indexPath:v5];
    [v17 ef_addOptionalObject:v34];
  }

  if (!-[MessageListViewController _allowReadLaterActions](self, "_allowReadLaterActions") || ([v87 readLater], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "date"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v36 == 0, v36, v35, v37))
  {
    if ((-[NSObject containsFollowUpMailbox](v32, "containsFollowUpMailbox") & 1) != 0 || -[NSObject containsInbox](v32, "containsInbox") && ([v87 followUp], v41 = objc_claimAutoreleasedReturnValue(), v42 = v41 == 0, v41, !v42))
    {
      v43 = +[MessageListViewController log];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v64 = objc_opt_class();
        v65 = NSStringFromClass(v64);
        v66 = NSStringFromSelector(a2);
        *buf = 138413058;
        v89 = v65;
        v90 = 2048;
        v91 = self;
        v92 = 2114;
        v93 = v66;
        v94 = 2114;
        v95 = v5;
        _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding Remove-follow-up and more swipe actions for index path: %{public}@", buf, 0x2Au);
      }

      v44 = [(MessageListViewController *)self _swipeActionForTriageAction:5 indexPath:v5];
      [v17 ef_addOptionalObject:v44];

      v40 = [(MessageListViewController *)self _swipeActionForTriageAction:1 indexPath:v5];
      [v17 ef_addOptionalObject:v40];
    }

    else
    {
      v47 = +[MessageListViewController log];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        v75 = NSStringFromSelector(a2);
        *buf = 138413058;
        v89 = v74;
        v90 = 2048;
        v91 = self;
        v92 = 2114;
        v93 = v75;
        v94 = 2114;
        v95 = v5;
        _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding trailing primary-destructive swipe action for index path: %{public}@", buf, 0x2Au);
      }

      if (v85)
      {
        v48 = 9;
      }

      else
      {
        v48 = 8;
      }

      v49 = [(MessageListViewController *)self _swipeActionForTriageAction:v48 indexPath:v5];
      [v17 ef_addOptionalObject:v49];

      if (([v32 containsDraftsOrOutbox]& 1) != 0 || ([v32 containsSendLaterMailbox]& 1) != 0)
      {
        goto LABEL_35;
      }

      v50 = sub_10024BC14(0);
      v51 = [MFTriageActionUtilities triageActionForActionKey:v50];

      if (v51)
      {
        if (v51 == 16)
        {
          if (v85)
          {
            v51 = 8;
          }

          else
          {
            v51 = 9;
          }
        }

        v52 = +[MessageListViewController log];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v82 = objc_opt_class();
          v83 = NSStringFromClass(v82);
          v84 = NSStringFromSelector(a2);
          *buf = 138413058;
          v89 = v83;
          v90 = 2048;
          v91 = self;
          v92 = 2114;
          v93 = v84;
          v94 = 2114;
          v95 = v5;
          _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding trailing Archive/Delete swipe action for index path: %{public}@", buf, 0x2Au);
        }

        v53 = [(MessageListViewController *)self _swipeActionForTriageAction:v51 indexPath:v5];
        [v17 ef_addOptionalObject:v53];
      }

      v54 = +[MessageListViewController log];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v79 = objc_opt_class();
        v80 = NSStringFromClass(v79);
        v81 = NSStringFromSelector(a2);
        *buf = 138413058;
        v89 = v80;
        v90 = 2048;
        v91 = self;
        v92 = 2114;
        v93 = v81;
        v94 = 2114;
        v95 = v5;
        _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding more swipe action for index path: %{public}@", buf, 0x2Au);
      }

      v40 = [(MessageListViewController *)self _swipeActionForTriageAction:1 indexPath:v5];
      [v17 ef_addOptionalObject:v40];
    }
  }

  else
  {
    v38 = +[MessageListViewController log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      v72 = NSStringFromSelector(a2);
      *buf = 138413058;
      v89 = v71;
      v90 = 2048;
      v91 = self;
      v92 = 2114;
      v93 = v72;
      v94 = 2114;
      v95 = v5;
      _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding Remove-read-later and more swipe actions for index path: %{public}@", buf, 0x2Au);
    }

    v39 = [(MessageListViewController *)self _swipeActionForTriageAction:4 indexPath:v5];
    [v17 ef_addOptionalObject:v39];

    v40 = [(MessageListViewController *)self _swipeActionForTriageAction:1 indexPath:v5];
    [v17 ef_addOptionalObject:v40];
  }

LABEL_35:
  if (![v17 count])
  {
    v45 = +[MessageListViewController log];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      v69 = NSStringFromSelector(a2);
      *buf = 138413058;
      v89 = v68;
      v90 = 2048;
      v91 = self;
      v92 = 2114;
      v93 = v69;
      v94 = 2114;
      v95 = v5;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] No trailing swipe actions for index path: %{public}@", buf, 0x2Au);
    }
  }

  v13 = [UISwipeActionsConfiguration configurationWithActions:v17];
LABEL_40:

LABEL_41:
LABEL_42:

  return v13;
}

- (BOOL)_shouldShowSwipeActionsAtIndexPath:(id)a3
{
  v4 = a3;
  if (qword_1006DD378 != -1)
  {
    sub_10048A6B4();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = qword_1006DD370;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(MessageListViewController *)self dataSource];
        LOBYTE(v9) = [v10 isSection:v9 atIndex:{objc_msgSend(v4, "section")}];

        if (v9)
        {
          v11 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (BOOL)_shouldShowClearHighImpactForMessageListItem:(id)a3
{
  v4 = a3;
  if (EMBlackPearlIsFeatureEnabled() && ([(MessageListViewController *)self isBucketBarHidden]& 1) == 0)
  {
    v6 = [v4 category];
    if ([v6 isHighImpact])
    {
      v7 = [v4 category];
      v8 = [v7 type];
      [(MessageListViewController *)self selectedBucket];
      v5 = v8 != EMCategoryTypeForBucket() && [(MessageListViewController *)self selectedBucket]== 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_clearVisibleSwipeActions
{
  if ([(MessageListViewController *)self swipeActionVisible])
  {
    if (([(MessageListViewController *)self isEditing]& 1) == 0)
    {
      [(MessageListViewController *)self collectionView];
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_10018DF24;
      v3 = v4[3] = &unk_10064C7E8;
      v5 = v3;
      [UIView performWithoutAnimation:v4];
      [(MessageListViewController *)self setSwipeActionVisible:0];
    }
  }
}

- (void)setSwipeActionVisible:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MessageListViewController;
  if ([(MessageListViewController *)&v6 swipeActionVisible]!= a3)
  {
    v5.receiver = self;
    v5.super_class = MessageListViewController;
    [(MessageListViewController *)&v5 setSwipeActionVisible:v3];
    if (!v3)
    {
      sub_10016ED28(self);
    }
  }
}

- (void)_prepareForMoveOrDestructiveInteraction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 messageListItemSelection];
  v8 = [v7 messageListItems];

  v9 = [v8 ef_map:&stru_100652BA0];
  [(MessageListViewController *)self setSwipeActionVisible:0];
  v10 = [(MessageListViewController *)self messageSelectionStrategy];
  v11 = [(MessageListViewController *)self collectionView];
  v12 = [v11 indexPathsForSelectedItems];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10018E270;
  v18[3] = &unk_100652218;
  v18[4] = self;
  v13 = [v12 ef_map:v18];
  v14 = [NSSet setWithArray:v13];

  if ([v10 shouldChangeSelectionAfterDeletedMessageItemIDs:v9 selectedItemIDs:v14])
  {
    v15 = [(MessageListViewController *)self messageSelectionStrategy];
    v16 = [v15 itemIDToSelectAfterDeletedMessageItemIDs:v9];
    [(MessageListViewController *)self setItemIDToSelectAfterMoveID:v16];
  }

  v17 = [(MessageListViewController *)self dataSource];
  [v17 deleteItemsWithIDs:v9 animated:1 immediateCompletion:1 completion:v6];
}

- (void)_didPerformMoveOrDestructiveInteraction:(id)a3
{
  v13 = a3;
  v4 = [(MessageListViewController *)self scene];
  v5 = [v4 isInExpandedEnvironment];

  if (v5)
  {
    v6 = [v13 messageListItemSelection];
    v7 = [v6 messageListItems];
    v8 = [v7 ef_map:&stru_100652BC0];

    v9 = [(MessageListViewController *)self conversationViewController];
    v10 = [v9 referenceMessageListItem];
    v11 = [v10 itemID];
    v12 = [v8 containsObject:v11];

    if (v12)
    {
      [(MessageListViewController *)self _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:v8 showConversationView:1];
    }
  }
}

- (id)_swipeActionForTriageAction:(int64_t)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = [(MessageListViewController *)self dataSource];
  v8 = [v7 itemIdentifierForIndexPath:v6];

  v9 = [(MessageListViewController *)self dataSource];
  v10 = [v9 messageListItemAtIndexPath:v6];
  v11 = [v10 result];

  if (v11)
  {
    v49 = [(MessageListViewController *)self conversationViewController];
    v66 = v11;
    v48 = [NSArray arrayWithObjects:&v66 count:1];
    v12 = [v49 referenceMessageListItem];
    if (v12 == v11 && [v11 count] == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [MessageStatusIndicatorManager doesUpdateForChangeAction:a3];

        if (!v13)
        {
          goto LABEL_12;
        }

        v14 = [v11 displayMessageItemID];
        v12 = [v49 messageForItemID:v14];

        if (v12)
        {
          v65[0] = v11;
          v65[1] = v12;
          v15 = [NSArray arrayWithObjects:v65 count:2];

          v48 = v15;
        }

        v16 = +[MessageListViewController log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v11 objectID];
          v18 = [v12 objectID];
          *buf = 134218498;
          v68 = a3;
          v69 = 2114;
          v70 = v17;
          v71 = 2114;
          v72 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "For changeAction:%ld, include both itemID:%{public}@ displayMessage:%{public}@", buf, 0x20u);
        }
      }
    }

LABEL_12:
    [(MessageListViewController *)self reportEngagementAction:3 onItemID:v8 atIndexPath:v6];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10018F31C;
    v64[3] = &unk_100652AD0;
    v64[4] = self;
    v46 = objc_retainBlock(v64);
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10018F3E4;
    v63[3] = &unk_10064D720;
    v63[4] = self;
    v47 = objc_retainBlock(v63);
    v19 = a3 == 4;
    if (!a3)
    {
      v22 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10018F450;
    v60[3] = &unk_100652BE8;
    v62 = a3;
    v60[4] = self;
    v61 = v6;
    v45 = objc_retainBlock(v60);
    if (a3 <= 5)
    {
      if (a3 == 2)
      {
        v28 = [(MessageListViewController *)self undoManager];
        a3 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItems:v48 undoManager:v28 origin:2 actor:2 reason:4];

        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_10018F66C;
        v58[3] = &unk_10064D658;
        v58[4] = self;
        v59 = v45;
        v22 = [a3 swipeActionWithPreparation:0 completion:v58];
        v27 = v59;
        goto LABEL_29;
      }

      if (a3 == 3)
      {
        v20 = [(MessageListViewController *)self undoManager];
        v21 = [MFReadLaterTriageInteraction interactionWithMessageListItems:v48 undoManager:v20 origin:2 actor:2];
LABEL_26:

        v26 = [(MessageListViewController *)self view];
        [v21 setPresentationSource:v26];

        v27 = v21;
        [v27 setDelegate:self];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_10018F6F0;
        v55[3] = &unk_100652C10;
        v57 = v19;
        v55[4] = self;
        v56 = v45;
        v22 = [v27 swipeActionWithPreparation:0 completion:v55];

LABEL_27:
        a3 = v27;
LABEL_29:

LABEL_32:
        goto LABEL_33;
      }

LABEL_24:
      if (a3 == 4)
      {
        v20 = [(MessageListViewController *)self undoManager];
        v25 = +[_TtC10MobileMail33MFReadLaterTriageInteractionState removeDateState];
        v21 = [MFReadLaterTriageInteraction interactionWithMessageListItems:v48 undoManager:v20 origin:2 actor:2 state:v25];

        goto LABEL_26;
      }

      if (a3 > 8)
      {
        if (a3 > 10)
        {
          if (a3 == 11)
          {
            v43 = [(MessageListViewController *)self undoManager];
            a3 = [(MFConversationFlagTriageInteraction *)MFMuteTriageInteraction interactionWithReferenceMessage:v11 undoManager:v43 origin:2 actor:2];

            v44 = [(MessageListViewController *)self view];
            [a3 setPresentationSource:v44];

            v24 = [a3 swipeAction];
            goto LABEL_31;
          }

          if (a3 == 15)
          {
            v37 = [(MessageListViewController *)self undoManager];
            a3 = [(MFFlagChangeTriageInteraction *)MFJunkTriageInteraction interactionWithMessageListItems:v48 undoManager:v37 origin:2 actor:2 reason:4];

            v24 = [a3 swipeAction];
            goto LABEL_31;
          }

          goto LABEL_58;
        }

        if (a3 != 9)
        {
          v34 = [(MessageListViewController *)self undoManager];
          a3 = [(MFConversationFlagTriageInteraction *)MFNotifyTriageInteraction interactionWithReferenceMessage:v11 undoManager:v34 origin:2 actor:2];

          v35 = [(MessageListViewController *)self view];
          [a3 setPresentationSource:v35];

          v24 = [a3 swipeAction];
          goto LABEL_31;
        }

        v40 = [(MessageListViewController *)self undoManager];
        a3 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItems:v48 undoManager:v40 origin:2 actor:2];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a3 setShouldAskForConfirmation:1];
          [a3 setDelegate:self];
        }
      }

      else
      {
        if (a3 <= 6)
        {
          if (a3 == 1)
          {
            v38 = [(MessageListViewController *)self undoManager];
            v39 = [MFMoreTriageInteraction interactionWithMessageListItems:v48 undoManager:v38 origin:2 actor:2];

            [v39 setDelegate:self];
            v27 = v39;
            v51[0] = _NSConcreteStackBlock;
            v51[1] = 3221225472;
            v51[2] = sub_10018F978;
            v51[3] = &unk_10064D1A8;
            v51[4] = self;
            v52 = v48;
            v50[0] = _NSConcreteStackBlock;
            v50[1] = 3221225472;
            v50[2] = sub_10018F980;
            v50[3] = &unk_10064D720;
            v50[4] = self;
            v22 = [v27 swipeActionWithPreparation:v51 completion:v50];

            goto LABEL_27;
          }

          if (a3 == 5)
          {
            v31 = [(MessageListViewController *)self undoManager];
            a3 = [(MFDestructiveTriageInteraction *)MFRemoveFollowUpTriageInteraction interactionWithMessageListItems:v48 undoManager:v31 origin:2 actor:2];

            v24 = [a3 swipeActionWithPreparation:v46 completion:v47];
            goto LABEL_31;
          }

LABEL_58:
          v27 = MFLogGeneral();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10048A6C8();
          }

          v22 = 0;
          a3 = 0;
          goto LABEL_29;
        }

        if (a3 == 7)
        {
          v41 = [(MessageListViewController *)self undoManager];
          v42 = [(MessageListViewController *)self view];
          a3 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:v48 undoManager:v41 origin:2 actor:2 presentationSource:v42 delegate:self presentingViewController:self predictedMailbox:0];

          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_10018F838;
          v53[3] = &unk_10064D658;
          v53[4] = self;
          v54 = v45;
          v22 = [a3 swipeActionWithPreparation:0 completion:v53];
          v27 = v54;
          goto LABEL_29;
        }

        v36 = [(MessageListViewController *)self undoManager];
        a3 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItems:v48 undoManager:v36 origin:2 actor:2];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a3 setShouldAskForConfirmation:1];
          [a3 setDelegate:self];
        }
      }

      v24 = [a3 swipeActionWithPreparation:v46 completion:v47];
      goto LABEL_31;
    }

    if (a3 == 21)
    {
      v29 = [(MessageListViewController *)self undoManager];
      a3 = [(MFDestructiveTriageInteraction *)MFRemoveHighImpactTriageInteraction interactionWithMessageListItems:v48 undoManager:v29 origin:2 actor:2];

      v24 = [a3 swipeActionWithPreparation:v46 completion:v47];
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_24;
      }

      v23 = [(MessageListViewController *)self undoManager];
      a3 = [(MFFlagChangeTriageInteraction *)MFFlagTriageInteraction interactionWithMessageListItems:v48 undoManager:v23 origin:2 actor:2 reason:4];

      [a3 setDelegate:self];
      v24 = [a3 swipeActionWithPreparation:0 completion:v45];
    }

LABEL_31:
    v22 = v24;
    goto LABEL_32;
  }

  a3 = +[MessageListViewController log];
  if (os_log_type_enabled(a3, OS_LOG_TYPE_ERROR))
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    *buf = 138413058;
    v68 = v33;
    v69 = 2048;
    v70 = self;
    v71 = 2112;
    v72 = v8;
    v73 = 2112;
    v74 = v6;
    _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "<%@: %p> Failed to obtain messageListItem for itemID:%@ at indexPath:%@", buf, 0x2Au);
  }

  v22 = 0;
LABEL_34:

  return v22;
}

- (void)_reportReadTriageInteraction:(id)a3 didPerform:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v14 = v6;
    v7 = [v6 messageListItemSelection];
    v8 = [v7 isSelectAll];

    v6 = v14;
    if ((v8 & 1) == 0)
    {
      v9 = [v14 messageListItemSelection];
      v10 = [v9 messageListItems];
      v11 = [v10 firstObject];
      v12 = [v11 itemID];

      if (v12)
      {
        v13 = [(MessageListViewController *)self dataSource];
        [v13 didScheduleReadInteractionForItemID:v12];
      }

      v6 = v14;
    }
  }
}

- (void)mailboxFilterPickerViewController:(id)a3 didFinishPickingWithSelectedFilters:(id)a4
{
  v6 = a4;
  v5 = [(MessageListViewController *)self filterViewModel];
  [v5 setSelectedFilters:v6];

  [(MessageListViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(MessageListViewController *)self setFiltersEnabled:1];
  [(MessageListViewController *)self _appStoreReviewNotifyFilterCriterionIfNecessaryFor:v6];
}

- (void)_appStoreReviewNotifyFilterCriterionIfNecessaryFor:(id)a3
{
  v13 = [NSSet setWithArray:a3];
  v4 = [(MessageListViewController *)self filterViewModel];
  v5 = [v4 provider];
  v6 = [v5 defaultFilters];
  v7 = [NSSet setWithArray:v6];

  if (([v13 isEqualToSet:v7] & 1) == 0)
  {
    v8 = +[UIApplication sharedApplication];
    v9 = [v8 appStoreReviewManager];
    [v9 notifyCriterionMet:1];

    v10 = [(MessageListViewController *)self scene];
    if (v10)
    {
      v11 = +[UIApplication sharedApplication];
      v12 = [v11 appStoreReviewManager];
      [v12 attemptToShowPromptIn:v10 reason:4];
    }
  }
}

- (id)referenceMessageListItem
{
  v2 = [(MessageListViewController *)self conversationViewController];
  v3 = [v2 referenceMessageListItem];

  return v3;
}

- (void)setReferenceMessageListItem:(id)a3 referenceMessageList:(id)a4 showAsConversation:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v12 = a3;
  v10 = a4;
  v11 = [(MessageListViewController *)self conversationViewController];
  [v11 setReferenceMessageListItem:v12 referenceMessageList:v10 showAsConversation:v7 animated:v6];
}

- (BOOL)conversationViewController:(id)a3 canAdvanceToNextConversationWithDirection:(int)a4
{
  v4 = *&a4;
  v6 = [(MessageListViewController *)self conversationViewController];
  v7 = [v6 referenceMessageListItem];

  v8 = [(MessageListViewController *)self messageSelectionStrategy];
  v9 = [v7 itemID];
  v10 = [v8 itemIDToSelectFromItemID:v9 withDirection:v4];

  return v10 != 0;
}

- (void)conversationViewController:(id)a3 advanceToNextConversationWithDirection:(int)a4
{
  v4 = *&a4;
  v7 = a3;
  v8 = [v7 referenceMessageListItem];
  v9 = [(MessageListViewController *)self messageSelectionStrategy];
  v10 = [v8 itemID];
  v11 = [v9 itemIDToSelectFromItemID:v10 withDirection:v4];

  v12 = +[MessageListViewController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    v16 = 138413058;
    v17 = v14;
    v18 = 2048;
    v19 = self;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ - next itemID:%@", &v16, 0x2Au);
  }

  [(MessageListViewController *)self deselectSelectedItemsInCollectionView];
  [(MessageListViewController *)self _handleDidSelectItemID:v11 referenceItem:0 scrollToVisible:1 userInitiated:1 animated:1];
}

- (BOOL)_shouldPopToMessageListViewControllerFromConversationViewController:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self scene];
  if (([v5 isInExpandedEnvironment] & 1) != 0 || !objc_msgSend(v4, "isFullyVisible"))
  {
    v7 = 0;
  }

  else
  {
    v6 = [v4 referenceMessageListItem];
    v7 = v6 == 0;
  }

  return v7;
}

- (void)conversationViewController:(id)a3 willRemoveAllVisibleMessagesWithItemIDs:(id)a4
{
  v6 = a4;
  v5 = [(MessageListViewController *)self scene];
  -[MessageListViewController _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:showConversationView:](self, "_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:showConversationView:", v6, [v5 isInExpandedEnvironment]);
}

- (void)conversationViewController:(id)a3 didRemoveAllVisibleMessagesWithItemIDs:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 referenceMessageListItem];
  v8 = [v7 itemID];

  if (!v8 || [v6 containsObject:v8])
  {
    [(MessageListViewController *)self _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:v6 conversationViewController:v9];
  }
}

- (void)selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)a3
{
  v5 = a3;
  v4 = [(MessageListViewController *)self conversationViewController];
  [(MessageListViewController *)self _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:v5 conversationViewController:v4];
}

- (void)_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)a3 conversationViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListViewController *)self scene];
  -[MessageListViewController _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:showConversationView:](self, "_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:showConversationView:", v6, [v8 isInExpandedEnvironment]);
  if ([(MessageListViewController *)self _shouldPopToMessageListViewControllerFromConversationViewController:v7])
  {
    v9 = [(MessageListViewController *)self navigationController];
    v10 = [v9 viewControllers];
    v11 = [v10 containsObject:self];

    if (v11)
    {
      v12 = [v8 splitViewController];
      [v12 showMessageListViewController:1 animated:1 completion:0];
    }

    else
    {
      v13 = +[MessageListViewController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [(MessageListViewController *)self navigationController];
        v17 = [v16 viewControllers];
        v18 = 138412802;
        v19 = v15;
        v20 = 2048;
        v21 = self;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<%@: %p>: didRemoveAllVisibleMessagesWithItemIDs navigationController.viewControllers:%@", &v18, 0x20u);
      }
    }
  }
}

- (void)_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)a3 showConversationView:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(MessageListViewController *)self messageSelectionStrategy];
  v9 = [v8 itemIDToSelectAfterDeletedMessageItemIDs:v7];

  v10 = +[MessageListViewController log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    *buf = 138413570;
    v20 = v12;
    v21 = 2048;
    v22 = self;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v7;
    v27 = 1024;
    v28 = v4;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ - itemIDs:%@ showConversationView:%{BOOL}d nextItemID:%@", buf, 0x3Au);
  }

  if (!v9 && [(MessageListViewController *)self preferredDeleteOrMoveMessageAction]== 1)
  {
    [(MessageListViewController *)self ignoredFocusUpdatesForItemIDs];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100190838;
    v17 = v16[3] = &unk_100652C38;
    v18 = self;
    v14 = v17;
    [v7 enumerateObjectsUsingBlock:v16];
  }

  LOBYTE(v15) = v4;
  [(MessageListViewController *)self _handleDidSelectItemID:v9 referenceItem:0 scrollToVisible:0 userInitiated:0 canRestoreDraft:1 animated:0 showConversationView:v15];
}

- (id)conversationViewController:(id)a3 messagesToActOnForReferenceMessage:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 messagesInMessageListItem:v5];

  return v7;
}

- (id)conversationViewController:(id)a3 messageListItemWithItemID:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 messageListItemForItemID:v5];

  return v7;
}

- (BOOL)conversationViewControllerCanShowNoMessageSelectedView:(id)a3
{
  v4 = [(MessageListViewController *)self noContentView];
  v5 = [v4 window];
  if (v5)
  {
    v6 = (*(self + 8) & 1) == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)shouldUseSelectionDataSourceForConversationViewController:(id)a3
{
  v4 = [(MessageListViewController *)self messageListSelectionModel];
  if (v4)
  {
    v5 = [(MessageListViewController *)self scene];
    v6 = [v5 mf_rootViewController];
    v7 = [v6 traitCollection];
    v8 = [UINavigationBar mf_shouldUseDesktopClassNavigationBarForTraitCollection:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)messageListItemSelectionForConversationViewController:(id)a3
{
  v3 = [(MessageListViewController *)self _messageListItemSelectionCreateIfNeeded:0];

  return v3;
}

- (void)conversationViewController:(id)a3 performTriageAction:(int64_t)a4 presentationSource:(id)a5
{
  v7 = a5;
  if (a4 == 7)
  {
    sub_100184494(self, v7);
  }

  else
  {
    v8 = +[MessageListViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10048A790();
    }
  }
}

- (void)conversationViewController:(id)a3 didPerform:(BOOL)a4 triageInteraction:(id)a5
{
  v6 = a5;
  if ([(MessageListViewController *)self isEditing])
  {
    [(MessageListViewController *)self setEditing:0 animated:1];
  }

  else if (-[MessageListViewController _inMultiSelectionMode](self, "_inMultiSelectionMode") && [v6 isDestructive])
  {
    sub_10017A800(self, 1);
  }
}

- (id)messageTriageInteractionHelperForConversationViewController:(id)a3
{
  v3 = [(MessageListViewController *)self messageTriageInteractionHelper];

  return v3;
}

- (void)selectionModel:(id)a3 selectItemID:(id)a4
{
  v8 = a4;
  v5 = [(MessageListViewController *)self dataSource];
  v6 = [v5 indexPathForItemIdentifier:v8];

  v7 = [(MessageListViewController *)self collectionView];
  [v7 selectItemAtIndexPath:v6 animated:0 scrollPosition:0];
}

- (void)selectionModel:(id)a3 deselectItemID:(id)a4
{
  v8 = a4;
  v5 = [(MessageListViewController *)self dataSource];
  v6 = [v5 indexPathForItemIdentifier:v8];

  v7 = [(MessageListViewController *)self collectionView];
  [v7 deselectItemAtIndexPath:v6 animated:0];
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = [(MessageListViewController *)self dataSource];
  if (-[MessageListViewController shouldDisplayGroupedSenders](self, "shouldDisplayGroupedSenders") & 1) != 0 || ([v10 firstObject], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "sectionAtIndex:", objc_msgSend(v12, "section")), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isMessagesSection:", v13), v13, v12, (v14 & 1) == 0) || (-[MessageListViewController dataSource](self, "dataSource"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "firstObject"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "section"), v18 = objc_msgSend(v15, "isSection:atIndex:", MessageListSectionMailCleanupTip, v17), v16, v15, (v18))
  {
    v19 = 0;
  }

  else
  {
    if ([v10 count] == 1)
    {
      [v10 firstObject];
    }

    else
    {
      [v9 indexPathForItemAtPoint:{x, y}];
    }
    v21 = ;
    if (v21)
    {
      goto LABEL_15;
    }

    v22 = +[MessageListViewController log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v38.x = x;
      v38.y = y;
      v26 = NSStringFromCGPoint(v38);
      v27 = 138413314;
      v28 = v25;
      v29 = 2048;
      v30 = self;
      v31 = 2112;
      v32 = v26;
      v33 = 2048;
      v34 = [v10 count];
      v35 = 2112;
      v36 = v10;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "<%@: %p> Failed to get orbed index path for point: %@, picking the first one from indexPaths (%lu): %@", &v27, 0x34u);
    }

    v21 = [v10 firstObject];
    if (v21)
    {
LABEL_15:
      v19 = [(MessageListViewController *)self _contextMenuConfigurationForIndexPaths:v10 orbedIndexPath:v21];
    }

    else
    {
      v21 = +[MessageListViewController log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        NSStringFromClass(v23);
        objc_claimAutoreleasedReturnValue();
        sub_10048A804();
      }

      v19 = 0;
    }
  }

  return v19;
}

- (id)_contextMenuConfigurationForIndexPaths:(id)a3 orbedIndexPath:(id)a4
{
  v7 = a3;
  v37 = a4;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001918A0;
  v46[3] = &unk_1006528A8;
  v46[4] = self;
  v35 = v7;
  v8 = [v7 ef_compactMap:v46];
  if (![v8 count])
  {
    v34 = +[NSAssertionHandler currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"MessageListViewController.m" lineNumber:6718 description:{@"Failed to have itemIDs for provided indexPaths:%@", v7}];
  }

  if ([v8 count] == 1 || (-[MessageListViewController messageListSelectionModel](self, "messageListSelectionModel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isSelectAll"), v9, v10))
  {
    v11 = [v8 firstObject];
    v12 = [(MessageListViewController *)self _shouldShowItemIDAsConversation:v11];

    v13 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = [(MessageListViewController *)self dataSource];
  v15 = [v14 messageListItemAtIndexPath:v37];
  v36 = [v15 result];

  if (v13)
  {
    v16 = [(MessageListViewController *)self scene];
    v17 = [ConversationViewController alloc];
    v18 = [(MessageListViewController *)self contactStore];
    v19 = [(MessageListViewController *)self avatarGenerator];
    v20 = [(ConversationViewController *)v17 initWithScene:v16 contactStore:v18 avatarGenerator:v19];

    [(ConversationViewControllerBase *)v20 setDelegate:self];
    [(ConversationViewControllerBase *)v20 setIsPrimary:1];
    [(ConversationViewController *)v20 setBeingPreviewed:1];
    v21 = +[MessageListViewController log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromSelector(a2);
      v23 = [v8 firstObject];
      *buf = 138412802;
      v48 = v22;
      v49 = 2112;
      v50 = v20;
      v51 = 2112;
      v52 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", buf, 0x20u);
    }

    v24 = [(MessageListViewController *)self searchController];
    -[ConversationViewControllerBase setMessagesShowSourceMailbox:](v20, "setMessagesShowSourceMailbox:", [v24 isActive]);

    v25 = [(MessageListViewController *)self dataSource];
    v26 = [v25 messageListAtSectionIndex:{objc_msgSend(v37, "section")}];
    [(ConversationViewController *)v20 setReferenceMessageListItem:v36 referenceMessageList:v26 showAsConversation:v12 animated:1];

    [(MessageListViewController *)self setPreviewConversationViewController:v20];
  }

  else
  {
    v20 = 0;
  }

  v27 = v8;
  objc_initWeak(buf, self);
  objc_initWeak(&location, v20);
  v28 = [v36 itemID];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100191948;
  v43[3] = &unk_100652C60;
  objc_copyWeak(&v44, &location);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100191A28;
  v38[3] = &unk_100652C88;
  objc_copyWeak(&v42, buf);
  v39 = v27;
  v29 = v39;
  v40 = v29;
  v30 = v36;
  v41 = v30;
  v31 = [UIContextMenuConfiguration configurationWithIdentifier:v28 previewProvider:v43 actionProvider:v38];

  v32 = [(MessageListViewController *)self messageListSelectionModel];
  [v31 setBadgeCount:{objc_msgSend(v32, "count")}];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  return v31;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 identifier];
  v11 = +[MessageListViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v13 = [(MessageListViewController *)self previewConversationViewController];
    *buf = 138412802;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", buf, 0x20u);
  }

  if (v10)
  {
    [(MessageListViewController *)self setPreviewConversationViewController:0];
    objc_initWeak(buf, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100191D38;
    v14[3] = &unk_10064CC78;
    objc_copyWeak(&v16, buf);
    v15 = v10;
    [v9 addAnimations:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a4;
  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [(MessageListViewController *)self previewConversationViewController];
    v11 = [v7 identifier];
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", &v12, 0x20u);
  }
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a4;
  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [(MessageListViewController *)self previewConversationViewController];
    v11 = [v7 identifier];
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", &v12, 0x20u);
  }

  [(MessageListViewController *)self setPreviewConversationViewController:0];
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v11 = a4;
  v8 = a5;
  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterSupported())
    {
      v9 = +[MUIPriorityMessageListBackgroundDecorationView elementKind];
      v10 = [v8 isEqualToString:v9];

      if (v10)
      {
        [(MessageListViewController *)self setShimmerView:v11];
      }
    }
  }
}

- (id)_previewActionsForItemIDs:(id)a3 orbedItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListViewController *)self messageListSelectionModel];
  if ([v8 isSelectAll])
  {

    v9 = 0;
    goto LABEL_35;
  }

  v9 = [v6 count];

  if (v9)
  {
    v10 = [(MessageListViewController *)self dataSource];
    v11 = [v10 messageListItemsForItemIDs:v6];
    v12 = [EFFuture combine:v11];
    v13 = [v12 result];
    v14 = [v13 ef_filter:EFIsNotNull];

    if (![v14 count])
    {
      v9 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v60 = v14;
    v58 = [v7 isEditable];
    v55 = [v7 shouldArchiveByDefault];
    v76[0] = _NSConcreteStackBlock;
    v76[1] = 3221225472;
    v76[2] = sub_100192D60;
    v76[3] = &unk_100652CB0;
    v76[4] = self;
    v15 = objc_retainBlock(v76);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_100192E28;
    v75[3] = &unk_100652CD8;
    v75[4] = self;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100192EFC;
    v70[3] = &unk_100652D28;
    v54 = objc_retainBlock(v75);
    v73 = v54;
    v16 = v6;
    v71 = v16;
    v57 = v15;
    v74 = v57;
    v72 = self;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1001931F8;
    v68[3] = &unk_100652D50;
    v56 = objc_retainBlock(v70);
    v69 = v56;
    v17 = objc_retainBlock(v68);
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = sub_10017D888;
    v66 = sub_10017D898;
    v67 = +[NSMutableArray array];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100193234;
    v61[3] = &unk_100652D78;
    v61[4] = &v62;
    v18 = objc_retainBlock(v61);
    v19 = [v7 itemID];
    v59 = (v57[2])(v57, v19);

    if (v58)
    {
LABEL_22:
      if ((v55 & (v58 ^ 1)) != 0)
      {
        v43 = 9;
      }

      else
      {
        v43 = 8;
      }

      v44 = (v17[2])(v17, v43, v60, v59);
      (v18[2])(v18, v44);

      v45 = [v7 senderList];
      v46 = [v45 firstObject];

      if (v46)
      {
        v47 = [(MessageListViewController *)self state];
        v48 = [v47 containsDraftsMailbox];

        if ((v48 & 1) == 0)
        {
          if ([v7 isBlocked])
          {
            v49 = 19;
          }

          else
          {
            v49 = 18;
          }

          v50 = (v17[2])(v17, v49, v60, v59);
          (v18[2])(v18, v50);
        }
      }

      if (sub_100186528(self, v60))
      {
        v51 = (v17[2])(v17, 20, v60, v59);
        (v18[2])(v18, v51);
      }

      v9 = v63[5];

      _Block_object_dispose(&v62, 8);
      v14 = v60;
      goto LABEL_34;
    }

    if ([v16 count] == 1)
    {
      v20 = (v56[2])(v56, 12, v14, v59, 0);
      (v18[2])(v18, v20);

      v21 = (v56[2])(v56, 13, v14, v59, 0);
      (v18[2])(v18, v21);

      v22 = (v56[2])(v56, 14, v14, v59, 0);
      (v18[2])(v18, v22);

      v23 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:v63[5]];
      [v23 setPreferredElementSize:1];
      v24 = +[NSMutableArray array];
      v25 = v63[5];
      v63[5] = v24;

      (v18[2])(v18, v23);
      v26 = (v17[2])(v17, 17, v60, v59);
      v27 = v26;
      if (v26)
      {
        v77 = v26;
        v28 = [NSArray arrayWithObjects:&v77 count:1];
        v29 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:v28];
        (v18[2])(v18, v29);
      }
    }

    v30 = objc_alloc_init(NSMutableArray);
    v31 = (v17[2])(v17, 6, v60, v59);
    [v30 ef_addOptionalObject:v31];

    v32 = (v17[2])(v17, 2, v60, v59);
    [v30 ef_addOptionalObject:v32];

    v33 = (v17[2])(v17, 15, v60, v59);
    [v30 ef_addOptionalObject:v33];

    if ([v30 count] == 1)
    {
      v34 = [v30 firstObject];
      (v18[2])(v18, v34);
    }

    else
    {
      if ([v30 count] < 2)
      {
        goto LABEL_16;
      }

      v34 = +[NSBundle mainBundle];
      v53 = [v34 localizedStringForKey:@"MARK_SUBMENU_TITLE" value:&stru_100662A88 table:@"Main"];
      v35 = [UIImage systemImageNamed:MFImageGlyphMarkElipsis];
      v36 = [UIMenu menuWithTitle:v53 image:v35 identifier:0 options:0 children:v30];
      (v18[2])(v18, v36);
    }

LABEL_16:
    if (![(MessageListViewController *)self isSearchViewController]&& [EMInternalPreferences preferenceEnabled:54])
    {
      v37 = (v17[2])(v17, 22, v60, v59);
      (v18[2])(v18, v37);
    }

    v38 = (v17[2])(v17, 10, v60, v59);
    (v18[2])(v18, v38);

    v39 = (v17[2])(v17, 11, v60, v59);
    (v18[2])(v18, v39);

    v40 = [(MessageListViewController *)self state];
    v41 = [v40 containsSendLaterMailbox];

    if ((v41 & 1) == 0)
    {
      v42 = (v17[2])(v17, 7, v60, v59);
      (v18[2])(v18, v42);
    }

    goto LABEL_22;
  }

LABEL_35:

  return v9;
}

- (BOOL)shouldShowUnreadCountForMailStatusViewController:(id)a3
{
  if ([(MessageListViewController *)self _isFlaggedMailbox])
  {
    return 0;
  }

  v5 = [(MessageListViewController *)self state];
  v6 = [v5 containsDraftsMailbox];

  return v6 ^ 1;
}

- (void)mailStatusViewControllerUndoButtonTapped:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 daemonInterface];
  v6 = [v5 outgoingMessageRepository];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100193410;
  v7[3] = &unk_10064C570;
  v7[4] = self;
  [v6 cancelLastDelayedMessage:v7];
}

- (void)badgeCountUpdated:(id)a3 badgeCount:(int64_t)a4
{
  v4 = [EFScheduler mainThreadScheduler:a3];
  [v4 performBlock:&v5];
}

- (void)mailboxStatusUpdatedWithStatusInfo:(id)a3 forMailboxObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 state] == 1)
  {
    [(MessageListViewController *)self _finishRefreshingWaitForDraggingToEnd:1];
    if ([v6 hasAccountError])
    {
      objc_initWeak(&location, self);
      v8 = +[EFScheduler mainThreadScheduler];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100193780;
      v10[3] = &unk_10064CC78;
      objc_copyWeak(&v12, &location);
      v11 = v7;
      v9 = [v8 afterDelay:v10 performBlock:30.0];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (void)contentProtectionStateChanged:(int64_t)a3 previousState:(int64_t)a4
{
  if (a4 && EFProtectedDataAvailable())
  {
    v13 = [(MessageListViewController *)self dataSource];
    [v13 reloadVisibleCellsInvalidatingCache:1];
  }

  else if ((a3 - 1) <= 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(MessageListViewController *)self collectionView];
    v7 = [v6 preparedCells];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v12 = [v11 messageListItemFetchTimeoutCancelable];
            [v12 cancel];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (id)_mailActionsViewDataSourceForMailActionsViewController:(id)a3 messageListItem:(id)a4 predictedMailbox:(id)a5 indexPath:(id)a6 cell:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  objc_initWeak(location, v11);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100193C88;
  v29[3] = &unk_10064D1F8;
  objc_copyWeak(&v31, location);
  v29[4] = self;
  v15 = v14;
  v30 = v15;
  v16 = objc_retainBlock(v29);
  v17 = [MailActionsViewDataSource alloc];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100193ED4;
  v24[3] = &unk_100652DC0;
  v24[4] = self;
  v18 = v11;
  v25 = v18;
  v19 = v16;
  v28 = v19;
  v20 = v13;
  v26 = v20;
  v21 = v12;
  v27 = v21;
  v22 = [(MailActionsViewDataSource *)v17 initWithBuilderBlock:v24];

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);

  return v22;
}

- (void)mailActionsViewController:(id)a3 didSelectAction:(id)a4
{
  v6 = a4;
  if (EMBlackPearlIsFeatureEnabled())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MessageListViewController *)self diagnosticsHelper];
      [v5 setSource:1];
    }
  }

  [v6 executeHandlerIfEnabled];
}

- (id)_displayMetrics
{
  v3 = [(MessageListViewController *)self traitCollection];
  v4 = [(MessageListViewController *)self view];
  [v4 layoutMargins];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(MessageListViewController *)self view];
  [v13 safeAreaInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(MessageListViewController *)self scene];
  v23 = +[MFMessageDisplayMetrics displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:](MFMessageDisplayMetrics, "displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:", v3, [v22 interfaceOrientation], v6, v8, v10, v12, v15, v17, v19, v21);

  return v23;
}

- (id)messageContentRepresentationRequestForMessageTriageInteractionHelper:(id)a3 message:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MFMessageCompositionTriageInteraction compositionRepresentationRequestForMessage:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)messageListForMessageTriageInteractionHelper:(id)a3 messageListItem:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v5 itemID];
  v8 = [v6 messageListForMessageListItemWithIdentifier:v7];

  return v8;
}

- (id)messageTriageInteractionHelper:(id)a3 senderRepositoryForMessageListItems:(id)a4
{
  v4 = [(MessageListViewController *)self scene:a3];
  v5 = [v4 daemonInterface];
  v6 = [v5 senderRepository];

  return v6;
}

- (int64_t)unreadBadgeCountForMessageTriageInteractionHelper:(id)a3
{
  v3 = [(MessageListViewController *)self mailStatusObserver];
  v4 = [v3 badgeCount];

  return v4;
}

- (id)moreTriageInteraction:(id)a3 actionsViewControllerWithInteractionTarget:(id)a4 didDismissHandler:(id)a5
{
  v37 = a3;
  v8 = a4;
  v34 = a5;
  [(MessageListViewController *)self setTriageInteractionTarget:v8, v8];
  v9 = [(MessageListViewController *)self dataSource];
  v10 = [v8 messageListItem];
  v11 = [v10 itemID];
  v12 = [v9 indexPathForItemIdentifier:v11];

  v36 = v12;
  v13 = [(MessageListViewController *)self collectionView];
  v14 = [v13 cellForItemAtIndexPath:v12];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 cellHelper];
    v33 = [v15 predictedMailbox];
  }

  else
  {
    v33 = 0;
  }

  v35 = [(MessageListViewController *)self _displayMetrics];
  v16 = [(MessageListViewController *)self _createMailActionViewHeader];
  v17 = [ConversationCellViewModel alloc];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100194A30;
  v42[3] = &unk_10064CFD8;
  v18 = v8;
  v43 = v18;
  v44 = self;
  v19 = [(ConversationCellViewModel *)v17 initWithBuilder:v42];
  [v16 setViewModel:v19];

  objc_initWeak(&location, self);
  v20 = [MailActionsViewController alloc];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100194BDC;
  v38[3] = &unk_10064D130;
  objc_copyWeak(&v40, &location);
  v21 = v34;
  v39 = v21;
  v22 = [(MailActionsViewController *)v20 initWithDelegate:self messageHeaderView:v16 didDismissHandler:v38];
  v23 = [[UINavigationController alloc] initWithRootViewController:v22];
  [v23 setModalPresentationStyle:7];
  v24 = [v23 presentationController];
  [v24 setDelegate:self];

  v25 = [v37 presentationSource];
  v26 = [v23 popoverPresentationController];
  [v26 setSourceItem:v25];

  if (+[UIDevice mf_isPadIdiom])
  {
    [v35 mailActionCardPreferredHeightForPad];
    v27 = [(MessageListViewController *)self traitCollection];
    v28 = [v27 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v28);

    if (IsAccessibilityCategory)
    {
      [(MailActionsViewController *)v22 approximateHeightNeededForAccessibilityContentSizeCategory];
    }

    [(MailActionsViewController *)v22 preferredContentSize];
    [v23 setPreferredContentSize:?];
  }

  v30 = [v18 primaryMessage];
  v31 = [(MessageListViewController *)self _mailActionsViewDataSourceForMailActionsViewController:v22 messageListItem:v30 predictedMailbox:v33 indexPath:v36 cell:v14];
  [(MailActionsViewController *)v22 setDataSource:v31];

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);

  return v23;
}

- (void)presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 presentedViewController];
    v9 = [(MessageListViewController *)self _mailActionsViewControllerFromPresentedViewController:v8];

    if (v9)
    {
      v10 = v7;
      [v10 _setShouldDismissWhenTappedOutside:1];
      v11 = [(MessageListViewController *)self _displayMetrics];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100194EA8;
      v16[3] = &unk_100652DE8;
      v17 = v9;
      v12 = v11;
      v18 = v12;
      v13 = [UISheetPresentationControllerDetent _detentWithIdentifier:@"MessageListViewControllerCustomMediumDetent" resolutionContextBlock:v16];
      v19[0] = v13;
      v14 = +[UISheetPresentationControllerDetent largeDetent];
      v19[1] = v14;
      v15 = [NSArray arrayWithObjects:v19 count:2];
      [v10 setDetents:v15];
    }
  }
}

- (void)presentationControllerWillDismiss:(id)a3
{
  if (![(MessageListViewController *)self showingPopoverViewController])
  {
    v5 = [(MessageListViewController *)self collectionView];
    v4 = [(MessageListViewController *)self transitionCoordinator];
    [v5 mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:v4 animated:1];
  }
}

- (id)_mailActionsViewControllerFromPresentedViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      goto LABEL_7;
    }
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)labelForStateCapture
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10017D888;
  v10 = sub_10017D898;
  v11 = 0;
  v2 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v2 performSyncBlock:&v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)itemIDsForStateCaptureWithErrorString:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10017D888;
  v13 = sub_10017D898;
  v14 = 0;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performSyncBlock:&v8];

  v5 = v10[5];
  if (v5)
  {
    if (a3)
    {
      *a3 = 0;
      v5 = v10[5];
    }

    v6 = [v5 itemIdentifiers];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)parsecEventQueuePerformBlock:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self session];
  v6 = [(MessageListViewController *)self parsecEventQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019575C;
  v9[3] = &unk_10064D270;
  v7 = v4;
  v11 = v7;
  v8 = v5;
  v10 = v8;
  [v6 performBlock:v9];
}

- (void)reportEngagementAction:(int64_t)a3 onItemID:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([(MessageListViewController *)self isSearchViewController])
  {
    v10 = [(MessageListViewController *)self dataSource];
    v11 = [v10 sectionAtIndex:{objc_msgSend(v9, "section")}];

    if (v11 == MessageListSectionInstantAnswers)
    {
      v15 = [(MessageListViewController *)self collectionView];
      v16 = [v15 cellForItemAtIndexPath:v9];

      v12 = [v16 instantAnswer];
      v13 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:v12];
      v14 = 0;
    }

    else
    {
      if (v11 == MessageListSectionTopHits)
      {
        v17 = [(MessageListViewController *)self dataSource];
        v18 = [v17 messageListItemAtIndexPath:v9];
        v16 = [v18 result];

        v19 = [v16 date];
        v14 = [(MessageListViewController *)self parsecTopHitForItemID:v8 date:v19 mailRankingSignals:0];
      }

      else
      {
        if (v11 != MessageListSectionIndexedSearch && v11 != MessageListSectionServerSearch)
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
LABEL_12:
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100195AB8;
          v23[3] = &unk_100652E10;
          v24 = v14;
          v25 = v13;
          v26 = v12;
          v27 = a3;
          v20 = v12;
          v21 = v13;
          v22 = v14;
          [(MessageListViewController *)self parsecEventQueuePerformBlock:v23];

          goto LABEL_13;
        }

        v16 = [NSString stringWithFormat:@"%@", v8];
        v14 = [MSParsecSearchSessionMessageListResult resultWithIdentifier:v16];
      }

      v12 = 0;
      v13 = 0;
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (id)parsecInstantAnswerForInstantAnswer:(id)a3
{
  v5 = a3;
  v6 = [v5 message];
  v7 = [v5 flight];
  if (v7 && ([v5 flight], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "checkInUrl"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = [v5 hotel];
    if (v10)
    {
      v11 = [v5 hotel];
      v12 = [v11 address];
      v9 = v12 != 0;
    }

    else
    {
      v9 = 0;
    }

    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = 0;
  }

LABEL_10:
  v13 = [v5 bodyCardSectionID];
  v14 = [v5 buttonsCardSectionID];
  v15 = [EMParsecInstantAnswers inlineCardWithManageReservationButton:v9 bodyCardSectionID:v13 buttonsCardSectionID:v14];

  v16 = [v6 itemID];
  v17 = [v6 date];
  v18 = [v5 flight];
  v19 = -[MessageListViewController parsecInstantAnswerForItemID:date:inlineCard:isUpdated:](self, "parsecInstantAnswerForItemID:date:inlineCard:isUpdated:", v16, v17, v15, [v18 infoIsLive]);

  return v19;
}

- (id)parsecInstantAnswerForItemID:(id)a3 date:(id)a4 inlineCard:(id)a5 isUpdated:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = [(MessageListViewController *)self _identifierForInstantAnswerItemID:a3];
  v13 = [MSParsecSearchSessionInstantAnswer instantAnswerWithIdentifier:v12 date:v10 inlineCard:v11 isInstantAnswerUpdated:v6];

  return v13;
}

- (id)parsecTopHitForItemID:(id)a3 date:(id)a4 mailRankingSignals:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(MessageListViewController *)self _identifierForTopHitItemID:a3];
  if (v9)
  {
    v11 = [MSParsecSearchSessionTopHit topHitWithIdentifier:v10 date:v8 mailRankingSignals:v9];
  }

  else
  {
    if (v8)
    {
      [MSParsecSearchSessionTopHit resultWithIdentifier:v10 date:v8];
    }

    else
    {
      [MSParsecSearchSessionTopHit resultWithIdentifier:v10];
    }
    v11 = ;
  }

  v12 = v11;

  return v12;
}

- (id)_identifierForInstantAnswerItemID:(id)a3
{
  v3 = [NSString stringWithFormat:@"instantAnswer:%@", a3];

  return v3;
}

- (id)_identifierForTopHitItemID:(id)a3
{
  v3 = [NSString stringWithFormat:@"tophit:%@", a3];

  return v3;
}

- (void)currentFocusChanged:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MessageListViewController;
  [(MessageListViewController *)&v10 currentFocusChanged:v4];
  v8 = self;
  v5 = v4;
  v9 = v5;
  v6 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v6 performSyncBlock:&v7];
}

- (void)_updatePaletteWithForce:(BOOL)a3
{
  v3 = a3;
  v5 = [(MessageListViewController *)self focusAllowed];
  if ([(MessageListViewController *)self paletteConfiguration]== v5 && !v3)
  {
    return;
  }

  v32 = sub_100196648(self);
  if (self)
  {
    paletteStackView = self->_paletteStackView;
  }

  else
  {
    paletteStackView = 0;
  }

  v7 = paletteStackView;
  v8 = [(MessageListViewController *)self paletteConfiguration];
  if (!v5 || (v8 & 1) != 0)
  {
    v12 = [(MessageListViewController *)self paletteConfiguration];
    if ((v5 & 1) != 0 || (v12 & 1) == 0)
    {
      goto LABEL_15;
    }

    v13 = sub_10048A100(self);
    [v13 setHidden:1];

    v9 = [(MessageListViewController *)self collectionView];
    v14 = [v9 topEdgeEffect];
    v15 = +[UIScrollEdgeEffectStyle automaticStyle];
    [v14 setStyle:v15];
  }

  else
  {
    v9 = sub_10048A100(self);
    v10 = [(UIStackView *)v7 arrangedSubviews];
    v11 = [v10 containsObject:v9];

    if (v11)
    {
      [v9 setHidden:0];
    }

    else
    {
      [(UIStackView *)v7 addArrangedSubview:v9];
    }

    [v9 setFocusFilterEnabled:{-[MessageListViewController isFocusFilterEnabled](self, "isFocusFilterEnabled")}];
    v14 = [(MessageListViewController *)self collectionView];
    v15 = [v14 topEdgeEffect];
    v16 = +[UIScrollEdgeEffectStyle hardStyle];
    [v15 setStyle:v16];
  }

LABEL_15:
  [(MessageListViewController *)self setPaletteConfiguration:v5];
  v17 = [(MessageListViewController *)self navigationItem];
  v18 = [(UIStackView *)v7 arrangedSubviews];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [v17 _bottomPalette];

    v21 = v32;
    if (v20 != v32)
    {
      [v17 _setBottomPalette:v32];
      v22 = [v32 contentView];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

      v23 = [v32 contentView];
      [v23 mf_pinToView:v32 usingLayoutMargins:0];

      v21 = v32;
    }

    v24 = [v21 contentView];
    [v24 setNeedsLayout];

    v25 = [v32 contentView];
    [v25 layoutIfNeeded];

    if (v5)
    {
      v26 = sub_10048A100(self);
      [v26 preferredHeight];
      UIRoundToViewScale();
      v28 = v27;
      [(MessageListViewController *)self setPreferredFocusBarHeight:?];
      v29 = v28 + 0.0;
    }

    else
    {
      v29 = 0.0;
      [(MessageListViewController *)self setPreferredFocusBarHeight:0.0];
    }

    v31 = [v17 _bottomPalette];
    [v31 setPreferredHeight:v29];
  }

  else
  {
    v30 = [v17 _bottomPalette];

    if (v30)
    {
      [v17 _setBottomPalette:0];
    }
  }
}

- (void)_disableFocusFilter:(BOOL)a3
{
  if (a3)
  {
    v4 = sub_10048A100(self);
    [v4 setFocusFilterEnabled:0];
  }

  [(MessageListViewController *)self _updatePaletteWithForce:0];
}

- (BOOL)_allowReadLaterActions
{
  v3 = [(MessageListViewController *)self state];
  if ([v3 canShowReadLaterDate])
  {
    v4 = [(MessageListViewController *)self shouldDisplayGroupedSenders]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)messageListDataSource:(id)a3 willUpdateWithChange:(id)a4 section:(id)a5 animated:(BOOL)a6 cleanSnapshot:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v17.receiver = self;
  v17.super_class = MessageListViewController;
  [(MessageListViewController *)&v17 messageListDataSource:v12 willUpdateWithChange:v13 section:v14 animated:v8 cleanSnapshot:v7];
  v15 = [(MessageListViewController *)self noContentView];
  if (v15)
  {
    v16 = [v13 isAddition];

    if (v16)
    {
      [(MessageListViewController *)self suppressNoContentViewAnimated:v8];
    }
  }
}

- (void)messageListDataSource:(id)a3 didUpdateWithChange:(id)a4 section:(id)a5 animated:(BOOL)a6
{
  v69 = a6;
  v71 = a3;
  v70 = a4;
  v9 = a5;
  v72 = v9;
  v10 = [(MessageListViewController *)self messageListSelectionModel];
  [v10 setPerformingDataSourceUpdates:0];

  v11 = [v9 section];
  v76 = self;
  if (![v71 isMessagesSection:v11])
  {

    goto LABEL_34;
  }

  v12 = [v70 hasChanges];

  if (!v12)
  {
    goto LABEL_34;
  }

  v13 = [(MessageListViewController *)self configuredSections];
  v14 = [v9 section];
  [v13 addObject:v14];

  v75 = [(MessageListViewController *)self isInitialCellConfigurationCompleted];
  if ((v75 & 1) == 0)
  {
    if (![v70 numberOfChanges])
    {
      v15 = +[NSSet set];
      [(MessageListViewController *)self setIndexPathsForToBeConfiguredCells:v15];

      v16 = [v9 messageList];
      v17 = [v16 objectID];
      [(MessageListViewController *)self _checkMessageListLoadingCompleted:v17];
    }

LABEL_9:
    v67 = [(MessageListViewController *)self collectionView];
    v18 = [v67 indexPathsForVisibleItems];
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_1001976E0;
    v81[3] = &unk_1006521F0;
    v81[4] = self;
    v68 = [v18 ef_filter:v81];

    v19 = [NSSet setWithArray:v68];
    [(MessageListViewController *)self setIndexPathsForToBeConfiguredCells:v19];

    v73 = [(MessageListViewController *)self indexPathsForConfiguredCollectionViewCells];
    if ((v75 & 1) == 0)
    {
      v20 = +[MessageListViewController log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v68 count];
        *buf = 138544130;
        *&buf[4] = v22;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        *&buf[24] = v23;
        *&buf[32] = 2114;
        *&buf[34] = v68;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> [Launch] Index paths for visible cells after first batch (%lu): %{public}@", buf, 0x2Au);
      }
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v68;
    v24 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
    if (!v24)
    {
LABEL_33:

      v41 = [v9 messageList];
      v42 = [v41 objectID];
      [(MessageListViewController *)v76 _checkMessageListLoadingCompleted:v42];

      self = v76;
      goto LABEL_34;
    }

    v25 = *v78;
LABEL_15:
    v26 = 0;
    while (1)
    {
      if (*v78 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v77 + 1) + 8 * v26);
      v28 = [(MessageListViewController *)v76 collectionView];
      v29 = [v28 cellForItemAtIndexPath:v27];

      if (objc_opt_respondsToSelector())
      {
        break;
      }

      if ((v75 & 1) == 0)
      {
        v30 = +[MessageListViewController log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          *buf = 138413058;
          *&buf[4] = v36;
          *&buf[12] = 2048;
          *&buf[14] = v76;
          *&buf[22] = 2114;
          *&buf[24] = v38;
          *&buf[32] = 2114;
          *&buf[34] = v27;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "<%@: %p> [Launch] Collection view cell (%{public}@) does not conform to MessageListItemProviding at indexPath: %{public}@", buf, 0x2Au);
        }

        goto LABEL_30;
      }

LABEL_31:

      if (v24 == ++v26)
      {
        v24 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
        if (!v24)
        {
          goto LABEL_33;
        }

        goto LABEL_15;
      }
    }

    v30 = [v29 messageListItem];
    if (v30)
    {
      [v73 addObject:v27];
      if ((v75 & 1) == 0)
      {
        v31 = +[MessageListViewController log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = [v30 itemID];
          *buf = 138544130;
          *&buf[4] = v33;
          *&buf[12] = 2048;
          *&buf[14] = v76;
          *&buf[22] = 2114;
          *&buf[24] = v34;
          *&buf[32] = 2114;
          *&buf[34] = v27;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> [Launch] Item (id: %{public}@) at index path: %{public}@ is already configured", buf, 0x2Au);

          v9 = v72;
        }

LABEL_29:
      }
    }

    else if ((v75 & 1) == 0)
    {
      v31 = +[MessageListViewController log];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138543874;
        *&buf[4] = v40;
        *&buf[12] = 2048;
        *&buf[14] = v76;
        *&buf[22] = 2114;
        *&buf[24] = v27;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> [Launch] Waiting for item at indexPath: %{public}@ to be configured", buf, 0x20u);
      }

      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (([(MessageListViewController *)self firstBatchCellConfigurationCompleted]& 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_34:
  if (([(MessageListViewController *)self isEditing]& 1) != 0)
  {
    goto LABEL_61;
  }

  v43 = [(MessageListViewController *)self messageToDisplayOnReload];
  if (v43 && ![(MessageListViewController *)self _canDisplayMessage:v43])
  {
    v44 = +[MessageListViewController log];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_opt_class();
      v64 = NSStringFromClass(v63);
      v65 = [(MessageListViewController *)v76 mailboxes];
      *buf = 138413058;
      *&buf[4] = v64;
      *&buf[12] = 2048;
      *&buf[14] = v76;
      *&buf[22] = 2112;
      *&buf[24] = v43;
      *&buf[32] = 2112;
      *&buf[34] = v65;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "<%@: %p> Failed to display message:%@ on reload. Message does not exist not in displayed mailboxes:%@", buf, 0x2Au);
    }

    self = v76;
    [(MessageListViewController *)v76 setMessageToDisplayOnReload:0];
    memset(buf, 170, sizeof(buf));
    *&buf[32] = 0;
    *v85 = 0xE00000001;
    v86 = 1;
    v87 = getpid();
    v82 = 648;
    v43 = 0;
    if (!sysctl(v85, 4u, buf, &v82, 0, 0) && (*&buf[32] & 0x800) != 0)
    {
      __debugbreak();
      JUMPOUT(0x100197044);
    }
  }

  v45 = [(MessageListViewController *)self lastSelectedItemID];
  if (!sub_10001C994(self))
  {
    goto LABEL_55;
  }

  if (v43)
  {
    v46 = [v9 messageList];
    v47 = [v46 itemIDOfMessageListItemWithDisplayMessage:v43];

    v48 = +[MessageListViewController log];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = [v9 messageList];
      *buf = 138413570;
      *&buf[4] = v50;
      *&buf[12] = 2048;
      *&buf[14] = v76;
      *&buf[22] = 2112;
      *&buf[24] = v43;
      *&buf[32] = 1024;
      *&buf[34] = v47 != 0;
      *&buf[38] = 2112;
      *&buf[40] = v51;
      *&buf[48] = 2112;
      *&buf[50] = v9;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "<%@: %p> messageToDisplayOnReload:%@ exist:%i in message list: %@ for section: %@", buf, 0x3Au);
    }

    v52 = v47 != 0;
    if (v47)
    {
      v53 = v76;
      [(MessageListViewController *)v76 _handleDidSelectItemID:v47 referenceItem:v43 scrollToVisible:1 userInitiated:1 animated:v69];
    }

    else
    {
      BYTE2(v66) = 1;
      BYTE1(v66) = v69;
      LOBYTE(v66) = 1;
      v53 = v76;
      [MessageListViewController _showConversationViewWithMessageListItem:v76 itemID:"_showConversationViewWithMessageListItem:itemID:messageList:referenceItem:scrollToVisible:userInitiated:canRestoreDraft:animated:showConversationView:indexPath:" messageList:0 referenceItem:0 scrollToVisible:0 userInitiated:v43 canRestoreDraft:0 animated:1 showConversationView:v66 indexPath:0];
    }

    [(MessageListViewController *)v53 setMessageToDisplayOnReload:0];
    goto LABEL_52;
  }

  if (![(MessageListViewController *)self shouldSelectInitialMessage])
  {
    if (v45 && ![(MessageListViewController *)self _inMultiSelectionMode])
    {
      v47 = [(MessageListViewController *)self lastSelectedItemID];
      v52 = [(MessageListViewController *)self selectRowOfItemID:v47 scrollToVisible:0 animated:0];
LABEL_52:

      goto LABEL_56;
    }

LABEL_55:
    v52 = 0;
    goto LABEL_56;
  }

  v52 = [(MessageListViewController *)self _selectAndDisplayInitialMessageIfNecessary];
LABEL_56:
  if (!(v69 | (([v70 isFirstChange] & 1) == 0) | v52 & 1))
  {
    v54 = +[MessageListViewController log];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *buf = 138413058;
      *&buf[4] = v56;
      *&buf[12] = 2048;
      *&buf[14] = v76;
      *&buf[22] = 1024;
      *&buf[24] = 0;
      *&buf[28] = 1024;
      *&buf[30] = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "<%@: %p> Couldn't select a message, scroll to top (animated=%{BOOL}d, selected=%{BOOL}d)", buf, 0x22u);
    }

    v57 = [(MessageListViewController *)v76 collectionView];
    v58 = [(MessageListViewController *)v76 collectionView];
    [v58 adjustedContentInset];
    [v57 setContentOffset:0 animated:{0.0, -v59}];
  }

  self = v76;
LABEL_61:
  [(MessageListViewController *)self updateBarButtons];
  [(MessageListViewController *)self _updateTitle];
  v60 = [v9 section];
  v61 = [v71 isMessagesSection:v60];

  if (v61)
  {
    if (sub_10001C994(v76) && [(MessageListViewController *)v76 suppressNoContentView])
    {
      [(MessageListViewController *)v76 setSuppressNoContentView:0];
      v62 = 1;
    }

    else
    {
      v62 = 0;
    }

    [(MessageListViewController *)v76 _updateNoContentViewAnimated:v69 suppressNoContentView:v62];
  }

  if (!sub_10001C994(v76))
  {
    [(MessageListViewController *)v76 _setEditing:0 animated:v69 preserveSelection:0];
    [(MessageListViewController *)v76 _exitMultiSelectionForce:1];
  }
}

- (void)messageListDataSourceDidSkipUpdate:(id)a3 section:(id)a4 change:(id)a5
{
  v8 = a3;
  v9 = a4;
  v15 = self;
  v10 = a5;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v13 performBlock:&v14];
}

- (void)messageListDataSource:(id)a3 didConfigureSupplementaryView:(id)a4 elementKind:(id)a5 section:(id)a6
{
  v37 = a4;
  v9 = a5;
  v10 = a6;
  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && [v9 isEqualToString:UICollectionElementKindSectionHeader])
  {
    v11 = [v10 section];
    v12 = v11;
    if (v11 == MessageListSectionPriority)
    {
      v13 = [v37 conformsToProtocol:&OBJC_PROTOCOL___MUIMessageListHighlightsSupplementaryView];

      if (v13)
      {
        v14 = v37;
        v15 = [(MessageListViewController *)self layoutValuesHelper];
        v16 = [v15 layoutValuesForStyle:0];

        v17 = [(MessageListViewController *)self view];
        [v17 layoutMargins];
        v19 = v18;

        v20 = [(MessageListViewController *)self state];
        if ([v20 useSplitViewStyling])
        {
          v21 = [(MessageListViewController *)self view];
          [v21 safeAreaInsets];
          v19 = v19 - v22;
        }

        v23 = [(MessageListViewController *)self view];
        [v23 directionalLayoutMargins];
        v25 = v24;

        [v14 layoutMargins];
        v27 = v26;
        [v14 layoutMargins];
        v29 = v28;
        v30 = [(MessageListViewController *)self highlightedMessages];
        v31 = [(MessageListViewController *)self mailboxes];
        v32 = [(MessageListViewController *)self contactStore];
        v33 = [(MessageListViewController *)self avatarGenerator];
        [v14 updateHighlightsSupplementaryViewMessages:v30 mailboxes:v31 cellLayoutValues:v16 containerInsets:v32 contactStore:v33 avatarGenerator:self delegate:{v27, v19, v29, v25}];

        [(MessageListViewController *)self setHighlightsSupplementaryView:v14];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if ([v9 isEqualToString:UICollectionElementKindSectionFooter])
  {
    v34 = [v10 section];
    v35 = MessageListSectionIndexedSearch;

    if (v34 == v35)
    {
      v36 = v37;
      v16 = [(MessageListViewController *)self indexStatus];
      [v36 updateWith:v16];
LABEL_13:
    }
  }
}

- (void)messageListSectionDataSource:(id)a3 didMoveMessagesWithItemIdentifiers:(id)a4 toSection:(id)a5
{
  v23 = a4;
  v8 = a5;
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v9 = [(MessageListViewController *)self showHighlights];
    if ([v9 isEnabled])
    {
      v10 = [v8 isEqualToString:MessageListSectionPriority];

      if (v10)
      {
        v22 = a2;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = v23;
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v12)
        {
          v13 = *v25;
          do
          {
            v14 = 0;
            do
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v24 + 1) + 8 * v14);
              v16 = [(MessageListViewController *)self dataSource];
              v17 = [v16 indexPathForItemIdentifier:v15];

              v18 = [(MessageListViewController *)self collectionView];
              v19 = [v18 cellForItemAtIndexPath:v17];

              if (v19)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v21 = +[NSAssertionHandler currentHandler];
                  [v21 handleFailureInMethod:v22 object:self file:@"MessageListViewController.m" lineNumber:7693 description:{@"Unexpected cell class. Actual cell class: %@", objc_opt_class()}];
                }
              }

              v20 = [v19 cellHelper];
              [v20 setPriority:1];

              [v19 setNeedsUpdateConfiguration];
              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v12);
        }
      }
    }

    else
    {
    }
  }
}

- (void)messageListSectionDataSource:(id)a3 handleRowSelectionAfterMovingMessagesWithItemIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MessageListViewController *)self itemIDToSelectAfterMoveID];
  [(MessageListViewController *)self setItemIDToSelectAfterMoveID:0];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10019859C;
  v28[3] = &unk_100652E38;
  v10 = v9;
  v29 = v10;
  v30 = self;
  v11 = objc_retainBlock(v28);
  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterSupported())
    {
      v12 = [(MessageListViewController *)self showHighlights];
      v13 = [v12 isEnabled];

      if (v13)
      {
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10019869C;
        v27[3] = &unk_100652E60;
        v27[4] = self;
        v27[5] = [(MessageListViewController *)self _prioritySectionIndex];
        if ([v8 ef_any:v27])
        {
          v14 = +[MessageListViewController log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = NSStringFromSelector(a2);
            v16 = [v8 ef_shortDescriptionString];
            *buf = 138543618;
            v32 = v15;
            v33 = 2114;
            v34 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - items moved to priority section:%{public}@", buf, 0x16u);
          }

          [(MessageListViewController *)self _shimmerViewIfNeeded];
        }
      }
    }
  }

  if (v10 && [v8 containsObject:v10])
  {
    v17 = [(MessageListViewController *)self dataSource];
    v18 = [v7 section];
    v19 = [v17 messageListItemForItemID:v10 section:v18];

    v20 = +[EFScheduler mainThreadScheduler];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100198738;
    v24[3] = &unk_100652E88;
    v21 = v10;
    v25 = v21;
    v26 = v11;
    [v19 onScheduler:v20 addSuccessBlock:v24];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001987CC;
    v22[3] = &unk_10064D028;
    v23 = v21;
    [v19 addFailureBlock:v22];
  }
}

- (void)messageListSectionDataSource:(id)a3 deletedMessagesWithItemIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.receiver = self;
  v8.super_class = MessageListViewController;
  [(MessageListViewController *)&v8 messageListSectionDataSource:v6 deletedMessagesWithItemIdentifiers:v7];
  [(MessageListViewController *)self _removeMessagesFromStackWithItemIDs:v7];
  [(MessageListViewController *)self _exitMultiSelectionForce:0];
}

- (BOOL)messageListUnbundledSectionDataSourceIsInExpandedEnvironment:(id)a3
{
  v3 = [(MessageListViewController *)self scene];
  v4 = [v3 isInExpandedEnvironment];

  return v4;
}

- (void)messageListSectionDataSource:(id)a3 didConfigureCell:(id)a4 atIndexPath:(id)a5 item:(id)a6 itemWasCached:(BOOL)a7 duration:(double)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  if (![(MessageListViewController *)self isInitialCellConfigurationCompleted]|| ([(MessageListViewController *)self firstBatchCellConfigurationCompleted]& 1) == 0)
  {
    v16 = [(MessageListViewController *)self indexPathsForConfiguredCollectionViewCells];
    v17 = +[MessageListViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v15 itemID];
      v21 = [v14 ef_publicDescription];
      v40 = 138544130;
      v41 = v19;
      v42 = 2048;
      v43 = self;
      v44 = 2114;
      v45 = v20;
      v46 = 2114;
      v47 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Mark item (id: %{public}@) at index path: %{public}@ as configured", &v40, 0x2Au);
    }

    [v16 addObject:v14];
    v22 = [v13 messageList];
    v23 = [v22 objectID];
    [(MessageListViewController *)self _checkMessageListLoadingCompleted:v23];
  }

  if (![(MessageListViewController *)self firstBatchCellConfigurationCompleted])
  {
    goto LABEL_22;
  }

  v24 = [v15 itemID];
  v25 = [(MessageListViewController *)self lastSelectedItemID];
  if ([v24 isEqual:v25])
  {
    v26 = +[UIDevice mf_isPadIdiom];

    if (!v26)
    {
      goto LABEL_13;
    }

    v27 = +[MessageListViewController log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v40 = 138543618;
      v41 = v29;
      v42 = 2048;
      v43 = self;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Selected message changed - update conversation bar button items", &v40, 0x16u);
    }

    v25 = [(MessageListViewController *)self conversationViewController];
    [v25 _updateBarButtonsEnabled];
  }

LABEL_13:
  if (!a7)
  {
    v30 = [(MessageListViewController *)self cellsController];
    if ([v30 wasItemRecentlyVisible:v24])
    {
      if (a8 < 0.005)
      {
        v31 = +[MessageListViewController log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = [v14 section];
          v39 = [v14 item];
          v40 = 138544898;
          v41 = v37;
          v42 = 2048;
          v43 = self;
          v44 = 2048;
          v45 = v38;
          v46 = 2048;
          v47 = v39;
          v48 = 2114;
          v49 = v24;
          v50 = 2048;
          v51 = a8;
          v52 = 1024;
          v53 = 0;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "<%{public}@: %p> Cell probably did not flicker at indexPath: (%ld-%ld), itemID: %{public}@, duration: %.3f, cached: %{BOOL}d", &v40, 0x44u);
        }
      }

      else
      {
        v31 = +[MessageListViewController log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = [v14 section];
          v35 = [v14 item];
          v40 = 138544898;
          v41 = v33;
          v42 = 2048;
          v43 = self;
          v44 = 2048;
          v45 = v34;
          v46 = 2048;
          v47 = v35;
          v48 = 2114;
          v49 = v24;
          v50 = 2048;
          v51 = a8;
          v52 = 1024;
          v53 = 0;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Cell may have flickered at indexPath: (%ld-%ld), itemID: %{public}@, duration: %.3f, cached: %{BOOL}d", &v40, 0x44u);
        }
      }

      [v30 reportFlickeringCell:a8 >= 0.005 duration:a8];
    }

LABEL_22:
    v24 = [(MessageListViewController *)self cellsController];
    [v24 reportCellDidLoad:1 error:0];
  }
}

- (void)_checkMessageListLoadingCompleted:(id)a3
{
  v4 = a3;
  v5 = [(MessageListViewController *)self indexPathsForToBeConfiguredCells];
  v6 = [(MessageListViewController *)self indexPathsForConfiguredCollectionViewCells];
  v7 = [v5 isSubsetOfSet:v6];
  if (([(MessageListViewController *)self hasUpdatedAllVisibleSections]& v7) == 1)
  {
    v8 = +[MessageListViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v17 = 138543874;
      v18 = v10;
      v19 = 2048;
      v20 = self;
      v21 = 2048;
      v22 = [v6 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> All initial visible items (%lu) have been configured!", &v17, 0x20u);
    }

    [(MessageListViewController *)self setFirstBatchCellConfigurationCompleted:1];
    [(MessageListViewController *)self setInitialCellConfigurationCompleted:1];
    [(MessageListViewController *)self setIndexPathsForToBeConfiguredCells:0];
    v11 = [(MessageListViewController *)self indexPathsForConfiguredCollectionViewCells];
    [v11 removeAllObjects];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 postNotificationName:@"MessageListLoadingCompleted" object:self];

    v13 = MFMessageListLoadingSignpostLog();
    v14 = os_signpost_id_make_with_pointer(v13, v4);

    v15 = MFMessageListLoadingSignpostLog();
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v14, "MessageListLoading", "Finished loading message list enableTelemetry=YES ", &v17, 2u);
    }
  }
}

- (int64_t)selectedBucketForMUIMessageListUnbundledSectionDataSource:(id)a3
{
  if (([(MessageListViewController *)self isBucketBarHidden]& 1) != 0)
  {
    return 0;
  }

  return [(MessageListViewController *)self selectedBucket];
}

- (void)showBlankCellAlertForMessageListSectionDataSource:(id)a3 itemID:(id)a4 indexPath:(id)a5 reason:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[NSDate now];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@\n\nitemID: %@\nindexPath: (%ld, %ld)", v11, v9, [v10 section], objc_msgSend(v10, "item"));
  v14 = [UIAlertController alertControllerWithTitle:@"Blank Cell Detected" message:v13 preferredStyle:1];

  v15 = [UIAlertAction actionWithTitle:@"Continue" style:1 handler:0];
  [v14 addAction:v15];

  if (+[MSRadarURLBuilder canOpenRadar])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001994A8;
    v17[3] = &unk_100652EF8;
    v18 = v11;
    v19 = v12;
    v20 = v9;
    v21 = v10;
    v16 = [UIAlertAction actionWithTitle:@"TTR" style:0 handler:v17];
    [v14 addAction:v16];
  }

  [(MessageListViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (Class)sectionListCellClassForMessageListSectionDataSource:(id)a3
{
  v3 = objc_opt_class();

  return v3;
}

- (void)learnMoreForMessageListSectionDataSource:(id)a3
{
  v4 = +[MFPreferencesURL customizeNotificationURL];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (BOOL)selectionModel:(id)a3 isItemIDExpandedThread:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 isExpandedThread:v5];

  return v7;
}

- (BOOL)selectionModel:(id)a3 isThreadedItemID:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 messageListItemForItemID:v5];
  v8 = [v7 result];
  v9 = [v8 count] > 1;

  return v9;
}

- (id)selectionModel:(id)a3 itemIDsInExpandedThread:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 itemIDsInExpandedThread:v5];

  return v7;
}

- (id)selectionModel:(id)a3 messageListItemsForItemIDs:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 messageListItemsForItemIDs:v5];

  return v7;
}

- (id)selectionModel:(id)a3 objectIDsForItemIDs:(id)a4
{
  v5 = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100199F78;
  v10[3] = &unk_100652FC0;
  v10[4] = self;
  v6 = [v5 ef_compactMap:v10];
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
    v8 = +[MessageListViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10048A994();
    }
  }

  return v6;
}

- (id)selectionModel:(id)a3 threadItemIDForItemInExpandedThread:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 threadItemIDForItemInExpandedThread:v5];

  return v7;
}

- (id)selectionModel:(id)a3 predictMailboxForMovingMessagesWithIDs:(id)a4
{
  v4 = [MFMoveToPredictionTriageInteraction predictMailboxForMovingMessagesWithIDs:a4];

  return v4;
}

- (void)updateFilterByUnreadRules
{
  v4 = +[_TtC10MobileMail14MailTipsHelper shared];
  v3 = [(MessageListViewController *)self dataSource];
  [v4 updateFilterByUnreadRulesWithAmountOfEmails:objc_msgSend(v3 amountOfUnreads:{"numberOfItems"), -[MessageListViewController currentUnreadCount](self, "currentUnreadCount")}];
}

- (void)filterPickerViewModelDidChangeSelectedAccounts:(id)a3
{
  if ([(MessageListViewController *)self isFocusFilterEnabled])
  {
    [(MessageListViewController *)self setPrimitiveFocusFilterEnabled:0];
    [(MessageListViewController *)self _disableFocusFilter:1];

    [(MessageListViewController *)self _updateUnseenCountQueries];
  }
}

- (void)highlightedMessagesController:(id)a3 didFindMessages:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MessageListViewController *)self highlightedMessages];
  if (!v8)
  {
    v12 = 1;
    goto LABEL_13;
  }

  v9 = [(MessageListViewController *)self highlightedMessages];
  v10 = [v9 ef_isEmpty];
  if (v10 && ([v7 ef_notEmpty], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = 1;
  }

  else
  {
    v13 = [(MessageListViewController *)self highlightedMessages];
    v14 = [v13 ef_notEmpty];
    if (v14)
    {
      v12 = [v7 ef_isEmpty];
    }

    else
    {
      v12 = 0;
    }

    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_12:
LABEL_13:

  v20.receiver = self;
  v20.super_class = MessageListViewController;
  [(MessageListViewController *)&v20 highlightedMessagesController:v6 didFindMessages:v7];
  v15 = [(MessageListViewController *)self highlightsSupplementaryView];
  v16 = [(MessageListViewController *)self mailboxes];
  [v15 updateHighlightsSupplementaryViewMessages:v7 mailboxes:v16];

  if (v12)
  {
    v17 = +[MessageListViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138543618;
      v22 = v19;
      v23 = 2048;
      v24 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Will invalidate prirority section supplementary view layout", buf, 0x16u);
    }

    [(MessageListViewController *)self updateHighlightsVisibility];
  }
}

- (void)highlightedMessagesViewDidSelectMessage:(id)a3
{
  v7 = [a3 messageListItem];
  v4 = [(MessageListViewController *)self highlightedMessagesController];
  v5 = [v4 messageList];
  BYTE2(v6) = 1;
  LOWORD(v6) = 256;
  [MessageListViewController _showConversationViewWithMessageListItem:"_showConversationViewWithMessageListItem:itemID:messageList:referenceItem:scrollToVisible:userInitiated:canRestoreDraft:animated:showConversationView:indexPath:" itemID:v7 messageList:0 referenceItem:v5 scrollToVisible:v7 userInitiated:0 canRestoreDraft:1 animated:v6 showConversationView:0 indexPath:?];
}

- (void)highlightedMessagesViewDidProvideFeedbackForMessage:(id)a3 feedbackType:(int64_t)a4 feedbackFeature:(int64_t)a5
{
  v8 = [a3 messageListItem];
  v9 = [v8 displayMessage];
  v10 = [v9 result];

  if (a5)
  {
    if (a5 == 2)
    {
      [MUICatchUpFeedbackController provideHighlightsFeedbackWithType:a4 message:v10 sourceViewController:self];
    }

    else
    {
      v11 = +[MessageListViewController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10048AA04();
      }
    }
  }

  else
  {
    [MUICatchUpFeedbackController provideAutomaticSummaryFeedbackWithType:a4 message:v10 sourceViewController:self];
  }
}

- (void)updateHighlightsVisibility
{
  v3.receiver = self;
  v3.super_class = MessageListViewController;
  [(MessageListViewController *)&v3 updateHighlightsVisibility];
  [(MessageListViewController *)self _invalidateCollectionLayoutForHighlights];
}

- (void)_invalidateCollectionLayoutForHighlights
{
  v3 = [(MessageListViewController *)self collectionView];
  v4 = [v3 collectionViewLayout];
  v5 = [(MessageListViewController *)self highlightsSupplementaryView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v3 indexPathForSupplementaryView:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [NSIndexPath indexPathWithIndex:0];
  }

  v7 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  v9 = v6;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v7 invalidateSupplementaryElementsOfKind:UICollectionElementKindSectionHeader atIndexPaths:v8];

  [v4 invalidateLayoutWithContext:v7];
}

- (BOOL)_prioritySectionVisibleAndActive
{
  if ((*(self + 8) & 1) == 0)
  {
    return 0;
  }

  v3 = [(MessageListViewController *)self scene];
  v2 = [v3 activationState] == 0;

  return v2;
}

- (void)_generativeModelsAvailabilityDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MessageListViewController;
  [(MessageListViewController *)&v5 _generativeModelsAvailabilityDidChange:v4];
  [(MessageListViewController *)self updateBarButtons];
  [(MessageListViewController *)self reloadDataSource];
}

- (void)_displayBucketBarOnNotification:(id)a3
{
  v4 = +[MessageListViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notification received to display bucket bar", v7, 2u);
  }

  v5 = [(MessageListViewController *)self iCloudMailCleanupDashboardViewController];

  if (v5)
  {
    v6 = [(MessageListViewController *)self iCloudMailCleanupDashboardViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  [(MessageListViewController *)self _displayBucketBar];
}

- (void)_displayBucketBar
{
  if ([(MessageListViewController *)self isBucketBarHidden])
  {
    v3 = +[MessageListViewController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Displaying bucket bar", v7, 2u);
    }

    [(MessageListViewController *)self _clearNavigationBarButtonItemMenu];
    v4 = [(MessageListViewController *)self bucketBarConfigurationController];
    v5 = [(MessageListViewController *)self mailboxes];
    [v4 setBucketBarHidden:0 forMailboxes:v5];

    if ([(MessageListViewController *)self _isIniCloudContext])
    {
      v6 = [(MessageListViewController *)self iCloudMailCleanupService];
      [v6 updatePrimaryAccountCategoriesHidden:0];
    }
  }
}

- (void)handleListViewTappedForOptionView:(id)a3
{
  if (([(MessageListViewController *)self isBucketBarHidden]& 1) == 0)
  {

    [(MessageListViewController *)self _hideBucketBar];
  }
}

- (void)aboutCategoriesViewControllerDidSelectResetButton:(id)a3
{
  v4 = [(MessageListViewController *)self messageRepository];
  v6 = [MFRestoreModelCategoryForAllMessagesTriageInteraction interactionWithMessageRepository:v4 origin:2 actor:2];

  [v6 setShouldAskForConfirmation:1];
  v5 = [(MessageListViewController *)self view];
  [v6 setPresentationSource:v5];

  [v6 setDelegate:self];
  [v6 performInteraction];
}

- (BOOL)messageListSeparatorController:(id)a3 isItemAtIndexPathSelected:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self collectionView];
  v7 = [v6 indexPathsForSelectedItems];
  v8 = [v7 containsObject:v5];

  return v8;
}

- (BOOL)messageListSeparatorController:(id)a3 isItemAtIndexPathFocused:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self collectionView];
  v7 = [v6 cellForItemAtIndexPath:v5];

  LOBYTE(v6) = [v7 isFocused];
  return v6;
}

- (BOOL)messageListSeparatorController:(id)a3 hasHeaderInSection:(int64_t)a4
{
  v5 = [(MessageListViewController *)self dataSource];
  LOBYTE(a4) = [v5 shouldDisplaySupplementaryKind:UICollectionElementKindSectionHeader forSectionAtIndex:a4];

  return a4;
}

- (BOOL)messageListSeparatorController:(id)a3 isLastItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self collectionView];
  v7 = [v6 numberOfItemsInSection:{objc_msgSend(v5, "section")}];

  LOBYTE(v6) = [v5 item] + 1 == v7;
  return v6;
}

- (BOOL)messageListSeparatorController:(id)a3 hasHeaderInSectionAfterSection:(int64_t)a4
{
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 sectionAfterIndex:a4];
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported() && (-[MessageListViewController dataSource](self, "dataSource"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isSection:MessageListSectionPriority atIndex:a4], v8, (v9 & 1) != 0))
  {
    v10 = 1;
  }

  else if (v7)
  {
    v10 = [v6 shouldDisplaySupplementaryKind:UICollectionElementKindSectionHeader forSectionAtIndex:{objc_msgSend(v6, "sectionIndexForSection:", v7)}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)messageListSeparatorController:(id)a3 hasMessageContentInSection:(int64_t)a4
{
  v5 = [(MessageListViewController *)self dataSource];
  LOBYTE(a4) = [v5 isMessagesSectionAtIndex:a4];

  return a4;
}

- (BOOL)messageListSeparatorController:(id)a3 hasMessageSectionAboveSection:(int64_t)a4
{
  v5 = [(MessageListViewController *)self dataSource];
  v6 = [v5 sectionBeforeIndex:a4];
  if (v6)
  {
    v7 = [v5 isMessagesSection:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)messageListSeparatorController:(id)a3 hasNonMessageSectionAboveSection:(int64_t)a4
{
  v5 = [(MessageListViewController *)self dataSource];
  v6 = [v5 sectionBeforeIndex:a4];
  if (v6)
  {
    v7 = [v5 isMessagesSection:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)messageListSeparatorController:(id)a3 isItemExpandedAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];
  if ([v6 isExpandedThread:v7])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v6 anyExpandedThreadContainsItemID:v7];
  }

  return v8;
}

- (BOOL)messageListSeparatorController:(id)a3 isExpandedParentAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];
  v8 = [v6 isExpandedThread:v7];

  return v8;
}

- (BOOL)messageListSeparatorController:(id)a3 isExpandedChildAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];
  v8 = [v6 anyExpandedThreadContainsItemID:v7];

  return v8;
}

- (BOOL)layoutUsesSplitViewStylingForMessageListSeparatorController:(id)a3
{
  v3 = [(MessageListViewController *)self state];
  v4 = [v3 useSplitViewStyling];

  return v4;
}

- (id)_createMailActionViewHeader
{
  v3 = [(MessageListViewController *)self _displayMetrics];
  [MailActionViewHeader defaultHeightWithDisplayMetrics:v3];
  v5 = v4;
  v6 = [(MessageListViewController *)self view];
  [v6 frame];
  Width = CGRectGetWidth(v13);

  v8 = [[MailActionViewHeader alloc] initWithFrame:0.0, 0.0, Width, v5];
  v9 = [(MessageListViewController *)self contactStore];
  [(MFMessageConversationViewCell *)v8 setContactStore:v9];

  v10 = [MFMessageDisplayMetrics mf_actionCardMetricsFromDisplayMetrics:v3];
  [(MFConversationViewCell *)v8 setDisplayMetrics:v10];

  return v8;
}

- (id)actionViewHeaderForCategorizationInteraction:(id)a3 messageListItem:(id)a4
{
  v5 = a4;
  v6 = [(MessageListViewController *)self _createMailActionViewHeader];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
  v9 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v8, [v5 count]);

  v10 = [ConversationCellViewModel alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10019B624;
  v15[3] = &unk_10064D108;
  v11 = v5;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v18 = self;
  v13 = [(ConversationCellViewModel *)v10 initWithBuilder:v15];
  [v6 setViewModel:v13];

  return v6;
}

- (void)_sceneDidBecomeActive:(id)a3
{
  if ([(MessageListViewController *)self hasPendingHighlightsShimmer])
  {

    [(MessageListViewController *)self _shimmerViewIfNeeded];
  }
}

- (MailboxPickerDelegate)mailboxPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mailboxPickerDelegate);

  return WeakRetained;
}

- (UIViewController)tipPopoverController
{
  WeakRetained = objc_loadWeakRetained(&self->_tipPopoverController);

  return WeakRetained;
}

- (CGPoint)lastScrolledContentOffset
{
  x = self->_lastScrolledContentOffset.x;
  y = self->_lastScrolledContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setupTipsObserver
{
  swift_getObjectType();
  _objc_retain(self);
  sub_1003C3208();
  _objc_release(self);
}

- (void)dismissTip
{
  swift_getObjectType();
  _objc_retain(self);
  MessageListViewController.dismissTip()();
  _objc_release(self);
}

- (void)_deregisterViewInteractions
{
  if (self && self->_changeFilterStateInteraction)
  {
    v3 = [(MessageListViewController *)self view];
    v4 = v3;
    if (self)
    {
      changeFilterStateInteraction = self->_changeFilterStateInteraction;
    }

    else
    {
      changeFilterStateInteraction = 0;
    }

    [v3 removeInteraction:changeFilterStateInteraction];

    sub_100489FE0(self, 0);
  }

  if (self && self->_searchMessagesInteraction)
  {
    v6 = [(MessageListViewController *)self searchBar];
    [v6 removeInteraction:self->_searchMessagesInteraction];

    sub_100489FCC(self, 0);
  }
}

@end