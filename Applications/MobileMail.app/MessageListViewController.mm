@interface MessageListViewController
+ (OS_os_log)log;
+ (id)signpostLog;
- (BOOL)_allowReadLaterActions;
- (BOOL)_allowsAutoSelectionOfInitialMessage;
- (BOOL)_canDisplayMessage:(id)message;
- (BOOL)_canPerformExpandOp:(int64_t)op;
- (BOOL)_hasSelectedMessages;
- (BOOL)_inMultiSelectionMode;
- (BOOL)_isActivityEligibleForPredictionWithPayload:(id)payload;
- (BOOL)_isExpandedIndexPath:(id)path;
- (BOOL)_isExpandedItemID:(id)d;
- (BOOL)_isFlaggedMailbox;
- (BOOL)_isInSearch;
- (BOOL)_isIniCloudContext;
- (BOOL)_prioritySectionVisibleAndActive;
- (BOOL)_restoreDraftOrOutboxItemAtIndexPath:(id)path;
- (BOOL)_selectAndDisplayInitialMessageIfNecessary;
- (BOOL)_shouldDisplaySearchButtons;
- (BOOL)_shouldPopToMessageListViewControllerFromConversationViewController:(id)controller;
- (BOOL)_shouldProcessButtonUpdates;
- (BOOL)_shouldShowButtonImages;
- (BOOL)_shouldShowClearHighImpactForMessageListItem:(id)item;
- (BOOL)_shouldShowHighlights;
- (BOOL)_shouldShowItemIDAsConversation:(id)conversation;
- (BOOL)_shouldShowSwipeActionsAtIndexPath:(id)path;
- (BOOL)_shouldUsePluralPrompt;
- (BOOL)canHandleAction:(SEL)action withMailMenuCommand:(id)command;
- (BOOL)canMoveDragItem:(id)item toBucket:(int64_t)bucket;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (BOOL)conversationViewController:(id)controller canAdvanceToNextConversationWithDirection:(int)direction;
- (BOOL)conversationViewControllerCanShowNoMessageSelectedView:(id)view;
- (BOOL)isFilterButtonAvailable;
- (BOOL)isFilterButtonEnabled;
- (BOOL)isInExpandedEnvironment;
- (BOOL)isPresentingSearchViewController;
- (BOOL)isSearchControllerActive;
- (BOOL)isSearchViewControllerEditing;
- (BOOL)isTransferStackVisible;
- (BOOL)layoutUsesSplitViewStylingForMessageListSeparatorController:(id)controller;
- (BOOL)messageListSeparatorController:(id)controller hasHeaderInSection:(int64_t)section;
- (BOOL)messageListSeparatorController:(id)controller hasHeaderInSectionAfterSection:(int64_t)section;
- (BOOL)messageListSeparatorController:(id)controller hasMessageContentInSection:(int64_t)section;
- (BOOL)messageListSeparatorController:(id)controller hasMessageSectionAboveSection:(int64_t)section;
- (BOOL)messageListSeparatorController:(id)controller hasNonMessageSectionAboveSection:(int64_t)section;
- (BOOL)messageListSeparatorController:(id)controller isExpandedChildAtIndexPath:(id)path;
- (BOOL)messageListSeparatorController:(id)controller isExpandedParentAtIndexPath:(id)path;
- (BOOL)messageListSeparatorController:(id)controller isItemAtIndexPathFocused:(id)focused;
- (BOOL)messageListSeparatorController:(id)controller isItemAtIndexPathSelected:(id)selected;
- (BOOL)messageListSeparatorController:(id)controller isItemExpandedAtIndexPath:(id)path;
- (BOOL)messageListSeparatorController:(id)controller isLastItemAtIndexPath:(id)path;
- (BOOL)messageListUnbundledSectionDataSourceIsInExpandedEnvironment:(id)environment;
- (BOOL)selectionModel:(id)model isItemIDExpandedThread:(id)thread;
- (BOOL)selectionModel:(id)model isThreadedItemID:(id)d;
- (BOOL)shouldEnableEditButton;
- (BOOL)shouldRouteActionToConversation:(SEL)conversation withCommand:(id)command;
- (BOOL)shouldShowNavigationBarSubtitle;
- (BOOL)shouldShowSubtitle;
- (BOOL)shouldShowUnreadCountForMailStatusViewController:(id)controller;
- (BOOL)shouldUseCustomNavigationBarTitleView;
- (BOOL)shouldUseSelectionDataSourceForConversationViewController:(id)controller;
- (BOOL)showingPopoverViewController;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGPoint)lastScrolledContentOffset;
- (Class)sectionListCellClassForMessageListSectionDataSource:(id)source;
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
- (MessageListViewController)initWithMainScene:(id)scene mailboxes:(id)mailboxes accountsProvider:(id)provider favoritesShortcutsProvider:(id)shortcutsProvider contactStore:(id)store diagnosticsHelper:(id)helper;
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
- (double)dragItemCornerRadius:(id)radius;
- (double)editingSeparatorInset;
- (id)_bulkMarkMenuForCurrentSelection;
- (id)_categoryGroupingPreferenceMenuForBucket:(int64_t)bucket;
- (id)_configureSelectButtonWithTitle:(id)title;
- (id)_contextMenuConfigurationForIndexPaths:(id)paths orbedIndexPath:(id)path;
- (id)_createMailActionViewHeader;
- (id)_currentBulkSelectionWithDebugLabel:(id)label;
- (id)_deferredMenuForConfigureButtonItem;
- (id)_displayMetrics;
- (id)_draftOrOutboxMessageAtIndexPath:(id)path;
- (id)_identifierForInstantAnswerItemID:(id)d;
- (id)_identifierForTopHitItemID:(id)d;
- (id)_layoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layout:(int64_t)layout;
- (id)_mailActionsViewControllerFromPresentedViewController:(id)controller;
- (id)_mailActionsViewDataSourceForMailActionsViewController:(id)controller messageListItem:(id)item predictedMailbox:(id)mailbox indexPath:(id)path cell:(id)cell;
- (id)_mailCategorizationOptionView;
- (id)_markAllAsReadTriageInteractionIfSupported;
- (id)_menuForConfigureButtonItem;
- (id)_menuTitleForSelection;
- (id)_messageListItemSelectionCreateIfNeeded:(BOOL)needed;
- (id)_noContentTitleForMailboxTypeString;
- (id)_observedMailboxesAndSmartMailboxPredicate;
- (id)_plistDictionaryFromSender:(id)sender;
- (id)_preSolariumSelectMessageListViewButtonItem;
- (id)_previewActionsForItemIDs:(id)ds orbedItem:(id)item;
- (id)_previewMessagesForSelectAllMode:(BOOL)mode;
- (id)_sceneActivationConfigurationForItemAtIndexPath:(id)path;
- (id)_solariumSelectButtonItem;
- (id)_swipeActionForTriageAction:(int64_t)action indexPath:(id)path;
- (id)_transferControllerWithMessages:(id)messages options:(unint64_t)options interaction:(id)interaction didDismissHandler:(id)handler;
- (id)actionViewHeaderForCategorizationInteraction:(id)interaction messageListItem:(id)item;
- (id)captureRestorationState;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view sceneActivationConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)continuityMailboxActivityPayloadFromMailboxes:(id)mailboxes account:(id)account currentActivityPayload:(id)payload;
- (id)conversationViewController:(id)controller messageListItemWithItemID:(id)d;
- (id)conversationViewController:(id)controller messagesToActOnForReferenceMessage:(id)message;
- (id)createChangeFilterStateInteraction;
- (id)createMailboxFilterController;
- (id)createSearchMessagesInteraction;
- (id)currentEditButtonItem;
- (id)dropMailboxesForMessageListDragDropHelper:(id)helper;
- (id)ef_publicDescription;
- (id)iCloudMailCleanupService;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)inputLanguages;
- (id)itemIDsForStateCaptureWithErrorString:(id *)string;
- (id)labelForStateCapture;
- (id)lastSeenDatesForBucket:(int64_t)bucket;
- (id)lastSelectedItemID;
- (id)leadingSwipeActionsConfigurationAtIndexPath:(id)path;
- (id)mailboxQualifier;
- (id)messageContentRepresentationRequestForMessageTriageInteractionHelper:(id)helper message:(id)message;
- (id)messageDragDropHelper:(id)helper itemContextForIndexPath:(id)path;
- (id)messageListForMessageTriageInteractionHelper:(id)helper messageListItem:(id)item;
- (id)messageListItemSelectionForConversationViewController:(id)controller;
- (id)messageRepositoryForTriageInteraction:(id)interaction;
- (id)messageTriageInteractionHelper:(id)helper senderRepositoryForMessageListItems:(id)items;
- (id)messageTriageInteractionHelperForConversationViewController:(id)controller;
- (id)mf_preferredTitle;
- (id)moreTriageInteraction:(id)interaction actionsViewControllerWithInteractionTarget:(id)target didDismissHandler:(id)handler;
- (id)parsecInstantAnswerForInstantAnswer:(id)answer;
- (id)parsecInstantAnswerForItemID:(id)d date:(id)date inlineCard:(id)card isUpdated:(BOOL)updated;
- (id)parsecTopHitForItemID:(id)d date:(id)date mailRankingSignals:(id)signals;
- (id)preferredFocusEnvironments;
- (id)presentingViewControllerForTriageInteraction:(id)interaction;
- (id)referenceMessageListItem;
- (id)referenceMessageListItemForFirstConversationWithSingleMessage:(BOOL)message markAsRead:(BOOL)read;
- (id)requiredUserInfoKeysFromUserActivityPayload:(id)payload;
- (id)selectMessageListViewButtonItem;
- (id)selectionModel:(id)model itemIDsInExpandedThread:(id)thread;
- (id)selectionModel:(id)model messageListItemsForItemIDs:(id)ds;
- (id)selectionModel:(id)model objectIDsForItemIDs:(id)ds;
- (id)selectionModel:(id)model predictMailboxForMovingMessagesWithIDs:(id)ds;
- (id)selectionModel:(id)model threadItemIDForItemInExpandedThread:(id)thread;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)trailingSwipeActionsConfigurationAtIndexPath:(id)path;
- (id)transferStackViewController:(id)controller displayMessageForMessageListItemWithItemID:(id)d;
- (id)transferStackViewController:(id)controller itemIDsToDisplayFromItemIDs:(id)ds;
- (id)undoManager;
- (id)undoManagerForMessageListDragDropHelper:(id)helper;
- (int64_t)_bucketForMailboxes:(id)mailboxes senderSpecificMessageListItem:(id)item;
- (int64_t)_expandOpFromPlist:(id)plist;
- (int64_t)preferredMessageListLayoutForSection:(int64_t)section;
- (int64_t)selectedBucketForMUIMessageListUnbundledSectionDataSource:(id)source;
- (int64_t)unreadBadgeCountForMessageTriageInteractionHelper:(id)helper;
- (unint64_t)_stackViewTransferOptions;
- (unint64_t)signpostID;
- (void)_addMessagesToStackWithItemIDs:(id)ds;
- (void)_adjustNoContentMessageAlpha:(id)alpha;
- (void)_appStoreReviewNotifyFilterCriterionIfNecessaryFor:(id)for;
- (void)_applySelectionModel:(id)model;
- (void)_archiveShortcutInvoked:(id)invoked;
- (void)_bulkDeleteButtonLongPressed:(id)pressed;
- (void)_bulkDeleteButtonPressed:(id)pressed;
- (void)_bulkTransferButtonPressed:(id)pressed;
- (void)_cancelOrCleanupStateRestoration;
- (void)_checkMessageListLoadingCompleted:(id)completed;
- (void)_clearNavigationBarButtonItemMenu;
- (void)_clearVisibleSwipeActions;
- (void)_collapseThreadKeyCommandInvoked:(id)invoked;
- (void)_commonInitWithDaemonInterface:(id)interface mailboxes:(id)mailboxes;
- (void)_configureLayoutListConfiguration:(id)configuration atSection:(int64_t)section;
- (void)_configureSearch;
- (void)_deleteMessageCommandInvoked:(id)invoked;
- (void)_deleteMessagesWithPreference:(unint64_t)preference;
- (void)_deleteOrArchiveConversationReferenceItemWithPreference:(unint64_t)preference;
- (void)_deregisterViewInteractions;
- (void)_didPerformMoveOrDestructiveInteraction:(id)interaction;
- (void)_disableFocusFilter:(BOOL)filter;
- (void)_dismissSearchResults;
- (void)_dismissSearchViewController;
- (void)_displayBucketBar;
- (void)_displayBucketBarOnNotification:(id)notification;
- (void)_doInitialMessageSelection;
- (void)_doOnInitialLoadCompletion:(id)completion;
- (void)_editButtonTapped:(id)tapped;
- (void)_escapeShortcutInvoked:(id)invoked;
- (void)_exitMultiSelectionForce:(BOOL)force;
- (void)_expandCollapseThreadCommand:(id)command;
- (void)_expandThreadKeyCommandInvoked:(id)invoked;
- (void)_favoriteMailboxShortcutInvoked:(id)invoked;
- (void)_filterCommand:(id)command;
- (void)_finalizeMultipleSelection;
- (void)_finishRefreshingWaitForDraggingToEnd:(BOOL)end;
- (void)_generativeModelsAvailabilityDidChange:(id)change;
- (void)_handleDidSelectItemID:(id)d messageList:(id)list referenceItem:(id)item scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated canRestoreDraft:(BOOL)draft animated:(BOOL)animated showConversationView:(BOOL)self0;
- (void)_handleDidSelectItemID:(id)d referenceItem:(id)item scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated canRestoreDraft:(BOOL)draft animated:(BOOL)animated showConversationView:(BOOL)view;
- (void)_handleSelectedItem:(id)item itemID:(id)d messageList:(id)list referenceItem:(id)referenceItem scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated canRestoreDraft:(BOOL)draft animated:(BOOL)self0 showConversationView:(BOOL)self1 indexPath:(id)self2;
- (void)_hideBucketBar;
- (void)_hideMailboxPickerOrMessageListAfterSelectionIfNeeded;
- (void)_initializeMailboxBrowseUserActivityWithMailboxes:(id)mailboxes;
- (void)_invalidateCachedUseCompactRows;
- (void)_invalidateCollectionLayoutForHighlights;
- (void)_loadMessageWithItemID:(id)d messageList:(id)list messageListItem:(id)item scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated animated:(BOOL)animated showConversationView:(BOOL)view showAsConversation:(BOOL)self0;
- (void)_loadMoreMessagesWithMaxVisibleIndexPath:(id)path;
- (void)_mailboxSearchKeyCommandInvoked:(id)invoked;
- (void)_markAllAsReadCommandInvoked:(id)invoked;
- (void)_moveMessageToFavoriteMailboxShortcutInvoked:(id)invoked;
- (void)_nextMailboxShortcutInvoked:(id)invoked;
- (void)_openMessageCommandInvoked:(id)invoked;
- (void)_openMessages:(id)messages;
- (void)_prepareForMoveOrDestructiveInteraction:(id)interaction completion:(id)completion;
- (void)_previousMailboxShortcutInvoked:(id)invoked;
- (void)_refresh:(id)_refresh;
- (void)_registerViewInteractions;
- (void)_reloadFlattenedMailboxes;
- (void)_removeMessagesFromStackWithItemIDs:(id)ds;
- (void)_reportReadTriageInteraction:(id)interaction didPerform:(BOOL)perform;
- (void)_restoreDraftOrOutboxItem:(id)item;
- (void)_sceneDidBecomeActive:(id)active;
- (void)_sceneDidEnterBackground;
- (void)_sceneWillEnterForeground:(id)foreground;
- (void)_scrollMessageListToTop:(id)top;
- (void)_scrollToCurrentMessage:(id)message;
- (void)_selectAllButtonPressed:(id)pressed;
- (void)_selectInitialMessageNow;
- (void)_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)ds conversationViewController:(id)controller;
- (void)_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)ds showConversationView:(BOOL)view;
- (void)_selectOrDeselectAll:(BOOL)all;
- (void)_setContentUnavailableTitle:(id)title animated:(BOOL)animated;
- (void)_setEditing:(BOOL)editing animated:(BOOL)animated preserveSelection:(BOOL)selection;
- (void)_setMailboxes:(id)mailboxes;
- (void)_setRowDeletionEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)_shelfButtonTapped:(id)tapped;
- (void)_showConversationViewWithMessageListItem:(id)item itemID:(id)d messageList:(id)list referenceItem:(id)referenceItem scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated canRestoreDraft:(BOOL)draft animated:(BOOL)self0 showConversationView:(BOOL)self1 indexPath:(id)self2;
- (void)_showMoveMessageShortcutErrorForMailbox:(id)mailbox count:(int64_t)count;
- (void)_showTransferPickerForNonPredictiveMoveOfMessages:(id)messages;
- (void)_startObservationForStatusBarBadgeCountWithObservedMailboxes:(id)mailboxes smartMailboxPredicate:(id)predicate;
- (void)_testing_disableMessageListFilter;
- (void)_testing_enableMessageListFilter;
- (void)_toggleSidebar:(id)sidebar;
- (void)_updateBackButtonImage;
- (void)_updateBackButtonImageWithCount:(unint64_t)count;
- (void)_updateBarButtonsWithForce:(BOOL)force;
- (void)_updateBucketBarIsHidden:(BOOL)hidden;
- (void)_updateFiltersPickerAccessibilityHUD;
- (void)_updateLastSeenDates:(id)dates forMailboxes:(id)mailboxes bucket:(int64_t)bucket;
- (void)_updateLastSeenDatesForMessageListItemFuture:(id)future atIndexPath:(id)path;
- (void)_updateLayoutMargins;
- (void)_updateListForChange:(id)change;
- (void)_updateMailboxPositionUserActivity;
- (void)_updateNavigationBarButtonsWithForce:(BOOL)force animated:(BOOL)animated;
- (void)_updateNoContentViewAnimated:(BOOL)animated suppressNoContentView:(BOOL)view;
- (void)_updatePaletteWithForce:(BOOL)force;
- (void)_updateResolvedMailboxObjectIDs;
- (void)_updateSelectionModelDidDeselectItemID:(id)d;
- (void)_updateSelectionModelDidSelectItemID:(id)d;
- (void)_updateSelectionPromiseForItemID:(id)d messageList:(id)list messageListCell:(id)cell referenceItem:(id)item scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated canRestoreDraft:(BOOL)draft animated:(BOOL)self0 showConversationView:(BOOL)self1 indexPath:(id)self2;
- (void)_updateStackViewController;
- (void)_updateStatusObservers;
- (void)_updateStatusPrefix;
- (void)_updateThreadingPreference:(id)preference;
- (void)_updateTitle;
- (void)_updateToolbarButtons;
- (void)aboutCategoriesViewControllerDidSelectResetButton:(id)button;
- (void)applyFilterPredicate:(id)predicate;
- (void)badgeCountUpdated:(id)updated badgeCount:(int64_t)count;
- (void)beginSearchWithQueryString:(id)string scope:(id)scope;
- (void)beginSearchWithSuggestion:(id)suggestion scope:(id)scope;
- (void)changeCategoryOfDragItem:(id)item toBucket:(int64_t)bucket completion:(id)completion;
- (void)changeTipShouldDisplayTo:(BOOL)to;
- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionViewDidEndMultipleSelectionInteraction:(id)interaction;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)conversationViewController:(id)controller advanceToNextConversationWithDirection:(int)direction;
- (void)conversationViewController:(id)controller didPerform:(BOOL)perform triageInteraction:(id)interaction;
- (void)conversationViewController:(id)controller didRemoveAllVisibleMessagesWithItemIDs:(id)ds;
- (void)conversationViewController:(id)controller performTriageAction:(int64_t)action presentationSource:(id)source;
- (void)conversationViewController:(id)controller willRemoveAllVisibleMessagesWithItemIDs:(id)ds;
- (void)currentFocusChanged:(id)changed;
- (void)dealloc;
- (void)decreaseSize:(id)size;
- (void)deleteAction:(id)action showChoices:(BOOL)choices preferDeleteOrArchive:(unint64_t)archive;
- (void)deleteMessagesWithItemIDs:(id)ds;
- (void)deselectAllItemsInCollectionView:(id)view animated:(BOOL)animated;
- (void)deselectSelectedItemsInCollectionView;
- (void)didDismissSearchController:(id)controller;
- (void)didFinishLoadViewController;
- (void)didSelectTopHitWithItemID:(id)d messageList:(id)list animated:(BOOL)animated;
- (void)dismissSearchResultsAnimated:(BOOL)animated;
- (void)dismissTip;
- (void)enterEditMode;
- (void)exitEditMode;
- (void)filterMailboxMessagesUsingFilterMailboxType:(int64_t)type;
- (void)filterPickerButtonPressed;
- (void)filterPickerButtonPressedWithSourceItem:(id)item;
- (void)filterPickerViewModelDidChangeSelectedAccounts:(id)accounts;
- (void)filterUIWithFilterInteraction:(id)interaction;
- (void)focusSearchBarAnimated:(BOOL)animated;
- (void)handleListViewTappedForOptionView:(id)view;
- (void)highlightedMessagesController:(id)controller didFindMessages:(id)messages;
- (void)highlightedMessagesViewDidProvideFeedbackForMessage:(id)message feedbackType:(int64_t)type feedbackFeature:(int64_t)feature;
- (void)highlightedMessagesViewDidSelectMessage:(id)message;
- (void)increaseSize:(id)size;
- (void)learnMoreForMessageListSectionDataSource:(id)source;
- (void)mailActionsViewController:(id)controller didSelectAction:(id)action;
- (void)mailStatusViewControllerUndoButtonTapped:(id)tapped;
- (void)mailboxFilterPickerViewController:(id)controller didFinishPickingWithSelectedFilters:(id)filters;
- (void)mailboxStatusUpdatedWithStatusInfo:(id)info forMailboxObjectID:(id)d;
- (void)messageListDataSource:(id)source didConfigureSupplementaryView:(id)view elementKind:(id)kind section:(id)section;
- (void)messageListDataSource:(id)source didUpdateWithChange:(id)change section:(id)section animated:(BOOL)animated;
- (void)messageListDataSource:(id)source willUpdateWithChange:(id)change section:(id)section animated:(BOOL)animated cleanSnapshot:(BOOL)snapshot;
- (void)messageListDataSourceDidSkipUpdate:(id)update section:(id)section change:(id)change;
- (void)messageListSectionDataSource:(id)source deletedMessagesWithItemIdentifiers:(id)identifiers;
- (void)messageListSectionDataSource:(id)source didConfigureCell:(id)cell atIndexPath:(id)path item:(id)item itemWasCached:(BOOL)cached duration:(double)duration;
- (void)messageListSectionDataSource:(id)source didMoveMessagesWithItemIdentifiers:(id)identifiers toSection:(id)section;
- (void)messageListSectionDataSource:(id)source handleRowSelectionAfterMovingMessagesWithItemIdentifiers:(id)identifiers;
- (void)parsecEventQueuePerformBlock:(id)block;
- (void)performOnLocalAndRemoteSearchCompletion:(id)completion;
- (void)presentSearchController:(id)controller;
- (void)presentTransferUIWithMoveInteraction:(id)interaction prediction:(id)prediction fromViewController:(id)controller didDismissHandler:(id)handler;
- (void)presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)refreshHighlightedMessagesController;
- (void)reloadDataSource;
- (void)reportEngagementAction:(int64_t)action onItemID:(id)d atIndexPath:(id)path;
- (void)restoreState:(id)state;
- (void)resumeRefreshAnimationIfNecessary;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)selectAll:(id)all;
- (void)selectMessageAtIndex:(int64_t)index;
- (void)selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)ds;
- (void)selectionModel:(id)model deselectItemID:(id)d;
- (void)selectionModel:(id)model selectItemID:(id)d;
- (void)setFilterButtonEnabled:(BOOL)enabled;
- (void)setFiltersEnabled:(BOOL)enabled;
- (void)setLastSelectedItemID:(id)d;
- (void)setMailboxes:(id)mailboxes;
- (void)setMailboxes:(id)mailboxes forceReload:(BOOL)reload;
- (void)setMailboxes:(id)mailboxes senderSpecificMessageListItem:(id)item bucket:(int64_t)bucket forceReload:(BOOL)reload;
- (void)setReferenceMessageListItem:(id)item referenceMessageList:(id)list showAsConversation:(BOOL)conversation animated:(BOOL)animated;
- (void)setSplitViewControllerNeedsFocusUpdate;
- (void)setSwipeActionVisible:(BOOL)visible;
- (void)setlastSeenDatesForSelectedBucket:(id)bucket;
- (void)setupTipsObserver;
- (void)showBlankCellAlertForMessageListSectionDataSource:(id)source itemID:(id)d indexPath:(id)path reason:(id)reason;
- (void)suspendRefreshAnimationIfNecessary;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFilterByUnreadRules;
- (void)updateFilterControlWithFilterViewModel:(id)model;
- (void)updateForSplitViewControllerHidingMessageList;
- (void)updateHighlightsVisibility;
- (void)updateSelectedBucket:(int64_t)bucket unseenPredicate:(id)predicate;
- (void)updateState:(id)state withMailboxes:(id)mailboxes;
- (void)updateToolbarButtonTitles;
- (void)updateUserActivityState:(id)state;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBeginDragForMessageListDragDropHelper:(id)helper;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
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
  block[4] = self;
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
  messageRepository = [(MessageListViewController *)self messageRepository];
  mailboxes = [(MessageListViewController *)self mailboxes];
  v6 = [NSString stringWithFormat:@"<%@: %p> Repository:%@ Mailboxes:%@", v3, self, messageRepository, mailboxes];

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
          mailboxScope = [v9 mailboxScope];
          mailboxRepository = [(MessageListViewController *)self mailboxRepository];
          v12 = [mailboxScope allMailboxObjectIDsWithMailboxTypeResolver:mailboxRepository forExclusion:buf];

          [(NSMutableSet *)self->_resolvedMailboxObjectIDs unionSet:v12];
        }

        else
        {
          v13 = self->_resolvedMailboxObjectIDs;
          objectID = [v9 objectID];
          [(NSMutableSet *)v13 addObject:objectID];
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
    selfCopy = self;
    v27 = 2114;
    v28 = v18;
    v29 = 2114;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<%@: %p> Updated resolved mailbox object ids: %{public}@, mailboxes: %{public}@", buf, 0x2Au);
  }
}

- (void)_updateStatusObservers
{
  _observedMailboxesAndSmartMailboxPredicate = [(MessageListViewController *)self _observedMailboxesAndSmartMailboxPredicate];
  first = [_observedMailboxesAndSmartMailboxPredicate first];
  second = [_observedMailboxesAndSmartMailboxPredicate second];
  mailboxes = [(MessageListViewController *)self mailboxes];
  v6 = sub_10016FE78(self, 0);
  sub_10016FFF0(self, mailboxes, v6);

  [(MessageListViewController *)self _startObservationForStatusBarBadgeCountWithObservedMailboxes:first smartMailboxPredicate:second];
  messageTriageInteractionHelper = [(MessageListViewController *)self messageTriageInteractionHelper];
  [messageTriageInteractionHelper startObservingMailboxes:first];

  messageListFetchHelper = [(MessageListViewController *)self messageListFetchHelper];
  [messageListFetchHelper setMailboxes:first];
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
          makePredicate = [v9 makePredicate];
          [v25 addObject:makePredicate];

          v27 = 0;
          mailboxScope = [v9 mailboxScope];
          mailboxRepository = [(MessageListViewController *)self mailboxRepository];
          v13 = [mailboxScope allMailboxObjectIDsWithMailboxTypeResolver:mailboxRepository forExclusion:&v27];

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
              selfCopy = self;
              v36 = 2112;
              v37 = v13;
              v38 = 2112;
              v39 = v9;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "<%@: %p> Unexpectedly received exclusion mailboxes: %@ for smart mailbox: %@", buf, 0x2Au);
            }
          }

          else
          {
            mailboxRepository2 = [(MessageListViewController *)self mailboxRepository];
            allObjects = [v13 allObjects];
            v14 = [mailboxRepository2 mailboxesIfAvailableForObjectIDs:allObjects];

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
  allObjects2 = [v3 allObjects];
  v22 = [v20 initWithFirst:allObjects2 second:v19];

  return v22;
}

- (MessageTriageInteractionHelper)messageTriageInteractionHelper
{
  messageTriageInteractionHelper = self->_messageTriageInteractionHelper;
  if (!messageTriageInteractionHelper)
  {
    v4 = [MessageTriageInteractionHelper alloc];
    scene = [(MessageListViewController *)self scene];
    v6 = [(MessageTriageInteractionHelper *)v4 initWithDataSource:self triageInteractionDelegate:self scene:scene presentingViewController:self];
    v7 = self->_messageTriageInteractionHelper;
    self->_messageTriageInteractionHelper = v6;

    messageTriageInteractionHelper = self->_messageTriageInteractionHelper;
  }

  return messageTriageInteractionHelper;
}

- (id)mf_preferredTitle
{
  mailboxes = [(MessageListViewController *)self mailboxes];
  firstObject = [mailboxes firstObject];
  name = [firstObject name];

  return name;
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
  refreshControl = [(MessageListViewController *)self refreshControl];
  [v10 setRefreshControl:refreshControl];

  messageListDragDropHelper = [(MessageListViewController *)self messageListDragDropHelper];
  [v10 setDragDelegate:messageListDragDropHelper];

  messageListDragDropHelper2 = [(MessageListViewController *)self messageListDragDropHelper];
  [v10 setDropDelegate:messageListDragDropHelper2];

  [v10 setAllowsMultipleSelection:1];
  [v10 setAllowsMultipleSelectionDuringEditing:1];
  [v10 setFocusGroupIdentifier:@"MessageListFocusGroupIdentifier"];
  [(MessageListViewController *)self setCollectionView:v10];
  v17 = +[UIDevice mf_isPadIdiom];
  collectionView = [(MessageListViewController *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  [panGestureRecognizer setDelaysTouchesBegan:v17];

  v20 = [MessageListPositionHelper alloc];
  dataSource = [(MessageListViewController *)self dataSource];
  collectionViewDataSource = [dataSource collectionViewDataSource];
  v23 = [v20 initWithCollectionView:v10 dataSource:collectionViewDataSource];
  [(MessageListViewController *)self setMessageListPositionHelper:v23];

  [v7 addSubview:v10];
  [(MessageListViewController *)self _configureSearch];
  [(MessageListViewController *)self setPrimitiveFocusFilterEnabled:1];
  scene = [(MessageListViewController *)self scene];
  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"_sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:scene];

  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"_sceneDidEnterBackground:" name:UISceneDidEnterBackgroundNotification object:scene];

  v27 = +[NSNotificationCenter defaultCenter];
  [v27 addObserver:self selector:"_displayBucketBarOnNotification:" name:@"MailCleanupShowCategories" object:0];

  v28 = +[NSNotificationCenter defaultCenter];
  [v28 addObserver:self selector:"_sceneDidBecomeActive:" name:UISceneDidActivateNotification object:scene];

  viewSetupPromise = [(MessageListViewController *)self viewSetupPromise];
  v30 = +[NSNull null];
  [viewSetupPromise finishWithResult:v30];

  +[MUIIntelligenceLightDefaults setInitialSettingsIfNecessary];
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)_invalidateCachedUseCompactRows
{
  scene = [(MessageListViewController *)self scene];
  isInExpandedEnvironment = [scene isInExpandedEnvironment];

  traitCollection = [(MessageListViewController *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v13 = 138413314;
    v14 = v10;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = v11;
    v19 = 1024;
    v20 = isInExpandedEnvironment;
    v21 = 1024;
    v22 = verticalSizeClass == 1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@: %p> %{public}@ isInExpandedEnvironment: %{BOOL}d, isVerticallyCompact: %{BOOL}d", &v13, 0x2Cu);
  }

  state = [(MessageListViewController *)self state];
  [state setIsCompact:isInExpandedEnvironment & (verticalSizeClass == 1)];
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
    messageListSearchViewController = [(MessageListViewController *)self messageListSearchViewController];
    searchController = [(MessageListViewController *)self searchController];

    if (!searchController)
    {
      v4 = [[MFSearchController alloc] initWithSearchResultsController:messageListSearchViewController];
      [(MFSearchController *)v4 setDelegate:self];
      [(MFSearchController *)v4 setSearchResultsUpdater:messageListSearchViewController];
      if (MUISolariumFeatureEnabled())
      {
        [(MFSearchController *)v4 setHidesNavigationBarDuringPresentation:0];
      }

      [(MessageListViewController *)self setSearchController:v4];
      searchBar = [(MFSearchController *)v4 searchBar];
      [searchBar setDelegate:messageListSearchViewController];
      searchTextField = [searchBar searchTextField];
      [searchTextField setDelegate:messageListSearchViewController];

      searchTextField2 = [searchBar searchTextField];
      [searchTextField2 setPasteDelegate:messageListSearchViewController];

      [searchBar setFocusGroupIdentifier:@"SearchFocusGroupIdentifier"];
    }

    navigationItem = [(MessageListViewController *)self navigationItem];
    searchController2 = [(MessageListViewController *)self searchController];
    [navigationItem setSearchController:searchController2];

    [navigationItem setHidesSearchBarWhenScrolling:0];
    if (MUISolariumFeatureEnabled())
    {
      [navigationItem setSearchBarPlacementAllowsExternalIntegration:1];
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
      scene = [(MessageListViewController *)self scene];
      mailboxes = [(MessageListViewController *)self mailboxes];
      accountsProvider = [(MessageListViewController *)self accountsProvider];
      contactStore = [(MessageListViewController *)self contactStore];
      v10 = [(MessageListSearchViewController *)v5 initWithMainScene:scene mailboxes:mailboxes accountsProvider:accountsProvider favoritesShortcutsProvider:0 contactStore:contactStore];
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
  highlightsSupplementaryView = [(MessageListViewController *)self highlightsSupplementaryView];
  [highlightsSupplementaryView showBelowLineMessages:0];
}

- (BOOL)isFilterButtonEnabled
{
  filterButtonItem = [(MessageListViewController *)self filterButtonItem];
  if ([filterButtonItem isFilterEnabled])
  {
    filterViewModel = [(MessageListViewController *)self filterViewModel];
    isFilterAvailable = [filterViewModel isFilterAvailable];
  }

  else
  {
    isFilterAvailable = 0;
  }

  return isFilterAvailable;
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
  flattenedMailboxesFuture = [(MessageListViewController *)self flattenedMailboxesFuture];
  [flattenedMailboxesFuture cancel];

  state = [(MessageListViewController *)self state];
  if ([state isUnifiedMailbox])
  {
    v5 = +[EFPromise promise];
    future = [v5 future];
    [(MessageListViewController *)self setFlattenedMailboxesFuture:future];

    mailboxes = [(MessageListViewController *)self mailboxes];
    v8 = [mailboxes ef_map:&stru_100652498];

    v9 = [NSCompoundPredicate orPredicateWithSubpredicates:v8];
    v10 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v9 sortDescriptors:&__NSArray0__struct];
    mailboxRepository = [(MessageListViewController *)self mailboxRepository];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100172040;
    v15[3] = &unk_10064CE98;
    v12 = v5;
    v16 = v12;
    [mailboxRepository performQuery:v10 completionHandler:v15];
  }

  else if (([state containsSmartMailbox] & 1) == 0)
  {
    mailboxes2 = [(MessageListViewController *)self mailboxes];
    v14 = [EFFuture futureWithResult:mailboxes2];
    [(MessageListViewController *)self setFlattenedMailboxesFuture:v14];
  }
}

- (id)createMailboxFilterController
{
  shouldDisplayGroupedSenders = [(MessageListViewController *)self shouldDisplayGroupedSenders];
  v4 = [MUIMailboxFilterController alloc];
  mailboxes = [(MessageListViewController *)self mailboxes];
  currentFocus = [(MessageListViewController *)self currentFocus];
  v7 = MFMailDirectory();
  v8 = objc_opt_class();
  LOBYTE(v11) = shouldDisplayGroupedSenders ^ 1;
  v9 = [v4 initWithMailboxes:mailboxes focus:currentFocus baseStoragePath:v7 defaultsRepresentationProvider:&stru_1006527D8 filterRepresentationProvider:&stru_100652858 mailboxFilterClass:v8 filterProviderClass:objc_opt_class() isFilteringAvailable:v11];

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
  mailboxes = [(MessageListViewController *)self mailboxes];
  createMessageListForReload = [(MessageListViewController *)self createMessageListForReload];
  if (createMessageListForReload)
  {
    currentFilterPredicate = [(MessageListViewController *)self currentFilterPredicate];
    v5 = sub_10016FE78(self, currentFilterPredicate);
    sub_10016FFF0(self, mailboxes, v5);
  }

  if ([(MessageListViewController *)self _isInSearch])
  {
    [(MessageListViewController *)self dismissSearchResultsAnimated:1];
  }

  [(MessageListViewController *)self setSuppressNoContentView:1];
  [(MessageListViewController *)self _setContentUnavailableTitle:0 animated:0];
  [(MessageListViewController *)self reloadDataSourceWithMessageList:createMessageListForReload];
}

- (BOOL)_isInSearch
{
  searchController = [(MessageListViewController *)self searchController];
  isActive = [searchController isActive];

  return isActive;
}

- (BOOL)shouldShowSubtitle
{
  if ([(MessageListViewController *)self _isFlaggedMailbox])
  {
    return 0;
  }

  state = [(MessageListViewController *)self state];
  if ([state containsDraftsMailbox])
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
  scene = [(MessageListViewController *)self scene];
  [scene mf_resetPreferredTitle];
}

- (MFSearchBar)searchBar
{
  searchController = [(MessageListViewController *)self searchController];
  searchBar = [searchController searchBar];

  return searchBar;
}

- (BOOL)shouldUseCustomNavigationBarTitleView
{
  if (([(MessageListViewController *)self isBucketBarHidden]& 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    bucketsViewController = [(MessageListViewController *)self bucketsViewController];
    viewIfLoaded = [bucketsViewController viewIfLoaded];
    superview = [viewIfLoaded superview];
    if (superview)
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
  mailStatusObserver = [(MessageListViewController *)self mailStatusObserver];
  -[MessageListViewController _updateBackButtonImageWithCount:](self, "_updateBackButtonImageWithCount:", [mailStatusObserver badgeCount]);
}

- (void)_updateToolbarButtons
{
  navigationItem = [(MessageListViewController *)self navigationItem];
  _shouldProcessButtonUpdates = [(MessageListViewController *)self _shouldProcessButtonUpdates];
  if (navigationItem)
  {
    v5 = _shouldProcessButtonUpdates;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v48 = navigationItem;
  if (self && MUISolariumFeatureEnabled())
  {
    v6 = +[UIDevice mf_isPadIdiom];
  }

  else
  {
    v6 = 0;
  }

  isEditing = [(MessageListViewController *)self isEditing];
  deleteButtonItem = [(MessageListViewController *)self deleteButtonItem];
  moveButtonItem = [(MessageListViewController *)self moveButtonItem];
  markButtonItem = [(MessageListViewController *)self markButtonItem];
  v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v47 = [(MessageListViewController *)self currentEditButtonItem:v9];
  v46 = +[UIBarButtonItem mf_newFixedSpaceItem];
  filterButtonItem = [(MessageListViewController *)self filterButtonItem];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_100018ED8;
  v81[3] = &unk_100652658;
  v10 = navigationItem;
  v82 = v10;
  selfCopy = self;
  v11 = objc_retainBlock(v81);
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10017CE14;
  v71[3] = &unk_100652680;
  v43 = isEditing;
  v79 = isEditing;
  v71[4] = self;
  v12 = markButtonItem;
  v72 = v12;
  v13 = v9;
  v73 = v13;
  v14 = moveButtonItem;
  v74 = v14;
  v15 = deleteButtonItem;
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
  v21 = filterButtonItem;
  v59 = v21;
  selfCopy2 = self;
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
  selfCopy3 = self;
  v56 = v6;
  v25 = v20;
  v53 = v25;
  v26 = v22;
  v55 = v26;
  v27 = objc_retainBlock(v50);
  if ([(MessageListViewController *)self _shouldDisplaySearchButtons])
  {
    isSearchSuggestionsVisible = [(MessageListViewController *)self isSearchSuggestionsVisible];
    v29 = v43 | ~isSearchSuggestionsVisible;
    if (isSearchSuggestionsVisible)
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
    isFilterButtonEnabled = [(MessageListViewController *)self isFilterButtonEnabled];
    navigationItem2 = [(MessageListViewController *)self navigationItem];
    v34 = navigationItem2;
    if (isFilterButtonEnabled)
    {
      v35 = 4;
    }

    else
    {
      v35 = 3;
    }

    [navigationItem2 setPreferredSearchBarPlacement:v35];
  }

  [(MessageListViewController *)self setToolbarItems:v31 animated:1];

  navigationItem = v48;
LABEL_25:
}

- (BOOL)_shouldProcessButtonUpdates
{
  navigationItem = [(MessageListViewController *)self navigationItem];

  if (navigationItem)
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
    _shouldShowButtonImages = [(MessageListViewController *)self _shouldShowButtonImages];
    v4 = [UIBarButtonItem alloc];
    if (_shouldShowButtonImages)
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
    searchEditButtonItem = [(MessageListViewController *)self searchEditButtonItem];

    if (!searchEditButtonItem)
    {
      v4 = [UIBarButtonItem mf_newMultiBarButtonItemWithTarget:self action:"_editButtonTapped:"];
      [(MessageListViewController *)self setSearchEditButtonItem:v4];
    }

    searchEditButtonItem2 = [(MessageListViewController *)self searchEditButtonItem];
  }

  else
  {
    multiEditButtonItem = [(MessageListViewController *)self multiEditButtonItem];

    if (!multiEditButtonItem)
    {
      v7 = [UIBarButtonItem mf_newMultiBarButtonItemWithTarget:self action:"_editButtonTapped:"];
      [(MessageListViewController *)self setMultiEditButtonItem:v7];
    }

    searchEditButtonItem2 = [(MessageListViewController *)self multiEditButtonItem];
  }

  return searchEditButtonItem2;
}

- (UIBarButtonItem)composeButtonItem
{
  scene = [(MessageListViewController *)self scene];
  if (!scene)
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
    newComposeButtonItem = [scene newComposeButtonItem];
    v8 = self->_composeButtonItem;
    self->_composeButtonItem = newComposeButtonItem;

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
    referenceMessageListItem = +[MessageListViewController log];
    if (os_log_type_enabled(referenceMessageListItem, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      NSStringFromClass(v4);
      objc_claimAutoreleasedReturnValue();
      sub_10001B23C();
    }

    goto LABEL_5;
  }

  conversationViewController = [(MessageListViewController *)self conversationViewController];
  referenceMessageListItem = [conversationViewController referenceMessageListItem];

  scene = [(MessageListViewController *)self scene];
  if (!referenceMessageListItem && [scene isInExpandedEnvironment])
  {
    splitViewController = [scene splitViewController];
    displayMode = [splitViewController displayMode];
    if (displayMode != 2)
    {
      splitViewController2 = [scene splitViewController];
      if ([splitViewController2 displayMode] != 3)
      {
        goto LABEL_12;
      }
    }

    state = [(MessageListViewController *)self state];
    if ([state containsDraftsOrOutbox])
    {

      if (displayMode == 2)
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

    if (displayMode != 2)
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
      createSearchMessagesInteraction = [(MessageListViewController *)self createSearchMessagesInteraction];
      sub_100489FCC(self, createSearchMessagesInteraction);

      searchBar = [(MessageListViewController *)self searchBar];
      if (self)
      {
        searchMessagesInteraction = self->_searchMessagesInteraction;
      }

      else
      {
        searchMessagesInteraction = 0;
      }

      v9 = searchBar;
      [searchBar addInteraction:searchMessagesInteraction];
    }

    if (!self || !self->_changeFilterStateInteraction)
    {
      createChangeFilterStateInteraction = [(MessageListViewController *)self createChangeFilterStateInteraction];
      sub_100489FE0(self, createChangeFilterStateInteraction);

      view = [(MessageListViewController *)self view];
      if (self)
      {
        changeFilterStateInteraction = self->_changeFilterStateInteraction;
      }

      else
      {
        changeFilterStateInteraction = 0;
      }

      v10 = view;
      [view addInteraction:changeFilterStateInteraction];
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
    scene = [(MessageListViewController *)self scene];
    splitViewController = [scene splitViewController];
    messageDetailNavController = [splitViewController messageDetailNavController];
    conversationViewController = [messageDetailNavController conversationViewController];

    if (conversationViewController)
    {
      v8 = conversationViewController;
      diagnosticsHelper = self->_conversationViewController;
      self->_conversationViewController = v8;
    }

    else
    {
      v10 = [ConversationViewController alloc];
      contactStore = [(MessageListViewController *)self contactStore];
      avatarGenerator = [(MessageListViewController *)self avatarGenerator];
      v13 = [(ConversationViewController *)v10 initWithScene:scene contactStore:contactStore avatarGenerator:avatarGenerator];
      v14 = self->_conversationViewController;
      self->_conversationViewController = v13;

      [(ConversationViewControllerBase *)self->_conversationViewController setDelegate:self];
      [(ConversationViewControllerBase *)self->_conversationViewController setIsPrimary:1];
      diagnosticsHelper = [(MessageListViewController *)self diagnosticsHelper];
      [(ConversationViewController *)self->_conversationViewController setDiagnosticsHelper:diagnosticsHelper];
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
  layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
  [layoutValuesHelper setSystemLayoutMargins:{v4, v6, v8, v10}];

  [(MessageListViewController *)self mf_updateExtraNavigationBarMargins];
  view = [(MessageListViewController *)self view];
  [view layoutMargins];
  v12 = v11;
  v14 = v13;

  view2 = [(MessageListViewController *)self view];
  [view2 layoutMargins];
  v16 = v15;

  view3 = [(MessageListViewController *)self view];
  [view3 layoutMargins];
  v18 = v17;

  searchBar = [(MessageListViewController *)self searchBar];
  [searchBar _setOverrideContentInsets:10 forRectEdges:{v12, v16, v14, v18}];

  if ([(MessageListViewController *)self focusAllowed])
  {
    state = [(MessageListViewController *)self state];
    v19 = 0.0;
    if ([state useSplitViewStyling])
    {
      view4 = [(MessageListViewController *)self view];
      [view4 safeAreaInsets];
      v19 = v16 - v21;
    }

    state2 = [(MessageListViewController *)self state];
    v22 = 0.0;
    if ([state2 useSplitViewStyling])
    {
      view5 = [(MessageListViewController *)self view];
      [view5 directionalLayoutMargins];
      v22 = v24;
    }

    layoutValuesHelper2 = [(MessageListViewController *)self layoutValuesHelper];
    defaultLayoutValues = [layoutValuesHelper2 defaultLayoutValues];
    [defaultLayoutValues leadingToIndicatorMargin];
    v27 = v26;
    layoutValuesHelper3 = [(MessageListViewController *)self layoutValuesHelper];
    defaultLayoutValues2 = [layoutValuesHelper3 defaultLayoutValues];
    [defaultLayoutValues2 indicatorToTrailingMargin];
    v31 = v22 + v30;

    v40 = sub_10048A100(self);
    [v40 setDirectionalLayoutMargins:{0.0, v19 + v27, 0.0, v31}];
  }
}

- (NSDirectionalEdgeInsets)mf_extraNavigationBarMargins
{
  state = [(MessageListViewController *)self state];
  useSplitViewStyling = [state useSplitViewStyling];

  v5 = 8.0;
  if ((useSplitViewStyling & 1) == 0)
  {
    layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
    defaultLayoutValues = [layoutValuesHelper defaultLayoutValues];
    [defaultLayoutValues leadingPadding];
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
  mailboxes = [(MessageListViewController *)self mailboxes];
  v4 = [mailboxes count];

  if (v4 != 1)
  {
    return 0;
  }

  mailboxes2 = [(MessageListViewController *)self mailboxes];
  firstObject = [mailboxes2 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  mailboxes3 = [(MessageListViewController *)self mailboxes];
  firstObject2 = [mailboxes3 firstObject];

  v10 = [firstObject2 smartMailboxType] == 1;
  return v10;
}

- (id)mailboxQualifier
{
  state = [(MessageListViewController *)self state];
  containsDraftsMailbox = [state containsDraftsMailbox];

  if (containsDraftsMailbox)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"DRAFTS_FORMAT" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    _isFlaggedMailbox = [(MessageListViewController *)self _isFlaggedMailbox];
    v8 = +[NSBundle mainBundle];
    v5 = v8;
    if (_isFlaggedMailbox)
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

    showHighlights = [(MessageListViewController *)self showHighlights];
    if ([showHighlights isEnabled])
    {
      highlightedMessages = [(MessageListViewController *)self highlightedMessages];
      v5 = [highlightedMessages count] != 0;
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
    conversationViewController = [(MessageListViewController *)self conversationViewController];
    referenceMessageListItem = [conversationViewController referenceMessageListItem];
    itemID = [referenceMessageListItem itemID];

    if (itemID)
    {
      objc_storeStrong(&self->_lastSelectedItemID, itemID);
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
    scene = [(MessageListViewController *)self scene];
    v5 = [(MFTransferStackViewController *)v3 initWithScene:scene];
    transferStackViewController = self->_transferStackViewController;
    self->_transferStackViewController = v5;

    [(MFTransferStackViewController *)self->_transferStackViewController setDataSource:self];
  }

  conversationViewController = [(MessageListViewController *)self conversationViewController];
  collectionView = [conversationViewController collectionView];
  [collectionView layoutMargins];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view = [(MFTransferStackViewController *)self->_transferStackViewController view];
  [view setLayoutMargins:{v10, v12, v14, v16}];

  v18 = self->_transferStackViewController;

  return v18;
}

- (BOOL)isTransferStackVisible
{
  scene = [(MessageListViewController *)self scene];
  splitViewController = [scene splitViewController];
  messageDetailNavController = [splitViewController messageDetailNavController];
  presentedViewController = [messageDetailNavController presentedViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [presentedViewController topViewController];
    transferStackViewController = [(MessageListViewController *)self transferStackViewController];
    v9 = topViewController == transferStackViewController;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)changeTipShouldDisplayTo:(BOOL)to
{
  swift_getObjectType();
  _objc_retain(self);
  _convertObjCBoolToBool(_:)();
  sub_1000207D0();
  _objc_release(self);
}

- (id)undoManager
{
  scene = [(MessageListViewController *)self scene];
  undoManager = [scene undoManager];

  return undoManager;
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
    scene = [(MessageListViewController *)self scene];
    extendedLaunchTracker = [scene extendedLaunchTracker];
    [extendedLaunchTracker didFinishLoadViewController:self scene:scene];

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

- (void)selectMessageAtIndex:(int64_t)index
{
  dataSource = [(MessageListViewController *)self dataSource];
  v5 = [dataSource sectionIndexForSection:MessageListSectionRecent];

  v9 = [NSIndexPath indexPathForRow:index inSection:v5];
  collectionView = [(MessageListViewController *)self collectionView];
  [collectionView selectItemAtIndexPath:v9 animated:0 scrollPosition:0];

  collectionView2 = [(MessageListViewController *)self collectionView];
  [(MessageListViewController *)self collectionView:collectionView2 didSelectItemAtIndexPath:v9];
}

- (id)referenceMessageListItemForFirstConversationWithSingleMessage:(BOOL)message markAsRead:(BOOL)read
{
  readCopy = read;
  messageCopy = message;
  dataSource = [(MessageListViewController *)self dataSource];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  itemIdentifiers = [dataSource itemIdentifiers];
  v8 = [itemIdentifiers countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (!v8)
  {
LABEL_12:
    result = 0;
    goto LABEL_17;
  }

  v9 = *v16;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v16 != v9)
    {
      objc_enumerationMutation(itemIdentifiers);
    }

    v11 = [dataSource messageListItemForItemID:*(*(&v15 + 1) + 8 * v10)];
    result = [v11 result];

    if (!messageCopy)
    {
      break;
    }

    if ([result count] == 1)
    {
      goto LABEL_13;
    }

LABEL_10:

    if (v8 == ++v10)
    {
      v8 = [itemIdentifiers countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }
  }

  if ([result count] <= 1)
  {
    goto LABEL_10;
  }

LABEL_13:

  if (!result)
  {
    goto LABEL_18;
  }

  v19 = result;
  v13 = [NSArray arrayWithObjects:&v19 count:1];
  itemIdentifiers = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItems:v13 undoManager:0 origin:2 actor:2 reason:4];

  if (readCopy && ([itemIdentifiers flagState] & 1) == 0)
  {
    [itemIdentifiers performInteraction];
  }

LABEL_17:

LABEL_18:

  return result;
}

+ (id)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016C04C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD360 != -1)
  {
    dispatch_once(&qword_1006DD360, block);
  }

  v2 = qword_1006DD358;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (MessageListViewController)initWithMainScene:(id)scene mailboxes:(id)mailboxes accountsProvider:(id)provider favoritesShortcutsProvider:(id)shortcutsProvider contactStore:(id)store diagnosticsHelper:(id)helper
{
  sceneCopy = scene;
  mailboxesCopy = mailboxes;
  obj = provider;
  providerCopy = provider;
  shortcutsProviderCopy = shortcutsProvider;
  shortcutsProviderCopy2 = shortcutsProvider;
  storeCopy = store;
  v37 = sceneCopy;
  helperCopy = helper;
  daemonInterface = [sceneCopy daemonInterface];
  daemonInterface2 = [sceneCopy daemonInterface];
  v15 = +[UIApplication sharedApplication];
  focusController = [v15 focusController];
  v17 = +[UIApplication sharedApplication];
  mailboxCategoryCloudStorage = [v17 mailboxCategoryCloudStorage];
  v19 = +[UIApplication sharedApplication];
  avatarGenerator = [v19 avatarGenerator];
  v21 = +[UIApplication sharedApplication];
  bucketBarConfigurationController = [v21 bucketBarConfigurationController];
  v41.receiver = self;
  v41.super_class = MessageListViewController;
  v23 = [(MessageListViewController *)&v41 initWithDaemonInterface:daemonInterface2 focusController:focusController mailboxCategoryCloudStorage:mailboxCategoryCloudStorage avatarGenerator:avatarGenerator bucketBarConfigurationController:bucketBarConfigurationController mailboxes:mailboxesCopy contactStore:storeCopy diagnosticsHelper:helperCopy];

  if (v23)
  {
    objc_storeWeak(&v23->_scene, v37);
    objc_storeStrong(&v23->_accountsProvider, obj);
    objc_storeStrong(&v23->_favoritesShortcutsProvider, shortcutsProviderCopy);
    v24 = [[EFLocked alloc] initWithObject:&__kCFBooleanFalse];
    isRefreshing = v23->_isRefreshing;
    v23->_isRefreshing = v24;

    v26 = objc_alloc_init(NSMutableSet);
    ignoredFocusUpdatesForItemIDs = v23->_ignoredFocusUpdatesForItemIDs;
    v23->_ignoredFocusUpdatesForItemIDs = v26;

    v28 = objc_alloc_init(_TtC10MobileMail44MessageListBarButtonItemConfigurationManager);
    barButtonItemConfigurationManager = v23->_barButtonItemConfigurationManager;
    v23->_barButtonItemConfigurationManager = v28;

    [(MessageListViewController *)v23 _commonInitWithDaemonInterface:daemonInterface mailboxes:mailboxesCopy];
  }

  return v23;
}

- (void)filterMailboxMessagesUsingFilterMailboxType:(int64_t)type
{
  iCloudMailCleanupDashboardViewController = [(MessageListViewController *)self iCloudMailCleanupDashboardViewController];

  if (iCloudMailCleanupDashboardViewController)
  {
    iCloudMailCleanupDashboardViewController2 = [(MessageListViewController *)self iCloudMailCleanupDashboardViewController];
    [iCloudMailCleanupDashboardViewController2 dismissViewControllerAnimated:1 completion:0];
  }

  v9 = [[MFMailboxFilter alloc] initForSmartMailboxType:type];
  v6 = [NSArray arrayWithObject:?];
  filterViewModel = [(MessageListViewController *)self filterViewModel];
  [filterViewModel setSelectedFilters:v6];

  [(MessageListViewController *)self setFiltersEnabled:1];
}

- (void)setlastSeenDatesForSelectedBucket:(id)bucket
{
  bucketCopy = bucket;
  _bucketsViewControllerSession = [(MessageListViewController *)self _bucketsViewControllerSession];
  [_bucketsViewControllerSession setlastSeenDates:bucketCopy forBucket:{-[MessageListViewController selectedBucket](self, "selectedBucket")}];
}

- (EFPair)lastSeenDatesForSelectedBucket
{
  selectedBucket = [(MessageListViewController *)self selectedBucket];

  return [(MessageListViewController *)self lastSeenDatesForBucket:selectedBucket];
}

- (id)lastSeenDatesForBucket:(int64_t)bucket
{
  _bucketsViewControllerSession = [(MessageListViewController *)self _bucketsViewControllerSession];
  v5 = [_bucketsViewControllerSession lastSeenDatesForBucket:bucket];

  return v5;
}

- (void)_commonInitWithDaemonInterface:(id)interface mailboxes:(id)mailboxes
{
  interfaceCopy = interface;
  mailboxesCopy = mailboxes;
  v7 = [[MessageListDragDropHelper alloc] initWithDataSource:self delegate:self];
  messageListDragDropHelper = self->_messageListDragDropHelper;
  self->_messageListDragDropHelper = v7;

  v9 = +[EFPromise promise];
  viewSetupPromise = self->_viewSetupPromise;
  self->_viewSetupPromise = v9;

  [(MessageListViewController *)self setDefinesPresentationContext:1];
  state = [(MessageListViewController *)self state];
  [(MessageListViewController *)self updateState:state withMailboxes:mailboxesCopy];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_updateThreadingPreference:" name:MailApplicationsDisableThreadingKeyChanged object:0];
  [v12 addObserver:self selector:"_updateListForChange:" name:MailApplicationDidChangePreviewLinesNotification object:0];
  [v12 addObserver:self selector:"_updateListForChange:" name:MailApplicationDidChangeShowToCCNotification object:0];
  [v12 addObserver:self selector:"_didReceivePreferredFontChangedNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];
  [v12 addObserver:self selector:"_connectedScenesDidChange:" name:UISceneWillConnectNotification object:0];
  [v12 addObserver:self selector:"_connectedScenesDidChange:" name:UISceneDidDisconnectNotification object:0];
  isSearchViewController = [(MessageListViewController *)self isSearchViewController];
  outgoingMessageRepository = [interfaceCopy outgoingMessageRepository];
  if (!isSearchViewController || !MUISolariumFeatureEnabled() || (+[EFDevice currentDevice](EFDevice, "currentDevice"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isRealityDevice], v15, v16))
  {
    v17 = [MailStatusObserver alloc];
    mailboxRepository = [(MessageListViewController *)self mailboxRepository];
    v19 = [(MailStatusObserver *)v17 initWithMailboxRepository:mailboxRepository delegate:self];
    mailStatusObserver = self->_mailStatusObserver;
    self->_mailStatusObserver = v19;

    v21 = [MailStatusViewController alloc];
    mailboxRepository2 = [(MessageListViewController *)self mailboxRepository];
    scene = [(MessageListViewController *)self scene];
    v24 = [(MailStatusViewController *)v21 initWithMailboxRepository:mailboxRepository2 outgoingMessageRepository:outgoingMessageRepository scene:scene];
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

  if (isSearchViewController)
  {
    v33 = +[MessageListViewController log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138412546;
      v50 = v35;
      v51 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "<%@: %p> Skip web view preallocation", buf, 0x16u);
    }
  }

  else if (qword_1006DD368 != -1)
  {
    sub_10048A234();
  }

  state2 = [(MessageListViewController *)self state];
  [state2 setIsSearch:isSearchViewController];

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

- (void)updateState:(id)state withMailboxes:(id)mailboxes
{
  stateCopy = state;
  mailboxesCopy = mailboxes;
  v15.receiver = self;
  v15.super_class = MessageListViewController;
  [(MessageListViewController *)&v15 updateState:stateCopy withMailboxes:mailboxesCopy];
  isOutgoingMailbox = [stateCopy isOutgoingMailbox];
  if (isOutgoingMailbox)
  {
    v10 = 0;
  }

  else
  {
    v4 = +[NSUserDefaults em_userDefaults];
    v10 = [v4 BOOLForKey:DisableThreadingKey] ^ 1;
  }

  [(MessageListViewController *)self setThreaded:v10];
  if ((isOutgoingMailbox & 1) == 0)
  {
  }

  scene = [(MessageListViewController *)self scene];
  daemonInterface = [scene daemonInterface];
  interactionLogger = [daemonInterface interactionLogger];
  v14 = [interactionLogger messageListTypeForMailboxes:mailboxesCopy];
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
    state = [(MessageListViewController *)self state];
    containsSmartMailbox = [state containsSmartMailbox];

    if (containsSmartMailbox)
    {
      mailboxes = [(MessageListViewController *)self mailboxes];
      v5 = [mailboxes ef_firstObjectPassingTest:&stru_100652338];

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
  view = [(MessageListViewController *)self view];
  [view frame];
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

- (int64_t)preferredMessageListLayoutForSection:(int64_t)section
{
  if ([(MessageListViewController *)self isSearchViewController])
  {
    return 1;
  }

  dataSource = [(MessageListViewController *)self dataSource];
  if ([dataSource isSection:MessageListSectionBucketBar atIndex:section])
  {

    return 2;
  }

  dataSource2 = [(MessageListViewController *)self dataSource];
  v8 = [dataSource2 isSection:MessageListSectionOnboardingTip atIndex:section];

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

  dataSource3 = [(MessageListViewController *)self dataSource];
  v10 = [dataSource3 isSection:MessageListSectionPriority atIndex:section];

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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@: %p> Should display priority section supplementary view", &v14, 0x16u);
  }

  return 4;
}

- (id)_layoutSectionAtSection:(int64_t)section layoutEnvironment:(id)environment layout:(int64_t)layout
{
  environmentCopy = environment;
  v9 = section >= 1 && [(MessageListViewController *)self preferredMessageListLayoutForSection:section - 1]== 4;
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
  v21[1] = section;
  v18 = [MessageListLayoutFactory layoutSectionAtSection:section layoutEnvironment:environmentCopy layoutMargins:layout layout:v9 previousSectionIsPriority:v20 configuration:v11, v13, v15, v17];
  objc_destroyWeak(v21);
  objc_destroyWeak(&location);

  return v18;
}

- (void)_configureLayoutListConfiguration:(id)configuration atSection:(int64_t)section
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10016E1EC;
  v29[3] = &unk_100652388;
  objc_copyWeak(&v30, &location);
  [configurationCopy setLeadingSwipeActionsConfigurationProvider:v29];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10016E268;
  v27[3] = &unk_100652388;
  objc_copyWeak(&v28, &location);
  [configurationCopy setTrailingSwipeActionsConfigurationProvider:v27];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10016E2E4;
  v25[3] = &unk_10064C838;
  objc_copyWeak(&v26, &location);
  [configurationCopy _setWillBeginSwipingHandler:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10016E344;
  v23[3] = &unk_10064C838;
  objc_copyWeak(&v24, &location);
  [configurationCopy _setDidEndSwipingHandler:v23];
  if (EMBlackPearlIsFeatureEnabled())
  {
    v7 = +[UIColor clearColor];
    [configurationCopy setBackgroundColor:v7];
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10016E3A4;
  v22[3] = &unk_1006523B0;
  v22[4] = self;
  v22[5] = section;
  [configurationCopy setItemSeparatorHandler:v22];
  dataSource = [(MessageListViewController *)self dataSource];
  v9 = [dataSource viewModelForSupplementaryViewKind:UICollectionElementKindSectionHeader sectionAtIndex:section];

  if ([v9 shouldDisplaySupplementaryView])
  {
    dataSource2 = [(MessageListViewController *)self dataSource];
    if (([dataSource2 isSection:MessageListSectionGroupedSenderUnseen atIndex:section] & 1) == 0)
    {
      dataSource3 = [(MessageListViewController *)self dataSource];
      if (([dataSource3 isSection:MessageListSectionGroupedSender atIndex:section] & 1) == 0)
      {
        dataSource4 = [(MessageListViewController *)self dataSource];
        if (![dataSource4 isSection:MessageListSectionRecentUnseen atIndex:section])
        {
          dataSource5 = [(MessageListViewController *)self dataSource];
          v21 = [dataSource5 isSection:MessageListSectionRecent atIndex:section];

          if ((v21 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }
      }
    }

LABEL_10:
    [configurationCopy setHeaderTopPadding:6.0];
  }

LABEL_11:
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    dataSource6 = [(MessageListViewController *)self dataSource];
    if ([dataSource6 isSection:MessageListSectionPriority atIndex:section])
    {
      v14 = [(MessageListViewController *)self selectedBucket]== 1;

      if (v14)
      {
        v15 = [MUIMessageListSupplementaryViewModel supplementaryViewModelWithDisplay:[(MessageListViewController *)self _shouldShowHighlights] kind:UICollectionElementKindSectionHeader sectionIndex:section reason:4];

        v9 = v15;
        if ([v15 shouldDisplaySupplementaryView])
        {
          [configurationCopy setHeaderTopPadding:4.0];
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
      ef_publicDescription = [v9 ef_publicDescription];
      *buf = 138543874;
      v33 = v18;
      v34 = 2048;
      selfCopy = self;
      v36 = 2114;
      v37 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> %{public}@", buf, 0x20u);
    }
  }

  [configurationCopy setHeaderMode:{objc_msgSend(v9, "shouldDisplaySupplementaryView")}];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v17.receiver = self;
  v17.super_class = MessageListViewController;
  [(MessageListViewController *)&v17 traitCollectionDidChange:changeCopy];
  traitCollection = [(MessageListViewController *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {
    layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
    view = [(MessageListViewController *)self view];
    [layoutValuesHelper updateTintColorFromView:view];
  }

  if ([traitCollection mf_traitDifferenceAffectsTextLayout:changeCopy])
  {
    mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];
    state = [(MessageListViewController *)self state];
    [state setUseSplitViewStyling:mf_useSplitViewStyling];

    layoutValuesHelper2 = [(MessageListViewController *)self layoutValuesHelper];
    [layoutValuesHelper2 setTraitCollection:traitCollection];

    [(MessageListViewController *)self _updateToolbarButtons];
    [(MessageListViewController *)self _updateListForChange:0];
    [(MessageListViewController *)self _updateLayoutMargins];
    [(MessageListViewController *)self _updateStackViewController];
    collectionView = [(MessageListViewController *)self collectionView];
    collectionViewLayout = [collectionView collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }

  presentedViewController = [(MessageListViewController *)self presentedViewController];
  v14 = [(MessageListViewController *)self _mailActionsViewControllerFromPresentedViewController:presentedViewController];

  presentedViewController2 = [(MessageListViewController *)self presentedViewController];

  if (presentedViewController2 && v14)
  {
    _displayMetrics = [(MessageListViewController *)self _displayMetrics];
    [v14 updateHeaderDisplayMetrics:_displayMetrics];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v22.receiver = self;
  v22.super_class = MessageListViewController;
  [(MessageListViewController *)&v22 viewWillAppear:?];
  traitCollection = [(MessageListViewController *)self traitCollection];
  state = [(MessageListViewController *)self state];
  [state setUseSplitViewStyling:{objc_msgSend(traitCollection, "mf_useSplitViewStyling")}];
  scene = [(MessageListViewController *)self scene];
  dockContainer = [scene dockContainer];
  [dockContainer addPresentationControllerDelegateObserver:self];

  layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
  [layoutValuesHelper setTraitCollection:traitCollection];
  [(MessageListViewController *)self systemMinimumLayoutMargins];
  [layoutValuesHelper setSystemLayoutMargins:?];
  view = [(MessageListViewController *)self view];
  [layoutValuesHelper updateTintColorFromView:view];

  scene2 = [(MessageListViewController *)self scene];
  if (![(MessageListViewController *)self isSearchViewController]&& ([(MessageListViewController *)self didNotifyExtendedLaunchTracker]& 1) == 0)
  {
    extendedLaunchTracker = [scene2 extendedLaunchTracker];
    [extendedLaunchTracker observeViewController:self scene:scene2];
  }

  [(MessageListViewController *)self _invalidateCachedUseCompactRows];
  [(MessageListViewController *)self updateBarButtons];
  *(self + 8) |= 1u;
  if ([state containsOutbox])
  {
    daemonInterface = [scene2 daemonInterface];
    outgoingMessageRepository = [daemonInterface outgoingMessageRepository];
    [outgoingMessageRepository suspendDeliveryQueue];
  }

  if ([(MessageListViewController *)self isReappearing])
  {
    if ([scene2 isInExpandedEnvironment])
    {
      lastSelectedItemID = [(MessageListViewController *)self lastSelectedItemID];

      if (!lastSelectedItemID)
      {
        goto LABEL_13;
      }

      lastSelectedItemID2 = [(MessageListViewController *)self lastSelectedItemID];
      [(MessageListViewController *)self selectRowOfItemID:lastSelectedItemID2 scrollToVisible:0 animated:appearCopy];
    }

    else
    {
      collectionView = [(MessageListViewController *)self collectionView];
      [(MessageListViewController *)self deselectAllItemsInCollectionView:collectionView animated:appearCopy];

      lastSelectedItemID2 = [scene2 splitViewController];
      parentViewController = [(MessageListViewController *)self parentViewController];
      [lastSelectedItemID2 setFocusedViewController:parentViewController];
    }
  }

  else
  {
    [(MessageListViewController *)self _doInitialMessageSelection];
  }

LABEL_13:
  highlightsSupplementaryView = [(MessageListViewController *)self highlightsSupplementaryView];
  if (highlightsSupplementaryView)
  {
    transitionCoordinator = [(MessageListViewController *)self transitionCoordinator];
    [highlightsSupplementaryView parentViewController:self viewWillAppearWithTransitionCoordinator:transitionCoordinator];
  }

  [(MessageListViewController *)self _registerViewInteractions];
  conversationViewController = [(MessageListViewController *)self conversationViewController];
  [conversationViewController setNeedsUpdateContentUnavailableConfiguration];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11.receiver = self;
  v11.super_class = MessageListViewController;
  [(MessageListViewController *)&v11 viewWillDisappear:disappear];
  *(self + 8) &= ~1u;
  state = [(MessageListViewController *)self state];
  containsOutbox = [state containsOutbox];

  if (containsOutbox)
  {
    scene = [(MessageListViewController *)self scene];
    daemonInterface = [scene daemonInterface];
    outgoingMessageRepository = [daemonInterface outgoingMessageRepository];
    [outgoingMessageRepository resumeDeliveryQueue];
  }

  userActivity = [(MessageListViewController *)self userActivity];
  [userActivity resignCurrent];

  sub_10016ED28(self);
  [(MessageListViewController *)self _deregisterViewInteractions];
  if (![(MessageListViewController *)self isSearchViewController]&& ![(MessageListViewController *)self _isInSearch])
  {
    [(MessageListViewController *)self dismissTip];
    [(MessageListViewController *)self changeTipShouldDisplayTo:0];
  }

  conversationViewController = [(MessageListViewController *)self conversationViewController];
  [conversationViewController setNeedsUpdateContentUnavailableConfiguration];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v14.receiver = self;
  v14.super_class = MessageListViewController;
  [(MessageListViewController *)&v14 viewDidDisappear:disappear];
  v4 = +[MessageListViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v16 = v6;
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> viewDidDisappear", buf, 0x16u);
  }

  [(MessageListViewController *)self mf_updateAlertSuppressionContextsForReason:@"MessageListViewController did disappear"];
  scene = [(MessageListViewController *)self scene];
  dockContainer = [scene dockContainer];
  [dockContainer removePresentationControllerDelegateObserver:self];

  daemonInterface = [scene daemonInterface];
  interactionLogger = [daemonInterface interactionLogger];
  [interactionLogger messageListDisplayEndedForAllListItems];

  [(MessageListViewController *)self _clearVisibleSwipeActions];
  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterSupported())
    {
      highlightedMessagesController = [(MessageListViewController *)self highlightedMessagesController];
      messageList = [highlightedMessagesController messageList];
      v13 = messageList == 0;

      if (!v13)
      {
        [(MessageListViewController *)self refreshHighlightedMessagesController];
      }
    }
  }

  [(MessageListViewController *)self setInitialCellConfigurationCompleted:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = MessageListViewController;
  [(MessageListViewController *)&v8 viewDidAppear:appear];
  [(MessageListViewController *)self mf_updateAlertSuppressionContextsForReason:@"mailbox content did appear"];
  if (![(MessageListViewController *)self isSearchViewController]&& ![(MessageListViewController *)self _isInSearch])
  {
    conversationViewController = [(MessageListViewController *)self conversationViewController];
    [conversationViewController setDelegate:self];
  }

  presentedViewController = [(MessageListViewController *)self presentedViewController];
  searchController = [(MessageListViewController *)self searchController];

  if (presentedViewController == searchController)
  {
    messageListSearchViewController = [(MessageListViewController *)self messageListSearchViewController];
    [messageListSearchViewController updateBarButtons];
  }

  else
  {
    [(MessageListViewController *)self changeTipShouldDisplayTo:1];
  }
}

- (BOOL)showingPopoverViewController
{
  presentedViewController = [(MessageListViewController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];

  barButtonItem = [popoverPresentationController barButtonItem];
  if (barButtonItem && ([popoverPresentationController barButtonItem], v6 = objc_claimAutoreleasedReturnValue(), -[MessageListViewController filterPickerButtonItem](self, "filterPickerButtonItem"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, barButtonItem, v6 == v7) || (objc_msgSend(popoverPresentationController, "barButtonItem"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(popoverPresentationController, "barButtonItem"), v9 = objc_claimAutoreleasedReturnValue(), -[MessageListViewController deleteButtonItem](self, "deleteButtonItem"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v9 == v10) || (objc_msgSend(popoverPresentationController, "sourceView"), v11 = objc_claimAutoreleasedReturnValue(), -[MessageListViewController view](self, "view"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isDescendantOfView:", v12), v12, v11, (v13 & 1) != 0))
  {
    v14 = 1;
  }

  else
  {
    delegate = [popoverPresentationController delegate];
    v14 = delegate == self;
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

- (void)_sceneWillEnterForeground:(id)foreground
{
  state = [(MessageListViewController *)self state];
  if ([state containsOutbox])
  {
    v4 = *(self + 8);

    if ((v4 & 1) == 0)
    {
      return;
    }

    state = [(MessageListViewController *)self scene];
    daemonInterface = [state daemonInterface];
    outgoingMessageRepository = [daemonInterface outgoingMessageRepository];
    [outgoingMessageRepository suspendDeliveryQueue];
  }
}

- (void)_sceneDidEnterBackground
{
  if (([(MessageListViewController *)self isEditing]& 1) == 0)
  {
    [(MessageListViewController *)self setPreviousMessageListSelectionModel:0];
  }

  [(MessageListViewController *)self refreshHighlightedMessagesController];
  cellsController = [(MessageListViewController *)self cellsController];
  [cellsController reportMessageListCellMetrics];

  ignoredFocusUpdatesForItemIDs = [(MessageListViewController *)self ignoredFocusUpdatesForItemIDs];
  [ignoredFocusUpdatesForItemIDs removeAllObjects];

  state = [(MessageListViewController *)self state];
  if ([state containsOutbox])
  {
    v3 = *(self + 8);

    if ((v3 & 1) == 0)
    {
      return;
    }

    state = [(MessageListViewController *)self scene];
    daemonInterface = [state daemonInterface];
    outgoingMessageRepository = [daemonInterface outgoingMessageRepository];
    [outgoingMessageRepository resumeDeliveryQueue];
  }
}

- (void)setMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  [(MessageListViewController *)self setMailboxes:mailboxesCopy forceReload:0 bucket:[MessageListViewController _bucketForMailboxes:"_bucketForMailboxes:senderSpecificMessageListItem:" senderSpecificMessageListItem:?]];
}

- (void)setMailboxes:(id)mailboxes forceReload:(BOOL)reload
{
  reloadCopy = reload;
  mailboxesCopy = mailboxes;
  [(MessageListViewController *)self setMailboxes:mailboxesCopy forceReload:reloadCopy bucket:[MessageListViewController _bucketForMailboxes:"_bucketForMailboxes:senderSpecificMessageListItem:" senderSpecificMessageListItem:?]];
}

- (void)setMailboxes:(id)mailboxes senderSpecificMessageListItem:(id)item bucket:(int64_t)bucket forceReload:(BOOL)reload
{
  reloadCopy = reload;
  mailboxesCopy = mailboxes;
  itemCopy = item;
  mailboxes = [(MessageListViewController *)self mailboxes];
  v9 = [mailboxes isEqualToArray:mailboxesCopy];

  v10 = v9 ^ 1;
  if ([(MessageListViewController *)self isBlackPearlEnabled])
  {
    senderSpecificMessageListItem = [(MessageListViewController *)self senderSpecificMessageListItem];

    selectedBucket = [(MessageListViewController *)self selectedBucket];
    v13 = senderSpecificMessageListItem == itemCopy && selectedBucket == bucket;
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

  conversationViewController = [(MessageListViewController *)self conversationViewController];
  [conversationViewController setDelegate:self];

  v16 = +[MessageListViewController log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    firstObject = [mailboxesCopy firstObject];
    ef_publicDescription = [firstObject ef_publicDescription];
    mailboxes2 = [(MessageListViewController *)self mailboxes];
    firstObject2 = [mailboxes2 firstObject];
    ef_publicDescription2 = [firstObject2 ef_publicDescription];
    *buf = 138413570;
    v39 = v18;
    v40 = 2048;
    selfCopy2 = self;
    v42 = 1024;
    *v43 = v10;
    *&v43[4] = 2114;
    *&v43[6] = ef_publicDescription;
    *&v43[14] = 2114;
    *&v43[16] = ef_publicDescription2;
    *&v43[24] = 1024;
    *&v43[26] = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "<%@: %p> should update: %{BOOL}d mailbox set: %{public}@ current mailbox: %{public}@ categorization update: %{BOOL}d", buf, 0x36u);
  }

  if (v10)
  {
    [(MessageListViewController *)self setSenderSpecificMessageListItem:itemCopy];
    [(MessageListViewController *)self setSelectedBucket:bucket];
    [(MessageListViewController *)self setUnseenPredicate:0];
    bucketsViewController = [(MessageListViewController *)self bucketsViewController];
    [bucketsViewController clearSessionState];

    [(MessageListViewController *)self _selectBucket:bucket];
    [(MessageListViewController *)self _setMailboxes:mailboxesCopy];
    [(MessageListViewController *)self setPreviousMessageListSelectionModel:0];
    [(MessageListViewController *)self setLastSelectedMessageListItems:0];
    [(MessageListViewController *)self _updateTitle];
  }

  else if (!reloadCopy)
  {
    goto LABEL_20;
  }

  v25 = +[MessageListViewController log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    firstObject3 = [mailboxesCopy firstObject];
    firstObject4 = [mailboxesCopy firstObject];
    objectID = [firstObject4 objectID];
    v31 = [objectID url];
    v32 = [EFPrivacy ec_redactedStringForMailboxURL:v31];
    ef_publicDescription3 = [itemCopy ef_publicDescription];
    *buf = 138413314;
    v39 = v27;
    v40 = 2048;
    selfCopy2 = self;
    v42 = 2112;
    *v43 = firstObject3;
    *&v43[8] = 2114;
    *&v43[10] = v32;
    *&v43[18] = 2112;
    *&v43[20] = ef_publicDescription3;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "<%@: %p> Setting message list view to new mailboxes (first mailbox = %@), mailbox:%{public}@ sender: %@", buf, 0x34u);
  }

  [(MessageListViewController *)self reloadFromMailboxes];
LABEL_20:
  [(MessageListViewController *)self _updatePaletteWithForce:v10];
  [(MessageListViewController *)self mf_updateAlertSuppressionContextsForReason:@"Message list mailboxes did change"];
}

- (void)_setMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  [(MessageListViewController *)self setPrimitiveMailboxes:?];
  [(MessageListViewController *)self _updateResolvedMailboxObjectIDs];
  [(MessageListViewController *)self _reloadFlattenedMailboxes];
  [(MessageListViewController *)self _updateStatusObservers];
  mailboxes = [(MessageListViewController *)self mailboxes];
  [(MessageListViewController *)self _initializeMailboxBrowseUserActivityWithMailboxes:mailboxes];

  cellsController = [(MessageListViewController *)self cellsController];
  [cellsController reportMessageListCellMetrics];
}

- (int64_t)_bucketForMailboxes:(id)mailboxes senderSpecificMessageListItem:(id)item
{
  mailboxesCopy = mailboxes;
  bucketBarConfigurationController = [(MessageListViewController *)self bucketBarConfigurationController];
  if (bucketBarConfigurationController && (-[MessageListViewController bucketBarConfigurationController](self, "bucketBarConfigurationController"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isBucketBarHiddenForMailboxes:mailboxesCopy], v7, bucketBarConfigurationController, (v8 & 1) == 0))
  {
    bucketBarConfigurationController2 = [(MessageListViewController *)self bucketBarConfigurationController];
    v9 = [bucketBarConfigurationController2 selectedBucketForMailboxes:mailboxesCopy];

    messageToDisplayOnReload = [(MessageListViewController *)self messageToDisplayOnReload];
    category = [messageToDisplayOnReload category];

    if (category && v9 != 5)
    {
      category2 = [messageToDisplayOnReload category];
      [category2 type];
      v9 = MUIBucketFromEMCategoryType();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_startObservationForStatusBarBadgeCountWithObservedMailboxes:(id)mailboxes smartMailboxPredicate:(id)predicate
{
  mailboxesCopy = mailboxes;
  predicateCopy = predicate;
  mailStatusViewController = [(MessageListViewController *)self mailStatusViewController];
  [mailStatusViewController stopObserving];

  isSearchViewController = [(MessageListViewController *)self isSearchViewController];
  v9 = @"Message list status";
  if (isSearchViewController)
  {
    v9 = @"Search status";
  }

  v10 = v9;
  v11 = [(MessageListViewController *)self updatedPredicateForFocusedAccounts:predicateCopy];
  v12 = sub_10016FE78(self, v11);

  mailStatusViewController2 = [(MessageListViewController *)self mailStatusViewController];
  [mailStatusViewController2 startObservingForVisibleMailboxes:mailboxesCopy delegate:self filterPredicate:v12 label:v10];
}

- (double)editingSeparatorInset
{
  state = [(MessageListViewController *)self state];
  if ([state useSplitViewStyling])
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
  presentedViewController = [(MessageListViewController *)self presentedViewController];
  searchController = [(MessageListViewController *)self searchController];

  if (presentedViewController != searchController)
  {
    return 0;
  }

  messageListSearchViewController = [(MessageListViewController *)self messageListSearchViewController];
  isEditing = [messageListSearchViewController isEditing];

  return isEditing;
}

- (BOOL)isPresentingSearchViewController
{
  selfCopy = self;
  presentedViewController = [(MessageListViewController *)self presentedViewController];
  searchController = [(MessageListViewController *)selfCopy searchController];
  LOBYTE(selfCopy) = presentedViewController == searchController;

  return selfCopy;
}

- (BOOL)isInExpandedEnvironment
{
  scene = [(MessageListViewController *)self scene];
  isInExpandedEnvironment = [scene isInExpandedEnvironment];

  return isInExpandedEnvironment;
}

- (BOOL)isSearchControllerActive
{
  searchController = [(MessageListViewController *)self searchController];
  isActive = [searchController isActive];

  return isActive;
}

- (void)setSplitViewControllerNeedsFocusUpdate
{
  scene = [(MessageListViewController *)self scene];
  splitViewController = [scene splitViewController];
  [splitViewController setNeedsFocusUpdate];
}

- (id)captureRestorationState
{
  messageListPositionHelper = [(MessageListViewController *)self messageListPositionHelper];
  actuallyVisibleItemIDs = [messageListPositionHelper actuallyVisibleItemIDs];

  dataSource = [(MessageListViewController *)self dataSource];
  v6 = [dataSource messageListItemsForItemIDs:actuallyVisibleItemIDs];
  v7 = [EFFuture join:v6];

  v27 = 0;
  v8 = [v7 resultWithTimeout:&v27 error:0.1];
  v9 = v27;
  if (v9)
  {
    dataSource2 = +[MessageListViewController log];
    if (os_log_type_enabled(dataSource2, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      ef_publicDescription = [v9 ef_publicDescription];
      *buf = 138412802;
      v29 = v25;
      v30 = 2048;
      selfCopy = self;
      v32 = 2112;
      v33 = ef_publicDescription;
      _os_log_error_impl(&_mh_execute_header, dataSource2, OS_LOG_TYPE_ERROR, "<%@: %p> Fetching visible items for the restoration state failed with error: %@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    collectionView = [(MessageListViewController *)self collectionView];
    [collectionView contentOffset];
    v14 = v13;
    layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
    defaultLayoutValues = [layoutValuesHelper defaultLayoutValues];
    [defaultLayoutValues compactRowHeight];
    v18 = v17;

    v19 = [MessageListRestorationState alloc];
    dataSource2 = [(MessageListViewController *)self dataSource];
    v20 = [dataSource2 messageListForSection:MessageListSectionRecent];
    mailboxes = [(MessageListViewController *)self mailboxes];
    lastSelectedItemID = [(MessageListViewController *)self lastSelectedItemID];
    v11 = [(MessageListRestorationState *)v19 initWithMessageList:v20 mailboxes:mailboxes visibleItems:v8 scrolledToTop:v14 < v18 lastSelectedItemID:lastSelectedItemID];
  }

  return v11;
}

- (void)restoreState:(id)state
{
  stateCopy = state;
  v5 = +[MessageListViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v24 = v7;
    v25 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: Received restoration state future. Will restore state when it's loaded.", buf, 0x16u);
  }

  stateRestorationFuture = [(MessageListViewController *)self stateRestorationFuture];
  [stateRestorationFuture cancel];

  [(MessageListViewController *)self setShouldSelectInitialMessage:0];
  viewSetupPromise = [(MessageListViewController *)self viewSetupPromise];
  future = [viewSetupPromise future];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100170C28;
  v21[3] = &unk_1006523D8;
  v21[4] = self;
  v11 = stateCopy;
  v22 = v11;
  v12 = [future then:v21];

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
  stateRestorationFuture = [(MessageListViewController *)self stateRestorationFuture];

  if (stateRestorationFuture)
  {
    v4 = +[MessageListViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v9 = 138412546;
      v10 = v6;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<%@: %p> State Restoration: Cleaning up...", &v9, 0x16u);
    }

    stateRestorationFuture2 = [(MessageListViewController *)self stateRestorationFuture];
    [stateRestorationFuture2 cancel];

    [(MessageListViewController *)self setStateRestorationFuture:0];
    scrollItemIndexPathPromise = [(MessageListViewController *)self scrollItemIndexPathPromise];
    [scrollItemIndexPathPromise cancel];

    [(MessageListViewController *)self setScrollItemIndexPathPromise:0];
    [(MessageListViewController *)self setInitialScrollItemID:0];
    [(MessageListViewController *)self setViewSetupPromise:0];
  }
}

- (void)_updateBucketBarIsHidden:(BOOL)hidden
{
  v7.receiver = self;
  v7.super_class = MessageListViewController;
  [(MessageListViewController *)&v7 _updateBucketBarIsHidden:hidden];
  _observedMailboxesAndSmartMailboxPredicate = [(MessageListViewController *)self _observedMailboxesAndSmartMailboxPredicate];
  first = [_observedMailboxesAndSmartMailboxPredicate first];
  second = [_observedMailboxesAndSmartMailboxPredicate second];
  [(MessageListViewController *)self _startObservationForStatusBarBadgeCountWithObservedMailboxes:first smartMailboxPredicate:second];
}

- (void)_updateLastSeenDates:(id)dates forMailboxes:(id)mailboxes bucket:(int64_t)bucket
{
  datesCopy = dates;
  mailboxesCopy = mailboxes;
  _bucketsViewControllerSession = [(MessageListViewController *)self _bucketsViewControllerSession];
  [_bucketsViewControllerSession updateLastSeenDates:datesCopy forMailboxes:mailboxesCopy bucket:bucket];
}

- (void)updateSelectedBucket:(int64_t)bucket unseenPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7.receiver = self;
  v7.super_class = MessageListViewController;
  [(MessageListViewController *)&v7 updateSelectedBucket:bucket unseenPredicate:predicateCopy];
  [(MessageListViewController *)self _updateStatusPrefix];
  [(MessageListViewController *)self _updateStatusObservers];
  [(MessageListViewController *)self _updateNavigationBarButtonsWithForce:0 animated:1];
}

- (BOOL)_canDisplayMessage:(id)message
{
  mailboxObjectIDs = [message mailboxObjectIDs];
  [(MessageListViewController *)self resolvedMailboxObjectIDs];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100172134;
  v9 = v8[3] = &unk_1006524C0;
  v5 = v9;
  v6 = [mailboxObjectIDs ef_any:v8];

  return v6;
}

- (void)_doOnInitialLoadCompletion:(id)completion
{
  completionCopy = completion;
  initialLoadCompletedPromise = [(MessageListViewController *)self initialLoadCompletedPromise];
  future = [initialLoadCompletedPromise future];
  v7 = +[EFScheduler mainThreadScheduler];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100172264;
  v9[3] = &unk_10064DB68;
  v8 = completionCopy;
  v10 = v8;
  [future onScheduler:v7 addSuccessBlock:v9];
}

- (EFFuture)initialLoadCompletedFuture
{
  initialLoadCompletedPromise = [(MessageListViewController *)self initialLoadCompletedPromise];
  future = [initialLoadCompletedPromise future];

  return future;
}

- (void)performOnLocalAndRemoteSearchCompletion:(id)completion
{
  completionCopy = completion;
  [(MessageListViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MessageListViewController performOnLocalAndRemoteSearchCompletion:]", "MessageListViewController.m", 1546, "0");
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

  state = [(MessageListViewController *)self state];
  scene = [(MessageListViewController *)self scene];
  v9 = [(MessageListViewController *)self _draftOrOutboxMessageAtIndexPath:pathCopy];
  if (v9)
  {
    [(MessageListViewController *)self _restoreDraftOrOutboxItem:v9];
  }

  isInExpandedEnvironment = [scene isInExpandedEnvironment];
  if (isInExpandedEnvironment & 1) != 0 || ([state containsOutbox] & 1) != 0 || ((v11 = objc_msgSend(state, "containsDraftsMailbox"), v9) ? (v12 = 1) : (v12 = v11), (v12))
  {
    v13 = +[MessageListViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v7;
      v22 = state;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      ef_publicDescription = [pathCopy ef_publicDescription];
      containsOutbox = [state containsOutbox];
      containsDraftsMailbox = [v22 containsDraftsMailbox];
      ef_publicDescription2 = [v9 ef_publicDescription];
      *buf = 138545154;
      v25 = v15;
      v26 = 2048;
      selfCopy = self;
      v28 = 2114;
      v29 = ef_publicDescription;
      v30 = 2114;
      v31 = v21;
      v32 = 1024;
      v33 = isInExpandedEnvironment;
      v34 = 1024;
      v35 = containsOutbox;
      v36 = 1024;
      v37 = containsDraftsMailbox;
      v7 = v21;
      v38 = 2114;
      v39 = ef_publicDescription2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Skip showing conversation view - indexPath=%{public}@, messageID=%{public}@, isInExpandedEnvironment=%{BOOL}d, containsOutbox=%{BOOL}d, containsDraftsMailbox=%{BOOL}d, draftOrOutboxMessage=%{public}@", buf, 0x46u);

      state = v22;
    }
  }

  else
  {
    splitViewController = [scene splitViewController];
    [splitViewController showConversationViewControllerAnimated:1 completion:0];
  }

  [(MessageListViewController *)self _hideMailboxPickerOrMessageListAfterSelectionIfNeeded];
  [(MessageListViewController *)self reportEngagementAction:0 onItemID:v7 atIndexPath:pathCopy];
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (([(MessageListViewController *)self isEditing]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_1001726B8(self, pathCopy);
  }

  return v6;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = _os_activity_create(&_mh_execute_header, "[MessageListViewController collectionView:didSelectItemAtIndexPath:]", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v6, &state);
  dataSource = [(MessageListViewController *)self dataSource];
  v8 = [dataSource itemIdentifierForIndexPath:pathCopy];

  isEditing = [(MessageListViewController *)self isEditing];
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];

  v11 = +[MessageListViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138413570;
    v27 = v13;
    v28 = 2048;
    selfCopy = self;
    v30 = 2114;
    v31 = v8;
    v32 = 2112;
    v33 = pathCopy;
    v34 = 1024;
    v35 = isEditing;
    v36 = 1024;
    v37 = messageListSelectionModel != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%@: %p> collectionView:didSelectItem: %{public}@, atIndexPath: %@, isEditing: %{BOOL}d, hasSelectionModel: %{BOOL}d", buf, 0x36u);
  }

  if (messageListSelectionModel)
  {
    [(MessageListViewController *)self _updateSelectionModelDidSelectItemID:v8];
    [(MessageListViewController *)self reportEngagementAction:4 onItemID:v8 atIndexPath:pathCopy];
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

  scene = [(MessageListViewController *)self scene];
  splitViewController = [scene splitViewController];
  [splitViewController setFocusedViewController:0];

  [(MessageListViewController *)self _cancelOrCleanupStateRestoration];
  state = [(MessageListViewController *)self state];
  if ([state useSplitViewStyling])
  {
    _inMultiSelectionMode = [(MessageListViewController *)self _inMultiSelectionMode];

    if (_inMultiSelectionMode)
    {
      sub_100171C90(self, v8, pathCopy);
    }
  }

  else
  {
  }

  if (!_os_feature_enabled_impl() || (EMIsGreymatterSupported() & 1) == 0)
  {
    highlightsSupplementaryView = [(MessageListViewController *)self highlightsSupplementaryView];
    transitionCoordinator = [(MessageListViewController *)self transitionCoordinator];
    [highlightsSupplementaryView parentViewController:self didSelectItemWithTransitionCoordinator:transitionCoordinator];
  }

  os_activity_scope_leave(&state);
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  viewCopy = view;
  if (([(MessageListViewController *)self isEditing]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
    v6 = [indexPathsForSelectedItems count] > 1;
  }

  return v6;
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListViewController *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  _inMultiSelectionMode = [(MessageListViewController *)self _inMultiSelectionMode];
  if ([(MessageListViewController *)self _inMultiSelectionMode])
  {
    [(MessageListViewController *)self _updateSelectionModelDidDeselectItemID:v6];
  }

  state = [(MessageListViewController *)self state];
  v9 = [state useSplitViewStyling] & _inMultiSelectionMode;

  if (v9 == 1)
  {
    sub_100171C90(self, v6, pathCopy);
  }

  [(MessageListViewController *)self scene];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if (objc_opt_respondsToSelector())
  {
    messageListItemFuture = [cellCopy messageListItemFuture];
    [(MessageListViewController *)self _updateLastSeenDatesForMessageListItemFuture:messageListItemFuture atIndexPath:pathCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (_os_feature_enabled_impl())
    {
      if (EMIsGreymatterSupported())
      {
        showHighlights = [(MessageListViewController *)self showHighlights];
        isEnabled = [showHighlights isEnabled];

        if (isEnabled)
        {
          section = [pathCopy section];
          if (section == [(MessageListViewController *)self _prioritySectionIndex])
          {
            [(MessageListViewController *)self _shimmerViewIfNeededForPriorityCellWillDisplay:1];
          }
        }
      }
    }

    v13 = cellCopy;
    cellHelper = [v13 cellHelper];
    cellView = [cellHelper cellView];
    messageListItem = [cellHelper messageListItem];
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
        section2 = [pathCopy section];
        item = [pathCopy item];
        _layoutAttributes = [v13 _layoutAttributes];
        isHidden = [v13 isHidden];
        isHiddenOrHasHiddenAncestor = [v13 isHiddenOrHasHiddenAncestor];
        [v13 alpha];
        *buf = 134219778;
        selfCopy2 = self;
        v43 = 2048;
        selfCopy3 = section2;
        v45 = 2048;
        v46 = item;
        v47 = 1024;
        v48 = messageListItem != 0;
        v49 = 2114;
        v50 = _layoutAttributes;
        v51 = 1024;
        v52 = isHidden;
        v53 = 1024;
        v54 = isHiddenOrHasHiddenAncestor;
        v55 = 2048;
        v56 = v29;
        _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "%p: Cell is unexpectedly hidden:\n\tindexPath: (%ld, %ld)\n\thasItem: %{BOOL}d\n\tlayoutAttributes: %{public}@\n\tisHidden: %{BOOL}d\n\tisHiddenOrHasHiddenAncestor: %{BOOL}d\n\talpha: %f", buf, 0x46u);
      }
    }

    v40 = 0;
    v18 = [cellView verifyContentVisibility:&v40];
    v19 = v40;
    if ((v18 & 1) == 0)
    {
      v20 = +[MessageListViewController log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v19 ef_publicDescription];
        ef_publicDescription2 = [pathCopy ef_publicDescription];
        _layoutAttributes2 = [v13 _layoutAttributes];
        *buf = 134219010;
        selfCopy2 = self;
        v43 = 2114;
        selfCopy3 = ef_publicDescription;
        v45 = 2114;
        v46 = ef_publicDescription2;
        v47 = 1024;
        v48 = messageListItem != 0;
        v49 = 2114;
        v50 = _layoutAttributes2;
        v34 = _layoutAttributes2;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%p: Cell is unexpectedly hidden - %{public}@:\n\tindexPath: %{public}@\n\thasItem: %{BOOL}d\n\tlayoutAttributes: %{public}@", buf, 0x30u);
      }
    }

    if (messageListItem)
    {
      scene = [(MessageListViewController *)self scene];
      daemonInterface = [scene daemonInterface];
      interactionLogger = [daemonInterface interactionLogger];

      messageListType = [(MessageListViewController *)self messageListType];
      v25 = [pathCopy row];
      v26 = sub_1000239BC([cellHelper style]);
      [interactionLogger messageListDisplayStartedForListItem:messageListItem messageListType:messageListType row:v25 cellStyle:v26];
    }

    else
    {
      interactionLogger = +[MessageListViewController log];
      if (os_log_type_enabled(interactionLogger, OS_LOG_TYPE_DEBUG))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138412802;
        selfCopy2 = v32;
        v43 = 2048;
        selfCopy3 = self;
        v45 = 2112;
        v46 = pathCopy;
        _os_log_debug_impl(&_mh_execute_header, interactionLogger, OS_LOG_TYPE_DEBUG, "<%@: %p> Looks like collection view tried to display a cell that is no longer valid. Ignoring interaction log for indexPath: %@", buf, 0x20u);
      }
    }
  }
}

- (void)_updateLastSeenDatesForMessageListItemFuture:(id)future atIndexPath:(id)path
{
  futureCopy = future;
  pathCopy = path;
  if (([(MessageListViewController *)self isBucketBarHidden]& 1) == 0)
  {
    if (futureCopy)
    {
      mailboxes = [(MessageListViewController *)self mailboxes];
      selectedBucket = [(MessageListViewController *)self selectedBucket];
      objc_initWeak(location, self);
      v10 = +[EFScheduler mainThreadScheduler];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100173908;
      v13[3] = &unk_1006524E8;
      objc_copyWeak(v16, location);
      v16[1] = selectedBucket;
      v14 = pathCopy;
      v11 = mailboxes;
      v15 = v11;
      [futureCopy onScheduler:v10 addSuccessBlock:v13];

      objc_destroyWeak(v16);
      objc_destroyWeak(location);
    }

    else
    {
      v11 = +[MessageListViewController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [pathCopy ef_publicDescription];
        sub_10048A248(ef_publicDescription, location, v11);
      }
    }
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cellHelper = [cellCopy cellHelper];
    messageListItem = [cellHelper messageListItem];
    if (messageListItem)
    {
      scene = [(MessageListViewController *)self scene];
      daemonInterface = [scene daemonInterface];
      interactionLogger = [daemonInterface interactionLogger];

      v14 = sub_1000239BC([cellHelper style]);
      [interactionLogger messageListDisplayEndedForListItem:messageListItem cellStyle:v14];
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
        selfCopy = self;
        v22 = 2112;
        v23 = pathCopy;
        _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "<%@: %p> Looks like collection view tried to end displaying a cell that is no longer valid. Ignoring interaction log for indexPath: %@", &v18, 0x20u);
      }
    }
  }
}

- (BOOL)_inMultiSelectionMode
{
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  if (messageListSelectionModel)
  {
    messageListSelectionModel2 = [(MessageListViewController *)self messageListSelectionModel];
    if ([messageListSelectionModel2 count] <= 1)
    {
      isEditing = [(MessageListViewController *)self isEditing];
    }

    else
    {
      isEditing = 1;
    }
  }

  else
  {
    isEditing = 0;
  }

  return isEditing;
}

- (void)_exitMultiSelectionForce:(BOOL)force
{
  forceCopy = force;
  collectionView = [(MessageListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v7 = [indexPathsForSelectedItems count];
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  v9 = messageListSelectionModel;
  v10 = messageListSelectionModel != 0;
  if (messageListSelectionModel && v7 != 1)
  {
    v10 = [messageListSelectionModel count] < 2;
  }

  if (([(MessageListViewController *)self isEditing]& 1) != 0 || !forceCopy && !v10)
  {
    v17 = +[MessageListViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v22 = v19;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 1024;
      v26 = v10;
      v27 = 1024;
      v28 = v9 != 0;
      v29 = 1024;
      v30 = forceCopy;
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
    selfCopy2 = self;
    v25 = 1024;
    v26 = forceCopy;
    v27 = 1024;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Exit multi-selection (force: %{BOOL}d, hasMultiSelection: %{BOOL}d)", buf, 0x22u);
  }

  layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
  [layoutValuesHelper setInMultiSelectionMode:0];

  [(MessageListViewController *)self setMessageListSelectionModel:0];
  [(MessageListViewController *)self _setRowDeletionEnabled:0 animated:1];
  [(MessageListViewController *)self _updateTitle];
  if (v7 == 1)
  {
    dataSource = [(MessageListViewController *)self dataSource];
    firstObject = [indexPathsForSelectedItems firstObject];
    v17 = [dataSource itemIdentifierForIndexPath:firstObject];

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

- (void)collectionView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543874;
    v30 = v10;
    v31 = 2048;
    selfCopy = self;
    v33 = 2114;
    v34 = pathCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> didBeginMultipleSelectionInteractionAtIndexPath: %{public}@", buf, 0x20u);
  }

  layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
  [layoutValuesHelper setInMultiSelectionMode:1];

  LODWORD(layoutValuesHelper) = [(MessageListViewController *)self isEditing];
  if (layoutValuesHelper != [viewCopy isEditing])
  {
    [(MessageListViewController *)self changeTipShouldDisplayTo:0];
    -[MessageListViewController setEditing:animated:](self, "setEditing:animated:", [viewCopy isEditing], 1);
  }

  dataSource = [(MessageListViewController *)self dataSource];
  collectionView = [(MessageListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  LODWORD(collectionView) = messageListSelectionModel == 0;

  if (collectionView)
  {
    v16 = [[MessageListSelectionModel alloc] initWithDataSource:self delegate:self];
    [(MessageListViewController *)self setMessageListSelectionModel:v16];

    conversationViewController = [(MessageListViewController *)self conversationViewController];
    [conversationViewController setSelectionDataSource:self];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = indexPathsForSelectedItems;
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

          v22 = [dataSource itemIdentifierForIndexPath:{*(*(&v24 + 1) + 8 * v21), v24}];
          [(MessageListViewController *)self _updateSelectionModelDidSelectItemID:v22];

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }

  messageListSelectionModel2 = [(MessageListViewController *)self messageListSelectionModel];
  [messageListSelectionModel2 setMultipleSelectionActive:1];
}

- (void)collectionViewDidEndMultipleSelectionInteraction:(id)interaction
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
    selfCopy = self;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> %{public}@", &v9, 0x20u);
  }

  [(MessageListViewController *)self _finalizeMultipleSelection];
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource sectionAtIndex:{objc_msgSend(pathCopy, "section")}];
  v8 = [dataSource isMessagesSection:v7];

  return v8;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  if ([(MessageListViewController *)self isEditing])
  {
    nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
    if (nextFocusedIndexPath)
    {
      dataSource = [(MessageListViewController *)self dataSource];
      nextFocusedIndexPath2 = [contextCopy nextFocusedIndexPath];
      v9 = [dataSource itemIdentifierForIndexPath:nextFocusedIndexPath2];
      sub_10048A174(self, v9);
    }
  }
}

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  v5 = [(MessageListViewController *)self shouldIgnoreNextFocusUpdate:view];
  if (v5)
  {
    [(MessageListViewController *)self setShouldIgnoreNextFocusUpdate:0];
  }

  return v5 ^ 1;
}

- (id)collectionView:(id)view sceneActivationConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v5 = [(MessageListViewController *)self _sceneActivationConfigurationForItemAtIndexPath:path, point.x, point.y];

  return v5;
}

- (id)_sceneActivationConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListViewController *)self dataSource];
  v6 = [dataSource messageListItemAtIndexPath:pathCopy];
  result = [v6 result];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
  }

  else
  {
    v9 = [dataSource messageListAtSectionIndex:{objc_msgSend(pathCopy, "section")}];
    state = [(MessageListViewController *)self state];
    if ([state containsDraftsOrOutbox])
    {
      v24 = state;
      v25 = v9;
      mailboxes = [(MessageListViewController *)self mailboxes];
      v12 = [mailboxes ef_compactMapSelector:"objectID"];

      v23 = v12;
      mailboxObjectIDs = [result mailboxObjectIDs];
      v26 = [mailboxObjectIDs firstObjectCommonWithArray:v12];

      if ([state containsDraftsMailbox])
      {
        v14 = 2;
      }

      else
      {
        v14 = 3;
      }

      v15 = [_MFMailCompositionContext alloc];
      displayMessageObjectID = [result displayMessageObjectID];
      messageRepository = [(MessageListViewController *)self messageRepository];
      v18 = +[UIApplication sharedApplication];
      mailboxProvider = [v18 mailboxProvider];
      v20 = [v15 initWithComposeType:v14 objectID:displayMessageObjectID mailboxID:v26 subject:0 autosaveID:0 messageRepository:messageRepository mailboxProvider:mailboxProvider];

      scene = [(MessageListViewController *)self scene];
      v8 = [MFBayAdoption composeWindowSceneActivationConfigurationWithContext:v20 presentationSource:0 requestingScene:scene];

      state = v24;
      v9 = v25;
    }

    else
    {
      v8 = [MFBayAdoption openMessageInNewWindowConfigurationWithMessageListItem:result messageList:v9];
    }
  }

  return v8;
}

- (id)preferredFocusEnvironments
{
  v13.receiver = self;
  v13.super_class = MessageListViewController;
  preferredFocusEnvironments = [(MessageListViewController *)&v13 preferredFocusEnvironments];
  searchController = [(MessageListViewController *)self searchController];
  isActive = [searchController isActive];

  if ((isActive & 1) == 0)
  {
    if (self && (v6 = self->_keyboardFocusedItemID) != 0 || ([(MessageListViewController *)self lastSelectedItemID], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      dataSource = [(MessageListViewController *)self dataSource];
      v8 = [dataSource indexPathForItemIdentifier:v6];

      if (v8)
      {
        collectionView = [(MessageListViewController *)self collectionView];
        v10 = [collectionView cellForItemAtIndexPath:v8];

        if (v10)
        {
          v14 = v10;
          v11 = [NSArray arrayWithObjects:&v14 count:1];

          preferredFocusEnvironments = v11;
        }
      }
    }
  }

  return preferredFocusEnvironments;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  viewCopy = view;
  if (self && (v5 = self->_keyboardFocusedItemID) != 0 || ([(MessageListViewController *)self lastSelectedItemID], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    dataSource = [(MessageListViewController *)self dataSource];
    v7 = [dataSource indexPathForItemIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_finalizeMultipleSelection
{
  dataSource = [(MessageListViewController *)self dataSource];
  collectionView = [(MessageListViewController *)self collectionView];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  itemsToDeselectAfterMultipleSelection = [messageListSelectionModel itemsToDeselectAfterMultipleSelection];

  v7 = [itemsToDeselectAfterMultipleSelection countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(itemsToDeselectAfterMultipleSelection);
        }

        v10 = [dataSource indexPathForItemIdentifier:*(*(&v15 + 1) + 8 * v9)];
        [collectionView deselectItemAtIndexPath:v10 animated:0];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [itemsToDeselectAfterMultipleSelection countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  messageListSelectionModel2 = [(MessageListViewController *)self messageListSelectionModel];
  [messageListSelectionModel2 setMultipleSelectionActive:0];

  dataSource2 = [(MessageListViewController *)self dataSource];
  messageListSelectionModel3 = [(MessageListViewController *)self messageListSelectionModel];
  itemIDs = [messageListSelectionModel3 itemIDs];
  [dataSource2 reloadItemsWithItemIDs:itemIDs];
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  messageListPositionHelper = [(MessageListViewController *)self messageListPositionHelper];

  if (messageListPositionHelper)
  {
    messageListPositionHelper2 = [(MessageListViewController *)self messageListPositionHelper];
    [messageListPositionHelper2 targetContentOffsetForProposedContentOffset:{x, y}];
    v11 = v10;
    v13 = v12;

    scene = [(MessageListViewController *)self scene];
    if ([scene isInExpandedEnvironment])
    {
    }

    else
    {

      if (v11 != x || v13 != y)
      {
        [viewCopy flashScrollIndicators];
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  messageListPositionHelper = [(MessageListViewController *)self messageListPositionHelper];
  [messageListPositionHelper setUserIsScrolling:1];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  scene = [(MessageListViewController *)self scene];
  splitViewController = [scene splitViewController];
  parentViewController = [(MessageListViewController *)self parentViewController];
  [splitViewController setFocusedViewController:parentViewController];

  [(MessageListViewController *)self _cancelOrCleanupStateRestoration];
  if (!decelerate)
  {
    messageListPositionHelper = [(MessageListViewController *)self messageListPositionHelper];
    [messageListPositionHelper setUserIsScrolling:0];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  messageListPositionHelper = [(MessageListViewController *)self messageListPositionHelper];
  [messageListPositionHelper setUserIsScrolling:0];
}

- (void)scrollViewDidScrollToTop:(id)top
{
  messageListPositionHelper = [(MessageListViewController *)self messageListPositionHelper];
  [messageListPositionHelper recalculateFirstVisibleIndex];
}

- (void)_adjustNoContentMessageAlpha:(id)alpha
{
  alphaCopy = alpha;
  noContentView = [(MessageListViewController *)self noContentView];
  if (noContentView && (-[MessageListViewController messageListPositionHelper](self, "messageListPositionHelper"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 userIsScrolling], v5, v6))
  {
    if ((-[UIRefreshControl isHidden](self->_refreshControl, "isHidden") & 1) == 0 && [alphaCopy isDragging])
    {
      [(MessageListViewController *)self suppressNoContentViewAnimated:0];
      [(MessageListViewController *)self setSuppressNoContentView:0];
    }
  }

  else
  {
    suppressNoContentView = [(MessageListViewController *)self suppressNoContentView];
    if (noContentView)
    {
      v8 = 1;
    }

    else
    {
      v8 = suppressNoContentView;
    }

    if ((v8 & 1) == 0 && [(UIRefreshControl *)self->_refreshControl isHidden]&& [(MessageListViewController *)self isInitialCellConfigurationCompleted])
    {
      [(MessageListViewController *)self updateNoContentViewAnimated:1];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(MessageListViewController *)self _adjustNoContentMessageAlpha:?];
  if (*(self + 8))
  {
    [scrollCopy contentOffset];
    v5 = v4;
    v7 = v6;
    if (([(MessageListViewController *)self isBucketBarHidden]& 1) == 0)
    {
      bucketsViewController = [(MessageListViewController *)self bucketsViewController];
      viewIfLoaded = [bucketsViewController viewIfLoaded];
      superview = [viewIfLoaded superview];

      if (superview)
      {
        navigationItem = [(MessageListViewController *)self navigationItem];
        titleView = [navigationItem titleView];

        shouldShowNavigationBarSubtitle = [(MessageListViewController *)self shouldShowNavigationBarSubtitle];
        if ((((titleView == 0) ^ shouldShowNavigationBarSubtitle) & 1) == 0)
        {
          [(MessageListViewController *)self _updateTitle];
        }

        navigationBarTitleView = [(MessageListViewController *)self navigationBarTitleView];
        [navigationBarTitleView setSubtitleHidden:shouldShowNavigationBarSubtitle ^ 1 animated:1];
      }
    }

    oldestItemsIDsByMailboxObjectID = [(MessageListViewController *)self oldestItemsIDsByMailboxObjectID];

    if (oldestItemsIDsByMailboxObjectID)
    {
      v16 = scrollCopy;
      if ([v16 isTracking])
      {
        isDecelerating = 1;
      }

      else
      {
        isDecelerating = [v16 isDecelerating];
      }

      y = self->_lastScrolledContentOffset.y;
      [v16 contentInset];
      v20 = v19;
      +[NSDate timeIntervalSinceReferenceDate];
      if (isDecelerating && v7 > y && v7 > -v20 && v21 >= self->_nextAvailableLoadMoreInterval)
      {
        indexPathsForVisibleItems = [v16 indexPathsForVisibleItems];
        lastObject = [indexPathsForVisibleItems lastObject];

        if (lastObject)
        {
          [(MessageListViewController *)self _loadMoreMessagesWithMaxVisibleIndexPath:lastObject];
          +[NSDate timeIntervalSinceReferenceDate];
          self->_nextAvailableLoadMoreInterval = v24 + 0.5;
        }
      }

      self->_lastScrolledContentOffset.x = v5;
      self->_lastScrolledContentOffset.y = v7;
    }
  }
}

- (void)_loadMoreMessagesWithMaxVisibleIndexPath:(id)path
{
  pathCopy = path;
  v29 = +[NSMutableArray array];
  resolvedMailboxObjectIDs = [(MessageListViewController *)self resolvedMailboxObjectIDs];
  if ([resolvedMailboxObjectIDs count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = resolvedMailboxObjectIDs;
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
        mailboxesPendingOldestItemsUpdates = [(MessageListViewController *)self mailboxesPendingOldestItemsUpdates];
        v9 = [mailboxesPendingOldestItemsUpdates containsObject:v7];

        if (v9)
        {
          v10 = +[MessageListViewController log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = objc_opt_class();
            v12 = NSStringFromClass(v11);
            ef_publicDescription = [v7 ef_publicDescription];
            *buf = 138412802;
            v37 = v12;
            v38 = 2048;
            selfCopy3 = self;
            v40 = 2114;
            v41 = ef_publicDescription;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> Mailbox object id (%{public}@) is already pending oldest item update", buf, 0x20u);
          }

          goto LABEL_21;
        }

        oldestItemsIDsByMailboxObjectID = [(MessageListViewController *)self oldestItemsIDsByMailboxObjectID];
        v10 = [oldestItemsIDsByMailboxObjectID objectForKeyedSubscript:v7];

        if (!v10)
        {
          goto LABEL_15;
        }

        dataSource = [(MessageListViewController *)self dataSource];
        v16 = [dataSource indexPathForItemIdentifier:v10];

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
            selfCopy3 = self;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "<%@: %p> cannot find the index of a tracked oldest item", buf, 0x16u);
          }

LABEL_15:
          v16 = [NSIndexPath indexPathForRow:sub_10001C994(self) inSection:0];
        }

        v18 = [pathCopy row];
        if ([v16 row] * 0.75 < v18)
        {
          [v29 addObject:v7];
          v19 = +[MessageListViewController log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            ef_publicDescription2 = [v7 ef_publicDescription];
            *buf = 138412802;
            v37 = v21;
            v38 = 2048;
            selfCopy3 = self;
            v40 = 2114;
            v41 = ef_publicDescription2;
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
          mailboxesPendingOldestItemsUpdates2 = [(MessageListViewController *)self mailboxesPendingOldestItemsUpdates];
          [mailboxesPendingOldestItemsUpdates2 addObjectsFromArray:v29];

          messageRepository = [(MessageListViewController *)self messageRepository];
          [messageRepository loadOlderMessagesForMailboxes:v29];
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }
  }

  messageRepository = +[MessageListViewController log];
  if (os_log_type_enabled(messageRepository, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    sub_10048A304();
  }

LABEL_27:

LABEL_28:
}

- (BOOL)_isExpandedIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListViewController *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];
  LOBYTE(self) = [(MessageListViewController *)self _isExpandedItemID:v6];

  return self;
}

- (BOOL)_isExpandedItemID:(id)d
{
  dCopy = d;
  if (([(MessageListViewController *)self isThreaded]& 1) != 0)
  {
    dataSource = [(MessageListViewController *)self dataSource];
    v6 = [dataSource anyExpandedThreadContainsItemID:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_applySelectionModel:(id)model
{
  modelCopy = model;
  v6 = +[MessageListViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    *buf = 138413058;
    v20 = v8;
    v21 = 2048;
    selfCopy = self;
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = modelCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> %{public}@ model: %{public}@", buf, 0x2Au);
  }

  if (modelCopy)
  {
    [(MessageListViewController *)self setMessageListSelectionModel:modelCopy];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    itemIDs = [modelCopy itemIDs];
    v11 = [itemIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(itemIDs);
          }

          [(MessageListViewController *)self _updateSelectionModelDidSelectItemID:*(*(&v14 + 1) + 8 * v13)];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [itemIDs countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_updateSelectionModelDidSelectItemID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    dataSource = [(MessageListViewController *)self dataSource];
    collectionView = [(MessageListViewController *)self collectionView];
    messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
    v21 = [messageListSelectionModel selectItemWithItemID:dCopy];
    v7 = +[MessageListViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138413314;
      v29 = v9;
      v30 = 2048;
      selfCopy = self;
      v32 = 2114;
      v33 = dCopy;
      v34 = 2048;
      v35 = [messageListSelectionModel count];
      v36 = 2114;
      v37 = v21;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@: %p> Select Item: %{public}@ (Total: %ld). Including: %{public}@", buf, 0x34u);
    }

    if ([messageListSelectionModel isMultipleSelectionActive])
    {
      itemsToDeselectAfterMultipleSelection = [messageListSelectionModel itemsToDeselectAfterMultipleSelection];
      [itemsToDeselectAfterMultipleSelection removeObject:dCopy];

      itemsToDeselectAfterMultipleSelection2 = [messageListSelectionModel itemsToDeselectAfterMultipleSelection];
      [itemsToDeselectAfterMultipleSelection2 ef_removeObjectsInArray:v21];
    }

    else
    {
      itemsToDeselectAfterMultipleSelection2 = [dataSource indexPathForItemIdentifier:dCopy];
      [collectionView selectItemAtIndexPath:itemsToDeselectAfterMultipleSelection2 animated:0 scrollPosition:0];
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

            v17 = [dataSource indexPathForItemIdentifier:*(*(&v23 + 1) + 8 * i)];
            [collectionView selectItemAtIndexPath:v17 animated:0 scrollPosition:0];
          }

          v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }
    }

    [(MessageListViewController *)self _updateTitle];
    [(MessageListViewController *)self updateBarButtons];
    [(MessageListViewController *)self _updateStackViewController];
    v18 = [messageListSelectionModel cascadedItemIDsForItemID:dCopy isSelecting:1];
    v19 = [v18 arrayByAddingObject:dCopy];
    [(MessageListViewController *)self _addMessagesToStackWithItemIDs:v19];

    [(MessageListViewController *)self isEditing];
    conversationViewController = [(MessageListViewController *)self conversationViewController];
    [conversationViewController _updateBarButtonsAnimated:1 force:1 isShowingTitle:0];
  }

  else
  {
    dataSource = +[MessageListViewController log];
    if (os_log_type_enabled(dataSource, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      NSStringFromClass(v12);
      objc_claimAutoreleasedReturnValue();
      sub_10048A348();
    }
  }
}

- (void)_updateSelectionModelDidDeselectItemID:(id)d
{
  dCopy = d;
  dataSource = [(MessageListViewController *)self dataSource];
  collectionView = [(MessageListViewController *)self collectionView];
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  v28 = [messageListSelectionModel deselectItemWithItemID:dCopy];
  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138413314;
    v35 = v10;
    v36 = 2048;
    selfCopy2 = self;
    v38 = 2114;
    v39 = dCopy;
    v40 = 2048;
    v41 = [messageListSelectionModel count];
    v42 = 2114;
    v43 = v28;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@: %p> Deselect Item: %{public}@ (Total: %ld). Including: %{public}@", buf, 0x34u);
  }

  messageListSelectionModel2 = [(MessageListViewController *)self messageListSelectionModel];
  isSelectAll = [messageListSelectionModel2 isSelectAll];

  if (isSelectAll)
  {
    v13 = +[MessageListViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412546;
      v35 = v15;
      v36 = 2048;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<%@: %p> Leaving Select All mode. All items have been deselected manually", buf, 0x16u);
    }

    itemIDs = [messageListSelectionModel itemIDs];
    v17 = [itemIDs count];
    v18 = v17 == sub_10001C994(self);

    if (v18)
    {
      [messageListSelectionModel disableSelectAll];
    }
  }

  if ([messageListSelectionModel isMultipleSelectionActive])
  {
    itemsToDeselectAfterMultipleSelection = [messageListSelectionModel itemsToDeselectAfterMultipleSelection];
    [itemsToDeselectAfterMultipleSelection addObject:dCopy];

    itemsToDeselectAfterMultipleSelection2 = [messageListSelectionModel itemsToDeselectAfterMultipleSelection];
    [itemsToDeselectAfterMultipleSelection2 addObjectsFromArray:v28];
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    itemsToDeselectAfterMultipleSelection2 = v28;
    v21 = [itemsToDeselectAfterMultipleSelection2 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(itemsToDeselectAfterMultipleSelection2);
          }

          v24 = [dataSource indexPathForItemIdentifier:*(*(&v29 + 1) + 8 * v23)];
          [collectionView deselectItemAtIndexPath:v24 animated:0];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [itemsToDeselectAfterMultipleSelection2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v21);
    }
  }

  [(MessageListViewController *)self _updateTitle];
  [(MessageListViewController *)self updateBarButtons];
  [(MessageListViewController *)self _updateStackViewController];
  v25 = [messageListSelectionModel cascadedItemIDsForItemID:dCopy isSelecting:0];
  v26 = [v25 arrayByAddingObject:dCopy];
  [(MessageListViewController *)self _removeMessagesFromStackWithItemIDs:v26];

  [(MessageListViewController *)self _exitMultiSelectionForce:0];
  conversationViewController = [(MessageListViewController *)self conversationViewController];
  [conversationViewController _updateBarButtonsAnimated:1 force:1];
}

- (void)didSelectTopHitWithItemID:(id)d messageList:(id)list animated:(BOOL)animated
{
  dCopy = d;
  listCopy = list;
  BYTE1(v14) = 1;
  LOBYTE(v14) = animated;
  [(MessageListViewController *)self _handleDidSelectItemID:dCopy messageList:listCopy referenceItem:0 scrollToVisible:0 userInitiated:1 canRestoreDraft:1 animated:v14 showConversationView:?];
  v9 = +[UIApplication sharedApplication];
  appStoreReviewManager = [v9 appStoreReviewManager];
  [appStoreReviewManager notifyCriterionMet:6];

  scene = [(MessageListViewController *)self scene];
  if (scene)
  {
    v12 = +[UIApplication sharedApplication];
    appStoreReviewManager2 = [v12 appStoreReviewManager];
    [appStoreReviewManager2 attemptToShowPromptIn:scene reason:6];
  }
}

- (void)_handleDidSelectItemID:(id)d referenceItem:(id)item scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated canRestoreDraft:(BOOL)draft animated:(BOOL)animated showConversationView:(BOOL)view
{
  draftCopy = draft;
  initiatedCopy = initiated;
  visibleCopy = visible;
  dCopy = d;
  itemCopy = item;
  dataSource = [(MessageListViewController *)self dataSource];
  v17 = [dataSource messageListForMessageListItemWithIdentifier:dCopy];

  BYTE1(v18) = view;
  LOBYTE(v18) = animated;
  [(MessageListViewController *)self _handleDidSelectItemID:dCopy messageList:v17 referenceItem:itemCopy scrollToVisible:visibleCopy userInitiated:initiatedCopy canRestoreDraft:draftCopy animated:v18 showConversationView:?];
}

- (void)_handleDidSelectItemID:(id)d messageList:(id)list referenceItem:(id)item scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated canRestoreDraft:(BOOL)draft animated:(BOOL)animated showConversationView:(BOOL)self0
{
  visibleCopy = visible;
  initiatedCopy = initiated;
  dCopy = d;
  listCopy = list;
  itemCopy = item;
  dataSource = [(MessageListViewController *)self dataSource];
  v55 = [dataSource indexPathForItemIdentifier:dCopy];

  collectionView = [(MessageListViewController *)self collectionView];
  v54 = [collectionView cellForItemAtIndexPath:v55];

  if ([(MessageListViewController *)self isSearchControllerActive])
  {
    searchController = [(MessageListViewController *)self searchController];
    searchBar = [searchController searchBar];
    [searchBar resignFirstResponder];
  }

  v18 = +[MessageListViewController log];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    ef_publicDescription = [listCopy ef_publicDescription];
    ef_publicDescription2 = [itemCopy ef_publicDescription];
    *buf = 138414338;
    v59 = v20;
    v60 = 2048;
    selfCopy6 = self;
    v62 = 2114;
    v63 = dCopy;
    v64 = 2114;
    *v65 = ef_publicDescription;
    *&v65[8] = 2114;
    *&v66 = ef_publicDescription2;
    WORD4(v66) = 1024;
    *(&v66 + 10) = visibleCopy;
    HIWORD(v66) = 1024;
    *v67 = initiatedCopy;
    *&v67[4] = 1024;
    animatedCopy = animated;
    v69 = 1024;
    viewCopy = view;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "<%@: %p> handleDidSelectItemID: %{public}@, messageList: %{public}@, referenceItem: %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x4Cu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v54;
    messageListItemFuture = [v23 messageListItemFuture];
    resultIfAvailable = [messageListItemFuture resultIfAvailable];
    v26 = resultIfAvailable == 0;

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
        selfCopy6 = self;
        v62 = 2114;
        v63 = dCopy;
        v64 = 1024;
        *v65 = visibleCopy;
        *&v65[4] = 1024;
        *&v65[6] = initiatedCopy;
        LOWORD(v66) = 1024;
        *(&v66 + 2) = animated;
        WORD3(v66) = 1024;
        DWORD2(v66) = view;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "<%@: %p> handleDidSelectItemID: Message hasn't finished loading, updating selection promise %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x38u);
      }
    }

    else
    {
      cellHelper = [v23 cellHelper];
      messageListItem = [cellHelper messageListItem];
      v29 = messageListItem == 0;

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
        selfCopy6 = self;
        v62 = 2114;
        v63 = dCopy;
        v64 = 1024;
        *v65 = visibleCopy;
        *&v65[4] = 1024;
        *&v65[6] = initiatedCopy;
        LOWORD(v66) = 1024;
        *(&v66 + 2) = animated;
        WORD3(v66) = 1024;
        DWORD2(v66) = view;
        _os_log_fault_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "<%@: %p> handleDidSelectItemID: Trying to select a message list cell that has no message list item. %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x38u);
      }
    }

    BYTE2(v48) = view;
    BYTE1(v48) = animated;
    LOBYTE(v48) = draft;
    [MessageListViewController _updateSelectionPromiseForItemID:"_updateSelectionPromiseForItemID:messageList:messageListCell:referenceItem:scrollToVisible:userInitiated:canRestoreDraft:animated:showConversationView:indexPath:" messageList:dCopy messageListCell:listCopy referenceItem:v23 scrollToVisible:itemCopy userInitiated:visibleCopy canRestoreDraft:initiatedCopy animated:v48 showConversationView:v55 indexPath:?];
    goto LABEL_28;
  }

LABEL_9:
  v30 = [(MessageListViewController *)self _shouldShowItemIDAsConversation:dCopy];
  if (!dCopy)
  {
    v34 = +[MessageListViewController log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *buf = 138413826;
      v59 = v43;
      v60 = 2048;
      selfCopy6 = self;
      v62 = 2114;
      v63 = 0;
      v64 = 1024;
      *v65 = visibleCopy;
      *&v65[4] = 1024;
      *&v65[6] = initiatedCopy;
      LOWORD(v66) = 1024;
      *(&v66 + 2) = animated;
      WORD3(v66) = 1024;
      DWORD2(v66) = view;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "<%@: %p> handleDidSelectItemID: Selected a message list cell with no item ID: %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x38u);
    }

    conversationViewController = [(MessageListViewController *)self conversationViewController];
    [conversationViewController setReferenceMessageListItem:0 referenceMessageList:listCopy showAsConversation:v30 animated:animated];
    goto LABEL_24;
  }

  v31 = [listCopy messageListItemForItemID:dCopy];
  v57 = 0;
  v23 = [v31 resultWithTimeout:&v57 error:0.3];
  conversationViewController = v57;
  if (conversationViewController)
  {
    v33 = +[MessageListViewController log];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138414082;
      v59 = v41;
      v60 = 2048;
      selfCopy6 = self;
      v62 = 2114;
      v63 = dCopy;
      v64 = 2114;
      *v65 = conversationViewController;
      *&v65[8] = 1024;
      LODWORD(v66) = visibleCopy;
      WORD2(v66) = 1024;
      *(&v66 + 6) = initiatedCopy;
      WORD5(v66) = 1024;
      HIDWORD(v66) = animated;
      *v67 = 1024;
      *&v67[2] = view;
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
      selfCopy6 = self;
      v62 = 2114;
      v63 = dCopy;
      v64 = 1024;
      *v65 = visibleCopy;
      *&v65[4] = 1024;
      *&v65[6] = initiatedCopy;
      LOWORD(v66) = 1024;
      *(&v66 + 2) = animated;
      WORD3(v66) = 1024;
      DWORD2(v66) = view;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "<%@: %p> handleDidSelectItemID: Trying to select a message list cell that has no available item. Clearing conversation view. %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showConversationView: %{BOOL}d", buf, 0x38u);
    }

    conversationViewController2 = [(MessageListViewController *)self conversationViewController];
    [conversationViewController2 setReferenceMessageListItem:0 referenceMessageList:listCopy showAsConversation:v30 animated:animated];

    BYTE1(v48) = v30;
    LOBYTE(v48) = view;
    [(MessageListViewController *)self _loadMessageWithItemID:dCopy messageList:listCopy messageListItem:v31 scrollToVisible:visibleCopy userInitiated:initiatedCopy animated:animated showConversationView:v48 showAsConversation:?];

LABEL_24:
    v23 = 0;
    goto LABEL_28;
  }

  BYTE2(v48) = view;
  BYTE1(v48) = animated;
  LOBYTE(v48) = draft;
  [MessageListViewController _handleSelectedItem:"_handleSelectedItem:itemID:messageList:referenceItem:scrollToVisible:userInitiated:canRestoreDraft:animated:showConversationView:indexPath:" itemID:v23 messageList:dCopy referenceItem:listCopy scrollToVisible:itemCopy userInitiated:visibleCopy canRestoreDraft:initiatedCopy animated:v48 showConversationView:v55 indexPath:?];
LABEL_28:
}

- (void)_handleSelectedItem:(id)item itemID:(id)d messageList:(id)list referenceItem:(id)referenceItem scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated canRestoreDraft:(BOOL)draft animated:(BOOL)self0 showConversationView:(BOOL)self1 indexPath:(id)self2
{
  initiatedCopy = initiated;
  visibleCopy = visible;
  itemCopy = item;
  dCopy = d;
  listCopy = list;
  referenceItemCopy = referenceItem;
  pathCopy = path;
  [(MessageListViewController *)self setLoadingMessageItemID:0];
  if (!initiatedCopy)
  {
    [(MessageListViewController *)self setShouldSelectInitialMessage:0];
  }

  BYTE2(v25) = view;
  LOWORD(v25) = __PAIR16__(animated, draft);
  [MessageListViewController _showConversationViewWithMessageListItem:"_showConversationViewWithMessageListItem:itemID:messageList:referenceItem:scrollToVisible:userInitiated:canRestoreDraft:animated:showConversationView:indexPath:" itemID:itemCopy messageList:dCopy referenceItem:listCopy scrollToVisible:referenceItemCopy userInitiated:visibleCopy canRestoreDraft:initiatedCopy animated:v25 showConversationView:pathCopy indexPath:?];
  if (([(MessageListViewController *)self isEditing]& 1) == 0)
  {
    item = [pathCopy item];
    previouslySelectedIndexPath = [(MessageListViewController *)self previouslySelectedIndexPath];
    if (item < [previouslySelectedIndexPath item])
    {
      v24 = 0xFFFFFFFFLL;
    }

    else
    {
      v24 = 1;
    }

    [(MessageListViewController *)self setUserBrowseDirection:v24];

    [(MessageListViewController *)self setPreviouslySelectedIndexPath:pathCopy];
  }

  if (initiatedCopy)
  {
    [(MessageListViewController *)self _hideMailboxPickerOrMessageListAfterSelectionIfNeeded];
  }
}

- (void)_showConversationViewWithMessageListItem:(id)item itemID:(id)d messageList:(id)list referenceItem:(id)referenceItem scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated canRestoreDraft:(BOOL)draft animated:(BOOL)self0 showConversationView:(BOOL)self1 indexPath:(id)self2
{
  initiatedCopy = initiated;
  visibleCopy = visible;
  itemCopy = item;
  dCopy = d;
  listCopy = list;
  referenceItemCopy = referenceItem;
  pathCopy = path;
  v19 = 0;
  v32 = itemCopy;
  if (dCopy && itemCopy && draft && initiatedCopy)
  {
    v19 = [(MessageListViewController *)self _restoreDraftOrOutboxItemAtIndexPath:pathCopy];
  }

  scene = [(MessageListViewController *)self scene];
  isInExpandedEnvironment = [scene isInExpandedEnvironment];
  v20 = [(MessageListViewController *)self _shouldShowItemIDAsConversation:dCopy];
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
    ef_publicDescription = [referenceItemCopy ef_publicDescription];
    *buf = 138414850;
    v38 = v23;
    v39 = 2048;
    selfCopy = self;
    v41 = 2114;
    v42 = dCopy;
    v43 = 1024;
    v44 = visibleCopy;
    v45 = 1024;
    v46 = initiatedCopy;
    v47 = 1024;
    animatedCopy = animated;
    v49 = 1024;
    v50 = v20 & 1;
    v51 = 1024;
    v52 = isInExpandedEnvironment;
    v53 = 1024;
    v54 = v19;
    v55 = 1024;
    viewCopy = view;
    v57 = 2114;
    v58 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "<%@: %p> handleSelectedItem: %{public}@, scrollToVisible: %{BOOL}d, userInitiated: %{BOOL}d, animated: %{BOOL}d, showAsConversation: %{BOOL}d, isInExpandedEnvironment: %{BOOL}d, restoreDraft: %{BOOL}d, showConversationView: %{BOOL}d referenceItem:%{public}@", buf, 0x54u);
  }

  if (((referenceItemCopy == 0) & ~(dCopy != 0)) != 0)
  {
    conversationViewController = [(MessageListViewController *)self conversationViewController];
    [conversationViewController setReferenceMessageListItem:0 referenceMessageList:listCopy showAsConversation:v20 & 1 animated:animated];
LABEL_18:

    goto LABEL_19;
  }

  if (isInExpandedEnvironment & 1 | ((v19 & 1) == 0))
  {
    conversationViewController = [(MessageListViewController *)self conversationViewController];
    searchController = [(MessageListViewController *)self searchController];
    [conversationViewController setMessagesShowSourceMailbox:{objc_msgSend(searchController, "isActive")}];

    v27 = v32;
    if (referenceItemCopy)
    {
      v27 = referenceItemCopy;
    }

    v28 = v27;
    [conversationViewController setReferenceMessageListItem:v28 referenceMessageList:listCopy showAsConversation:v20 & 1 animated:animated];
    if (!(isInExpandedEnvironment & 1 | !view))
    {
      splitViewController = [scene splitViewController];
      [splitViewController showConversationViewControllerAnimated:animated completion:0];
    }

    [(MessageListViewController *)self selectRowOfItemID:dCopy scrollToVisible:visibleCopy animated:animated];

    goto LABEL_18;
  }

LABEL_19:
}

- (void)_updateSelectionPromiseForItemID:(id)d messageList:(id)list messageListCell:(id)cell referenceItem:(id)item scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated canRestoreDraft:(BOOL)draft animated:(BOOL)self0 showConversationView:(BOOL)self1 indexPath:(id)self2
{
  dCopy = d;
  listCopy = list;
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  selectionPromise = [(MessageListViewController *)self selectionPromise];

  if (selectionPromise)
  {
    v20 = +[MessageListViewController log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138412546;
      v53 = v22;
      v54 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<%@: %p> New item selected, cancelling existing selection promise.", buf, 0x16u);
    }

    selectionPromise2 = [(MessageListViewController *)self selectionPromise];
    [selectionPromise2 cancel];
  }

  v39 = +[EFPromise promise];
  objc_initWeak(buf, self);
  v34 = cellCopy;
  future = [v39 future];
  v25 = +[EFScheduler mainThreadScheduler];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100177F24;
  v40[3] = &unk_100652510;
  objc_copyWeak(&v46, buf);
  v26 = v39;
  v41 = v26;
  v33 = dCopy;
  v42 = v33;
  v27 = listCopy;
  v43 = v27;
  v28 = itemCopy;
  initiatedCopy = initiated;
  v30 = v28;
  v44 = v28;
  visibleCopy = visible;
  v48 = initiatedCopy;
  draftCopy = draft;
  animatedCopy = animated;
  viewCopy = view;
  v31 = pathCopy;
  v45 = v31;
  [future onScheduler:v25 addSuccessBlock:v40];

  [(MessageListViewController *)self setSelectionPromise:v26];
  messageListItemFuture = [v34 messageListItemFuture];
  [v26 finishWithFuture:messageListItemFuture];

  objc_destroyWeak(&v46);
  objc_destroyWeak(buf);
}

- (void)_loadMessageWithItemID:(id)d messageList:(id)list messageListItem:(id)item scrollToVisible:(BOOL)visible userInitiated:(BOOL)initiated animated:(BOOL)animated showConversationView:(BOOL)view showAsConversation:(BOOL)self0
{
  dCopy = d;
  listCopy = list;
  itemCopy = item;
  [(MessageListViewController *)self setLoadingMessageItemID:dCopy, dCopy];
  v17 = MFMessageSelectionLifecycleSignpostLog();
  v18 = os_signpost_id_make_with_pointer(v17, dCopy);

  objc_initWeak(location, self);
  v19 = +[EFScheduler mainThreadScheduler];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001782AC;
  v32[3] = &unk_100652538;
  objc_copyWeak(v35, location);
  v20 = dCopy;
  v33 = v20;
  visibleCopy = visible;
  initiatedCopy = initiated;
  animatedCopy = animated;
  viewCopy = view;
  v21 = listCopy;
  conversationCopy = conversation;
  v34 = v21;
  v35[1] = v18;
  [itemCopy onScheduler:v19 addSuccessBlock:v32];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001785D0;
  v25[3] = &unk_100652560;
  objc_copyWeak(v27, location);
  v22 = v20;
  visibleCopy2 = visible;
  initiatedCopy2 = initiated;
  animatedCopy2 = animated;
  viewCopy2 = view;
  v26 = v22;
  v27[1] = v18;
  [itemCopy addFailureBlock:v25];

  objc_destroyWeak(v27);
  objc_destroyWeak(v35);
  objc_destroyWeak(location);
}

- (void)_hideMailboxPickerOrMessageListAfterSelectionIfNeeded
{
  scene = [(MessageListViewController *)self scene];
  if ([scene isInExpandedEnvironment])
  {
    splitViewController = [scene splitViewController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001788E4;
    v6[3] = &unk_10064CF10;
    displayMode = [splitViewController displayMode];
    v6[4] = self;
    v5 = splitViewController;
    v7 = v5;
    [EFScheduler mf_afterUIDelay:v6 performBlock:0.25];
  }
}

- (void)deselectAllItemsInCollectionView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if (([(MessageListViewController *)self isEditing]& 1) == 0)
  {
    transitionCoordinator = [(MessageListViewController *)self transitionCoordinator];
    [viewCopy mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:transitionCoordinator animated:animatedCopy];
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

  lastSelectedItemID = [(MessageListViewController *)self lastSelectedItemID];
  dataSource = [(MessageListViewController *)self dataSource];
  v6 = [dataSource messageListForSection:MessageListSectionRecent];

  if (lastSelectedItemID)
  {
    v7 = [v6 messageListItemForItemID:lastSelectedItemID];
    result = [v7 result];

    flags = [result flags];
    deleted = [flags deleted];

    if (!deleted)
    {

      goto LABEL_10;
    }
  }

  v11 = +[EMMessageListItemPredicates predicateForReadMessages];
  lastSelectedItemID = [v6 itemIDOfFirstMessageListItemMatchingPredicate:v11];

  if (!lastSelectedItemID)
  {
    v12 = 0;
    goto LABEL_11;
  }

LABEL_10:
  [(MessageListViewController *)self setShouldSelectInitialMessage:0];
  [(MessageListViewController *)self setDisableAutoSelectionOfInitialMessage:0];
  v12 = 1;
LABEL_11:
  lastAutoSelectedItemID = [(MessageListViewController *)self lastAutoSelectedItemID];
  v15 = [lastSelectedItemID isEqual:lastAutoSelectedItemID];

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
      selfCopy2 = self;
      v31 = 2112;
      v32 = lastSelectedItemID;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "<%@: %p> Autoselection cancelled for message %@", &v27, 0x20u);
    }

    v13 = 0;
    lastSelectedItemID = 0;
  }

  else
  {
    [(MessageListViewController *)self setLastAutoSelectedItemID:lastSelectedItemID];
    if (lastSelectedItemID)
    {
      v18 = +[MessageListViewController log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        lastAutoSelectedItemID2 = [(MessageListViewController *)self lastAutoSelectedItemID];
        v27 = 138413314;
        v28 = v20;
        v29 = 2048;
        selfCopy2 = self;
        v31 = 2112;
        v32 = v21;
        v33 = 2112;
        v34 = lastSelectedItemID;
        v35 = 2112;
        v36 = lastAutoSelectedItemID2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ - Select initial itemID:%@, lastAutoSelectedItemID:%@", &v27, 0x34u);
      }

      v13 = 1;
      [(MessageListViewController *)self _handleDidSelectItemID:lastSelectedItemID referenceItem:0 scrollToVisible:1 userInitiated:0 animated:0];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)setLastSelectedItemID:(id)d
{
  dCopy = d;
  if (([(EMCollectionItemID *)self->_lastSelectedItemID isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_lastSelectedItemID, d);
  }
}

- (BOOL)_shouldShowItemIDAsConversation:(id)conversation
{
  conversationCopy = conversation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v5) = 1;
  }

  else if ([(MessageListViewController *)self isThreaded])
  {
    dataSource = [(MessageListViewController *)self dataSource];
    v5 = [dataSource anyExpandedThreadContainsItemID:conversationCopy] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_draftOrOutboxMessageAtIndexPath:(id)path
{
  pathCopy = path;
  state = [(MessageListViewController *)self state];
  if ([state containsDraftsOrOutbox])
  {
  }

  else
  {
    isSearchViewController = [(MessageListViewController *)self isSearchViewController];

    if ((isSearchViewController & 1) == 0)
    {
      v15 = 0;
      goto LABEL_14;
    }
  }

  dataSource = [(MessageListViewController *)self dataSource];
  v8 = [dataSource messageListItemAtIndexPath:pathCopy];
  v9 = [v8 resultWithTimeout:0 error:0.3];
  displayMessage = [v9 displayMessage];
  v11 = [displayMessage resultWithTimeout:0 error:0.3];

  if (v11)
  {
    mailboxes = [v11 mailboxes];
    v13 = [mailboxes ef_any:&stru_100652580];

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
      selfCopy = self;
      v24 = 2114;
      v25 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "<%@: %p> Unable to restore message at index path: %{public}@", &v20, 0x20u);
    }

    v15 = 0;
  }

LABEL_14:

  return v15;
}

- (void)_restoreDraftOrOutboxItem:(id)item
{
  itemCopy = item;
  v5 = +[UIApplication sharedApplication];
  mailboxProvider = [v5 mailboxProvider];
  mailboxObjectIDs = [itemCopy mailboxObjectIDs];
  firstObject = [mailboxObjectIDs firstObject];
  v9 = [mailboxProvider legacyMailboxForObjectID:firstObject];
  v10 = [MFComposeMailMessage legacyMessageWithMessage:itemCopy mailboxUid:v9];

  state = [(MessageListViewController *)self state];
  LODWORD(mailboxProvider) = [state containsDraftsMailbox];

  if (mailboxProvider)
  {
    v12 = [[_MFMailCompositionContext alloc] initDraftRestoreOfMessage:itemCopy legacyMessage:v10];
  }

  else
  {
    v12 = [[_MFMailCompositionContext alloc] initOutboxRestoreOfMessage:itemCopy legacyMessage:v10];
  }

  v13 = v12;
  objc_initWeak(&location, self);
  scene = [(MessageListViewController *)self scene];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10017968C;
  v15[3] = &unk_10064C838;
  objc_copyWeak(&v16, &location);
  [scene showComposeWithContext:v13 animated:1 initialTitle:0 presentationSource:0 completionBlock:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (BOOL)_restoreDraftOrOutboxItemAtIndexPath:(id)path
{
  v4 = [(MessageListViewController *)self _draftOrOutboxMessageAtIndexPath:path];
  if (v4)
  {
    [(MessageListViewController *)self _restoreDraftOrOutboxItem:v4];
  }

  return v4 != 0;
}

- (id)messageDragDropHelper:(id)helper itemContextForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource messageListAtSectionIndex:{objc_msgSend(pathCopy, "section")}];
  v8 = [dataSource messageListItemAtIndexPath:pathCopy];
  result = [v8 result];

  v10 = [dataSource sectionAtIndex:{objc_msgSend(pathCopy, "section")}];
  v11 = [dataSource isMessagesSection:v10];

  if ((v11 & 1) != 0 && (-[MessageListViewController dataSource](self, "dataSource"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [pathCopy section], v14 = objc_msgSend(v12, "isSection:atIndex:", MessageListSectionMailCleanupTip, v13), v12, (v14 & 1) == 0))
  {
    v15 = [MessageListItemDragContext withItem:result messageList:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)dropMailboxesForMessageListDragDropHelper:(id)helper
{
  if ([(MessageListViewController *)self isSearchViewController])
  {
    mailboxes = 0;
  }

  else
  {
    mailboxes = [(MessageListViewController *)self mailboxes];
  }

  return mailboxes;
}

- (id)undoManagerForMessageListDragDropHelper:(id)helper
{
  undoManager = [(MessageListViewController *)self undoManager];

  return undoManager;
}

- (BOOL)canMoveDragItem:(id)item toBucket:(int64_t)bucket
{
  localObject = [item localObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    messageListItemSelection = [localObject messageListItemSelection];
    messageListItems = [messageListItemSelection messageListItems];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100179A98;
    v10[3] = &unk_1006525A0;
    v10[4] = bucket;
    v8 = [messageListItems ef_any:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)changeCategoryOfDragItem:(id)item toBucket:(int64_t)bucket completion:(id)completion
{
  completionCopy = completion;
  localObject = [item localObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [localObject messageListItemSelection];
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
          senderList = [v9 senderList];
          firstObject = [senderList firstObject];
          emailAddressValue = [firstObject emailAddressValue];
          simpleAddress = [emailAddressValue simpleAddress];

          senderList2 = [v9 senderList];
          firstObject2 = [senderList2 firstObject];
          emailAddressValue2 = [firstObject2 emailAddressValue];
          em_displayableString = [emailAddressValue2 em_displayableString];

          v18 = +[UIApplication sharedApplication];
          avatarGenerator = [v18 avatarGenerator];
          LOBYTE(v22) = 0;
          LOBYTE(v21) = [v9 isAuthenticated];
          v20 = [MFCategorizationTriageInteraction interactionWithMessageListItemSelection:v25 sender:simpleAddress groupedSenderDisplayName:em_displayableString origin:2 actor:2 bucket:bucket avatarGenerator:avatarGenerator isAuthenticated:v21 changeOptions:2 * (bucket == 0) showMenuWithOptions:v22];

          [v20 setDelegate:self];
          [v20 setShouldAskForConfirmation:1];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100179EDC;
          v29[3] = &unk_1006525C8;
          v30 = completionCopy;
          [v20 performInteractionWithCompletion:v29];
        }

        v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v6);
    }
  }
}

- (void)willBeginDragForMessageListDragDropHelper:(id)helper
{
  scene = [(MessageListViewController *)self scene];
  splitViewController = [scene splitViewController];
  parentViewController = [(MessageListViewController *)self parentViewController];
  [splitViewController setFocusedViewController:parentViewController];

  [(MessageListViewController *)self setEditing:0 animated:1];

  [(MessageListViewController *)self _cancelOrCleanupStateRestoration];
}

- (double)dragItemCornerRadius:(id)radius
{
  layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
  defaultLayoutValues = [layoutValuesHelper defaultLayoutValues];
  [defaultLayoutValues backgroundCornerRadius];
  v6 = v5;

  return v6;
}

- (void)beginSearchWithQueryString:(id)string scope:(id)scope
{
  stringCopy = string;
  scopeCopy = scope;
  [(MessageListViewController *)self focusSearchBarAnimated:0];
  messageListSearchViewController = [(MessageListViewController *)self messageListSearchViewController];
  [messageListSearchViewController beginSearchWithQueryString:stringCopy scope:scopeCopy];
}

- (void)beginSearchWithSuggestion:(id)suggestion scope:(id)scope
{
  suggestionCopy = suggestion;
  scopeCopy = scope;
  [(MessageListViewController *)self focusSearchBarAnimated:1];
  messageListSearchViewController = [(MessageListViewController *)self messageListSearchViewController];
  [messageListSearchViewController beginSearchWithSuggestion:suggestionCopy scope:scopeCopy];
}

- (id)inputLanguages
{
  v3 = objc_alloc_init(NSMutableOrderedSet);
  searchBar = [(MessageListViewController *)self searchBar];
  textInputMode = [searchBar textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];

  if (primaryLanguage || (+[NSLocale preferredLanguages](NSLocale, "preferredLanguages"), v7 = objc_claimAutoreleasedReturnValue(), [v7 firstObject], primaryLanguage = objc_claimAutoreleasedReturnValue(), v7, primaryLanguage) || (+[NSBundle mainBundle](NSBundle, "mainBundle"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "preferredLocalizations"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), primaryLanguage = objc_claimAutoreleasedReturnValue(), v9, v8, primaryLanguage))
  {
    [v3 addObject:primaryLanguage];
  }

  v10 = +[UITextInputMode activeInputModes];
  v11 = [v10 ef_map:&stru_100652608];
  [v3 addObjectsFromArray:v11];

  array = [v3 array];

  return array;
}

- (void)presentSearchController:(id)controller
{
  controllerCopy = controller;
  delegate = [controllerCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate willPresentSearchController:controllerCopy];
  }

  [(MessageListViewController *)self _updatePaletteWithForce:0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10017A640;
  v16[3] = &unk_10064C6B0;
  v16[4] = self;
  v6 = delegate;
  v17 = v6;
  v7 = controllerCopy;
  v18 = v7;
  [(MessageListViewController *)self presentViewController:v7 animated:1 completion:v16];
  if ([v7 modalPresentationStyle] == 7)
  {
    popoverPresentationController = [v7 popoverPresentationController];
    searchBar = [v7 searchBar];
    [popoverPresentationController setSourceView:searchBar];

    searchBar2 = [v7 searchBar];
    [searchBar2 bounds];
    [popoverPresentationController setSourceRect:?];

    [popoverPresentationController setPermittedArrowDirections:15];
    searchBar3 = [v7 searchBar];
    v19 = searchBar3;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    [popoverPresentationController setPassthroughViews:v12];
  }

  scene = [(MessageListViewController *)self scene];
  splitViewController = [scene splitViewController];
  parentViewController = [(MessageListViewController *)self parentViewController];
  [splitViewController setFocusedViewController:parentViewController];
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  if ([(MessageListViewController *)self _inMultiSelectionMode])
  {
    sub_10017A800(self, 0);
  }

  messageListSearchViewController = [(MessageListViewController *)self messageListSearchViewController];
  mailboxes = [(MessageListViewController *)self mailboxes];
  [messageListSearchViewController setMailboxes:mailboxes];

  [messageListSearchViewController willPresentSearchController:controllerCopy];
  if ([messageListSearchViewController shouldShowMenuSuggestions])
  {
    [controllerCopy setAutomaticallyShowsSearchResultsController:0];
  }

  conversationViewController = [(MessageListViewController *)self conversationViewController];
  referenceMessageListItem = [conversationViewController referenceMessageListItem];
  itemID = [referenceMessageListItem itemID];

  if (itemID)
  {
    [messageListSearchViewController setLastSelectedItemID:itemID];
  }

  sub_10017AA50(self);
}

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  conversationViewController = [(MessageListViewController *)self conversationViewController];
  [conversationViewController setDelegate:self];

  messageListSearchViewController = [(MessageListViewController *)self messageListSearchViewController];
  [messageListSearchViewController willDismissSearchController:controllerCopy];

  [(MessageListViewController *)self _updatePaletteWithForce:0];
  searchBar = [(MessageListViewController *)self searchBar];
  [searchBar setRepresentedObjects:0];

  if (([(UIRefreshControl *)self->_refreshControl isHidden]& 1) == 0 && ![(UIRefreshControl *)self->_refreshControl isRefreshing])
  {
    [(UIRefreshControl *)self->_refreshControl beginRefreshing];
    [(UIRefreshControl *)self->_refreshControl endRefreshing];
    collectionView = [(MessageListViewController *)self collectionView];
    [collectionView setContentOffset:{CGPointZero.x, CGPointZero.y}];

    v9 = +[MessageListViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      NSStringFromClass(v10);
      objc_claimAutoreleasedReturnValue();
      sub_10048A38C();
    }
  }

  conversationViewController2 = [(MessageListViewController *)self conversationViewController];
  referenceMessageListItem = [conversationViewController2 referenceMessageListItem];
  itemID = [referenceMessageListItem itemID];

  lastSelectedItemID = [(MessageListViewController *)self lastSelectedItemID];
  LOBYTE(referenceMessageListItem) = [itemID isEqual:lastSelectedItemID];

  if ((referenceMessageListItem & 1) == 0)
  {
    [(MessageListViewController *)self deselectSelectedItemsInCollectionView];
    [(MessageListViewController *)self _updateSelectionModelDidSelectItemID:itemID];
  }

  [(MessageListViewController *)self changeTipShouldDisplayTo:1];
  sub_10017AD64(self);
}

- (void)didDismissSearchController:(id)controller
{
  controllerCopy = controller;
  dataSource = [(MessageListViewController *)self dataSource];
  [dataSource removeMessageListSection:MessageListSectionIndexedSearch animated:0];

  messageListSearchViewController = [(MessageListViewController *)self messageListSearchViewController];
  [messageListSearchViewController didDismissSearchController:controllerCopy];

  [(MessageListViewController *)self updateBarButtons];
  [(MessageListViewController *)self _updateTitle];
}

- (void)_dismissSearchResults
{
  searchController = [(MessageListViewController *)self searchController];
  searchBar = [searchController searchBar];
  [searchBar setRepresentedObjects:0];
  [searchController setActive:0];
  [searchBar resignFirstResponder];
}

- (void)dismissSearchResultsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:animatedCopy];
  [(MessageListViewController *)self _dismissSearchResults];

  [UIView setAnimationsEnabled:v5];
}

- (void)focusSearchBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  searchBar = [(MessageListViewController *)self searchBar];
  if (searchBar)
  {
    collectionView = [(MessageListViewController *)self collectionView];
    [searchBar bounds];
    [collectionView convertRect:searchBar fromView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [collectionView mui_safeVisibleBounds];
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

    if (animatedCopy)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0.0;
    }

    if (!v19)
    {
      [collectionView scrollRectToVisible:animatedCopy animated:{x, y, width, height}];
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
    navigationController = [(MessageListViewController *)self navigationController];
    toolbar = [navigationController toolbar];
    [toolbar bounds];
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
    filterPickerControl = [(MessageListViewController *)self filterPickerControl];
    v5 = [v3 initWithCustomView:filterPickerControl];
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

  filterPickerControl = [(MessageListViewController *)self filterPickerControl];
  filterDescription = [filterPickerControl filterDescription];

  if ([filterDescription length])
  {
    [v7 appendString:@"\n"];
    [v7 appendString:filterDescription];
  }

  if ([v7 length])
  {
    [(UIBarButtonItem *)self->_filterPickerButtonItem setTitle:v7];
  }
}

- (void)_updateBarButtonsWithForce:(BOOL)force
{
  forceCopy = force;
  [(MessageListViewController *)self _updateToolbarButtons];

  [(MessageListViewController *)self _updateNavigationBarButtonsWithForce:forceCopy];
}

- (id)_categoryGroupingPreferenceMenuForBucket:(int64_t)bucket
{
  categoryGroupingPreferenceController = [(MessageListViewController *)self categoryGroupingPreferenceController];
  v6 = [categoryGroupingPreferenceController shouldDisableGroupingForBucket:bucket];

  objc_initWeak(&location, self);
  v7 = _EFLocalizedString();
  v8 = [UIImage systemImageNamed:MFImageGlyphCategoryGroupingPreference];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10017C01C;
  v14 = &unk_100652630;
  objc_copyWeak(v15, &location);
  v16 = v6;
  v15[1] = bucket;
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
  bucketBarConfigurationController = [(MessageListViewController *)self bucketBarConfigurationController];
  mailboxes = [(MessageListViewController *)self mailboxes];
  [bucketBarConfigurationController setBucketBarHidden:1 forMailboxes:mailboxes];

  if ([(MessageListViewController *)self _isIniCloudContext])
  {
    iCloudMailCleanupService = [(MessageListViewController *)self iCloudMailCleanupService];
    [iCloudMailCleanupService updatePrimaryAccountCategoriesHidden:1];
  }
}

- (id)iCloudMailCleanupService
{
  v2 = +[UIApplication sharedApplication];
  getiCloudMailCleanupService = [v2 getiCloudMailCleanupService];

  return getiCloudMailCleanupService;
}

- (BOOL)_isIniCloudContext
{
  mailboxes = [(MessageListViewController *)self mailboxes];
  v4 = [mailboxes count];

  if (v4 != 1)
  {
    return 0;
  }

  mailboxes2 = [(MessageListViewController *)self mailboxes];
  firstObject = [mailboxes2 firstObject];

  account = [firstObject account];
  if ([account isPrimaryiCloudAccount])
  {
    isInboxMailbox = [firstObject isInboxMailbox];
  }

  else
  {
    isInboxMailbox = 0;
  }

  return isInboxMailbox;
}

- (UIViewController)iCloudMailCleanupOnboardingViewController
{
  iCloudMailCleanupOnboardingViewController = self->_iCloudMailCleanupOnboardingViewController;
  if (!iCloudMailCleanupOnboardingViewController)
  {
    iCloudMailCleanupService = [(MessageListViewController *)self iCloudMailCleanupService];
    getConsentViewController = [iCloudMailCleanupService getConsentViewController];
    v6 = self->_iCloudMailCleanupOnboardingViewController;
    self->_iCloudMailCleanupOnboardingViewController = getConsentViewController;

    iCloudMailCleanupOnboardingViewController = self->_iCloudMailCleanupOnboardingViewController;
  }

  return iCloudMailCleanupOnboardingViewController;
}

- (void)_clearNavigationBarButtonItemMenu
{
  if (MUISolariumFeatureEnabled())
  {
    navigationItem = [(MessageListViewController *)self navigationItem];
    [navigationItem setAdditionalOverflowItems:0];

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

- (void)_updateNavigationBarButtonsWithForce:(BOOL)force animated:(BOOL)animated
{
  forceCopy = force;
  animatedCopy = animated;
  if (pthread_main_np() != 1)
  {
    v47 = +[NSAssertionHandler currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"MessageListViewController.m" lineNumber:3174 description:@"Current thread must be main"];
  }

  if ([(MessageListViewController *)self _shouldProcessButtonUpdates])
  {
    isEditing = [(MessageListViewController *)self isEditing];
    v57 = [_TtC10MobileMail49MessageListBarButtonItemConfigurationManagerState alloc];
    if ([(MessageListViewController *)self isSearchViewController])
    {
      isPresentingSearchViewController = 1;
    }

    else
    {
      isPresentingSearchViewController = [(MessageListViewController *)self isPresentingSearchViewController];
    }

    state = [(MessageListViewController *)self state];
    containsInbox = [state containsInbox];
    isFilterButtonEnabled = [(MessageListViewController *)self isFilterButtonEnabled];
    mailboxes = [(MessageListViewController *)self mailboxes];
    v53 = [EMMailbox supportsSelectAllForMailboxes:mailboxes];
    isBucketBarHidden = [(MessageListViewController *)self isBucketBarHidden];
    selectedBucket = [(MessageListViewController *)self selectedBucket];
    shouldDisplayGroupedSenders = [(MessageListViewController *)self shouldDisplayGroupedSenders];
    if (EMBlackPearlIsFeatureEnabled() & 1) != 0 || _os_feature_enabled_impl() && (EMIsGreymatterAvailable())
    {
      v49 = 1;
    }

    else
    {
      v49 = MUISolariumFeatureEnabled();
    }

    v58 = +[EFDevice currentDevice];
    isPad = [v58 isPad];
    splitViewController = [(MessageListViewController *)self splitViewController];
    traitCollection = [splitViewController traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];
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
    connectedScenes = [v13 connectedScenes];
    HIBYTE(v48) = v12;
    BYTE6(v48) = IsFeatureEnabled;
    BYTE5(v48) = v10;
    BYTE4(v48) = horizontalSizeClass == 1;
    BYTE3(v48) = isPad;
    BYTE2(v48) = v49;
    BYTE1(v48) = shouldDisplayGroupedSenders;
    LOBYTE(v48) = selectedBucket == 5;
    v15 = -[MessageListBarButtonItemConfigurationManagerState initWithIsEditing:isSearching:isInbox:isFiltered:mailboxSupportsSelectAll:isBucketBarHidden:isAllMailSelected:isGroupedBySender:prefersNewSelectButton:isPad:isCompactSizeClass:isSolariumEnabled:isBlackPearlEnabled:isCatchUpAvailable:connectedScenes:](v57, "initWithIsEditing:isSearching:isInbox:isFiltered:mailboxSupportsSelectAll:isBucketBarHidden:isAllMailSelected:isGroupedBySender:prefersNewSelectButton:isPad:isCompactSizeClass:isSolariumEnabled:isBlackPearlEnabled:isCatchUpAvailable:connectedScenes:", isEditing, isPresentingSearchViewController, containsInbox, isFilterButtonEnabled, v53, isBucketBarHidden, v48, [connectedScenes count]);

    barButtonItemConfigurationManager = [(MessageListViewController *)self barButtonItemConfigurationManager];
    v17 = v15;
    v18 = [barButtonItemConfigurationManager navigationBarConfigurationForState:v15];

    navigationItem = [(MessageListViewController *)self navigationItem];
    barButtonItemConfiguration = [(MessageListViewController *)self barButtonItemConfiguration];

    if (barButtonItemConfiguration == v18 && !forceCopy)
    {
LABEL_51:
      isBackVisible = [v18 isBackVisible];
      if ((isBackVisible & 1) == 0)
      {
        [navigationItem setBackButtonDisplayMode:0];
        [navigationItem setBackButtonTitle:0];
        [navigationItem setBackBarButtonItem:0];
      }

      [navigationItem setHidesBackButton:isBackVisible ^ 1];
      shouldEnableEditButton = [(MessageListViewController *)self shouldEnableEditButton];
      selectMessageListViewButtonItem = [(MessageListViewController *)self selectMessageListViewButtonItem];
      [selectMessageListViewButtonItem setEnabled:shouldEnableEditButton];

      currentEditButtonItem = [(MessageListViewController *)self currentEditButtonItem];
      [currentEditButtonItem setEnabled:shouldEnableEditButton];

      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10017CD64;
      v64[3] = &unk_10064C7E8;
      v64[4] = self;
      [UIView performWithoutAnimation:v64];
      _bottomPalette = [navigationItem _bottomPalette];
      [_bottomPalette setUserInteractionEnabled:isEditing ^ 1];

      if (isEditing)
      {
        v42 = 0.5;
      }

      else
      {
        v42 = 1.0;
      }

      _bottomPalette2 = [navigationItem _bottomPalette];
      contentView = [_bottomPalette2 contentView];
      [contentView setAlpha:v42];

      if (EMBlackPearlIsFeatureEnabled())
      {
        [(MessageListViewController *)self _bucketBarUserInteractionEnabled:isEditing ^ 1];
      }

      scene = [(MessageListViewController *)self scene];
      splitViewController2 = [scene splitViewController];
      [splitViewController2 _setForceDisplayModeBarButtonHidden:isEditing];

      return;
    }

    [(MessageListViewController *)self setBarButtonItemConfiguration:v18];
    if ([v18 isSelectAllVisible])
    {
      messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
      if ([messageListSelectionModel isSelectAll])
      {
        messageListSelectionModel2 = [(MessageListViewController *)self messageListSelectionModel];
        if ([messageListSelectionModel2 isSelectAll])
        {
          messageListSelectionModel3 = [(MessageListViewController *)self messageListSelectionModel];
          itemIDs = [messageListSelectionModel3 itemIDs];
          v25 = [itemIDs count] == 0;
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

      selectAllButtonItem = [(MessageListViewController *)self selectAllButtonItem];
      [UIBarButtonItem mf_configureSelectionBarButtonItem:selectAllButtonItem usingStyle:v25];

      selectAllButtonItem2 = [(MessageListViewController *)self selectAllButtonItem];
      [navigationItem setLeftBarButtonItem:selectAllButtonItem2 animated:animatedCopy];
    }

    else
    {
      [navigationItem setLeftBarButtonItem:0 animated:animatedCopy];
    }

    v28 = +[NSMutableArray array];
    if ([v18 isConfigureVisible])
    {
      if (MUISolariumFeatureEnabled())
      {
        _deferredMenuForConfigureButtonItem = [(MessageListViewController *)self _deferredMenuForConfigureButtonItem];
        goto LABEL_31;
      }

      configureButtonItem = [(MessageListViewController *)self configureButtonItem];
      [v28 addObject:configureButtonItem];
    }

    _deferredMenuForConfigureButtonItem = 0;
LABEL_31:
    if ([v18 isFilterVisible])
    {
      filterButtonItem = [(MessageListViewController *)self filterButtonItem];
      [v28 addObject:filterButtonItem];
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
      currentEditButtonItem2 = ;
      [v28 addObject:currentEditButtonItem2];
    }

    else
    {
      if (([v18 isEditVisible] & 1) == 0 && !objc_msgSend(v18, "isCancelVisible"))
      {
        goto LABEL_46;
      }

      currentEditButtonItem2 = [(MessageListViewController *)self currentEditButtonItem];
      if (isEditing)
      {
        v34 = 2;
      }

      else
      {
        v34 = 0;
      }

      [UIBarButtonItem mf_configureMultiBarButtonItem:currentEditButtonItem2 usingStyle:v34];
      [v28 addObject:currentEditButtonItem2];
    }

LABEL_46:
    if ([v18 isShelfVisible])
    {
      v35 = +[UIBarButtonItem mf_newFixedSpaceItem];
      [v28 addObject:v35];

      shelfButtonItem = [(MessageListViewController *)self shelfButtonItem];
      [v28 addObject:shelfButtonItem];
    }

    [navigationItem setRightBarButtonItems:v28 animated:animatedCopy];
    if (MUISolariumFeatureEnabled())
    {
      [navigationItem setAdditionalOverflowItems:_deferredMenuForConfigureButtonItem];
    }

    goto LABEL_51;
  }
}

- (BOOL)shouldEnableEditButton
{
  dataSource = [(MessageListViewController *)self dataSource];
  v3 = [dataSource numberOfItemsInMessagesSections] > 0;

  return v3;
}

- (void)_updateNoContentViewAnimated:(BOOL)animated suppressNoContentView:(BOOL)view
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017D6A4;
  v5[3] = &unk_100652748;
  v5[4] = self;
  v5[5] = a2;
  animatedCopy = animated;
  viewCopy = view;
  v4 = +[EFScheduler mainThreadScheduler];
  [v4 performBlock:v5];
}

- (void)_setContentUnavailableTitle:(id)title animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  v34.receiver = self;
  v34.super_class = MessageListViewController;
  _shouldDisplayOnboardingTip = [(MessageListViewController *)&v34 _shouldDisplayOnboardingTip];
  if (!(([titleCopy length] == 0) | _shouldDisplayOnboardingTip & 1))
  {
    noContentView = [(MessageListViewController *)self noContentView];
    if (noContentView)
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
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%@: %p> Make no content view visible", buf, 0x16u);
    }

    v20 = +[UIContentUnavailableConfiguration emptyConfiguration];
    [v20 setText:titleCopy];
    v21 = +[UIColor mailMessageListBackgroundColor];
    background = [v20 background];
    [background setBackgroundColor:v21];

    noContentView = [[UIContentUnavailableView alloc] initWithConfiguration:v20];
    [(MessageListViewController *)self setNoContentView:noContentView];
    [noContentView setUserInteractionEnabled:0];
    v23 = 1.0;
    if (animatedCopy)
    {
      v23 = 0.0;
    }

    [noContentView setAlpha:v23];
    collectionView = [(MessageListViewController *)self collectionView];
    [collectionView setBackgroundView:noContentView];

    if (animatedCopy)
    {
      objc_initWeak(buf, self);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10017DF78;
      v31[3] = &unk_100652770;
      noContentView = noContentView;
      v32 = noContentView;
      objc_copyWeak(&v33, buf);
      [UIView animateWithDuration:v31 animations:0.25];
      objc_destroyWeak(&v33);

      objc_destroyWeak(buf);
    }

    else
    {
      conversationViewController = [(MessageListViewController *)self conversationViewController];
      [conversationViewController setNeedsUpdateContentUnavailableConfiguration];
    }

LABEL_17:

    goto LABEL_18;
  }

  noContentView2 = [(MessageListViewController *)self noContentView];

  if (noContentView2)
  {
    v9 = +[MessageListViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v36 = v11;
      v37 = 2048;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<%@: %p> Hide no content view", buf, 0x16u);
    }

    noContentView3 = [(MessageListViewController *)self noContentView];
    [(MessageListViewController *)self setNoContentView:0];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10017E004;
    v29[3] = &unk_10064C7E8;
    v13 = noContentView3;
    v30 = v13;
    v14 = objc_retainBlock(v29);
    objc_initWeak(buf, self);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10017E010;
    v26[3] = &unk_100652798;
    noContentView = v13;
    v27 = noContentView;
    objc_copyWeak(&v28, buf);
    v16 = objc_retainBlock(v26);
    if (animatedCopy)
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
    mailStatusViewController = [(MessageListViewController *)self mailStatusViewController];
    [mailStatusViewController updatePrimaryStatusPrefix:0 secondaryStatusPrefix:0];
  }

  else
  {
    mailStatusViewController = [(MessageListViewController *)self mailStatusViewController];
    selectedBucket = [(MessageListViewController *)self selectedBucket];
    if (selectedBucket)
    {
      [(MessageListViewController *)self selectedBucket];
      v4 = MUILocalizedStringFromBucket();
    }

    else
    {
      v4 = 0;
    }

    mailboxes = [(MessageListViewController *)self mailboxes];
    firstObject = [mailboxes firstObject];
    account = [firstObject account];
    name = [account name];
    [mailStatusViewController updatePrimaryStatusPrefix:v4 secondaryStatusPrefix:name];

    if (selectedBucket)
    {
    }
  }
}

- (BOOL)shouldShowNavigationBarSubtitle
{
  shouldUseCustomNavigationBarTitleView = [(MessageListViewController *)self shouldUseCustomNavigationBarTitleView];
  if (shouldUseCustomNavigationBarTitleView)
  {
    collectionView = [(MessageListViewController *)self collectionView];
    [collectionView contentOffset];
    v6 = v5;

    [(MessageListViewController *)self bucketsViewControllerHeight];
    LOBYTE(shouldUseCustomNavigationBarTitleView) = v6 + v7 > kMUIMessageListBucketBarVerticalPadding;
  }

  return shouldUseCustomNavigationBarTitleView;
}

- (MUIMessageListNavigationBarTitleView)navigationBarTitleView
{
  navigationBarTitleView = self->_navigationBarTitleView;
  if (!navigationBarTitleView)
  {
    splitViewController = [(MessageListViewController *)self splitViewController];
    messageListNavController = [splitViewController messageListNavController];
    navigationBar = [messageListNavController navigationBar];

    viewControllers = [splitViewController viewControllers];
    v8 = [viewControllers count];

    if (v8 == 1)
    {
      viewControllers2 = [splitViewController viewControllers];
      firstObject = [viewControllers2 firstObject];

      navigationBar2 = [firstObject navigationBar];

      navigationBar = navigationBar2;
    }

    v12 = [[MUIMessageListNavigationBarTitleView alloc] initWithNavigationBar:navigationBar];
    v13 = self->_navigationBarTitleView;
    self->_navigationBarTitleView = v12;

    navigationBarTitleView = self->_navigationBarTitleView;
  }

  return navigationBarTitleView;
}

- (void)_updateBackButtonImageWithCount:(unint64_t)count
{
  navigationItem = [(MessageListViewController *)self navigationItem];
  if ([(MessageListViewController *)self isSearchViewController]|| [(MessageListViewController *)self isPresentingSearchViewController])
  {
    [navigationItem setBackButtonTitle:0];
    [navigationItem setBackBarButtonItem:0];
    [navigationItem setHidesBackButton:1];
    goto LABEL_25;
  }

  state = [(MessageListViewController *)self state];
  v6 = state;
  if (count - 1 > 0x3E6)
  {
    v8 = 0;
  }

  else
  {
    if ([state containsDraftsMailbox])
    {
      containsOutbox = 1;
    }

    else
    {
      containsOutbox = [v6 containsOutbox];
    }

    v8 = containsOutbox ^ 1;
  }

  title = [(MessageListViewController *)self title];
  if (([(MessageListViewController *)self isBucketBarHidden]& 1) != 0)
  {
LABEL_11:
    v10 = 0;
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_21:
    backBarButtonItem = [navigationItem backBarButtonItem];

    if (!backBarButtonItem)
    {
      if (v10)
      {
        goto LABEL_29;
      }

      [navigationItem setBackButtonTitle:0];
      [navigationItem setBackBarButtonItem:0];
      goto LABEL_24;
    }

    [navigationItem setBackBarButtonItem:0];
    conversationViewController = [(MessageListViewController *)self conversationViewController];
    [conversationViewController _setNavigationBarTitleViewNeedsLayout];
LABEL_23:

    goto LABEL_24;
  }

  senderSpecificMessageListItem = [(MessageListViewController *)self senderSpecificMessageListItem];
  if (senderSpecificMessageListItem)
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
    senderSpecificMessageListItem = title;
    title = v17;
  }

  if (!v8)
  {
    goto LABEL_21;
  }

LABEL_12:
  if ([(MessageListViewController *)self currentUnreadCount]!= count)
  {
    [(MessageListViewController *)self setCurrentUnreadCount:count];
    v12 = [NSNumberFormatter ef_formatUnsignedInteger:count withGrouping:1];
    v13 = MUISolariumFeatureEnabled();
    conversationViewController = sub_10022EFA4(v12, v13);
    v15 = [[UIBarButtonItem alloc] initWithImage:conversationViewController style:0 target:0 action:0];
    [v15 setTitle:title];
    v16 = sub_10022F2FC(v12);
    [v15 setLargeContentSizeImage:v16];

    [navigationItem setBackBarButtonItem:v15];
    goto LABEL_23;
  }

  if (v10)
  {
LABEL_29:
    [navigationItem setBackButtonTitle:title];
    if (MUISolariumFeatureEnabled())
    {
      [navigationItem setBackButtonDisplayMode:2];
    }
  }

LABEL_24:

LABEL_25:
}

- (void)_filterCommand:(id)command
{
  commandCopy = command;
  if (([(MessageListViewController *)self isEditing]& 1) == 0)
  {
    [(MessageListViewController *)self filterButtonPressed:commandCopy];
  }
}

- (void)setFilterButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  filterButtonItem = [(MessageListViewController *)self filterButtonItem];
  [filterButtonItem setFilterEnabled:enabledCopy];
}

- (BOOL)isFilterButtonAvailable
{
  filterViewModel = [(MessageListViewController *)self filterViewModel];
  isFilterAvailable = [filterViewModel isFilterAvailable];

  return isFilterAvailable;
}

- (void)setFiltersEnabled:(BOOL)enabled
{
  v7.receiver = self;
  v7.super_class = MessageListViewController;
  [(MessageListViewController *)&v7 setFiltersEnabled:enabled];
  if (self && MUISolariumFeatureEnabled() && +[UIDevice mf_isPadIdiom])
  {
    filterController = [(MessageListViewController *)self filterController];
    viewModel = [filterController viewModel];
    [(MessageListViewController *)self updateFilterControlWithFilterViewModel:viewModel];
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
  filterCriteriaButtonItem = [(MessageListViewController *)self filterCriteriaButtonItem];
  [(MessageListViewController *)self filterPickerButtonPressedWithSourceItem:?];
}

- (void)filterPickerButtonPressedWithSourceItem:(id)item
{
  itemCopy = item;
  v4 = [MFMailboxFilterPickerViewModel alloc];
  filterViewModel = [(MessageListViewController *)self filterViewModel];
  v6 = [(MFMailboxFilterPickerViewModel *)v4 initWithFilterViewModel:filterViewModel delegate:self];

  v7 = [[MFMailboxFilterPickerViewController alloc] initWithViewModel:v6 delegate:self];
  v8 = [[UINavigationController alloc] initWithRootViewController:v7];
  [v8 setModalPresentationStyle:7];
  popoverPresentationController = [v8 popoverPresentationController];
  [popoverPresentationController setDelegate:self];
  if (MUISolariumFeatureEnabled() && (*(EFIsNotNull + 16))(EFIsNotNull, itemCopy))
  {
    [popoverPresentationController setSourceItem:itemCopy];
  }

  else
  {
    filterPickerButtonItem = [(MessageListViewController *)self filterPickerButtonItem];
    [popoverPresentationController setBarButtonItem:filterPickerButtonItem];
  }

  [(MessageListViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)applyFilterPredicate:(id)predicate
{
  predicateCopy = predicate;
  v7.receiver = self;
  v7.super_class = MessageListViewController;
  [(MessageListViewController *)&v7 applyFilterPredicate:predicateCopy];
  mailboxes = [(MessageListViewController *)self mailboxes];
  v6 = sub_10016FE78(self, predicateCopy);
  sub_10016FFF0(self, mailboxes, v6);
}

- (void)updateFilterControlWithFilterViewModel:(id)model
{
  modelCopy = model;
  if (!MUISolariumFeatureEnabled())
  {
    filterPickerControl = [(MessageListViewController *)self filterPickerControl];
    isFilterEnabled = [modelCopy isFilterEnabled];
    v6 = isFilterEnabled;
    if (!isFilterEnabled)
    {
      selectedFiltersDescription = 0;
      goto LABEL_12;
    }

LABEL_8:
    selectedFiltersDescription = [modelCopy selectedFiltersDescription];
LABEL_12:
    [filterPickerControl setFilterDescription:selectedFiltersDescription];
    goto LABEL_16;
  }

  if (!self || !MUISolariumFeatureEnabled() || !+[UIDevice mf_isPadIdiom])
  {
    filterPickerControl = [(MessageListViewController *)self filterCriteriaButtonItem];
    isFilterEnabled2 = [modelCopy isFilterEnabled];
    v6 = isFilterEnabled2;
    if (!isFilterEnabled2)
    {
      selectedFiltersDescription = 0;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  filterPickerControl = [(MessageListViewController *)self mailStatusViewController];
  isFilterEnabled3 = [modelCopy isFilterEnabled];
  v6 = isFilterEnabled3;
  if (isFilterEnabled3)
  {
    selectedFiltersDescription = [modelCopy selectedFiltersDescription];
  }

  else
  {
    selectedFiltersDescription = 0;
  }

  [filterPickerControl updateStatusWithFilterCriteria:selectedFiltersDescription];
LABEL_16:
  if (v6)
  {
  }
}

- (void)_testing_enableMessageListFilter
{
  filterButtonItem = [(MessageListViewController *)self filterButtonItem];
  [(MessageListViewController *)self filterButtonPressed:filterButtonItem];

  messageListItems = [(MessageListViewController *)self messageListItems];
  v5 = [messageListItems count];

  v6 = +[MessageListViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412802;
    v10 = v8;
    v11 = 2048;
    selfCopy = self;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> Enabling mailbox filter: preChangeCount=%lu", &v9, 0x20u);
  }
}

- (void)_testing_disableMessageListFilter
{
  filterButtonItem = [(MessageListViewController *)self filterButtonItem];
  [(MessageListViewController *)self filterButtonPressed:filterButtonItem];

  messageListItems = [(MessageListViewController *)self messageListItems];
  v5 = [messageListItems count];

  v6 = +[MessageListViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412802;
    v10 = v8;
    v11 = 2048;
    selfCopy = self;
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

- (void)_shelfButtonTapped:(id)tapped
{
  scene = [(MessageListViewController *)self scene];
  _sceneIdentifier = [scene _sceneIdentifier];
  [MFBayAdoption requestShelfPresentationForSceneWithIdentifier:_sceneIdentifier];
}

- (void)deselectSelectedItemsInCollectionView
{
  v3.receiver = self;
  v3.super_class = MessageListViewController;
  [(MessageListViewController *)&v3 deselectSelectedItemsInCollectionView];
  [(MessageListViewController *)self _exitMultiSelectionForce:1];
}

- (void)_setEditing:(BOOL)editing animated:(BOOL)animated preserveSelection:(BOOL)selection
{
  selectionCopy = selection;
  animatedCopy = animated;
  editingCopy = editing;
  isEditing = [(MessageListViewController *)self isEditing];
  if (isEditing != editingCopy)
  {
    v10 = isEditing;
    v37.receiver = self;
    v37.super_class = MessageListViewController;
    [(MessageListViewController *)&v37 setEditing:editingCopy animated:animatedCopy];
    state = [(MessageListViewController *)self state];
    [state setIsEditing:editingCopy];

    mailboxPickerDelegate = [(MessageListViewController *)self mailboxPickerDelegate];
    [mailboxPickerDelegate messageListViewController:self setEditing:editingCopy animated:animatedCopy];

    previousMessageListSelectionModel = [(MessageListViewController *)self previousMessageListSelectionModel];
    _inMultiSelectionMode = [(MessageListViewController *)self _inMultiSelectionMode];
    v15 = _inMultiSelectionMode;
    if (previousMessageListSelectionModel)
    {
      v16 = 0;
    }

    else
    {
      v16 = editingCopy;
    }

    if ((v16 & _inMultiSelectionMode) == 1)
    {
      previousMessageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
    }

    if (v15)
    {
      shouldRestoreSelection = 1;
    }

    else
    {
      shouldRestoreSelection = [previousMessageListSelectionModel shouldRestoreSelection];
    }

    v18 = +[MessageListViewController log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138544642;
      v39 = v20;
      v40 = 2048;
      selfCopy = self;
      v42 = 1024;
      v43 = editingCopy;
      v44 = 1024;
      v45 = v15;
      v46 = 1024;
      v47 = shouldRestoreSelection;
      v48 = 2114;
      v49 = previousMessageListSelectionModel;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> setEditing: %{BOOL}d, inMultiSelection: %{BOOL}d, shouldRestoreSelection: %{BOOL}d, previousSelectionModel: %{public}@", buf, 0x32u);
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10017F7C4;
    v31[3] = &unk_1006528D0;
    v31[4] = self;
    v33 = editingCopy;
    v34 = animatedCopy;
    v35 = v10;
    v36 = shouldRestoreSelection;
    v21 = previousMessageListSelectionModel;
    v32 = v21;
    v22 = objc_retainBlock(v31);
    if (editingCopy)
    {
      v23 = v21;
      if ((shouldRestoreSelection & 1) == 0)
      {
        v23 = [[MessageListSelectionModel alloc] initWithDataSource:self delegate:self];
      }

      [(MessageListViewController *)self setMessageListSelectionModel:v23];
      if ((shouldRestoreSelection & 1) == 0)
      {
      }

      [(MessageListViewController *)self setPreviousMessageListSelectionModel:0];
      conversationViewController = [(MessageListViewController *)self conversationViewController];
      [conversationViewController setSelectionDataSource:self];
    }

    else
    {
      if (selectionCopy)
      {
        messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
        [messageListSelectionModel preserveSelection];
        [(MessageListViewController *)self setPreviousMessageListSelectionModel:messageListSelectionModel];
      }

      else
      {
        [(MessageListViewController *)self setPreviousMessageListSelectionModel:0];
      }

      [(MessageListViewController *)self setMessageListSelectionModel:0];
      sub_10048A174(self, 0);
      conversationViewController = [(MessageListViewController *)self conversationViewController];
      [conversationViewController setSelectionDataSource:0];
    }

    _inMultiSelectionMode2 = [(MessageListViewController *)self _inMultiSelectionMode];
    layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
    [layoutValuesHelper setInMultiSelectionMode:_inMultiSelectionMode2];

    if (animatedCopy)
    {
      (v22[2])(v22);
    }

    else
    {
      [UIView performWithoutAnimation:v22];
    }

    [(MessageListViewController *)self _updateTitle];
    [(MessageListViewController *)self updateBarButtons];
    searchBar = [(MessageListViewController *)self searchBar];
    [searchBar _setEnabled:editingCopy ^ 1 animated:animatedCopy];

    [(MessageListViewController *)self _setRowDeletionEnabled:editingCopy animated:animatedCopy];
    state2 = [(MessageListViewController *)self state];
    [state2 isEditing];

    conversationViewController2 = [(MessageListViewController *)self conversationViewController];
    [conversationViewController2 _updateBarButtonsAnimated:1 force:1 isShowingTitle:0];
  }
}

- (void)_editButtonTapped:(id)tapped
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

- (id)_currentBulkSelectionWithDebugLabel:(id)label
{
  labelCopy = @"unknown operation";
  if (label)
  {
    labelCopy = label;
  }

  v5 = labelCopy;
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  currentMessageListItemSelection = [messageListSelectionModel currentMessageListItemSelection];
  if (!currentMessageListItemSelection)
  {
    v8 = +[MessageListViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      ef_publicDescription = [messageListSelectionModel ef_publicDescription];
      v13 = 138413058;
      v14 = v11;
      v15 = 2048;
      selfCopy = self;
      v17 = 2112;
      v18 = v5;
      v19 = 2114;
      v20 = ef_publicDescription;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "<%@: %p> Bulk message selection for %@ is nil: %{public}@", &v13, 0x2Au);
    }
  }

  return currentMessageListItemSelection;
}

- (UIBarButtonItem)configureButtonItem
{
  if (!self->_configureButtonItem)
  {
    if (MUISolariumFeatureEnabled())
    {
      v3 = [UIBarButtonItem alloc];
      buttonTintColor = [UIImage systemImageNamed:MFImageGlyphMoreActions];
      _menuForConfigureButtonItem = [(MessageListViewController *)self _menuForConfigureButtonItem];
      v6 = [v3 initWithImage:buttonTintColor menu:_menuForConfigureButtonItem];
    }

    else
    {
      buttonTintColor = [(MessageListViewController *)self buttonTintColor];
      _menuForConfigureButtonItem = [(MessageListViewController *)self _menuForConfigureButtonItem];
      v6 = [UIBarButtonItem mui_capsuleButtonItemWithTitle:0 titleColor:buttonTintColor imageName:MFImageGlyphMoreActions menu:_menuForConfigureButtonItem];
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
      buttonTintColor = [(MessageListViewController *)self buttonTintColor];
      v7 = [UIBarButtonItem mui_capsuleButtonItemWithTitle:v5 titleColor:buttonTintColor imageName:0 action:v3];
    }

    else
    {
      buttonTintColor = [(MessageListViewController *)self buttonTintColor:v11];
      v7 = [UIBarButtonItem mui_capsuleButtonItemWithTitle:v4 titleColor:buttonTintColor imageName:0 action:v3];
    }
  }

  else if (self->_selectButtonItem && ([(MessageListViewController *)self isEditing:v11]& 1) != 0)
  {
    buttonTintColor = [(MessageListViewController *)self _configureSelectButtonWithTitle:v5];
    v7 = [[UIBarButtonItem alloc] initWithCustomView:buttonTintColor];
  }

  else
  {
    buttonTintColor = [(MessageListViewController *)self _configureSelectButtonWithTitle:v4, v11, v12, v13, v14];
    v7 = [[UIBarButtonItem alloc] initWithCustomView:buttonTintColor];
  }

  selectButtonItem = self->_selectButtonItem;
  self->_selectButtonItem = v7;

  v9 = self->_selectButtonItem;
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

- (id)_configureSelectButtonWithTitle:(id)title
{
  titleCopy = title;
  v5 = +[UIButtonConfiguration filledButtonConfiguration];
  [v5 setCornerStyle:4];
  [v5 setTitle:titleCopy];
  [v5 setTitleTextAttributesTransformer:&stru_100652910];
  buttonTintColor = [(MessageListViewController *)self buttonTintColor];
  [v5 setBaseForegroundColor:buttonTintColor];

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
  _deferredMenuForConfigureButtonItem = [(MessageListViewController *)self _deferredMenuForConfigureButtonItem];
  v6 = _deferredMenuForConfigureButtonItem;
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
  searchController = [(MessageListViewController *)self searchController];
  delegate = [searchController delegate];
  [delegate willDismissSearchController:searchController];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100182020;
  v6[3] = &unk_10064C7E8;
  v5 = searchController;
  v7 = v5;
  [(MessageListViewController *)self dismissViewControllerAnimated:1 completion:v6];
}

- (void)increaseSize:(id)size
{
  sizeCopy = size;
  conversationViewController = [(MessageListViewController *)self conversationViewController];
  [conversationViewController increaseSize:sizeCopy];
}

- (void)decreaseSize:(id)size
{
  sizeCopy = size;
  conversationViewController = [(MessageListViewController *)self conversationViewController];
  [conversationViewController decreaseSize:sizeCopy];
}

- (void)_openMessageCommandInvoked:(id)invoked
{
  v4 = [(MessageListViewController *)self _messageListItemSelectionCreateIfNeeded:1];
  messageListItems = [v4 messageListItems];

  if ([messageListItems count] < 0xB)
  {
    [(MessageListViewController *)self _openMessages:messageListItems];
  }

  else
  {
    v6 = _EFLocalizedString();
    v7 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [messageListItems count]);

    v8 = _EFLocalizedString();
    v9 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];
    v10 = _EFLocalizedString();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100182488;
    v15[3] = &unk_100650850;
    v15[4] = self;
    v16 = messageListItems;
    v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v15];
    [v9 addAction:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
    v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
    [v9 addAction:v14];

    [(MessageListViewController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)_openMessages:(id)messages
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  messagesCopy = messages;
  v5 = [messagesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(messagesCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        dataSource = [(MessageListViewController *)self dataSource];
        itemID = [v8 itemID];
        v11 = [dataSource indexPathForItemIdentifier:itemID];

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
      v5 = [messagesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_deleteMessageCommandInvoked:(id)invoked
{
  invokedCopy = invoked;
  if ([(MessageListViewController *)self isEditing])
  {
    [(MessageListViewController *)self deleteAction:invokedCopy showChoices:0 preferDeleteOrArchive:1];
  }

  else
  {
    [(MessageListViewController *)self _deleteOrArchiveConversationReferenceItemWithPreference:1];
  }
}

- (id)_messageListItemSelectionCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  currentMessageListItemSelection = [messageListSelectionModel currentMessageListItemSelection];

  if (!currentMessageListItemSelection && neededCopy)
  {
    conversationViewController = [(MessageListViewController *)self conversationViewController];
    referenceMessageListItem = [conversationViewController referenceMessageListItem];

    v9 = [MSMessageListItemSelection alloc];
    if (referenceMessageListItem)
    {
      v12 = referenceMessageListItem;
      v10 = [NSArray arrayWithObjects:&v12 count:1];
    }

    else
    {
      v10 = &__NSArray0__struct;
    }

    currentMessageListItemSelection = [v9 initWithMessageListItems:v10];
    if (referenceMessageListItem)
    {
    }
  }

  return currentMessageListItemSelection;
}

- (void)_archiveShortcutInvoked:(id)invoked
{
  invokedCopy = invoked;
  if ([(MessageListViewController *)self isEditing])
  {
    [(MessageListViewController *)self deleteAction:invokedCopy showChoices:0 preferDeleteOrArchive:2];
  }

  else
  {
    [(MessageListViewController *)self _deleteOrArchiveConversationReferenceItemWithPreference:2];
  }
}

- (void)_deleteOrArchiveConversationReferenceItemWithPreference:(unint64_t)preference
{
  lastSelectedItemID = [(MessageListViewController *)self lastSelectedItemID];

  if (lastSelectedItemID)
  {
    v7 = [(MessageListViewController *)self _messageListItemSelectionCreateIfNeeded:1];
    if ([v7 isSelectAll])
    {
      v11 = +[NSAssertionHandler currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"MessageListViewController.m" lineNumber:4472 description:{@"Crash to avoid deleting all messages in a mailbox without prompting the user: %@", v7}];
    }

    undoManager = [(MessageListViewController *)self undoManager];
    v9 = [MFDestructiveTriageInteractionFactory interactionWithMessageListItemSelection:v7 undoManager:undoManager origin:2 actor:2 deleteOrArchive:preference];

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

- (void)deleteMessagesWithItemIDs:(id)ds
{
  dsCopy = ds;
  dataSource = [(MessageListViewController *)self dataSource];
  v6 = [dataSource messageListItemsForItemIDs:dsCopy];
  v7 = [EFFuture combine:v6];
  result = [v7 result];
  v9 = [result ef_filter:EFIsNotNull];

  if ([v9 count])
  {
    undoManager = [(MessageListViewController *)self undoManager];
    v11 = [MFDestructiveTriageInteractionFactory interactionWithMessageListItems:v9 undoManager:undoManager origin:2 actor:2 deleteOrArchive:1];

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

- (void)_bulkDeleteButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "User Tap on Delete button", v6, 2u);
  }

  [(MessageListViewController *)self deleteAction:pressedCopy showChoices:0 preferDeleteOrArchive:0];
}

- (void)_bulkDeleteButtonLongPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "User Tap on Delete (with long press) button", v6, 2u);
  }

  [(MessageListViewController *)self deleteAction:pressedCopy showChoices:1 preferDeleteOrArchive:0];
}

- (void)deleteAction:(id)action showChoices:(BOOL)choices preferDeleteOrArchive:(unint64_t)archive
{
  choicesCopy = choices;
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  isSelectAll = [messageListSelectionModel isSelectAll];

  v10 = +[NSUserDefaults em_userDefaults];
  v11 = [v10 BOOLForKey:ShowMessageDeleteConfirmationKey];

  if ((v11 | choicesCopy | isSelectAll))
  {
    if (isSelectAll)
    {
      mailboxes = [(MessageListViewController *)self mailboxes];
      LOBYTE(deleteSelectionState) = [EMMailbox deleteMovesToTrashForMailboxes:mailboxes];

      mailboxes2 = [(MessageListViewController *)self mailboxes];
      LODWORD(v15) = [EMMailbox supportsArchivingForMailboxes:mailboxes2];

      mailboxes3 = [(MessageListViewController *)self mailboxes];
      v17 = [EMMailbox shouldArchiveByDefaultForMailboxes:mailboxes3];
    }

    else
    {
      messageListSelectionModel2 = [(MessageListViewController *)self messageListSelectionModel];
      deleteSelectionState = [messageListSelectionModel2 deleteSelectionState];

      v17 = (deleteSelectionState >> 1) & 1;
      v15 = (deleteSelectionState >> 2) & 1;
    }

    messageListSelectionModel3 = [(MessageListViewController *)self messageListSelectionModel];
    v23 = [messageListSelectionModel3 count];

    if (deleteSelectionState)
    {
      if (isSelectAll)
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

      if (isSelectAll)
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
      if (isSelectAll)
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

      if (isSelectAll)
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

    if (isSelectAll)
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

    if (choicesCopy)
    {
      if (archive)
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

    if (archive)
    {
      v40 = archive == 2;
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
    v77 = isSelectAll;
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
      v73 = isSelectAll;
      v71 = v47;
      v72 = v49;
      v17 = [UIAlertAction actionWithTitle:v61 style:2 handler:v70];
      [v46 addAction:v17];
    }

    if ((v40 | v50) == 1)
    {
      if (isSelectAll)
      {
        v17 = +[NSBundle mainBundle];
        v51 = [v17 localizedStringForKey:@"ARCHIVE_ALL_ALERT_TITLE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        v51 = 0;
      }

      [v46 setTitle:v51];
      if (isSelectAll)
      {

        v17 = +[NSBundle mainBundle];
        v52 = [v17 localizedStringForKey:@"ARCHIVE_ALL_ALERT_MESSAGE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        v52 = 0;
      }

      [v46 setMessage:v52];
      if (isSelectAll)
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

    popoverPresentationController = [v46 popoverPresentationController];
    [popoverPresentationController setDelegate:self];
    [popoverPresentationController setPermittedArrowDirections:3];
    deleteButtonItem = [(MessageListViewController *)self deleteButtonItem];
    [popoverPresentationController setBarButtonItem:deleteButtonItem];

    [(MessageListViewController *)self presentViewController:v46 animated:1 completion:0];
  }

  else
  {
    messageListSelectionModel4 = [(MessageListViewController *)self messageListSelectionModel];
    deleteSelectionState2 = [messageListSelectionModel4 deleteSelectionState];

    if ((deleteSelectionState2 & 2) != 0)
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

- (void)_deleteMessagesWithPreference:(unint64_t)preference
{
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];

  if (messageListSelectionModel)
  {
    if (![(MessageListViewController *)self isEditing])
    {
      return;
    }

    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      messageListSelectionModel2 = [(MessageListViewController *)self messageListSelectionModel];
      [messageListSelectionModel2 type];
      v8 = NSStringFromMessageListSelectionType();
      messageListSelectionModel3 = [(MessageListViewController *)self messageListSelectionModel];
      *buf = 138412546;
      v26 = v8;
      v27 = 2048;
      v28 = [messageListSelectionModel3 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Delete/Archive messages with type: %@ (count: %ld)", buf, 0x16u);
    }

    v10 = [(MessageListViewController *)self _currentBulkSelectionWithDebugLabel:@"delete"];
    if (v10)
    {
      undoManager = [(MessageListViewController *)self undoManager];
      v12 = [MFDestructiveTriageInteractionFactory interactionWithMessageListItemSelection:v10 undoManager:undoManager origin:2 actor:2 deleteOrArchive:preference];

      messageListItems = [v10 messageListItems];
      if ([v10 isSelectAll])
      {
        v14 = +[MessageListViewController signpostLog];
        signpostID = [(MessageListViewController *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, signpostID, "MessageListViewController Delete", "The user has clicked SelectAll option to delete the messages", buf, 2u);
        }

        [v12 setDelegate:self];
      }

      else
      {
        messageListItems2 = [v10 messageListItems];
        v17 = [messageListItems2 count];

        if (v17)
        {
          messageSelectionStrategy = [(MessageListViewController *)self messageSelectionStrategy];
          firstObject = [messageListItems firstObject];
          itemID = [firstObject itemID];
          v24 = itemID;
          v21 = [NSArray arrayWithObjects:&v24 count:1];
          v22 = [messageSelectionStrategy itemIDToSelectAfterDeletedMessageItemIDs:v21];
          [(MessageListViewController *)self setItemIDToSelectAfterMoveID:v22];
        }
      }

      [v12 performInteraction];
      scene = [(MessageListViewController *)self scene];
      -[MessageListViewController setEditing:animated:](self, "setEditing:animated:", 0, [scene isInExpandedEnvironment]);
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

- (void)_bulkTransferButtonPressed:(id)pressed
{
  if ([(MessageListViewController *)self isEditing])
  {
    moveButtonItem = [(MessageListViewController *)self moveButtonItem];
    sub_100184494(self, moveButtonItem);
  }
}

- (void)_showTransferPickerForNonPredictiveMoveOfMessages:(id)messages
{
  messagesCopy = messages;
  if ([messagesCopy count])
  {
    messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
    isSelectAll = [messageListSelectionModel isSelectAll];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100184C94;
    v22[3] = &unk_100652AA8;
    v25 = isSelectAll;
    v22[4] = self;
    v7 = messagesCopy;
    v23 = v7;
    v8 = messageListSelectionModel;
    v24 = v8;
    v9 = objc_retainBlock(v22);
    transferStackViewController = [(MessageListViewController *)self transferStackViewController];
    navigationController = [transferStackViewController navigationController];

    if (isSelectAll)
    {
      v11 = 258;
    }

    else
    {
      v11 = 2;
    }

    v12 = [(MessageListViewController *)self _transferControllerWithMessages:v7 options:v11 interaction:0 didDismissHandler:0];
    transferNavigationController = [v12 transferNavigationController];
    [transferNavigationController setDidFinish:v9];
    [(MessageListViewController *)self setTransferController:v12];
    scene = [(MessageListViewController *)self scene];
    mf_rootViewController = [scene mf_rootViewController];
    transferController = [(MessageListViewController *)self transferController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1001851C8;
    v19[3] = &unk_10064C660;
    v17 = navigationController;
    v20 = v17;
    selfCopy = self;
    [mf_rootViewController presentViewController:transferController animated:1 completion:v19];
  }
}

- (id)_previewMessagesForSelectAllMode:(BOOL)mode
{
  modeCopy = mode;
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  if ([messageListSelectionModel isSelectAll])
  {
    collectionView = [(MessageListViewController *)self collectionView];
    dataSource = [(MessageListViewController *)self dataSource];
    v8 = dataSource;
    if (modeCopy)
    {
      numberOfItemsInMessagesSections = [dataSource numberOfItemsInMessagesSections];
      itemIdentifiersInMessagesSections = [v8 itemIdentifiersInMessagesSections];
      v11 = itemIdentifiersInMessagesSections;
      if (numberOfItemsInMessagesSections >= 5)
      {
        v12 = 5;
      }

      else
      {
        v12 = numberOfItemsInMessagesSections;
      }

      itemIDs = [itemIdentifiersInMessagesSections subarrayWithRange:{0, v12}];
    }

    else
    {
      indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
      v15 = [indexPathsForSelectedItems count];

      indexPathsForSelectedItems2 = [collectionView indexPathsForSelectedItems];
      v17 = indexPathsForSelectedItems2;
      if (v15 >= 5)
      {
        v18 = 5;
      }

      else
      {
        v18 = v15;
      }

      v19 = [indexPathsForSelectedItems2 subarrayWithRange:{0, v18}];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100185410;
      v21[3] = &unk_100652218;
      v22 = v8;
      itemIDs = [v19 ef_map:v21];
    }
  }

  else
  {
    itemIDs = [messageListSelectionModel itemIDs];
  }

  return itemIDs;
}

- (id)_transferControllerWithMessages:(id)messages options:(unint64_t)options interaction:(id)interaction didDismissHandler:(id)handler
{
  messagesCopy = messages;
  interactionCopy = interaction;
  handlerCopy = handler;
  scene = [(MessageListViewController *)self scene];
  v14 = [[MFTransferSplitViewController alloc] initWithItems:messagesCopy scene:scene options:options didDismissHandler:handlerCopy];
  transferStackViewController = [(MessageListViewController *)self transferStackViewController];
  [(MFTransferSplitViewController *)v14 setStackViewController:transferStackViewController];
  if ([(MessageListViewController *)self _inMultiSelectionMode])
  {
    [(MFTransferSplitViewController *)v14 setModalPresentationStyle:0];
    -[MFTransferSplitViewController setUsePushFromLeftPresentation:](v14, "setUsePushFromLeftPresentation:", [scene isInExpandedEnvironment]);
  }

  else
  {
    [(MFTransferSplitViewController *)v14 setModalPresentationStyle:7];
    presentationSource = [interactionCopy presentationSource];
    popoverPresentationController = [(MFTransferSplitViewController *)v14 popoverPresentationController];
    [popoverPresentationController setSourceItem:presentationSource];
  }

  return v14;
}

- (void)_setRowDeletionEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  enabledCopy = enabled;
  v7 = [MFUserInteractionAssertion interactionAssertionWithReason:@"setRowDeletionEnabled : [currentTableView setEditing:enabled animated:animated] " timeout:1.0];
  v8 = enabledCopy || [(MessageListViewController *)self isSearchViewController]|| [(MessageListViewController *)self isPresentingSearchViewController];
  navigationItem = [(MessageListViewController *)self navigationItem];
  [navigationItem setHidesBackButton:v8 animated:animatedCopy];

  scene = [(MessageListViewController *)self scene];
  splitViewController = [scene splitViewController];
  traitCollection = [splitViewController traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  transferController = [(MessageListViewController *)self transferController];
  if (transferController)
  {
    v30 = scene;
    mf_rootViewController = [scene mf_rootViewController];
    presentedViewController = [mf_rootViewController presentedViewController];
    transferController2 = [(MessageListViewController *)self transferController];
    v18 = presentedViewController == transferController2;

    scene = v30;
  }

  else
  {
    v18 = 0;
  }

  if ((*(self + 8) & 1) != 0 && horizontalSizeClass == 2 && !v18)
  {
    v19 = [MFUserInteractionAssertion interactionAssertionWithReason:@"Performing Stack View Animations" timeout:1.0];

    transferStackViewController = [(MessageListViewController *)self transferStackViewController];
    messageDetailNavController = [splitViewController messageDetailNavController];
    isTransferStackVisible = [(MessageListViewController *)self isTransferStackVisible];
    if (enabledCopy)
    {
      if ((isTransferStackVisible & 1) == 0)
      {
        messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
        v24 = -[MessageListViewController _previewMessagesForSelectAllMode:](self, "_previewMessagesForSelectAllMode:", [messageListSelectionModel isSelectAll]);

        v25 = [[UINavigationController alloc] initWithRootViewController:transferStackViewController];
        [v25 setModalPresentationStyle:6];
        [messageDetailNavController presentViewController:v25 animated:0 completion:0];
        [transferStackViewController displayStackedViewsForItemsWithIDs:v24];
        [v19 invalidate];
      }
    }

    else if (isTransferStackVisible)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100185BC0;
      v32[3] = &unk_10064C660;
      v33 = messageDetailNavController;
      v34 = v19;
      [transferStackViewController removeStackedViewsAnimated:1 completion:v32];
    }

    if (animatedCopy)
    {
      v26 = +[UIApplication sharedApplication];
      if (([v26 isRunningTest:@"ExitEditMode"] & 1) != 0 || objc_msgSend(v26, "isRunningTest:", @"ExitEditModeLandscape"))
      {
        v31 = scene;
        v27 = [NSNotification notificationWithName:@"DidFinishExitEditModeTest" object:0];
        v28 = +[NSNotificationCenter defaultCenter];
        UIAnimationDragCoefficient();
        [v28 performSelector:"postNotification:" withObject:v27 afterDelay:v29 * 0.35];

        scene = v31;
      }
    }

    v7 = v19;
  }

  [v7 invalidate];
}

- (void)_addMessagesToStackWithItemIDs:(id)ds
{
  dsCopy = ds;
  transferStackViewController = [(MessageListViewController *)self transferStackViewController];
  [transferStackViewController addStackedItemsWithItemIDs:dsCopy];
}

- (void)_removeMessagesFromStackWithItemIDs:(id)ds
{
  dsCopy = ds;
  transferStackViewController = [(MessageListViewController *)self transferStackViewController];
  [transferStackViewController removeStackedItemsWithItemIDs:dsCopy];
}

- (id)_bulkMarkMenuForCurrentSelection
{
  v3 = [(MessageListViewController *)self _currentBulkSelectionWithDebugLabel:@"mark"];
  v4 = v3;
  if (v3)
  {
    isSelectAll = [v3 isSelectAll];
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
    selfCopy = self;
    v9 = v7;
    v26 = v9;
    v27 = isSelectAll;
    v10 = objc_retainBlock(v23);
    messageListItems = [v8 messageListItems];
    LOBYTE(v8) = [messageListItems ef_any:&stru_100652B18];

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

    if (isSelectAll)
    {
      messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
      itemIDs = [messageListSelectionModel itemIDs];
      v18 = [itemIDs count];

      v19 = +[NSBundle mainBundle];
      if (v18)
      {
        [v19 localizedStringForKey:@"INDETERMINATE_MESSAGE_SELECTION" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        [v19 localizedStringForKey:@"ALL_MESSAGES" value:&stru_100662A88 table:@"Main"];
      }
      _menuTitleForSelection = ;
    }

    else
    {
      _menuTitleForSelection = [(MessageListViewController *)self _menuTitleForSelection];
    }

    v20 = [UIMenu menuWithTitle:_menuTitleForSelection children:v6];
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
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [messageListSelectionModel count]);

  return v6;
}

- (void)_selectAllButtonPressed:(id)pressed
{
  v4 = sub_100181DA8(self);

  [(MessageListViewController *)self _selectOrDeselectAll:v4];
}

- (void)_selectOrDeselectAll:(BOOL)all
{
  allCopy = all;
  v5 = +[MessageListViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v17 = 138412802;
    v18 = v7;
    v19 = 2048;
    selfCopy = self;
    v21 = 1024;
    v22 = allCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> Select All Button Pressed. Is select all: %d", &v17, 0x1Cu);
  }

  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  v9 = messageListSelectionModel;
  if (messageListSelectionModel)
  {
    if (allCopy)
    {
      flattenedMailboxesFuture = [(MessageListViewController *)self flattenedMailboxesFuture];
      result = [flattenedMailboxesFuture result];
      [v9 enableSelectAllWithMailboxes:result];
    }

    else
    {
      [messageListSelectionModel disableSelectAll];
    }

    dataSource = [(MessageListViewController *)self dataSource];
    [dataSource reloadVisibleCellsInvalidatingCache:0];

    if (allCopy)
    {
      transferStackViewController = [(MessageListViewController *)self _previewMessagesForSelectAllMode:1];
      [(MessageListViewController *)self _addMessagesToStackWithItemIDs:transferStackViewController];
    }

    else
    {
      transferStackViewController = [(MessageListViewController *)self transferStackViewController];
      [transferStackViewController removeStackedViewsAnimated:1 completion:0];
    }

    if (MUISolariumFeatureEnabled())
    {
      selectAllButtonItem = [(MessageListViewController *)self selectAllButtonItem];
      [UIBarButtonItem mf_configureSelectionBarButtonItem:selectAllButtonItem usingStyle:allCopy];
    }

    else
    {
      [(MessageListViewController *)self _updateNavigationBarButtonsWithForce:1];
    }

    conversationViewController = [(MessageListViewController *)self conversationViewController];
    [conversationViewController _updateBarButtonsAnimated:1 force:1];
  }

  else
  {
    conversationViewController = +[MessageListViewController log];
    if (os_log_type_enabled(conversationViewController, OS_LOG_TYPE_ERROR))
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
    flattenedMailboxesFuture = [(MessageListViewController *)self flattenedMailboxesFuture];
    result = [flattenedMailboxesFuture result];
    [v3 enableSelectAllWithMailboxes:result];

    currentMessageListItemSelection = [v3 currentMessageListItemSelection];
    undoManager = [(MessageListViewController *)self undoManager];
    v8 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItemSelection:currentMessageListItemSelection undoManager:undoManager origin:2 actor:2 reason:4];

    messageTriageInteractionHelper = [(MessageListViewController *)self messageTriageInteractionHelper];
    [v8 setDelegate:messageTriageInteractionHelper];

    if ([v8 flagState])
    {
      v10 = +[MessageListViewController log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        mailboxes = [(MessageListViewController *)self mailboxes];
        v15 = 138412290;
        v16 = mailboxes;
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
      mailboxes2 = [(MessageListViewController *)self mailboxes];
      v15 = 138412290;
      v16 = mailboxes2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not supported: Select All not supported in mailbox(es): %@", &v15, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (void)_markAllAsReadCommandInvoked:(id)invoked
{
  _markAllAsReadTriageInteractionIfSupported = [(MessageListViewController *)self _markAllAsReadTriageInteractionIfSupported];
  [_markAllAsReadTriageInteractionIfSupported performInteraction];
}

- (void)updateToolbarButtonTitles
{
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  messageListSelectionModel2 = [(MessageListViewController *)self messageListSelectionModel];
  isSelectAll = [messageListSelectionModel2 isSelectAll];

  v5 = [messageListSelectionModel count];
  _shouldDisplaySearchButtons = [(MessageListViewController *)self _shouldDisplaySearchButtons];
  state = [(MessageListViewController *)self state];
  v7 = v5 != 0;
  v52 = v7 & ~[state containsDraftsOrOutbox];

  v50 = v7 & ~isSelectAll;
  if (v50 == 1)
  {
    v8 = [NSNumberFormatter ef_formatUnsignedInteger:v5 withGrouping:0];
    messageListSelectionModel3 = [(MessageListViewController *)self messageListSelectionModel];
    deleteSelectionState = [messageListSelectionModel3 deleteSelectionState];

    if (_shouldDisplaySearchButtons)
    {
      if ((deleteSelectionState & 2) != 0)
      {
        v12 = deleteSelectionState;
        v11 = MFImageGlyphArchive;
        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"ARCHIVE_BUTTON_COUNT_FORMAT_SHORT" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        v11 = MFImageGlyphTrash;
        v12 = deleteSelectionState;
        v13 = +[NSBundle mainBundle];
        if (deleteSelectionState)
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

      deleteSelectionState = v12;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v11 = 0;
      v23 = 0;
    }

    v16 = (deleteSelectionState >> 1) & 1;
    if (!v22)
    {
LABEL_29:
      if (v16)
      {
        v31 = MFImageGlyphArchive;

        v32 = +[NSBundle mainBundle];
        v33 = v32;
        if (_shouldDisplaySearchButtons)
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
        v35 = deleteSelectionState;
        v31 = MFImageGlyphTrash;

        if (v35)
        {
          v32 = +[NSBundle mainBundle];
          v33 = v32;
          if (_shouldDisplaySearchButtons)
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
          if (_shouldDisplaySearchButtons)
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
    mailboxes = [(MessageListViewController *)self mailboxes];
    LODWORD(v16) = [EMMailbox shouldArchiveByDefaultForMailboxes:mailboxes];

    mailboxes2 = [(MessageListViewController *)self mailboxes];
    v18 = [EMMailbox deleteMovesToTrashForMailboxes:mailboxes2];

    if (v5)
    {
      if (v16)
      {
        deleteSelectionState = MFImageGlyphArchive;
        v19 = +[NSBundle mainBundle];
        v20 = [v19 localizedStringForKey:@"ARCHIVE_BUTTON" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        deleteSelectionState = MFImageGlyphTrash;
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
      deleteSelectionState = 0;
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

    v11 = deleteSelectionState;
    LOBYTE(deleteSelectionState) = v18;
    if (!v22)
    {
      goto LABEL_29;
    }
  }

  deleteButtonItem = [(MessageListViewController *)self deleteButtonItem];
  moveButtonItem = [(MessageListViewController *)self moveButtonItem];
  markButtonItem = [(MessageListViewController *)self markButtonItem];
  [deleteButtonItem setEnabled:v5 != 0];
  v39 = v52;
  [moveButtonItem setEnabled:v52];
  [markButtonItem setEnabled:v52];
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
    [deleteButtonItem setImage:v39];
  }

  [deleteButtonItem setTitle:v22];
  v42 = v21;
  if (!v21)
  {
    v43 = +[NSBundle mainBundle];
    v39 = v43;
    if (_shouldDisplaySearchButtons)
    {
      v44 = @"MOVE_BUTTON_SHORT";
    }

    else
    {
      v44 = @"MOVE_BUTTON";
    }

    v42 = [v43 localizedStringForKey:v44 value:&stru_100662A88 table:@"Main"];
  }

  [moveButtonItem setTitle:v42];
  if (!v21)
  {
  }

  v45 = v23;
  if (!v23)
  {
    v46 = +[NSBundle mainBundle];
    v39 = v46;
    if (_shouldDisplaySearchButtons)
    {
      v47 = @"MARK_BUTTON_SHORT";
    }

    else
    {
      v47 = @"MARK_BUTTON";
    }

    v45 = [v46 localizedStringForKey:v47 value:&stru_100662A88 table:@"Main"];
  }

  [markButtonItem setTitle:v45];
  if (!v23)
  {
  }

  [deleteButtonItem setLongPressEnabled:v50];
  currentEditButtonItem = [(MessageListViewController *)self currentEditButtonItem];
  if ([(MessageListViewController *)self isEditing])
  {
    v49 = 3;
  }

  else
  {
    v49 = 0;
  }

  [UIBarButtonItem mf_configureMultiBarButtonItem:currentEditButtonItem usingStyle:v49];
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sub_10012F5F0(MailSplitViewController, action))
  {
    selfCopy = [(MessageListViewController *)self conversationViewController];
  }

  else if (sub_10048A1D4(self, action))
  {
    selfCopy = self;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MessageListViewController;
    selfCopy = [(MessageListViewController *)&v10 targetForAction:action withSender:senderCopy];
  }

  v8 = selfCopy;

  return v8;
}

- (void)_mailboxSearchKeyCommandInvoked:(id)invoked
{
  if (([(MessageListViewController *)self isEditing]& 1) != 0)
  {
    return;
  }

  scene = [(MessageListViewController *)self scene];
  splitViewController = [scene splitViewController];
  displayMode = [splitViewController displayMode];

  if ((displayMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if ([(MessageListViewController *)self isSearchViewController])
    {

      [(MessageListViewController *)self dismissSearchResultsAnimated:1];
      return;
    }
  }

  else
  {
    splitViewController2 = [(MessageListViewController *)self splitViewController];
    [splitViewController2 showMessageListViewController:1 animated:1 completion:0];
  }

  [(MessageListViewController *)self focusSearchBarAnimated:0];
}

- (int64_t)_expandOpFromPlist:(id)plist
{
  v4 = [plist objectForKeyedSubscript:@"MailKBIsLeftArrowPlistKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [(MessageListViewController *)self view];
    effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

    if ((effectiveUserInterfaceLayoutDirection != 1) != [v4 BOOLValue])
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

- (BOOL)_canPerformExpandOp:(int64_t)op
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
  dataSource = [(MessageListViewController *)self dataSource];
  if ([dataSource isExpandedThread:v5])
  {
    v8 = 1;
  }

  else
  {
    v8 = [dataSource anyExpandedThreadContainsItemID:v5];
  }

  if (op != 2)
  {
    v8 = op == 1 && (v8 & 1) == 0 && [v6 count] > 1;
  }

  return v8;
}

- (id)_plistDictionaryFromSender:(id)sender
{
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    propertyList = [senderCopy propertyList];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = propertyList;
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

- (BOOL)shouldRouteActionToConversation:(SEL)conversation withCommand:(id)command
{
  if (([(MessageListViewController *)self isEditing:conversation]& 1) != 0)
  {
    return 0;
  }

  collectionView = [(MessageListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count] == 0;

  return v5;
}

- (BOOL)canHandleAction:(SEL)action withMailMenuCommand:(id)command
{
  commandCopy = command;
  if (sub_10048A1D4(self, action))
  {
    view = [(MessageListViewController *)self view];
    window = [view window];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = sub_10048C8C4(window);
    }

    else
    {
      v9 = 0;
    }

    presentedViewController = [(MessageListViewController *)self presentedViewController];
    v12 = (presentedViewController != 0) | v9;

    if (v12)
    {
LABEL_7:
      LOBYTE(integerValue) = 0;
LABEL_25:

      goto LABEL_26;
    }

    if ("_refresh:" == action)
    {
      LOBYTE(integerValue) = 1;
      goto LABEL_25;
    }

    if ("_favoriteMailboxShortcutInvoked:" == action)
    {
      v13 = [(MessageListViewController *)self _plistDictionaryFromSender:commandCopy];
      navigationController = [v13 objectForKeyedSubscript:@"MailKBIsFavoritePlistKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ("_moveMessageToFavoriteMailboxShortcutInvoked:" != action)
      {
        LOBYTE(integerValue) = 1;
        if ("_previousMailboxShortcutInvoked:" == action || "_nextMailboxShortcutInvoked:" == action)
        {
          goto LABEL_25;
        }

        if ((*(self + 8) & 1) == 0)
        {
          goto LABEL_7;
        }

        v13 = [(MessageListViewController *)self _plistDictionaryFromSender:commandCopy];
        if (!sub_10012F238(MailSplitViewController, action))
        {
          if ("_mailboxSearchKeyCommandInvoked:" == action)
          {
            navigationController = [(MessageListViewController *)self navigationController];
            topViewController = [navigationController topViewController];
            if (topViewController == self)
            {
              searchBar = [(MessageListViewController *)self searchBar];
              LOBYTE(integerValue) = [searchBar _isEnabled];
            }

            else
            {
              LOBYTE(integerValue) = 0;
            }

            goto LABEL_21;
          }

          if ("_scrollMessageListToTop:" == action)
          {
            LOBYTE(integerValue) = sub_10001C994(self) != 0;
            goto LABEL_24;
          }

          if ("_scrollToCurrentMessage:" != action)
          {
            if ("_expandCollapseThreadCommand:" == action)
            {
              v18 = [(MessageListViewController *)self _canPerformExpandOp:[(MessageListViewController *)self _expandOpFromPlist:v13]];
            }

            else
            {
              if ("_filterCommand:" == action)
              {
                goto LABEL_49;
              }

              if ("selectAll:" != action)
              {
                if ("_selectPrimary" != action && "_selectTransactions" != action && "_selectUpdates" != action && "_selectPromotions" != action && "_selectAllMail" != action)
                {
                  goto LABEL_24;
                }

                if (([(MessageListViewController *)self isBucketBarHidden]& 1) != 0)
                {
                  LOBYTE(integerValue) = 0;
                  goto LABEL_24;
                }

LABEL_49:
                LODWORD(integerValue) = [(MessageListViewController *)self isEditing]^ 1;
                goto LABEL_24;
              }

              v18 = sub_1001866D0(self);
            }

            LOBYTE(integerValue) = v18;
            goto LABEL_24;
          }
        }

        navigationController = [(MessageListViewController *)self collectionView];
        topViewController = [navigationController indexPathsForSelectedItems];
        LOBYTE(integerValue) = [(MessageListViewController *)topViewController count]!= 0;
LABEL_21:

LABEL_23:
LABEL_24:

        goto LABEL_25;
      }

      v13 = [(MessageListViewController *)self _plistDictionaryFromSender:commandCopy];
      navigationController = [v13 objectForKeyedSubscript:@"MailKBMoveMessageToFavoritePlistKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_20:
        integerValue = [navigationController integerValue];
        topViewController = [(MessageListViewController *)self favoritesShortcutsProvider];
        LOBYTE(integerValue) = sub_1000B9E04(topViewController, integerValue);
        goto LABEL_21;
      }
    }

    LOBYTE(integerValue) = 0;
    goto LABEL_23;
  }

  LOBYTE(integerValue) = 0;
LABEL_26:

  return integerValue;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("_escapeShortcutInvoked:" != action)
  {
    if ("delete:" != action)
    {
      if ("selectAll:" == action)
      {
        isFirstResponder = sub_1001866D0(self);
        goto LABEL_15;
      }

      scene = [(MessageListViewController *)self scene];
      splitViewController = [scene splitViewController];

      mail_isDeleteMessageCommand = [splitViewController messageListCanPerformAction:action withSender:senderCopy];
      goto LABEL_12;
    }

    splitViewController = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      mail_isDeleteMessageCommand = [senderCopy mail_isDeleteMessageCommand];
LABEL_12:
      isFirstResponder = mail_isDeleteMessageCommand;
      goto LABEL_14;
    }

LABEL_13:
    isFirstResponder = 0;
    goto LABEL_14;
  }

  if ((*(self + 8) & 1) == 0 || ([(MessageListViewController *)self isEditing]& 1) == 0)
  {
    splitViewController = [(MessageListViewController *)self searchController];
    if ([splitViewController isActive])
    {
      searchBar = [splitViewController searchBar];
      isFirstResponder = [searchBar isFirstResponder];

LABEL_14:
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  isFirstResponder = 1;
LABEL_15:

  return isFirstResponder;
}

- (BOOL)_shouldUsePluralPrompt
{
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  v4 = [messageListSelectionModel count];

  if (v4 > 1)
  {
    return 1;
  }

  conversationViewController = [(MessageListViewController *)self conversationViewController];
  referenceMessageListItem = [conversationViewController referenceMessageListItem];

  itemID = [referenceMessageListItem itemID];
  dataSource = [(MessageListViewController *)self dataSource];
  if ([dataSource isExpandedThread:itemID])
  {
    v10 = 0;
  }

  else
  {
    dataSource2 = [(MessageListViewController *)self dataSource];
    v12 = [dataSource2 anyExpandedThreadContainsItemID:itemID];

    v10 = v12 ^ 1;
  }

  v5 = ([referenceMessageListItem count] > 1) & v10;
  return v5;
}

- (BOOL)_hasSelectedMessages
{
  if ([(MessageListViewController *)self isEditing])
  {
    messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
    currentMessageListItemSelection = [messageListSelectionModel currentMessageListItemSelection];
  }

  else
  {
    messageListSelectionModel = [(MessageListViewController *)self lastSelectedItemID];
    currentMessageListItemSelection = messageListSelectionModel;
  }

  return currentMessageListItemSelection != 0;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v42.receiver = self;
  v42.super_class = MessageListViewController;
  [(MessageListViewController *)&v42 validateCommand:commandCopy];
  action = [commandCopy action];
  v6 = action;
  if (action == "delete:")
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
    [commandCopy setTitle:v21];

    _hasSelectedMessages = [(MessageListViewController *)self _hasSelectedMessages];
LABEL_28:
    if (_hasSelectedMessages)
    {
      goto LABEL_65;
    }

    goto LABEL_55;
  }

  if (action == "_archiveShortcutInvoked:")
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
    [commandCopy setTitle:v25];

    messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
    currentMessageListItemSelection = [messageListSelectionModel currentMessageListItemSelection];

    messageListItems = [currentMessageListItemSelection messageListItems];
    v29 = [messageListItems count];

    if (v29)
    {
      undoManager = [(MessageListViewController *)self undoManager];
      referenceMessageListItem = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItemSelection:currentMessageListItemSelection undoManager:undoManager origin:3 actor:2];

      if ([referenceMessageListItem isMessageListItemSelectionSourceArchive])
      {
        [commandCopy setAttributes:1];
      }

      propertyList = currentMessageListItemSelection;
    }

    else
    {
      if ([currentMessageListItemSelection isSelectAll])
      {
        propertyList = currentMessageListItemSelection;
LABEL_64:

        goto LABEL_65;
      }

      conversationViewController = [(MessageListViewController *)self conversationViewController];
      referenceMessageListItem = [conversationViewController referenceMessageListItem];

      v34 = [MSMessageListItemSelection alloc];
      if (referenceMessageListItem)
      {
        v49 = referenceMessageListItem;
        v35 = [NSArray arrayWithObjects:&v49 count:1];
      }

      else
      {
        v35 = &__NSArray0__struct;
      }

      propertyList = [v34 initWithMessageListItems:v35];

      if (referenceMessageListItem)
      {
      }
    }

LABEL_63:

    goto LABEL_64;
  }

  if (action == "_markAllAsReadCommandInvoked:")
  {
    _markAllAsReadTriageInteractionIfSupported = [(MessageListViewController *)self _markAllAsReadTriageInteractionIfSupported];
    isEditing = _markAllAsReadTriageInteractionIfSupported == 0;

    goto LABEL_31;
  }

  if (action == "_filterCommand:")
  {
    if ([(MessageListViewController *)self isFilterButtonEnabled])
    {
      propertyList = +[NSBundle mainBundle];
      [propertyList localizedStringForKey:@"DISABLE_FILTER" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      propertyList = +[NSBundle mainBundle];
      [propertyList localizedStringForKey:@"ENABLE_FILTER" value:&stru_100662A88 table:@"Main"];
    }
    v32 = ;
    [commandCopy setTitle:v32];
    referenceMessageListItem = v32;
    goto LABEL_63;
  }

  if (action == "selectAll:")
  {
    _hasSelectedMessages = sub_1001866D0(self);
    goto LABEL_28;
  }

  if (action == "increaseSize:" || action == "decreaseSize:")
  {
    messageListSelectionModel2 = [(MessageListViewController *)self messageListSelectionModel];
    if ([messageListSelectionModel2 count] > 1)
    {
LABEL_54:

      goto LABEL_55;
    }

    isEditing = [(MessageListViewController *)self isEditing];

LABEL_31:
    if ((isEditing & 1) == 0)
    {
      goto LABEL_65;
    }

LABEL_55:
    [commandCopy setAttributes:1];
    goto LABEL_65;
  }

  if (action == "_openMessageCommandInvoked:")
  {
    [(MessageListViewController *)self _shouldUsePluralPrompt];
    v36 = sub_10016D69C();
    v37 = v36;
    [commandCopy setTitle:v36];

    messageListSelectionModel2 = [(MessageListViewController *)self messageListSelectionModel];
    if ([messageListSelectionModel2 isSelectAll])
    {
      goto LABEL_54;
    }

    isEditing = [(MessageListViewController *)self shouldDisplayGroupedSenders];

    goto LABEL_31;
  }

  if (action == "_favoriteMailboxShortcutInvoked:" || action == "_moveMessageToFavoriteMailboxShortcutInvoked:")
  {
    propertyList = [commandCopy propertyList];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = off_100651040;
      if (v6 != "_favoriteMailboxShortcutInvoked:")
      {
        v8 = off_100651050;
      }

      v41 = *v8;
      v9 = [propertyList objectForKeyedSubscript:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        integerValue = [v9 integerValue];
        favoritesShortcutsProvider = [(MessageListViewController *)self favoritesShortcutsProvider];
        referenceMessageListItem = sub_1000B9E70(favoritesShortcutsProvider, integerValue);

        favoritesShortcutsProvider2 = [(MessageListViewController *)self favoritesShortcutsProvider];
        v14 = sub_1000B9F24(favoritesShortcutsProvider2, integerValue);

        if (v6 == "_moveMessageToFavoriteMailboxShortcutInvoked:")
        {
          favoritesShortcutsProvider3 = [(MessageListViewController *)self favoritesShortcutsProvider];
          favoritesShortcutsProvider4 = [(MessageListViewController *)self favoritesShortcutsProvider];
          v17 = sub_1000BA064(favoritesShortcutsProvider4, integerValue);
          v18 = sub_1000BA0F4(favoritesShortcutsProvider3, v17);

          if (!v18 || [v18 isSmartMailbox])
          {
            [commandCopy setAttributes:1];
          }
        }

        if (referenceMessageListItem)
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
      selfCopy = self;
      v47 = 2114;
      v48 = propertyList;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "<%@: %p> Unexpected request to validate favorite shortcut. plist = %{public}@", buf, 0x20u);
    }

    referenceMessageListItem = 0;
LABEL_62:
    [commandCopy setTitle:referenceMessageListItem];
    [commandCopy setImage:v14];

    goto LABEL_63;
  }

LABEL_65:
}

- (void)_refresh:(id)_refresh
{
  dataSource = [(MessageListViewController *)self dataSource];
  [dataSource refresh];

  messageListFetchHelper = [(MessageListViewController *)self messageListFetchHelper];
  v6 = [messageListFetchHelper fetchMailboxesIsUserInitiated:1];

  isRefreshing = [(MessageListViewController *)self isRefreshing];
  v8 = [NSNumber numberWithBool:v6];
  [isRefreshing setObject:v8];

  if ((v6 & 1) == 0)
  {
    [(MessageListViewController *)self _finishRefreshingWaitForDraggingToEnd:1];
  }

  if (EMBlackPearlIsFeatureEnabled() && ([(MessageListViewController *)self isBucketBarHidden]& 1) == 0)
  {

    [(MessageListViewController *)self _refreshBucketsSession];
  }
}

- (void)_toggleSidebar:(id)sidebar
{
  scene = [(MessageListViewController *)self scene];
  splitViewController = [scene splitViewController];
  [splitViewController showMailboxPickerController:-[MessageListViewController _isMailboxListVisibleForController:](self animated:"_isMailboxListVisibleForController:" completion:{splitViewController) ^ 1, 1, 0}];
}

- (void)_finishRefreshingWaitForDraggingToEnd:(BOOL)end
{
  endCopy = end;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018938C;
  v11[3] = &unk_10064C838;
  objc_copyWeak(&v12, &location);
  v4 = objc_retainBlock(v11);
  v5 = v4;
  if (endCopy)
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

- (void)_favoriteMailboxShortcutInvoked:(id)invoked
{
  invokedCopy = invoked;
  v6 = +[MessageListViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v15 = 138412802;
    v16 = v8;
    v17 = 2048;
    selfCopy = self;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@", &v15, 0x20u);
  }

  input = [invokedCopy input];
  integerValue = [input integerValue];

  favoritesShortcutsProvider = [(MessageListViewController *)self favoritesShortcutsProvider];
  v13 = sub_1000BA064(favoritesShortcutsProvider, integerValue - 1);

  if (v13)
  {
    mailboxPickerDelegate = [(MessageListViewController *)self mailboxPickerDelegate];
    [mailboxPickerDelegate messageListViewController:self didSelectFavorite:v13];
  }
}

- (void)_moveMessageToFavoriteMailboxShortcutInvoked:(id)invoked
{
  invokedCopy = invoked;
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  input = [invokedCopy input];
  integerValue = [input integerValue];

  favoritesShortcutsProvider = [(MessageListViewController *)self favoritesShortcutsProvider];
  v7 = sub_1000BA064(favoritesShortcutsProvider, integerValue - 1);

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
    result = 0;
    v17 = 0;
    goto LABEL_18;
  }

  favoritesShortcutsProvider2 = [(MessageListViewController *)self favoritesShortcutsProvider];
  v9 = sub_1000BA0F4(favoritesShortcutsProvider2, v7);

  if ([messageListSelectionModel isSelectAll])
  {
    flattenedMailboxesFuture = [(MessageListViewController *)self flattenedMailboxesFuture];
    result = [flattenedMailboxesFuture result];

    dataSource = [(MessageListViewController *)self dataSource];
    itemIDs = [messageListSelectionModel itemIDs];
    v14 = [dataSource messageListItemsForItemIDs:itemIDs];
    v15 = [EFFuture combine:v14];
    result2 = [v15 result];
    v17 = [result2 ef_filter:EFIsNotNull];
  }

  else
  {
    dataSource = [messageListSelectionModel currentMessageListItemSelection];
    itemIDs = [dataSource messageListItems];
    v17 = [itemIDs ef_filter:EFIsNotNull];
    result = 0;
  }

  if (![v17 count])
  {
    collectionView = [(MessageListViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100189C14;
    v30[3] = &unk_100652218;
    v30[4] = self;
    v22 = [indexPathsForSelectedItems ef_map:v30];

    v23 = [(MessageListViewController *)self selectionModel:messageListSelectionModel messageListItemsForItemIDs:v22];
    v24 = [v23 ef_mapSelector:"result"];

    v17 = v24;
  }

  if (![v17 count])
  {
    name = +[MessageListViewController log];
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      NSStringFromClass(v27);
      objc_claimAutoreleasedReturnValue();
      sub_10048A5C8();
    }

    v19 = 0;
    goto LABEL_16;
  }

  undoManager = [(MessageListViewController *)self undoManager];
  v19 = [(MFTriageInteraction *)MFMoveMessageTriageInteraction interactionWithMessageListItems:v17 undoManager:undoManager origin:2 actor:2];

  if (![v9 isSmartMailbox])
  {
    [v19 setTargetMailbox:v9];
    [v19 setDelegate:self];
    [v19 performInteraction];
LABEL_18:

    sub_10018508C(self, 0);
    goto LABEL_19;
  }

  name = [v9 name];
  -[MessageListViewController _showMoveMessageShortcutErrorForMailbox:count:](self, "_showMoveMessageShortcutErrorForMailbox:count:", name, [v17 count]);
LABEL_16:

LABEL_19:
}

- (void)_showMoveMessageShortcutErrorForMailbox:(id)mailbox count:(int64_t)count
{
  mailboxCopy = mailbox;
  v6 = +[NSBundle mainBundle];
  if (count == 1)
  {
    [v6 localizedStringForKey:@"ERROR_TRANSFERRING_LONG_FORMAT" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v6 localizedStringForKey:@"ERROR_TRANSFERRING_LONG_FORMAT_MANY" value:&stru_100662A88 table:@"Main"];
  }
  v7 = ;

  mailboxCopy = [NSString stringWithFormat:v7, mailboxCopy];
  v9 = [UIAlertController alertControllerWithTitle:mailboxCopy message:0 preferredStyle:1];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];
  [v9 addAction:v12];

  [(MessageListViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_previousMailboxShortcutInvoked:(id)invoked
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
    selfCopy = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@", &v10, 0x20u);
  }

  mailboxPickerDelegate = [(MessageListViewController *)self mailboxPickerDelegate];
  [mailboxPickerDelegate messageListViewControllerWantsToSelectPreviousFavoriteItem:self];
}

- (void)_nextMailboxShortcutInvoked:(id)invoked
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
    selfCopy = self;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@", &v10, 0x20u);
  }

  mailboxPickerDelegate = [(MessageListViewController *)self mailboxPickerDelegate];
  [mailboxPickerDelegate messageListViewControllerWantsToSelectNextFavoriteItem:self];
}

- (void)_expandCollapseThreadCommand:(id)command
{
  commandCopy = command;
  v5 = [(MessageListViewController *)self _plistDictionaryFromSender:commandCopy];
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
    [(MessageListViewController *)self _collapseThreadKeyCommandInvoked:commandCopy];
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
      selfCopy = self;
      v16 = 2048;
      v17 = v7;
      v18 = 2080;
      v19 = "[MessageListViewController _expandCollapseThreadCommand:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "<%@: %p> Unexpected op %ld in %s", &v12, 0x2Au);
    }

LABEL_10:

    goto LABEL_11;
  }

  [(MessageListViewController *)self _expandThreadKeyCommandInvoked:commandCopy];
LABEL_11:
}

- (void)_collapseThreadKeyCommandInvoked:(id)invoked
{
  v12 = 0;
  v13 = 0;
  sub_100187A18(self, &v13, &v12);
  v4 = v13;
  v5 = v12;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource isExpandedThread:v4];
  v8 = [dataSource anyExpandedThreadContainsItemID:v4];
  if (v7)
  {
    result = v5;
    if (!result)
    {
      goto LABEL_15;
    }

LABEL_7:
    [dataSource didSelectDisclosureButtonForMessageListItem:result disclosureEnabled:1];
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
    result = 0;
    goto LABEL_15;
  }

  v10 = [dataSource threadItemIDForItemInExpandedThread:v4];

  if (!v10)
  {
    result = 0;
    v4 = 0;
    goto LABEL_15;
  }

  v11 = [dataSource messageListItemForItemID:v10];
  result = [v11 result];

  v4 = v10;
  if (result)
  {
    goto LABEL_7;
  }

LABEL_15:
}

- (void)_expandThreadKeyCommandInvoked:(id)invoked
{
  v9 = 0;
  sub_100187A18(self, 0, &v9);
  v4 = v9;
  if (v4)
  {
    dataSource = [(MessageListViewController *)self dataSource];
    itemID = [v4 itemID];
    v7 = [dataSource isExpandedThread:itemID];

    if ((v7 & 1) == 0)
    {
      dataSource2 = [(MessageListViewController *)self dataSource];
      [dataSource2 didSelectDisclosureButtonForMessageListItem:v4 disclosureEnabled:0];
    }
  }
}

- (void)selectAll:(id)all
{
  [(MessageListViewController *)self enterEditMode];

  [(MessageListViewController *)self _selectOrDeselectAll:1];
}

- (void)_escapeShortcutInvoked:(id)invoked
{
  invokedCopy = invoked;
  if ((*(self + 8) & 1) != 0 && [(MessageListViewController *)self isEditing])
  {
    [(MessageListViewController *)self _editButtonTapped:0];
  }

  else
  {
    searchController = [(MessageListViewController *)self searchController];
    if ([searchController isActive])
    {
      searchBar = [(MessageListViewController *)self searchBar];
      isFirstResponder = [searchBar isFirstResponder];

      if (isFirstResponder)
      {
        [(MessageListViewController *)self dismissSearchResultsAnimated:1];
      }
    }

    else
    {
    }
  }
}

- (void)_scrollMessageListToTop:(id)top
{
  dataSource = [(MessageListViewController *)self dataSource];
  numberOfSections = [dataSource numberOfSections];
  if (numberOfSections >= 1)
  {
    v5 = 0;
    while (![dataSource numberOfItemsAtSectionIndex:v5])
    {
      if (numberOfSections == ++v5)
      {
        goto LABEL_7;
      }
    }

    v6 = [NSIndexPath indexPathForRow:0 inSection:v5];
    sub_10018A6FC(self, v6, 1);
  }

LABEL_7:
}

- (void)_scrollToCurrentMessage:(id)message
{
  collectionView = [(MessageListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    sub_10018A6FC(self, firstObject, 0);
  }
}

- (void)_initializeMailboxBrowseUserActivityWithMailboxes:(id)mailboxes
{
  mailboxesCopy = mailboxes;
  firstObject = [mailboxesCopy firstObject];
  account = [firstObject account];

  mailboxBrowseActivityPayload = [(MessageListViewController *)self mailboxBrowseActivityPayload];
  v7 = [(MessageListViewController *)self continuityMailboxActivityPayloadFromMailboxes:mailboxesCopy account:account currentActivityPayload:mailboxBrowseActivityPayload];

  [(MessageListViewController *)self setMailboxBrowseActivityPayload:0];
  if (v7)
  {
    v8 = [[NSMutableDictionary alloc] initWithDictionary:v7];
    [(MessageListViewController *)self setMailboxBrowseActivityPayload:v8];

    mailboxBrowseActivityPayload2 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
    v10 = MSMailActivityHandoffTypeBrowseMailbox;
    [mailboxBrowseActivityPayload2 setObject:MSMailActivityHandoffTypeBrowseMailbox forKeyedSubscript:MSMailActivityHandoffTypeKey];

    userActivity = [(MessageListViewController *)self userActivity];
    v12 = userActivity;
    if (!userActivity || ([userActivity activityType], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v10), v13, (v14 & 1) == 0))
    {
      v15 = [[NSUserActivity alloc] initWithActivityType:v10];

      v12 = v15;
      [(MessageListViewController *)self setUserActivity:v15];
    }

    firstObject2 = [mailboxesCopy firstObject];
    mailboxBrowseActivityPayload3 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
    v18 = [mailboxBrowseActivityPayload3 objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeyRemoteMailboxURL];

    v19 = +[NSBundle mainBundle];
    if (v18)
    {
      v20 = [v19 localizedStringForKey:@"BROWSING_FOLDER_FROM_ACCOUNT_TITLE" value:&stru_100662A88 table:@"Main"];
      name = [firstObject2 name];
      name2 = [account name];
      v23 = [NSString stringWithFormat:v20, name, name2];
      [v12 setTitle:v23];

      objectID = [firstObject2 objectID];
      v25 = [objectID url];
      absoluteString = [v25 absoluteString];
      [v12 setTargetContentIdentifier:absoluteString];
    }

    else
    {
      v27 = [v19 localizedStringForKey:@"BROWSING_SPECIAL_FOLDER_TITLE" value:&stru_100662A88 table:@"Main"];
      name3 = [firstObject2 name];
      v29 = [NSString stringWithFormat:v27, name3];
      [v12 setTitle:v29];

      objectID = [(MessageListViewController *)self mailboxBrowseActivityPayload];
      v25 = [objectID objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeySpecialMailboxType];
      [v12 setTargetContentIdentifier:v25];
    }

    mailboxBrowseActivityPayload4 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
    [v12 setUserInfo:mailboxBrowseActivityPayload4];

    mailboxBrowseActivityPayload5 = [(MessageListViewController *)self mailboxBrowseActivityPayload];
    v32 = [(MessageListViewController *)self requiredUserInfoKeysFromUserActivityPayload:mailboxBrowseActivityPayload5];
    [v12 setRequiredUserInfoKeys:v32];

    [v12 setEligibleForSearch:1];
    [v12 setEligibleForPrediction:0];
    [v12 becomeCurrent];
  }
}

- (void)updateUserActivityState:(id)state
{
  stateCopy = state;
  mailboxBrowseActivityPayload = [(MessageListViewController *)self mailboxBrowseActivityPayload];
  [stateCopy setUserInfo:mailboxBrowseActivityPayload];
}

- (id)continuityMailboxActivityPayloadFromMailboxes:(id)mailboxes account:(id)account currentActivityPayload:(id)payload
{
  mailboxesCopy = mailboxes;
  payloadCopy = payload;
  firstObject = [mailboxesCopy firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = firstObject;
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

  if ([mailboxesCopy count] == 1)
  {
    objectID = [firstObject objectID];
    v13 = [objectID url];
    absoluteString = [v13 absoluteString];

    v10 = 0;
LABEL_13:
    v15 = 0;
    goto LABEL_17;
  }

  if (![0 isInboxMailbox])
  {
    v10 = 0;
LABEL_12:
    absoluteString = 0;
    goto LABEL_13;
  }

  v15 = MSMailActivityHandoffBrowseMailboxSpecialMailboxTypeAllInboxes;
  v10 = 0;
LABEL_16:
  absoluteString = 0;
LABEL_17:
  v16 = objc_alloc_init(NSMutableDictionary);
  [v16 setDictionary:payloadCopy];
  if (v15)
  {
    [v16 setObject:v15 forKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeySpecialMailboxType];
    v17 = &MSMailActivityHandoffBrowseMailboxKeyRemoteMailboxURL;
LABEL_21:
    [v16 removeObjectForKey:*v17];
    goto LABEL_22;
  }

  if (absoluteString)
  {
    [v16 setObject:absoluteString forKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeyRemoteMailboxURL];
    v17 = &MSMailActivityHandoffBrowseMailboxKeySpecialMailboxType;
    goto LABEL_21;
  }

  v16 = 0;
LABEL_22:

  return v16;
}

- (id)requiredUserInfoKeysFromUserActivityPayload:(id)payload
{
  allKeys = [payload allKeys];
  v4 = [NSMutableSet setWithArray:allKeys];

  [v4 removeObject:MSMailActivityHandoffBrowseMailboxKeyFocusedMessageID];

  return v4;
}

- (void)_updateMailboxPositionUserActivity
{
  userActivity = [(MessageListViewController *)self userActivity];
  if (userActivity)
  {
    mailboxBrowseActivityPayload = self->_mailboxBrowseActivityPayload;

    if (mailboxBrowseActivityPayload)
    {
      userActivity2 = [(MessageListViewController *)self userActivity];
      [userActivity2 becomeCurrent];
    }
  }
}

- (BOOL)_isActivityEligibleForPredictionWithPayload:(id)payload
{
  v3 = [payload objectForKeyedSubscript:MSMailActivityHandoffBrowseMailboxKeySpecialMailboxType];
  v4 = v3 != MSMailActivityHandoffBrowseMailboxSpecialMailboxTypeAllInboxes;

  return v4;
}

- (id)presentingViewControllerForTriageInteraction:(id)interaction
{
  presentedViewController = [(MessageListViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(MessageListViewController *)self presentedViewController];
  }

  else
  {
    scene = [(MessageListViewController *)self scene];
    presentedViewController2 = [scene dockContainer];
  }

  return presentedViewController2;
}

- (id)messageRepositoryForTriageInteraction:(id)interaction
{
  messageRepository = [(MessageListViewController *)self messageRepository];

  return messageRepository;
}

- (void)presentTransferUIWithMoveInteraction:(id)interaction prediction:(id)prediction fromViewController:(id)controller didDismissHandler:(id)handler
{
  interactionCopy = interaction;
  predictionCopy = prediction;
  handlerCopy = handler;
  v27 = predictionCopy;
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10018B748;
  v31[3] = &unk_100652B40;
  v31[4] = self;
  v12 = interactionCopy;
  v32 = v12;
  v25 = messageListSelectionModel;
  v33 = v25;
  v13 = objc_retainBlock(v31);
  _stackViewTransferOptions = [(MessageListViewController *)self _stackViewTransferOptions];
  messageListItemSelection = [v12 messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v17 = [(MessageListViewController *)self _transferControllerWithMessages:messageListItems options:_stackViewTransferOptions | 2 interaction:v12 didDismissHandler:handlerCopy];

  transferNavigationController = [v17 transferNavigationController];
  [transferNavigationController setMailboxPrediction:predictionCopy];
  [transferNavigationController setDidFinish:v13];
  [(MessageListViewController *)self setTransferController:v17];
  transferStackViewController = [(MessageListViewController *)self transferStackViewController];
  navigationController = [transferStackViewController navigationController];

  scene = [(MessageListViewController *)self scene];
  mf_rootViewController = [scene mf_rootViewController];
  transferController = [(MessageListViewController *)self transferController];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10018B88C;
  v28[3] = &unk_10064C660;
  v24 = navigationController;
  v29 = v24;
  selfCopy = self;
  [mf_rootViewController presentViewController:transferController animated:1 completion:v28];
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

  mailboxes = [(MessageListViewController *)self mailboxes];
  v5 = [EMMailbox shouldArchiveByDefaultForMailboxes:mailboxes];

  if (v5)
  {
    return v3 | 0x10;
  }

  mailboxes2 = [(MessageListViewController *)self mailboxes];
  v8 = [EMMailbox deleteMovesToTrashForMailboxes:mailboxes2];

  if (v8)
  {
    return v3 | 0x20;
  }

  else
  {
    return v3;
  }
}

- (void)filterUIWithFilterInteraction:(id)interaction
{
  interactionCopy = interaction;
  v4 = [MFMailboxFilter alloc];
  messageListItemSelection = [interactionCopy messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  firstObject = [messageListItems firstObject];
  v8 = [(MFMailboxFilter *)v4 initForSender:firstObject];

  filterViewModel = [(MessageListViewController *)self filterViewModel];
  [filterViewModel setSenderFilter:v8];

  [(MessageListViewController *)self setFiltersEnabled:1];
}

- (void)_updateStackViewController
{
  splitViewController = [(MessageListViewController *)self splitViewController];
  traitCollection = [splitViewController traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2 && [(MessageListViewController *)self _inMultiSelectionMode])
  {

    [(MessageListViewController *)self _setRowDeletionEnabled:1 animated:0];
  }
}

- (id)transferStackViewController:(id)controller displayMessageForMessageListItemWithItemID:(id)d
{
  dCopy = d;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource messageListItemForItemID:dCopy];
  v8 = [EFScheduler globalAsyncSchedulerWithQualityOfService:33];
  v9 = [v7 onScheduler:v8 then:&stru_100652B60];

  return v9;
}

- (id)transferStackViewController:(id)controller itemIDsToDisplayFromItemIDs:(id)ds
{
  controllerCopy = controller;
  dsCopy = ds;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = dsCopy;
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
        dataSource = [(MessageListViewController *)self dataSource];
        v14 = [dataSource itemIDsInExpandedThread:v12];

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

- (void)_updateThreadingPreference:(id)preference
{
  state = [(MessageListViewController *)self state];
  containsDraftsOrOutbox = [state containsDraftsOrOutbox];

  if ((containsDraftsOrOutbox & 1) == 0)
  {
    v6 = +[NSUserDefaults em_userDefaults];
    -[MessageListViewController setThreaded:](self, "setThreaded:", [v6 BOOLForKey:DisableThreadingKey] ^ 1);

    [(MessageListViewController *)self reloadDataSource];
  }
}

- (void)_updateListForChange:(id)change
{
  layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
  [layoutValuesHelper invalidate];

  [(MessageListViewController *)self _invalidateCachedUseCompactRows];
  shouldDisplayGroupedSenders = [(MessageListViewController *)self shouldDisplayGroupedSenders];
  dataSource = [(MessageListViewController *)self dataSource];
  [dataSource reloadVisibleCellsInvalidatingCache:shouldDisplayGroupedSenders];
}

- (id)leadingSwipeActionsConfigurationAtIndexPath:(id)path
{
  pathCopy = path;
  if (![(MessageListViewController *)self _shouldShowSwipeActionsAtIndexPath:pathCopy])
  {
    dataSource2 = +[MessageListViewController log];
    if (os_log_type_enabled(dataSource2, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      *buf = 138413058;
      v68 = v44;
      v69 = 2048;
      selfCopy9 = self;
      v71 = 2114;
      v72 = v45;
      v73 = 2114;
      v74 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, dataSource2, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Disable leading swipe actions at index path: %{public}@", buf, 0x2Au);
    }

    goto LABEL_7;
  }

  dataSource = [(MessageListViewController *)self dataSource];
  section = [pathCopy section];
  v8 = [dataSource isSection:MessageListSectionMailCleanupTip atIndex:section];

  if (v8)
  {
    dataSource2 = +[MessageListViewController log];
    if (os_log_type_enabled(dataSource2, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138413058;
      v68 = v11;
      v69 = 2048;
      selfCopy9 = self;
      v71 = 2114;
      v72 = v12;
      v73 = 2114;
      v74 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, dataSource2, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Disable leading swipe actions for mail-cleanup section at index path: %{public}@", buf, 0x2Au);
    }

LABEL_7:
    v13 = 0;
    goto LABEL_45;
  }

  dataSource2 = [(MessageListViewController *)self dataSource];
  v66 = +[NSMutableArray array];
  collectionView = [(MessageListViewController *)self collectionView];
  v65 = [collectionView cellForItemAtIndexPath:pathCopy];

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
      selfCopy9 = self;
      v71 = 2114;
      v72 = v57;
      v73 = 2114;
      v74 = pathCopy;
      _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "<%@: %p> %{public}@: [Swipe Actions] No message list item at index path: %{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v17 = [dataSource2 messageListItemAtIndexPath:pathCopy];
    result = [v17 result];

    log = result;
    if (result)
    {
      v19 = +[MessageListViewController log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        ef_publicDescription = [result ef_publicDescription];
        mailboxes = [(MessageListViewController *)self mailboxes];
        v25 = [mailboxes ef_mapSelector:"ef_publicDescription"];
        *buf = 138413570;
        v68 = v21;
        v69 = 2048;
        selfCopy9 = self;
        v71 = 2112;
        v72 = v22;
        v73 = 2112;
        v74 = pathCopy;
        v75 = 2112;
        v76 = ef_publicDescription;
        v77 = 2112;
        v78 = v25;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ %@, [Swipe Actions] item: %@\nmailboxes: %@", buf, 0x3Eu);
      }

      state = [(MessageListViewController *)self state];
      isOutgoingMailbox = [state isOutgoingMailbox];

      if (isOutgoingMailbox)
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
          selfCopy9 = self;
          v71 = 2114;
          v72 = v60;
          v73 = 2114;
          v74 = pathCopy;
          _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding Move swipe action for index path: %{public}@", buf, 0x2Au);
        }

        v31 = [(MessageListViewController *)self _swipeActionForTriageAction:7 indexPath:pathCopy];
        [v66 ef_addOptionalObject:v31];
      }

      v32 = sub_10024BB48(0);
      v33 = [MFTriageActionUtilities triageActionForActionKey:v32];

      state2 = [(MessageListViewController *)self state];
      v35 = state2;
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
            selfCopy9 = self;
            v71 = 2114;
            v72 = v63;
            v73 = 2114;
            v74 = pathCopy;
            _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding leading Archive/Delete swipe action for index path: %{public}@", buf, 0x2Au);
          }

          v37 = [(MessageListViewController *)self _swipeActionForTriageAction:v33 indexPath:pathCopy];
          [v66 ef_addOptionalObject:v37];

          goto LABEL_28;
        }

        if (([state2 containsArchiveMailbox] & 1) == 0 && (objc_msgSend(v35, "containsTrashMailbox") & 1) == 0)
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
          selfCopy9 = self;
          v71 = 2114;
          v72 = v51;
          v73 = 2114;
          v74 = pathCopy;
          _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding Read Later swipe action for index path: %{public}@", buf, 0x2Au);
        }

        v39 = [(MessageListViewController *)self _swipeActionForTriageAction:3 indexPath:pathCopy];
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
          selfCopy9 = self;
          v71 = 2114;
          v72 = v54;
          v73 = 2114;
          v74 = pathCopy;
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
      selfCopy9 = self;
      v71 = 2114;
      v72 = v48;
      v73 = 2114;
      v74 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Message list returned nil for index path: %{public}@", buf, 0x2Au);
    }
  }

  v13 = 0;
LABEL_44:

LABEL_45:

  return v13;
}

- (id)trailingSwipeActionsConfigurationAtIndexPath:(id)path
{
  pathCopy = path;
  if (![(MessageListViewController *)self _shouldShowSwipeActionsAtIndexPath:pathCopy])
  {
    dataSource2 = +[MessageListViewController log];
    if (os_log_type_enabled(dataSource2, OS_LOG_TYPE_ERROR))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = NSStringFromSelector(a2);
      *buf = 138413058;
      v89 = v56;
      v90 = 2048;
      selfCopy12 = self;
      v92 = 2114;
      v93 = v57;
      v94 = 2114;
      v95 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, dataSource2, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Disable trailing swipe actions at index path: %{public}@", buf, 0x2Au);
    }

    goto LABEL_7;
  }

  dataSource = [(MessageListViewController *)self dataSource];
  section = [pathCopy section];
  v8 = [dataSource isSection:MessageListSectionMailCleanupTip atIndex:section];

  if (v8)
  {
    dataSource2 = +[MessageListViewController log];
    if (os_log_type_enabled(dataSource2, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138413058;
      v89 = v11;
      v90 = 2048;
      selfCopy12 = self;
      v92 = 2114;
      v93 = v12;
      v94 = 2114;
      v95 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, dataSource2, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Disable trailing swipe actions for mail-cleanup section at index path: %{public}@", buf, 0x2Au);
    }

LABEL_7:
    v13 = 0;
    goto LABEL_42;
  }

  dataSource2 = [(MessageListViewController *)self dataSource];
  v14 = [dataSource2 messageListItemAtIndexPath:pathCopy];
  result = [v14 result];

  v87 = result;
  if (!result)
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
      selfCopy12 = self;
      v92 = 2114;
      v93 = v60;
      v94 = 2114;
      v95 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] Message list returned nil for index path: %{public}@", buf, 0x2Au);
    }

    v13 = 0;
    goto LABEL_41;
  }

  collectionView = [(MessageListViewController *)self collectionView];
  log = [collectionView cellForItemAtIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = log;
    cellHelper = [v17 cellHelper];
    messageListItem = [cellHelper messageListItem];

    if (!messageListItem)
    {
      state = +[MessageListViewController log];
      if (os_log_type_enabled(state, OS_LOG_TYPE_FAULT))
      {
        v76 = objc_opt_class();
        v77 = NSStringFromClass(v76);
        v78 = NSStringFromSelector(a2);
        *buf = 138413058;
        v89 = v77;
        v90 = 2048;
        selfCopy12 = self;
        v92 = 2114;
        v93 = v78;
        v94 = 2114;
        v95 = pathCopy;
        _os_log_fault_impl(&_mh_execute_header, state, OS_LOG_TYPE_FAULT, "<%@: %p> %{public}@: [Swipe Actions] No message list item at index path: %{public}@", buf, 0x2Au);
      }

      v13 = 0;
      goto LABEL_40;
    }

    cellHelper2 = [v17 cellHelper];
    predictedMailbox = [cellHelper2 predictedMailbox];

    if (!predictedMailbox)
    {
      v100 = v87;
      v22 = [NSArray arrayWithObjects:&v100 count:1];
      v23 = [MFMoveToPredictionTriageInteraction predictMailboxForMovingMessages:v22];

      cellHelper3 = [v17 cellHelper];
      [cellHelper3 setPredictedMailbox:v23];
    }
  }

  shouldArchiveByDefault = [v87 shouldArchiveByDefault];
  v25 = +[MessageListViewController log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(a2);
    ef_publicDescription = [v87 ef_publicDescription];
    mailboxes = [(MessageListViewController *)self mailboxes];
    v31 = [mailboxes ef_mapSelector:"ef_publicDescription"];
    *buf = 138413570;
    v89 = v27;
    v90 = 2048;
    selfCopy12 = self;
    v92 = 2112;
    v93 = v28;
    v94 = 2112;
    v95 = pathCopy;
    v96 = 2112;
    v97 = ef_publicDescription;
    v98 = 2112;
    v99 = v31;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ %@, [Swipe Actions] item: %@\nmailboxes: %@", buf, 0x3Eu);
  }

  v17 = +[NSMutableArray array];
  state = [(MessageListViewController *)self state];
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
      selfCopy12 = self;
      v92 = 2114;
      v93 = v63;
      v94 = 2114;
      v95 = pathCopy;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding Remove-high-impact swipe action for index path: %{public}@", buf, 0x2Au);
    }

    v34 = [(MessageListViewController *)self _swipeActionForTriageAction:21 indexPath:pathCopy];
    [v17 ef_addOptionalObject:v34];
  }

  if (!-[MessageListViewController _allowReadLaterActions](self, "_allowReadLaterActions") || ([v87 readLater], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "date"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v36 == 0, v36, v35, v37))
  {
    if ((-[NSObject containsFollowUpMailbox](state, "containsFollowUpMailbox") & 1) != 0 || -[NSObject containsInbox](state, "containsInbox") && ([v87 followUp], v41 = objc_claimAutoreleasedReturnValue(), v42 = v41 == 0, v41, !v42))
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
        selfCopy12 = self;
        v92 = 2114;
        v93 = v66;
        v94 = 2114;
        v95 = pathCopy;
        _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding Remove-follow-up and more swipe actions for index path: %{public}@", buf, 0x2Au);
      }

      v44 = [(MessageListViewController *)self _swipeActionForTriageAction:5 indexPath:pathCopy];
      [v17 ef_addOptionalObject:v44];

      v40 = [(MessageListViewController *)self _swipeActionForTriageAction:1 indexPath:pathCopy];
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
        selfCopy12 = self;
        v92 = 2114;
        v93 = v75;
        v94 = 2114;
        v95 = pathCopy;
        _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding trailing primary-destructive swipe action for index path: %{public}@", buf, 0x2Au);
      }

      if (shouldArchiveByDefault)
      {
        v48 = 9;
      }

      else
      {
        v48 = 8;
      }

      v49 = [(MessageListViewController *)self _swipeActionForTriageAction:v48 indexPath:pathCopy];
      [v17 ef_addOptionalObject:v49];

      if (([state containsDraftsOrOutbox]& 1) != 0 || ([state containsSendLaterMailbox]& 1) != 0)
      {
        goto LABEL_35;
      }

      v50 = sub_10024BC14(0);
      v51 = [MFTriageActionUtilities triageActionForActionKey:v50];

      if (v51)
      {
        if (v51 == 16)
        {
          if (shouldArchiveByDefault)
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
          selfCopy12 = self;
          v92 = 2114;
          v93 = v84;
          v94 = 2114;
          v95 = pathCopy;
          _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding trailing Archive/Delete swipe action for index path: %{public}@", buf, 0x2Au);
        }

        v53 = [(MessageListViewController *)self _swipeActionForTriageAction:v51 indexPath:pathCopy];
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
        selfCopy12 = self;
        v92 = 2114;
        v93 = v81;
        v94 = 2114;
        v95 = pathCopy;
        _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding more swipe action for index path: %{public}@", buf, 0x2Au);
      }

      v40 = [(MessageListViewController *)self _swipeActionForTriageAction:1 indexPath:pathCopy];
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
      selfCopy12 = self;
      v92 = 2114;
      v93 = v72;
      v94 = 2114;
      v95 = pathCopy;
      _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "<%@: %p> %{public}@: [Swipe Actions] Adding Remove-read-later and more swipe actions for index path: %{public}@", buf, 0x2Au);
    }

    v39 = [(MessageListViewController *)self _swipeActionForTriageAction:4 indexPath:pathCopy];
    [v17 ef_addOptionalObject:v39];

    v40 = [(MessageListViewController *)self _swipeActionForTriageAction:1 indexPath:pathCopy];
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
      selfCopy12 = self;
      v92 = 2114;
      v93 = v69;
      v94 = 2114;
      v95 = pathCopy;
      _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "<%@: %p> %{public}@: [Swipe Actions] No trailing swipe actions for index path: %{public}@", buf, 0x2Au);
    }
  }

  v13 = [UISwipeActionsConfiguration configurationWithActions:v17];
LABEL_40:

LABEL_41:
LABEL_42:

  return v13;
}

- (BOOL)_shouldShowSwipeActionsAtIndexPath:(id)path
{
  pathCopy = path;
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
        dataSource = [(MessageListViewController *)self dataSource];
        LOBYTE(v9) = [dataSource isSection:v9 atIndex:{objc_msgSend(pathCopy, "section")}];

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

- (BOOL)_shouldShowClearHighImpactForMessageListItem:(id)item
{
  itemCopy = item;
  if (EMBlackPearlIsFeatureEnabled() && ([(MessageListViewController *)self isBucketBarHidden]& 1) == 0)
  {
    category = [itemCopy category];
    if ([category isHighImpact])
    {
      category2 = [itemCopy category];
      type = [category2 type];
      [(MessageListViewController *)self selectedBucket];
      v5 = type != EMCategoryTypeForBucket() && [(MessageListViewController *)self selectedBucket]== 1;
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

- (void)setSwipeActionVisible:(BOOL)visible
{
  visibleCopy = visible;
  v6.receiver = self;
  v6.super_class = MessageListViewController;
  if ([(MessageListViewController *)&v6 swipeActionVisible]!= visible)
  {
    v5.receiver = self;
    v5.super_class = MessageListViewController;
    [(MessageListViewController *)&v5 setSwipeActionVisible:visibleCopy];
    if (!visibleCopy)
    {
      sub_10016ED28(self);
    }
  }
}

- (void)_prepareForMoveOrDestructiveInteraction:(id)interaction completion:(id)completion
{
  completionCopy = completion;
  messageListItemSelection = [interaction messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];

  v9 = [messageListItems ef_map:&stru_100652BA0];
  [(MessageListViewController *)self setSwipeActionVisible:0];
  messageSelectionStrategy = [(MessageListViewController *)self messageSelectionStrategy];
  collectionView = [(MessageListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10018E270;
  v18[3] = &unk_100652218;
  v18[4] = self;
  v13 = [indexPathsForSelectedItems ef_map:v18];
  v14 = [NSSet setWithArray:v13];

  if ([messageSelectionStrategy shouldChangeSelectionAfterDeletedMessageItemIDs:v9 selectedItemIDs:v14])
  {
    messageSelectionStrategy2 = [(MessageListViewController *)self messageSelectionStrategy];
    v16 = [messageSelectionStrategy2 itemIDToSelectAfterDeletedMessageItemIDs:v9];
    [(MessageListViewController *)self setItemIDToSelectAfterMoveID:v16];
  }

  dataSource = [(MessageListViewController *)self dataSource];
  [dataSource deleteItemsWithIDs:v9 animated:1 immediateCompletion:1 completion:completionCopy];
}

- (void)_didPerformMoveOrDestructiveInteraction:(id)interaction
{
  interactionCopy = interaction;
  scene = [(MessageListViewController *)self scene];
  isInExpandedEnvironment = [scene isInExpandedEnvironment];

  if (isInExpandedEnvironment)
  {
    messageListItemSelection = [interactionCopy messageListItemSelection];
    messageListItems = [messageListItemSelection messageListItems];
    v8 = [messageListItems ef_map:&stru_100652BC0];

    conversationViewController = [(MessageListViewController *)self conversationViewController];
    referenceMessageListItem = [conversationViewController referenceMessageListItem];
    itemID = [referenceMessageListItem itemID];
    v12 = [v8 containsObject:itemID];

    if (v12)
    {
      [(MessageListViewController *)self _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:v8 showConversationView:1];
    }
  }
}

- (id)_swipeActionForTriageAction:(int64_t)action indexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListViewController *)self dataSource];
  v8 = [dataSource itemIdentifierForIndexPath:pathCopy];

  dataSource2 = [(MessageListViewController *)self dataSource];
  v10 = [dataSource2 messageListItemAtIndexPath:pathCopy];
  result = [v10 result];

  if (result)
  {
    conversationViewController = [(MessageListViewController *)self conversationViewController];
    v66 = result;
    v48 = [NSArray arrayWithObjects:&v66 count:1];
    referenceMessageListItem = [conversationViewController referenceMessageListItem];
    if (referenceMessageListItem == result && [result count] == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [MessageStatusIndicatorManager doesUpdateForChangeAction:action];

        if (!v13)
        {
          goto LABEL_12;
        }

        displayMessageItemID = [result displayMessageItemID];
        referenceMessageListItem = [conversationViewController messageForItemID:displayMessageItemID];

        if (referenceMessageListItem)
        {
          v65[0] = result;
          v65[1] = referenceMessageListItem;
          v15 = [NSArray arrayWithObjects:v65 count:2];

          v48 = v15;
        }

        v16 = +[MessageListViewController log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          objectID = [result objectID];
          objectID2 = [referenceMessageListItem objectID];
          *buf = 134218498;
          actionCopy = action;
          v69 = 2114;
          selfCopy = objectID;
          v71 = 2114;
          v72 = objectID2;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "For changeAction:%ld, include both itemID:%{public}@ displayMessage:%{public}@", buf, 0x20u);
        }
      }
    }

LABEL_12:
    [(MessageListViewController *)self reportEngagementAction:3 onItemID:v8 atIndexPath:pathCopy];
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
    v19 = action == 4;
    if (!action)
    {
      v22 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10018F450;
    v60[3] = &unk_100652BE8;
    actionCopy2 = action;
    v60[4] = self;
    v61 = pathCopy;
    v45 = objc_retainBlock(v60);
    if (action <= 5)
    {
      if (action == 2)
      {
        undoManager = [(MessageListViewController *)self undoManager];
        action = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager origin:2 actor:2 reason:4];

        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_10018F66C;
        v58[3] = &unk_10064D658;
        v58[4] = self;
        v59 = v45;
        v22 = [action swipeActionWithPreparation:0 completion:v58];
        v27 = v59;
        goto LABEL_29;
      }

      if (action == 3)
      {
        undoManager2 = [(MessageListViewController *)self undoManager];
        v21 = [MFReadLaterTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager2 origin:2 actor:2];
LABEL_26:

        view = [(MessageListViewController *)self view];
        [v21 setPresentationSource:view];

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
        action = v27;
LABEL_29:

LABEL_32:
        goto LABEL_33;
      }

LABEL_24:
      if (action == 4)
      {
        undoManager2 = [(MessageListViewController *)self undoManager];
        v25 = +[_TtC10MobileMail33MFReadLaterTriageInteractionState removeDateState];
        v21 = [MFReadLaterTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager2 origin:2 actor:2 state:v25];

        goto LABEL_26;
      }

      if (action > 8)
      {
        if (action > 10)
        {
          if (action == 11)
          {
            undoManager3 = [(MessageListViewController *)self undoManager];
            action = [(MFConversationFlagTriageInteraction *)MFMuteTriageInteraction interactionWithReferenceMessage:result undoManager:undoManager3 origin:2 actor:2];

            view2 = [(MessageListViewController *)self view];
            [action setPresentationSource:view2];

            swipeAction = [action swipeAction];
            goto LABEL_31;
          }

          if (action == 15)
          {
            undoManager4 = [(MessageListViewController *)self undoManager];
            action = [(MFFlagChangeTriageInteraction *)MFJunkTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager4 origin:2 actor:2 reason:4];

            swipeAction = [action swipeAction];
            goto LABEL_31;
          }

          goto LABEL_58;
        }

        if (action != 9)
        {
          undoManager5 = [(MessageListViewController *)self undoManager];
          action = [(MFConversationFlagTriageInteraction *)MFNotifyTriageInteraction interactionWithReferenceMessage:result undoManager:undoManager5 origin:2 actor:2];

          view3 = [(MessageListViewController *)self view];
          [action setPresentationSource:view3];

          swipeAction = [action swipeAction];
          goto LABEL_31;
        }

        undoManager6 = [(MessageListViewController *)self undoManager];
        action = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager6 origin:2 actor:2];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [action setShouldAskForConfirmation:1];
          [action setDelegate:self];
        }
      }

      else
      {
        if (action <= 6)
        {
          if (action == 1)
          {
            undoManager7 = [(MessageListViewController *)self undoManager];
            v39 = [MFMoreTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager7 origin:2 actor:2];

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

          if (action == 5)
          {
            undoManager8 = [(MessageListViewController *)self undoManager];
            action = [(MFDestructiveTriageInteraction *)MFRemoveFollowUpTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager8 origin:2 actor:2];

            swipeAction = [action swipeActionWithPreparation:v46 completion:v47];
            goto LABEL_31;
          }

LABEL_58:
          v27 = MFLogGeneral();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10048A6C8();
          }

          v22 = 0;
          action = 0;
          goto LABEL_29;
        }

        if (action == 7)
        {
          undoManager9 = [(MessageListViewController *)self undoManager];
          view4 = [(MessageListViewController *)self view];
          action = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager9 origin:2 actor:2 presentationSource:view4 delegate:self presentingViewController:self predictedMailbox:0];

          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_10018F838;
          v53[3] = &unk_10064D658;
          v53[4] = self;
          v54 = v45;
          v22 = [action swipeActionWithPreparation:0 completion:v53];
          v27 = v54;
          goto LABEL_29;
        }

        undoManager10 = [(MessageListViewController *)self undoManager];
        action = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager10 origin:2 actor:2];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [action setShouldAskForConfirmation:1];
          [action setDelegate:self];
        }
      }

      swipeAction = [action swipeActionWithPreparation:v46 completion:v47];
      goto LABEL_31;
    }

    if (action == 21)
    {
      undoManager11 = [(MessageListViewController *)self undoManager];
      action = [(MFDestructiveTriageInteraction *)MFRemoveHighImpactTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager11 origin:2 actor:2];

      swipeAction = [action swipeActionWithPreparation:v46 completion:v47];
    }

    else
    {
      if (action != 6)
      {
        goto LABEL_24;
      }

      undoManager12 = [(MessageListViewController *)self undoManager];
      action = [(MFFlagChangeTriageInteraction *)MFFlagTriageInteraction interactionWithMessageListItems:v48 undoManager:undoManager12 origin:2 actor:2 reason:4];

      [action setDelegate:self];
      swipeAction = [action swipeActionWithPreparation:0 completion:v45];
    }

LABEL_31:
    v22 = swipeAction;
    goto LABEL_32;
  }

  action = +[MessageListViewController log];
  if (os_log_type_enabled(action, OS_LOG_TYPE_ERROR))
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    *buf = 138413058;
    actionCopy = v33;
    v69 = 2048;
    selfCopy = self;
    v71 = 2112;
    v72 = v8;
    v73 = 2112;
    v74 = pathCopy;
    _os_log_error_impl(&_mh_execute_header, action, OS_LOG_TYPE_ERROR, "<%@: %p> Failed to obtain messageListItem for itemID:%@ at indexPath:%@", buf, 0x2Au);
  }

  v22 = 0;
LABEL_34:

  return v22;
}

- (void)_reportReadTriageInteraction:(id)interaction didPerform:(BOOL)perform
{
  performCopy = perform;
  interactionCopy = interaction;
  if (performCopy)
  {
    v14 = interactionCopy;
    messageListItemSelection = [interactionCopy messageListItemSelection];
    isSelectAll = [messageListItemSelection isSelectAll];

    interactionCopy = v14;
    if ((isSelectAll & 1) == 0)
    {
      messageListItemSelection2 = [v14 messageListItemSelection];
      messageListItems = [messageListItemSelection2 messageListItems];
      firstObject = [messageListItems firstObject];
      itemID = [firstObject itemID];

      if (itemID)
      {
        dataSource = [(MessageListViewController *)self dataSource];
        [dataSource didScheduleReadInteractionForItemID:itemID];
      }

      interactionCopy = v14;
    }
  }
}

- (void)mailboxFilterPickerViewController:(id)controller didFinishPickingWithSelectedFilters:(id)filters
{
  filtersCopy = filters;
  filterViewModel = [(MessageListViewController *)self filterViewModel];
  [filterViewModel setSelectedFilters:filtersCopy];

  [(MessageListViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(MessageListViewController *)self setFiltersEnabled:1];
  [(MessageListViewController *)self _appStoreReviewNotifyFilterCriterionIfNecessaryFor:filtersCopy];
}

- (void)_appStoreReviewNotifyFilterCriterionIfNecessaryFor:(id)for
{
  v13 = [NSSet setWithArray:for];
  filterViewModel = [(MessageListViewController *)self filterViewModel];
  provider = [filterViewModel provider];
  defaultFilters = [provider defaultFilters];
  v7 = [NSSet setWithArray:defaultFilters];

  if (([v13 isEqualToSet:v7] & 1) == 0)
  {
    v8 = +[UIApplication sharedApplication];
    appStoreReviewManager = [v8 appStoreReviewManager];
    [appStoreReviewManager notifyCriterionMet:1];

    scene = [(MessageListViewController *)self scene];
    if (scene)
    {
      v11 = +[UIApplication sharedApplication];
      appStoreReviewManager2 = [v11 appStoreReviewManager];
      [appStoreReviewManager2 attemptToShowPromptIn:scene reason:4];
    }
  }
}

- (id)referenceMessageListItem
{
  conversationViewController = [(MessageListViewController *)self conversationViewController];
  referenceMessageListItem = [conversationViewController referenceMessageListItem];

  return referenceMessageListItem;
}

- (void)setReferenceMessageListItem:(id)item referenceMessageList:(id)list showAsConversation:(BOOL)conversation animated:(BOOL)animated
{
  animatedCopy = animated;
  conversationCopy = conversation;
  itemCopy = item;
  listCopy = list;
  conversationViewController = [(MessageListViewController *)self conversationViewController];
  [conversationViewController setReferenceMessageListItem:itemCopy referenceMessageList:listCopy showAsConversation:conversationCopy animated:animatedCopy];
}

- (BOOL)conversationViewController:(id)controller canAdvanceToNextConversationWithDirection:(int)direction
{
  v4 = *&direction;
  conversationViewController = [(MessageListViewController *)self conversationViewController];
  referenceMessageListItem = [conversationViewController referenceMessageListItem];

  messageSelectionStrategy = [(MessageListViewController *)self messageSelectionStrategy];
  itemID = [referenceMessageListItem itemID];
  v10 = [messageSelectionStrategy itemIDToSelectFromItemID:itemID withDirection:v4];

  return v10 != 0;
}

- (void)conversationViewController:(id)controller advanceToNextConversationWithDirection:(int)direction
{
  v4 = *&direction;
  controllerCopy = controller;
  referenceMessageListItem = [controllerCopy referenceMessageListItem];
  messageSelectionStrategy = [(MessageListViewController *)self messageSelectionStrategy];
  itemID = [referenceMessageListItem itemID];
  v11 = [messageSelectionStrategy itemIDToSelectFromItemID:itemID withDirection:v4];

  v12 = +[MessageListViewController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    v16 = 138413058;
    v17 = v14;
    v18 = 2048;
    selfCopy = self;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<%@: %p> %@ - next itemID:%@", &v16, 0x2Au);
  }

  [(MessageListViewController *)self deselectSelectedItemsInCollectionView];
  [(MessageListViewController *)self _handleDidSelectItemID:v11 referenceItem:0 scrollToVisible:1 userInitiated:1 animated:1];
}

- (BOOL)_shouldPopToMessageListViewControllerFromConversationViewController:(id)controller
{
  controllerCopy = controller;
  scene = [(MessageListViewController *)self scene];
  if (([scene isInExpandedEnvironment] & 1) != 0 || !objc_msgSend(controllerCopy, "isFullyVisible"))
  {
    v7 = 0;
  }

  else
  {
    referenceMessageListItem = [controllerCopy referenceMessageListItem];
    v7 = referenceMessageListItem == 0;
  }

  return v7;
}

- (void)conversationViewController:(id)controller willRemoveAllVisibleMessagesWithItemIDs:(id)ds
{
  dsCopy = ds;
  scene = [(MessageListViewController *)self scene];
  -[MessageListViewController _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:showConversationView:](self, "_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:showConversationView:", dsCopy, [scene isInExpandedEnvironment]);
}

- (void)conversationViewController:(id)controller didRemoveAllVisibleMessagesWithItemIDs:(id)ds
{
  controllerCopy = controller;
  dsCopy = ds;
  referenceMessageListItem = [controllerCopy referenceMessageListItem];
  itemID = [referenceMessageListItem itemID];

  if (!itemID || [dsCopy containsObject:itemID])
  {
    [(MessageListViewController *)self _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:dsCopy conversationViewController:controllerCopy];
  }
}

- (void)selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)ds
{
  dsCopy = ds;
  conversationViewController = [(MessageListViewController *)self conversationViewController];
  [(MessageListViewController *)self _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:dsCopy conversationViewController:conversationViewController];
}

- (void)_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)ds conversationViewController:(id)controller
{
  dsCopy = ds;
  controllerCopy = controller;
  scene = [(MessageListViewController *)self scene];
  -[MessageListViewController _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:showConversationView:](self, "_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:showConversationView:", dsCopy, [scene isInExpandedEnvironment]);
  if ([(MessageListViewController *)self _shouldPopToMessageListViewControllerFromConversationViewController:controllerCopy])
  {
    navigationController = [(MessageListViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v11 = [viewControllers containsObject:self];

    if (v11)
    {
      splitViewController = [scene splitViewController];
      [splitViewController showMessageListViewController:1 animated:1 completion:0];
    }

    else
    {
      v13 = +[MessageListViewController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        navigationController2 = [(MessageListViewController *)self navigationController];
        viewControllers2 = [navigationController2 viewControllers];
        v18 = 138412802;
        v19 = v15;
        v20 = 2048;
        selfCopy = self;
        v22 = 2112;
        v23 = viewControllers2;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "<%@: %p>: didRemoveAllVisibleMessagesWithItemIDs navigationController.viewControllers:%@", &v18, 0x20u);
      }
    }
  }
}

- (void)_selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:(id)ds showConversationView:(BOOL)view
{
  viewCopy = view;
  dsCopy = ds;
  messageSelectionStrategy = [(MessageListViewController *)self messageSelectionStrategy];
  v9 = [messageSelectionStrategy itemIDToSelectAfterDeletedMessageItemIDs:dsCopy];

  v10 = +[MessageListViewController log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    *buf = 138413570;
    v20 = v12;
    v21 = 2048;
    selfCopy = self;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = dsCopy;
    v27 = 1024;
    v28 = viewCopy;
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
    selfCopy2 = self;
    v14 = v17;
    [dsCopy enumerateObjectsUsingBlock:v16];
  }

  LOBYTE(v15) = viewCopy;
  [(MessageListViewController *)self _handleDidSelectItemID:v9 referenceItem:0 scrollToVisible:0 userInitiated:0 canRestoreDraft:1 animated:0 showConversationView:v15];
}

- (id)conversationViewController:(id)controller messagesToActOnForReferenceMessage:(id)message
{
  messageCopy = message;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource messagesInMessageListItem:messageCopy];

  return v7;
}

- (id)conversationViewController:(id)controller messageListItemWithItemID:(id)d
{
  dCopy = d;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource messageListItemForItemID:dCopy];

  return v7;
}

- (BOOL)conversationViewControllerCanShowNoMessageSelectedView:(id)view
{
  noContentView = [(MessageListViewController *)self noContentView];
  window = [noContentView window];
  if (window)
  {
    v6 = (*(self + 8) & 1) == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)shouldUseSelectionDataSourceForConversationViewController:(id)controller
{
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  if (messageListSelectionModel)
  {
    scene = [(MessageListViewController *)self scene];
    mf_rootViewController = [scene mf_rootViewController];
    traitCollection = [mf_rootViewController traitCollection];
    v8 = [UINavigationBar mf_shouldUseDesktopClassNavigationBarForTraitCollection:traitCollection];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)messageListItemSelectionForConversationViewController:(id)controller
{
  v3 = [(MessageListViewController *)self _messageListItemSelectionCreateIfNeeded:0];

  return v3;
}

- (void)conversationViewController:(id)controller performTriageAction:(int64_t)action presentationSource:(id)source
{
  sourceCopy = source;
  if (action == 7)
  {
    sub_100184494(self, sourceCopy);
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

- (void)conversationViewController:(id)controller didPerform:(BOOL)perform triageInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(MessageListViewController *)self isEditing])
  {
    [(MessageListViewController *)self setEditing:0 animated:1];
  }

  else if (-[MessageListViewController _inMultiSelectionMode](self, "_inMultiSelectionMode") && [interactionCopy isDestructive])
  {
    sub_10017A800(self, 1);
  }
}

- (id)messageTriageInteractionHelperForConversationViewController:(id)controller
{
  messageTriageInteractionHelper = [(MessageListViewController *)self messageTriageInteractionHelper];

  return messageTriageInteractionHelper;
}

- (void)selectionModel:(id)model selectItemID:(id)d
{
  dCopy = d;
  dataSource = [(MessageListViewController *)self dataSource];
  v6 = [dataSource indexPathForItemIdentifier:dCopy];

  collectionView = [(MessageListViewController *)self collectionView];
  [collectionView selectItemAtIndexPath:v6 animated:0 scrollPosition:0];
}

- (void)selectionModel:(id)model deselectItemID:(id)d
{
  dCopy = d;
  dataSource = [(MessageListViewController *)self dataSource];
  v6 = [dataSource indexPathForItemIdentifier:dCopy];

  collectionView = [(MessageListViewController *)self collectionView];
  [collectionView deselectItemAtIndexPath:v6 animated:0];
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  pathsCopy = paths;
  dataSource = [(MessageListViewController *)self dataSource];
  if (-[MessageListViewController shouldDisplayGroupedSenders](self, "shouldDisplayGroupedSenders") & 1) != 0 || ([pathsCopy firstObject], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dataSource, "sectionAtIndex:", objc_msgSend(v12, "section")), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(dataSource, "isMessagesSection:", v13), v13, v12, (v14 & 1) == 0) || (-[MessageListViewController dataSource](self, "dataSource"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(pathsCopy, "firstObject"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "section"), v18 = objc_msgSend(v15, "isSection:atIndex:", MessageListSectionMailCleanupTip, v17), v16, v15, (v18))
  {
    v19 = 0;
  }

  else
  {
    if ([pathsCopy count] == 1)
    {
      [pathsCopy firstObject];
    }

    else
    {
      [viewCopy indexPathForItemAtPoint:{x, y}];
    }
    firstObject = ;
    if (firstObject)
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
      selfCopy = self;
      v31 = 2112;
      v32 = v26;
      v33 = 2048;
      v34 = [pathsCopy count];
      v35 = 2112;
      v36 = pathsCopy;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "<%@: %p> Failed to get orbed index path for point: %@, picking the first one from indexPaths (%lu): %@", &v27, 0x34u);
    }

    firstObject = [pathsCopy firstObject];
    if (firstObject)
    {
LABEL_15:
      v19 = [(MessageListViewController *)self _contextMenuConfigurationForIndexPaths:pathsCopy orbedIndexPath:firstObject];
    }

    else
    {
      firstObject = +[MessageListViewController log];
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
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

- (id)_contextMenuConfigurationForIndexPaths:(id)paths orbedIndexPath:(id)path
{
  pathsCopy = paths;
  pathCopy = path;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001918A0;
  v46[3] = &unk_1006528A8;
  v46[4] = self;
  v35 = pathsCopy;
  v8 = [pathsCopy ef_compactMap:v46];
  if (![v8 count])
  {
    v34 = +[NSAssertionHandler currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"MessageListViewController.m" lineNumber:6718 description:{@"Failed to have itemIDs for provided indexPaths:%@", pathsCopy}];
  }

  if ([v8 count] == 1 || (-[MessageListViewController messageListSelectionModel](self, "messageListSelectionModel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isSelectAll"), v9, v10))
  {
    firstObject = [v8 firstObject];
    v12 = [(MessageListViewController *)self _shouldShowItemIDAsConversation:firstObject];

    v13 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  dataSource = [(MessageListViewController *)self dataSource];
  v15 = [dataSource messageListItemAtIndexPath:pathCopy];
  result = [v15 result];

  if (v13)
  {
    scene = [(MessageListViewController *)self scene];
    v17 = [ConversationViewController alloc];
    contactStore = [(MessageListViewController *)self contactStore];
    avatarGenerator = [(MessageListViewController *)self avatarGenerator];
    v20 = [(ConversationViewController *)v17 initWithScene:scene contactStore:contactStore avatarGenerator:avatarGenerator];

    [(ConversationViewControllerBase *)v20 setDelegate:self];
    [(ConversationViewControllerBase *)v20 setIsPrimary:1];
    [(ConversationViewController *)v20 setBeingPreviewed:1];
    v21 = +[MessageListViewController log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromSelector(a2);
      firstObject2 = [v8 firstObject];
      *buf = 138412802;
      v48 = v22;
      v49 = 2112;
      v50 = v20;
      v51 = 2112;
      v52 = firstObject2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", buf, 0x20u);
    }

    searchController = [(MessageListViewController *)self searchController];
    -[ConversationViewControllerBase setMessagesShowSourceMailbox:](v20, "setMessagesShowSourceMailbox:", [searchController isActive]);

    dataSource2 = [(MessageListViewController *)self dataSource];
    v26 = [dataSource2 messageListAtSectionIndex:{objc_msgSend(pathCopy, "section")}];
    [(ConversationViewController *)v20 setReferenceMessageListItem:result referenceMessageList:v26 showAsConversation:v12 animated:1];

    [(MessageListViewController *)self setPreviewConversationViewController:v20];
  }

  else
  {
    v20 = 0;
  }

  v27 = v8;
  objc_initWeak(buf, self);
  objc_initWeak(&location, v20);
  itemID = [result itemID];
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
  v30 = result;
  v41 = v30;
  v31 = [UIContextMenuConfiguration configurationWithIdentifier:itemID previewProvider:v43 actionProvider:v38];

  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  [v31 setBadgeCount:{objc_msgSend(messageListSelectionModel, "count")}];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  return v31;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  configurationCopy = configuration;
  animatorCopy = animator;
  identifier = [configurationCopy identifier];
  v11 = +[MessageListViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    previewConversationViewController = [(MessageListViewController *)self previewConversationViewController];
    *buf = 138412802;
    v18 = v12;
    v19 = 2112;
    v20 = previewConversationViewController;
    v21 = 2112;
    v22 = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", buf, 0x20u);
  }

  if (identifier)
  {
    [(MessageListViewController *)self setPreviewConversationViewController:0];
    objc_initWeak(buf, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100191D38;
    v14[3] = &unk_10064CC78;
    objc_copyWeak(&v16, buf);
    v15 = identifier;
    [animatorCopy addAnimations:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  configurationCopy = configuration;
  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    previewConversationViewController = [(MessageListViewController *)self previewConversationViewController];
    identifier = [configurationCopy identifier];
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = previewConversationViewController;
    v16 = 2112;
    v17 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", &v12, 0x20u);
  }
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  configurationCopy = configuration;
  v8 = +[MessageListViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    previewConversationViewController = [(MessageListViewController *)self previewConversationViewController];
    identifier = [configurationCopy identifier];
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = previewConversationViewController;
    v16 = 2112;
    v17 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", &v12, 0x20u);
  }

  [(MessageListViewController *)self setPreviewConversationViewController:0];
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  supplementaryViewCopy = supplementaryView;
  kindCopy = kind;
  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterSupported())
    {
      v9 = +[MUIPriorityMessageListBackgroundDecorationView elementKind];
      v10 = [kindCopy isEqualToString:v9];

      if (v10)
      {
        [(MessageListViewController *)self setShimmerView:supplementaryViewCopy];
      }
    }
  }
}

- (id)_previewActionsForItemIDs:(id)ds orbedItem:(id)item
{
  dsCopy = ds;
  itemCopy = item;
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  if ([messageListSelectionModel isSelectAll])
  {

    v9 = 0;
    goto LABEL_35;
  }

  v9 = [dsCopy count];

  if (v9)
  {
    dataSource = [(MessageListViewController *)self dataSource];
    v11 = [dataSource messageListItemsForItemIDs:dsCopy];
    v12 = [EFFuture combine:v11];
    result = [v12 result];
    v14 = [result ef_filter:EFIsNotNull];

    if (![v14 count])
    {
      v9 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v60 = v14;
    isEditable = [itemCopy isEditable];
    shouldArchiveByDefault = [itemCopy shouldArchiveByDefault];
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
    v16 = dsCopy;
    v71 = v16;
    v57 = v15;
    v74 = v57;
    selfCopy = self;
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
    itemID = [itemCopy itemID];
    v59 = (v57[2])(v57, itemID);

    if (isEditable)
    {
LABEL_22:
      if ((shouldArchiveByDefault & (isEditable ^ 1)) != 0)
      {
        v43 = 9;
      }

      else
      {
        v43 = 8;
      }

      v44 = (v17[2])(v17, v43, v60, v59);
      (v18[2])(v18, v44);

      senderList = [itemCopy senderList];
      firstObject = [senderList firstObject];

      if (firstObject)
      {
        state = [(MessageListViewController *)self state];
        containsDraftsMailbox = [state containsDraftsMailbox];

        if ((containsDraftsMailbox & 1) == 0)
        {
          if ([itemCopy isBlocked])
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
      firstObject2 = [v30 firstObject];
      (v18[2])(v18, firstObject2);
    }

    else
    {
      if ([v30 count] < 2)
      {
        goto LABEL_16;
      }

      firstObject2 = +[NSBundle mainBundle];
      v53 = [firstObject2 localizedStringForKey:@"MARK_SUBMENU_TITLE" value:&stru_100662A88 table:@"Main"];
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

    state2 = [(MessageListViewController *)self state];
    containsSendLaterMailbox = [state2 containsSendLaterMailbox];

    if ((containsSendLaterMailbox & 1) == 0)
    {
      v42 = (v17[2])(v17, 7, v60, v59);
      (v18[2])(v18, v42);
    }

    goto LABEL_22;
  }

LABEL_35:

  return v9;
}

- (BOOL)shouldShowUnreadCountForMailStatusViewController:(id)controller
{
  if ([(MessageListViewController *)self _isFlaggedMailbox])
  {
    return 0;
  }

  state = [(MessageListViewController *)self state];
  containsDraftsMailbox = [state containsDraftsMailbox];

  return containsDraftsMailbox ^ 1;
}

- (void)mailStatusViewControllerUndoButtonTapped:(id)tapped
{
  v4 = +[UIApplication sharedApplication];
  daemonInterface = [v4 daemonInterface];
  outgoingMessageRepository = [daemonInterface outgoingMessageRepository];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100193410;
  v7[3] = &unk_10064C570;
  v7[4] = self;
  [outgoingMessageRepository cancelLastDelayedMessage:v7];
}

- (void)badgeCountUpdated:(id)updated badgeCount:(int64_t)count
{
  v4 = [EFScheduler mainThreadScheduler:updated];
  [v4 performBlock:&v5];
}

- (void)mailboxStatusUpdatedWithStatusInfo:(id)info forMailboxObjectID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if ([infoCopy state] == 1)
  {
    [(MessageListViewController *)self _finishRefreshingWaitForDraggingToEnd:1];
    if ([infoCopy hasAccountError])
    {
      objc_initWeak(&location, self);
      v8 = +[EFScheduler mainThreadScheduler];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100193780;
      v10[3] = &unk_10064CC78;
      objc_copyWeak(&v12, &location);
      v11 = dCopy;
      v9 = [v8 afterDelay:v10 performBlock:30.0];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  if (state && EFProtectedDataAvailable())
  {
    dataSource = [(MessageListViewController *)self dataSource];
    [dataSource reloadVisibleCellsInvalidatingCache:1];
  }

  else if ((changed - 1) <= 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    collectionView = [(MessageListViewController *)self collectionView];
    preparedCells = [collectionView preparedCells];

    v8 = [preparedCells countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(preparedCells);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            messageListItemFetchTimeoutCancelable = [v11 messageListItemFetchTimeoutCancelable];
            [messageListItemFetchTimeoutCancelable cancel];
          }
        }

        v8 = [preparedCells countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (id)_mailActionsViewDataSourceForMailActionsViewController:(id)controller messageListItem:(id)item predictedMailbox:(id)mailbox indexPath:(id)path cell:(id)cell
{
  controllerCopy = controller;
  itemCopy = item;
  mailboxCopy = mailbox;
  cellCopy = cell;
  objc_initWeak(location, controllerCopy);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100193C88;
  v29[3] = &unk_10064D1F8;
  objc_copyWeak(&v31, location);
  v29[4] = self;
  v15 = cellCopy;
  v30 = v15;
  v16 = objc_retainBlock(v29);
  v17 = [MailActionsViewDataSource alloc];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100193ED4;
  v24[3] = &unk_100652DC0;
  v24[4] = self;
  v18 = controllerCopy;
  v25 = v18;
  v19 = v16;
  v28 = v19;
  v20 = mailboxCopy;
  v26 = v20;
  v21 = itemCopy;
  v27 = v21;
  v22 = [(MailActionsViewDataSource *)v17 initWithBuilderBlock:v24];

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);

  return v22;
}

- (void)mailActionsViewController:(id)controller didSelectAction:(id)action
{
  actionCopy = action;
  if (EMBlackPearlIsFeatureEnabled())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      diagnosticsHelper = [(MessageListViewController *)self diagnosticsHelper];
      [diagnosticsHelper setSource:1];
    }
  }

  [actionCopy executeHandlerIfEnabled];
}

- (id)_displayMetrics
{
  traitCollection = [(MessageListViewController *)self traitCollection];
  view = [(MessageListViewController *)self view];
  [view layoutMargins];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [(MessageListViewController *)self view];
  [view2 safeAreaInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  scene = [(MessageListViewController *)self scene];
  v23 = +[MFMessageDisplayMetrics displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:](MFMessageDisplayMetrics, "displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:", traitCollection, [scene interfaceOrientation], v6, v8, v10, v12, v15, v17, v19, v21);

  return v23;
}

- (id)messageContentRepresentationRequestForMessageTriageInteractionHelper:(id)helper message:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MFMessageCompositionTriageInteraction compositionRepresentationRequestForMessage:messageCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)messageListForMessageTriageInteractionHelper:(id)helper messageListItem:(id)item
{
  itemCopy = item;
  dataSource = [(MessageListViewController *)self dataSource];
  itemID = [itemCopy itemID];
  v8 = [dataSource messageListForMessageListItemWithIdentifier:itemID];

  return v8;
}

- (id)messageTriageInteractionHelper:(id)helper senderRepositoryForMessageListItems:(id)items
{
  v4 = [(MessageListViewController *)self scene:helper];
  daemonInterface = [v4 daemonInterface];
  senderRepository = [daemonInterface senderRepository];

  return senderRepository;
}

- (int64_t)unreadBadgeCountForMessageTriageInteractionHelper:(id)helper
{
  mailStatusObserver = [(MessageListViewController *)self mailStatusObserver];
  badgeCount = [mailStatusObserver badgeCount];

  return badgeCount;
}

- (id)moreTriageInteraction:(id)interaction actionsViewControllerWithInteractionTarget:(id)target didDismissHandler:(id)handler
{
  interactionCopy = interaction;
  targetCopy = target;
  handlerCopy = handler;
  [(MessageListViewController *)self setTriageInteractionTarget:targetCopy, targetCopy];
  dataSource = [(MessageListViewController *)self dataSource];
  messageListItem = [targetCopy messageListItem];
  itemID = [messageListItem itemID];
  v12 = [dataSource indexPathForItemIdentifier:itemID];

  v36 = v12;
  collectionView = [(MessageListViewController *)self collectionView];
  v14 = [collectionView cellForItemAtIndexPath:v12];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cellHelper = [v14 cellHelper];
    predictedMailbox = [cellHelper predictedMailbox];
  }

  else
  {
    predictedMailbox = 0;
  }

  _displayMetrics = [(MessageListViewController *)self _displayMetrics];
  _createMailActionViewHeader = [(MessageListViewController *)self _createMailActionViewHeader];
  v17 = [ConversationCellViewModel alloc];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100194A30;
  v42[3] = &unk_10064CFD8;
  v18 = targetCopy;
  v43 = v18;
  selfCopy = self;
  v19 = [(ConversationCellViewModel *)v17 initWithBuilder:v42];
  [_createMailActionViewHeader setViewModel:v19];

  objc_initWeak(&location, self);
  v20 = [MailActionsViewController alloc];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100194BDC;
  v38[3] = &unk_10064D130;
  objc_copyWeak(&v40, &location);
  v21 = handlerCopy;
  v39 = v21;
  v22 = [(MailActionsViewController *)v20 initWithDelegate:self messageHeaderView:_createMailActionViewHeader didDismissHandler:v38];
  v23 = [[UINavigationController alloc] initWithRootViewController:v22];
  [v23 setModalPresentationStyle:7];
  presentationController = [v23 presentationController];
  [presentationController setDelegate:self];

  presentationSource = [interactionCopy presentationSource];
  popoverPresentationController = [v23 popoverPresentationController];
  [popoverPresentationController setSourceItem:presentationSource];

  if (+[UIDevice mf_isPadIdiom])
  {
    [_displayMetrics mailActionCardPreferredHeightForPad];
    traitCollection = [(MessageListViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      [(MailActionsViewController *)v22 approximateHeightNeededForAccessibilityContentSizeCategory];
    }

    [(MailActionsViewController *)v22 preferredContentSize];
    [v23 setPreferredContentSize:?];
  }

  primaryMessage = [v18 primaryMessage];
  v31 = [(MessageListViewController *)self _mailActionsViewDataSourceForMailActionsViewController:v22 messageListItem:primaryMessage predictedMailbox:predictedMailbox indexPath:v36 cell:v14];
  [(MailActionsViewController *)v22 setDataSource:v31];

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);

  return v23;
}

- (void)presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController = [controllerCopy presentedViewController];
    v9 = [(MessageListViewController *)self _mailActionsViewControllerFromPresentedViewController:presentedViewController];

    if (v9)
    {
      v10 = presentationControllerCopy;
      [v10 _setShouldDismissWhenTappedOutside:1];
      _displayMetrics = [(MessageListViewController *)self _displayMetrics];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100194EA8;
      v16[3] = &unk_100652DE8;
      v17 = v9;
      v12 = _displayMetrics;
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

- (void)presentationControllerWillDismiss:(id)dismiss
{
  if (![(MessageListViewController *)self showingPopoverViewController])
  {
    collectionView = [(MessageListViewController *)self collectionView];
    transitionCoordinator = [(MessageListViewController *)self transitionCoordinator];
    [collectionView mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:transitionCoordinator animated:1];
  }
}

- (id)_mailActionsViewControllerFromPresentedViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [controllerCopy topViewController];
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
      topViewController = controllerCopy;
      goto LABEL_7;
    }
  }

  topViewController = 0;
LABEL_7:

  return topViewController;
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

- (id)itemIDsForStateCaptureWithErrorString:(id *)string
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
    if (string)
    {
      *string = 0;
      v5 = v10[5];
    }

    itemIdentifiers = [v5 itemIdentifiers];
  }

  else
  {
    itemIdentifiers = 0;
  }

  _Block_object_dispose(&v9, 8);

  return itemIdentifiers;
}

- (void)parsecEventQueuePerformBlock:(id)block
{
  blockCopy = block;
  session = [(MessageListViewController *)self session];
  parsecEventQueue = [(MessageListViewController *)self parsecEventQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019575C;
  v9[3] = &unk_10064D270;
  v7 = blockCopy;
  v11 = v7;
  v8 = session;
  v10 = v8;
  [parsecEventQueue performBlock:v9];
}

- (void)reportEngagementAction:(int64_t)action onItemID:(id)d atIndexPath:(id)path
{
  dCopy = d;
  pathCopy = path;
  if ([(MessageListViewController *)self isSearchViewController])
  {
    dataSource = [(MessageListViewController *)self dataSource];
    v11 = [dataSource sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

    if (v11 == MessageListSectionInstantAnswers)
    {
      collectionView = [(MessageListViewController *)self collectionView];
      result = [collectionView cellForItemAtIndexPath:pathCopy];

      instantAnswer = [result instantAnswer];
      v13 = [(MessageListViewController *)self parsecInstantAnswerForInstantAnswer:instantAnswer];
      v14 = 0;
    }

    else
    {
      if (v11 == MessageListSectionTopHits)
      {
        dataSource2 = [(MessageListViewController *)self dataSource];
        v18 = [dataSource2 messageListItemAtIndexPath:pathCopy];
        result = [v18 result];

        date = [result date];
        v14 = [(MessageListViewController *)self parsecTopHitForItemID:dCopy date:date mailRankingSignals:0];
      }

      else
      {
        if (v11 != MessageListSectionIndexedSearch && v11 != MessageListSectionServerSearch)
        {
          instantAnswer = 0;
          v13 = 0;
          v14 = 0;
LABEL_12:
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100195AB8;
          v23[3] = &unk_100652E10;
          v24 = v14;
          v25 = v13;
          v26 = instantAnswer;
          actionCopy = action;
          v20 = instantAnswer;
          v21 = v13;
          v22 = v14;
          [(MessageListViewController *)self parsecEventQueuePerformBlock:v23];

          goto LABEL_13;
        }

        result = [NSString stringWithFormat:@"%@", dCopy];
        v14 = [MSParsecSearchSessionMessageListResult resultWithIdentifier:result];
      }

      instantAnswer = 0;
      v13 = 0;
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (id)parsecInstantAnswerForInstantAnswer:(id)answer
{
  answerCopy = answer;
  message = [answerCopy message];
  flight = [answerCopy flight];
  if (flight && ([answerCopy flight], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "checkInUrl"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = 1;
  }

  else
  {
    hotel = [answerCopy hotel];
    if (hotel)
    {
      hotel2 = [answerCopy hotel];
      address = [hotel2 address];
      v9 = address != 0;
    }

    else
    {
      v9 = 0;
    }

    if (!flight)
    {
      goto LABEL_10;
    }

    v8 = 0;
  }

LABEL_10:
  bodyCardSectionID = [answerCopy bodyCardSectionID];
  buttonsCardSectionID = [answerCopy buttonsCardSectionID];
  v15 = [EMParsecInstantAnswers inlineCardWithManageReservationButton:v9 bodyCardSectionID:bodyCardSectionID buttonsCardSectionID:buttonsCardSectionID];

  itemID = [message itemID];
  date = [message date];
  flight2 = [answerCopy flight];
  v19 = -[MessageListViewController parsecInstantAnswerForItemID:date:inlineCard:isUpdated:](self, "parsecInstantAnswerForItemID:date:inlineCard:isUpdated:", itemID, date, v15, [flight2 infoIsLive]);

  return v19;
}

- (id)parsecInstantAnswerForItemID:(id)d date:(id)date inlineCard:(id)card isUpdated:(BOOL)updated
{
  updatedCopy = updated;
  dateCopy = date;
  cardCopy = card;
  v12 = [(MessageListViewController *)self _identifierForInstantAnswerItemID:d];
  v13 = [MSParsecSearchSessionInstantAnswer instantAnswerWithIdentifier:v12 date:dateCopy inlineCard:cardCopy isInstantAnswerUpdated:updatedCopy];

  return v13;
}

- (id)parsecTopHitForItemID:(id)d date:(id)date mailRankingSignals:(id)signals
{
  dateCopy = date;
  signalsCopy = signals;
  v10 = [(MessageListViewController *)self _identifierForTopHitItemID:d];
  if (signalsCopy)
  {
    v11 = [MSParsecSearchSessionTopHit topHitWithIdentifier:v10 date:dateCopy mailRankingSignals:signalsCopy];
  }

  else
  {
    if (dateCopy)
    {
      [MSParsecSearchSessionTopHit resultWithIdentifier:v10 date:dateCopy];
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

- (id)_identifierForInstantAnswerItemID:(id)d
{
  v3 = [NSString stringWithFormat:@"instantAnswer:%@", d];

  return v3;
}

- (id)_identifierForTopHitItemID:(id)d
{
  v3 = [NSString stringWithFormat:@"tophit:%@", d];

  return v3;
}

- (void)currentFocusChanged:(id)changed
{
  changedCopy = changed;
  v10.receiver = self;
  v10.super_class = MessageListViewController;
  [(MessageListViewController *)&v10 currentFocusChanged:changedCopy];
  selfCopy = self;
  v5 = changedCopy;
  v9 = v5;
  v6 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v6 performSyncBlock:&v7];
}

- (void)_updatePaletteWithForce:(BOOL)force
{
  forceCopy = force;
  focusAllowed = [(MessageListViewController *)self focusAllowed];
  if ([(MessageListViewController *)self paletteConfiguration]== focusAllowed && !forceCopy)
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
  paletteConfiguration = [(MessageListViewController *)self paletteConfiguration];
  if (!focusAllowed || (paletteConfiguration & 1) != 0)
  {
    paletteConfiguration2 = [(MessageListViewController *)self paletteConfiguration];
    if ((focusAllowed & 1) != 0 || (paletteConfiguration2 & 1) == 0)
    {
      goto LABEL_15;
    }

    v13 = sub_10048A100(self);
    [v13 setHidden:1];

    collectionView = [(MessageListViewController *)self collectionView];
    topEdgeEffect = [collectionView topEdgeEffect];
    v14TopEdgeEffect = +[UIScrollEdgeEffectStyle automaticStyle];
    [topEdgeEffect setStyle:v14TopEdgeEffect];
  }

  else
  {
    collectionView = sub_10048A100(self);
    arrangedSubviews = [(UIStackView *)v7 arrangedSubviews];
    v11 = [arrangedSubviews containsObject:collectionView];

    if (v11)
    {
      [collectionView setHidden:0];
    }

    else
    {
      [(UIStackView *)v7 addArrangedSubview:collectionView];
    }

    [collectionView setFocusFilterEnabled:{-[MessageListViewController isFocusFilterEnabled](self, "isFocusFilterEnabled")}];
    topEdgeEffect = [(MessageListViewController *)self collectionView];
    v14TopEdgeEffect = [topEdgeEffect topEdgeEffect];
    v16 = +[UIScrollEdgeEffectStyle hardStyle];
    [v14TopEdgeEffect setStyle:v16];
  }

LABEL_15:
  [(MessageListViewController *)self setPaletteConfiguration:focusAllowed];
  navigationItem = [(MessageListViewController *)self navigationItem];
  arrangedSubviews2 = [(UIStackView *)v7 arrangedSubviews];
  v19 = [arrangedSubviews2 count];

  if (v19)
  {
    _bottomPalette = [navigationItem _bottomPalette];

    v21 = v32;
    if (_bottomPalette != v32)
    {
      [navigationItem _setBottomPalette:v32];
      contentView = [v32 contentView];
      [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

      contentView2 = [v32 contentView];
      [contentView2 mf_pinToView:v32 usingLayoutMargins:0];

      v21 = v32;
    }

    contentView3 = [v21 contentView];
    [contentView3 setNeedsLayout];

    contentView4 = [v32 contentView];
    [contentView4 layoutIfNeeded];

    if (focusAllowed)
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

    _bottomPalette2 = [navigationItem _bottomPalette];
    [_bottomPalette2 setPreferredHeight:v29];
  }

  else
  {
    _bottomPalette3 = [navigationItem _bottomPalette];

    if (_bottomPalette3)
    {
      [navigationItem _setBottomPalette:0];
    }
  }
}

- (void)_disableFocusFilter:(BOOL)filter
{
  if (filter)
  {
    v4 = sub_10048A100(self);
    [v4 setFocusFilterEnabled:0];
  }

  [(MessageListViewController *)self _updatePaletteWithForce:0];
}

- (BOOL)_allowReadLaterActions
{
  state = [(MessageListViewController *)self state];
  if ([state canShowReadLaterDate])
  {
    v4 = [(MessageListViewController *)self shouldDisplayGroupedSenders]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)messageListDataSource:(id)source willUpdateWithChange:(id)change section:(id)section animated:(BOOL)animated cleanSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  animatedCopy = animated;
  sourceCopy = source;
  changeCopy = change;
  sectionCopy = section;
  v17.receiver = self;
  v17.super_class = MessageListViewController;
  [(MessageListViewController *)&v17 messageListDataSource:sourceCopy willUpdateWithChange:changeCopy section:sectionCopy animated:animatedCopy cleanSnapshot:snapshotCopy];
  noContentView = [(MessageListViewController *)self noContentView];
  if (noContentView)
  {
    isAddition = [changeCopy isAddition];

    if (isAddition)
    {
      [(MessageListViewController *)self suppressNoContentViewAnimated:animatedCopy];
    }
  }
}

- (void)messageListDataSource:(id)source didUpdateWithChange:(id)change section:(id)section animated:(BOOL)animated
{
  animatedCopy = animated;
  sourceCopy = source;
  changeCopy = change;
  sectionCopy = section;
  v72 = sectionCopy;
  messageListSelectionModel = [(MessageListViewController *)self messageListSelectionModel];
  [messageListSelectionModel setPerformingDataSourceUpdates:0];

  section = [sectionCopy section];
  selfCopy = self;
  if (![sourceCopy isMessagesSection:section])
  {

    goto LABEL_34;
  }

  hasChanges = [changeCopy hasChanges];

  if (!hasChanges)
  {
    goto LABEL_34;
  }

  configuredSections = [(MessageListViewController *)self configuredSections];
  section2 = [sectionCopy section];
  [configuredSections addObject:section2];

  isInitialCellConfigurationCompleted = [(MessageListViewController *)self isInitialCellConfigurationCompleted];
  if ((isInitialCellConfigurationCompleted & 1) == 0)
  {
    if (![changeCopy numberOfChanges])
    {
      v15 = +[NSSet set];
      [(MessageListViewController *)self setIndexPathsForToBeConfiguredCells:v15];

      messageList = [sectionCopy messageList];
      objectID = [messageList objectID];
      [(MessageListViewController *)self _checkMessageListLoadingCompleted:objectID];
    }

LABEL_9:
    collectionView = [(MessageListViewController *)self collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_1001976E0;
    v81[3] = &unk_1006521F0;
    v81[4] = self;
    v68 = [indexPathsForVisibleItems ef_filter:v81];

    v19 = [NSSet setWithArray:v68];
    [(MessageListViewController *)self setIndexPathsForToBeConfiguredCells:v19];

    indexPathsForConfiguredCollectionViewCells = [(MessageListViewController *)self indexPathsForConfiguredCollectionViewCells];
    if ((isInitialCellConfigurationCompleted & 1) == 0)
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

      messageList2 = [sectionCopy messageList];
      objectID2 = [messageList2 objectID];
      [(MessageListViewController *)selfCopy _checkMessageListLoadingCompleted:objectID2];

      self = selfCopy;
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
      collectionView2 = [(MessageListViewController *)selfCopy collectionView];
      v29 = [collectionView2 cellForItemAtIndexPath:v27];

      if (objc_opt_respondsToSelector())
      {
        break;
      }

      if ((isInitialCellConfigurationCompleted & 1) == 0)
      {
        messageListItem = +[MessageListViewController log];
        if (os_log_type_enabled(messageListItem, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          *buf = 138413058;
          *&buf[4] = v36;
          *&buf[12] = 2048;
          *&buf[14] = selfCopy;
          *&buf[22] = 2114;
          *&buf[24] = v38;
          *&buf[32] = 2114;
          *&buf[34] = v27;
          _os_log_error_impl(&_mh_execute_header, messageListItem, OS_LOG_TYPE_ERROR, "<%@: %p> [Launch] Collection view cell (%{public}@) does not conform to MessageListItemProviding at indexPath: %{public}@", buf, 0x2Au);
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

    messageListItem = [v29 messageListItem];
    if (messageListItem)
    {
      [indexPathsForConfiguredCollectionViewCells addObject:v27];
      if ((isInitialCellConfigurationCompleted & 1) == 0)
      {
        v31 = +[MessageListViewController log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          itemID = [messageListItem itemID];
          *buf = 138544130;
          *&buf[4] = v33;
          *&buf[12] = 2048;
          *&buf[14] = selfCopy;
          *&buf[22] = 2114;
          *&buf[24] = itemID;
          *&buf[32] = 2114;
          *&buf[34] = v27;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> [Launch] Item (id: %{public}@) at index path: %{public}@ is already configured", buf, 0x2Au);

          sectionCopy = v72;
        }

LABEL_29:
      }
    }

    else if ((isInitialCellConfigurationCompleted & 1) == 0)
    {
      v31 = +[MessageListViewController log];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138543874;
        *&buf[4] = v40;
        *&buf[12] = 2048;
        *&buf[14] = selfCopy;
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

  messageToDisplayOnReload = [(MessageListViewController *)self messageToDisplayOnReload];
  if (messageToDisplayOnReload && ![(MessageListViewController *)self _canDisplayMessage:messageToDisplayOnReload])
  {
    v44 = +[MessageListViewController log];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_opt_class();
      v64 = NSStringFromClass(v63);
      mailboxes = [(MessageListViewController *)selfCopy mailboxes];
      *buf = 138413058;
      *&buf[4] = v64;
      *&buf[12] = 2048;
      *&buf[14] = selfCopy;
      *&buf[22] = 2112;
      *&buf[24] = messageToDisplayOnReload;
      *&buf[32] = 2112;
      *&buf[34] = mailboxes;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "<%@: %p> Failed to display message:%@ on reload. Message does not exist not in displayed mailboxes:%@", buf, 0x2Au);
    }

    self = selfCopy;
    [(MessageListViewController *)selfCopy setMessageToDisplayOnReload:0];
    memset(buf, 170, sizeof(buf));
    *&buf[32] = 0;
    *v85 = 0xE00000001;
    v86 = 1;
    v87 = getpid();
    v82 = 648;
    messageToDisplayOnReload = 0;
    if (!sysctl(v85, 4u, buf, &v82, 0, 0) && (*&buf[32] & 0x800) != 0)
    {
      __debugbreak();
      JUMPOUT(0x100197044);
    }
  }

  lastSelectedItemID = [(MessageListViewController *)self lastSelectedItemID];
  if (!sub_10001C994(self))
  {
    goto LABEL_55;
  }

  if (messageToDisplayOnReload)
  {
    messageList3 = [sectionCopy messageList];
    lastSelectedItemID2 = [messageList3 itemIDOfMessageListItemWithDisplayMessage:messageToDisplayOnReload];

    v48 = +[MessageListViewController log];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      messageList4 = [sectionCopy messageList];
      *buf = 138413570;
      *&buf[4] = v50;
      *&buf[12] = 2048;
      *&buf[14] = selfCopy;
      *&buf[22] = 2112;
      *&buf[24] = messageToDisplayOnReload;
      *&buf[32] = 1024;
      *&buf[34] = lastSelectedItemID2 != 0;
      *&buf[38] = 2112;
      *&buf[40] = messageList4;
      *&buf[48] = 2112;
      *&buf[50] = sectionCopy;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "<%@: %p> messageToDisplayOnReload:%@ exist:%i in message list: %@ for section: %@", buf, 0x3Au);
    }

    _selectAndDisplayInitialMessageIfNecessary = lastSelectedItemID2 != 0;
    if (lastSelectedItemID2)
    {
      v53 = selfCopy;
      [(MessageListViewController *)selfCopy _handleDidSelectItemID:lastSelectedItemID2 referenceItem:messageToDisplayOnReload scrollToVisible:1 userInitiated:1 animated:animatedCopy];
    }

    else
    {
      BYTE2(v66) = 1;
      BYTE1(v66) = animatedCopy;
      LOBYTE(v66) = 1;
      v53 = selfCopy;
      [MessageListViewController _showConversationViewWithMessageListItem:selfCopy itemID:"_showConversationViewWithMessageListItem:itemID:messageList:referenceItem:scrollToVisible:userInitiated:canRestoreDraft:animated:showConversationView:indexPath:" messageList:0 referenceItem:0 scrollToVisible:0 userInitiated:messageToDisplayOnReload canRestoreDraft:0 animated:1 showConversationView:v66 indexPath:0];
    }

    [(MessageListViewController *)v53 setMessageToDisplayOnReload:0];
    goto LABEL_52;
  }

  if (![(MessageListViewController *)self shouldSelectInitialMessage])
  {
    if (lastSelectedItemID && ![(MessageListViewController *)self _inMultiSelectionMode])
    {
      lastSelectedItemID2 = [(MessageListViewController *)self lastSelectedItemID];
      _selectAndDisplayInitialMessageIfNecessary = [(MessageListViewController *)self selectRowOfItemID:lastSelectedItemID2 scrollToVisible:0 animated:0];
LABEL_52:

      goto LABEL_56;
    }

LABEL_55:
    _selectAndDisplayInitialMessageIfNecessary = 0;
    goto LABEL_56;
  }

  _selectAndDisplayInitialMessageIfNecessary = [(MessageListViewController *)self _selectAndDisplayInitialMessageIfNecessary];
LABEL_56:
  if (!(animatedCopy | (([changeCopy isFirstChange] & 1) == 0) | _selectAndDisplayInitialMessageIfNecessary & 1))
  {
    v54 = +[MessageListViewController log];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *buf = 138413058;
      *&buf[4] = v56;
      *&buf[12] = 2048;
      *&buf[14] = selfCopy;
      *&buf[22] = 1024;
      *&buf[24] = 0;
      *&buf[28] = 1024;
      *&buf[30] = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "<%@: %p> Couldn't select a message, scroll to top (animated=%{BOOL}d, selected=%{BOOL}d)", buf, 0x22u);
    }

    collectionView3 = [(MessageListViewController *)selfCopy collectionView];
    collectionView4 = [(MessageListViewController *)selfCopy collectionView];
    [collectionView4 adjustedContentInset];
    [collectionView3 setContentOffset:0 animated:{0.0, -v59}];
  }

  self = selfCopy;
LABEL_61:
  [(MessageListViewController *)self updateBarButtons];
  [(MessageListViewController *)self _updateTitle];
  section3 = [sectionCopy section];
  v61 = [sourceCopy isMessagesSection:section3];

  if (v61)
  {
    if (sub_10001C994(selfCopy) && [(MessageListViewController *)selfCopy suppressNoContentView])
    {
      [(MessageListViewController *)selfCopy setSuppressNoContentView:0];
      v62 = 1;
    }

    else
    {
      v62 = 0;
    }

    [(MessageListViewController *)selfCopy _updateNoContentViewAnimated:animatedCopy suppressNoContentView:v62];
  }

  if (!sub_10001C994(selfCopy))
  {
    [(MessageListViewController *)selfCopy _setEditing:0 animated:animatedCopy preserveSelection:0];
    [(MessageListViewController *)selfCopy _exitMultiSelectionForce:1];
  }
}

- (void)messageListDataSourceDidSkipUpdate:(id)update section:(id)section change:(id)change
{
  updateCopy = update;
  sectionCopy = section;
  selfCopy = self;
  changeCopy = change;
  v16 = changeCopy;
  v11 = updateCopy;
  v17 = v11;
  v12 = sectionCopy;
  v18 = v12;
  v13 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v13 performBlock:&v14];
}

- (void)messageListDataSource:(id)source didConfigureSupplementaryView:(id)view elementKind:(id)kind section:(id)section
{
  viewCopy = view;
  kindCopy = kind;
  sectionCopy = section;
  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable() && [kindCopy isEqualToString:UICollectionElementKindSectionHeader])
  {
    section = [sectionCopy section];
    v12 = section;
    if (section == MessageListSectionPriority)
    {
      v13 = [viewCopy conformsToProtocol:&OBJC_PROTOCOL___MUIMessageListHighlightsSupplementaryView];

      if (v13)
      {
        v14 = viewCopy;
        layoutValuesHelper = [(MessageListViewController *)self layoutValuesHelper];
        indexStatus = [layoutValuesHelper layoutValuesForStyle:0];

        view = [(MessageListViewController *)self view];
        [view layoutMargins];
        v19 = v18;

        state = [(MessageListViewController *)self state];
        if ([state useSplitViewStyling])
        {
          view2 = [(MessageListViewController *)self view];
          [view2 safeAreaInsets];
          v19 = v19 - v22;
        }

        view3 = [(MessageListViewController *)self view];
        [view3 directionalLayoutMargins];
        v25 = v24;

        [v14 layoutMargins];
        v27 = v26;
        [v14 layoutMargins];
        v29 = v28;
        highlightedMessages = [(MessageListViewController *)self highlightedMessages];
        mailboxes = [(MessageListViewController *)self mailboxes];
        contactStore = [(MessageListViewController *)self contactStore];
        avatarGenerator = [(MessageListViewController *)self avatarGenerator];
        [v14 updateHighlightsSupplementaryViewMessages:highlightedMessages mailboxes:mailboxes cellLayoutValues:indexStatus containerInsets:contactStore contactStore:avatarGenerator avatarGenerator:self delegate:{v27, v19, v29, v25}];

        [(MessageListViewController *)self setHighlightsSupplementaryView:v14];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  if ([kindCopy isEqualToString:UICollectionElementKindSectionFooter])
  {
    section2 = [sectionCopy section];
    v35 = MessageListSectionIndexedSearch;

    if (section2 == v35)
    {
      v36 = viewCopy;
      indexStatus = [(MessageListViewController *)self indexStatus];
      [v36 updateWith:indexStatus];
LABEL_13:
    }
  }
}

- (void)messageListSectionDataSource:(id)source didMoveMessagesWithItemIdentifiers:(id)identifiers toSection:(id)section
{
  identifiersCopy = identifiers;
  sectionCopy = section;
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    showHighlights = [(MessageListViewController *)self showHighlights];
    if ([showHighlights isEnabled])
    {
      v10 = [sectionCopy isEqualToString:MessageListSectionPriority];

      if (v10)
      {
        v22 = a2;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = identifiersCopy;
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
              dataSource = [(MessageListViewController *)self dataSource];
              v17 = [dataSource indexPathForItemIdentifier:v15];

              collectionView = [(MessageListViewController *)self collectionView];
              v19 = [collectionView cellForItemAtIndexPath:v17];

              if (v19)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v21 = +[NSAssertionHandler currentHandler];
                  [v21 handleFailureInMethod:v22 object:self file:@"MessageListViewController.m" lineNumber:7693 description:{@"Unexpected cell class. Actual cell class: %@", objc_opt_class()}];
                }
              }

              cellHelper = [v19 cellHelper];
              [cellHelper setPriority:1];

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

- (void)messageListSectionDataSource:(id)source handleRowSelectionAfterMovingMessagesWithItemIdentifiers:(id)identifiers
{
  sourceCopy = source;
  identifiersCopy = identifiers;
  itemIDToSelectAfterMoveID = [(MessageListViewController *)self itemIDToSelectAfterMoveID];
  [(MessageListViewController *)self setItemIDToSelectAfterMoveID:0];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10019859C;
  v28[3] = &unk_100652E38;
  v10 = itemIDToSelectAfterMoveID;
  v29 = v10;
  selfCopy = self;
  v11 = objc_retainBlock(v28);
  if (_os_feature_enabled_impl())
  {
    if (EMIsGreymatterSupported())
    {
      showHighlights = [(MessageListViewController *)self showHighlights];
      isEnabled = [showHighlights isEnabled];

      if (isEnabled)
      {
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10019869C;
        v27[3] = &unk_100652E60;
        v27[4] = self;
        v27[5] = [(MessageListViewController *)self _prioritySectionIndex];
        if ([identifiersCopy ef_any:v27])
        {
          v14 = +[MessageListViewController log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = NSStringFromSelector(a2);
            ef_shortDescriptionString = [identifiersCopy ef_shortDescriptionString];
            *buf = 138543618;
            v32 = v15;
            v33 = 2114;
            v34 = ef_shortDescriptionString;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - items moved to priority section:%{public}@", buf, 0x16u);
          }

          [(MessageListViewController *)self _shimmerViewIfNeeded];
        }
      }
    }
  }

  if (v10 && [identifiersCopy containsObject:v10])
  {
    dataSource = [(MessageListViewController *)self dataSource];
    section = [sourceCopy section];
    v19 = [dataSource messageListItemForItemID:v10 section:section];

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

- (void)messageListSectionDataSource:(id)source deletedMessagesWithItemIdentifiers:(id)identifiers
{
  sourceCopy = source;
  identifiersCopy = identifiers;
  v8.receiver = self;
  v8.super_class = MessageListViewController;
  [(MessageListViewController *)&v8 messageListSectionDataSource:sourceCopy deletedMessagesWithItemIdentifiers:identifiersCopy];
  [(MessageListViewController *)self _removeMessagesFromStackWithItemIDs:identifiersCopy];
  [(MessageListViewController *)self _exitMultiSelectionForce:0];
}

- (BOOL)messageListUnbundledSectionDataSourceIsInExpandedEnvironment:(id)environment
{
  scene = [(MessageListViewController *)self scene];
  isInExpandedEnvironment = [scene isInExpandedEnvironment];

  return isInExpandedEnvironment;
}

- (void)messageListSectionDataSource:(id)source didConfigureCell:(id)cell atIndexPath:(id)path item:(id)item itemWasCached:(BOOL)cached duration:(double)duration
{
  sourceCopy = source;
  pathCopy = path;
  itemCopy = item;
  if (![(MessageListViewController *)self isInitialCellConfigurationCompleted]|| ([(MessageListViewController *)self firstBatchCellConfigurationCompleted]& 1) == 0)
  {
    indexPathsForConfiguredCollectionViewCells = [(MessageListViewController *)self indexPathsForConfiguredCollectionViewCells];
    v17 = +[MessageListViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      itemID = [itemCopy itemID];
      ef_publicDescription = [pathCopy ef_publicDescription];
      v40 = 138544130;
      v41 = v19;
      v42 = 2048;
      selfCopy4 = self;
      v44 = 2114;
      v45 = itemID;
      v46 = 2114;
      v47 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Mark item (id: %{public}@) at index path: %{public}@ as configured", &v40, 0x2Au);
    }

    [indexPathsForConfiguredCollectionViewCells addObject:pathCopy];
    messageList = [sourceCopy messageList];
    objectID = [messageList objectID];
    [(MessageListViewController *)self _checkMessageListLoadingCompleted:objectID];
  }

  if (![(MessageListViewController *)self firstBatchCellConfigurationCompleted])
  {
    goto LABEL_22;
  }

  itemID2 = [itemCopy itemID];
  lastSelectedItemID = [(MessageListViewController *)self lastSelectedItemID];
  if ([itemID2 isEqual:lastSelectedItemID])
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
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Selected message changed - update conversation bar button items", &v40, 0x16u);
    }

    lastSelectedItemID = [(MessageListViewController *)self conversationViewController];
    [lastSelectedItemID _updateBarButtonsEnabled];
  }

LABEL_13:
  if (!cached)
  {
    cellsController = [(MessageListViewController *)self cellsController];
    if ([cellsController wasItemRecentlyVisible:itemID2])
    {
      if (duration < 0.005)
      {
        v31 = +[MessageListViewController log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          section = [pathCopy section];
          item = [pathCopy item];
          v40 = 138544898;
          v41 = v37;
          v42 = 2048;
          selfCopy4 = self;
          v44 = 2048;
          v45 = section;
          v46 = 2048;
          v47 = item;
          v48 = 2114;
          v49 = itemID2;
          v50 = 2048;
          durationCopy2 = duration;
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
          section2 = [pathCopy section];
          item2 = [pathCopy item];
          v40 = 138544898;
          v41 = v33;
          v42 = 2048;
          selfCopy4 = self;
          v44 = 2048;
          v45 = section2;
          v46 = 2048;
          v47 = item2;
          v48 = 2114;
          v49 = itemID2;
          v50 = 2048;
          durationCopy2 = duration;
          v52 = 1024;
          v53 = 0;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "<%{public}@: %p> Cell may have flickered at indexPath: (%ld-%ld), itemID: %{public}@, duration: %.3f, cached: %{BOOL}d", &v40, 0x44u);
        }
      }

      [cellsController reportFlickeringCell:duration >= 0.005 duration:duration];
    }

LABEL_22:
    itemID2 = [(MessageListViewController *)self cellsController];
    [itemID2 reportCellDidLoad:1 error:0];
  }
}

- (void)_checkMessageListLoadingCompleted:(id)completed
{
  completedCopy = completed;
  indexPathsForToBeConfiguredCells = [(MessageListViewController *)self indexPathsForToBeConfiguredCells];
  indexPathsForConfiguredCollectionViewCells = [(MessageListViewController *)self indexPathsForConfiguredCollectionViewCells];
  v7 = [indexPathsForToBeConfiguredCells isSubsetOfSet:indexPathsForConfiguredCollectionViewCells];
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
      selfCopy = self;
      v21 = 2048;
      v22 = [indexPathsForConfiguredCollectionViewCells count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> All initial visible items (%lu) have been configured!", &v17, 0x20u);
    }

    [(MessageListViewController *)self setFirstBatchCellConfigurationCompleted:1];
    [(MessageListViewController *)self setInitialCellConfigurationCompleted:1];
    [(MessageListViewController *)self setIndexPathsForToBeConfiguredCells:0];
    indexPathsForConfiguredCollectionViewCells2 = [(MessageListViewController *)self indexPathsForConfiguredCollectionViewCells];
    [indexPathsForConfiguredCollectionViewCells2 removeAllObjects];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 postNotificationName:@"MessageListLoadingCompleted" object:self];

    v13 = MFMessageListLoadingSignpostLog();
    v14 = os_signpost_id_make_with_pointer(v13, completedCopy);

    v15 = MFMessageListLoadingSignpostLog();
    v16 = v15;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v14, "MessageListLoading", "Finished loading message list enableTelemetry=YES ", &v17, 2u);
    }
  }
}

- (int64_t)selectedBucketForMUIMessageListUnbundledSectionDataSource:(id)source
{
  if (([(MessageListViewController *)self isBucketBarHidden]& 1) != 0)
  {
    return 0;
  }

  return [(MessageListViewController *)self selectedBucket];
}

- (void)showBlankCellAlertForMessageListSectionDataSource:(id)source itemID:(id)d indexPath:(id)path reason:(id)reason
{
  dCopy = d;
  pathCopy = path;
  reasonCopy = reason;
  v12 = +[NSDate now];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@\n\nitemID: %@\nindexPath: (%ld, %ld)", reasonCopy, dCopy, [pathCopy section], objc_msgSend(pathCopy, "item"));
  v14 = [UIAlertController alertControllerWithTitle:@"Blank Cell Detected" message:v13 preferredStyle:1];

  v15 = [UIAlertAction actionWithTitle:@"Continue" style:1 handler:0];
  [v14 addAction:v15];

  if (+[MSRadarURLBuilder canOpenRadar])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001994A8;
    v17[3] = &unk_100652EF8;
    v18 = reasonCopy;
    v19 = v12;
    v20 = dCopy;
    v21 = pathCopy;
    v16 = [UIAlertAction actionWithTitle:@"TTR" style:0 handler:v17];
    [v14 addAction:v16];
  }

  [(MessageListViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (Class)sectionListCellClassForMessageListSectionDataSource:(id)source
{
  v3 = objc_opt_class();

  return v3;
}

- (void)learnMoreForMessageListSectionDataSource:(id)source
{
  v4 = +[MFPreferencesURL customizeNotificationURL];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (BOOL)selectionModel:(id)model isItemIDExpandedThread:(id)thread
{
  threadCopy = thread;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource isExpandedThread:threadCopy];

  return v7;
}

- (BOOL)selectionModel:(id)model isThreadedItemID:(id)d
{
  dCopy = d;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource messageListItemForItemID:dCopy];
  result = [v7 result];
  v9 = [result count] > 1;

  return v9;
}

- (id)selectionModel:(id)model itemIDsInExpandedThread:(id)thread
{
  threadCopy = thread;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource itemIDsInExpandedThread:threadCopy];

  return v7;
}

- (id)selectionModel:(id)model messageListItemsForItemIDs:(id)ds
{
  dsCopy = ds;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource messageListItemsForItemIDs:dsCopy];

  return v7;
}

- (id)selectionModel:(id)model objectIDsForItemIDs:(id)ds
{
  dsCopy = ds;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100199F78;
  v10[3] = &unk_100652FC0;
  v10[4] = self;
  v6 = [dsCopy ef_compactMap:v10];
  v7 = [dsCopy count];
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

- (id)selectionModel:(id)model threadItemIDForItemInExpandedThread:(id)thread
{
  threadCopy = thread;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource threadItemIDForItemInExpandedThread:threadCopy];

  return v7;
}

- (id)selectionModel:(id)model predictMailboxForMovingMessagesWithIDs:(id)ds
{
  v4 = [MFMoveToPredictionTriageInteraction predictMailboxForMovingMessagesWithIDs:ds];

  return v4;
}

- (void)updateFilterByUnreadRules
{
  v4 = +[_TtC10MobileMail14MailTipsHelper shared];
  dataSource = [(MessageListViewController *)self dataSource];
  [v4 updateFilterByUnreadRulesWithAmountOfEmails:objc_msgSend(dataSource amountOfUnreads:{"numberOfItems"), -[MessageListViewController currentUnreadCount](self, "currentUnreadCount")}];
}

- (void)filterPickerViewModelDidChangeSelectedAccounts:(id)accounts
{
  if ([(MessageListViewController *)self isFocusFilterEnabled])
  {
    [(MessageListViewController *)self setPrimitiveFocusFilterEnabled:0];
    [(MessageListViewController *)self _disableFocusFilter:1];

    [(MessageListViewController *)self _updateUnseenCountQueries];
  }
}

- (void)highlightedMessagesController:(id)controller didFindMessages:(id)messages
{
  controllerCopy = controller;
  messagesCopy = messages;
  highlightedMessages = [(MessageListViewController *)self highlightedMessages];
  if (!highlightedMessages)
  {
    ef_isEmpty2 = 1;
    goto LABEL_13;
  }

  highlightedMessages2 = [(MessageListViewController *)self highlightedMessages];
  ef_isEmpty = [highlightedMessages2 ef_isEmpty];
  if (ef_isEmpty && ([messagesCopy ef_notEmpty], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    ef_isEmpty2 = 1;
  }

  else
  {
    highlightedMessages3 = [(MessageListViewController *)self highlightedMessages];
    ef_notEmpty = [highlightedMessages3 ef_notEmpty];
    if (ef_notEmpty)
    {
      ef_isEmpty2 = [messagesCopy ef_isEmpty];
    }

    else
    {
      ef_isEmpty2 = 0;
    }

    if (!ef_isEmpty)
    {
      goto LABEL_12;
    }

    v11 = 0;
  }

LABEL_12:
LABEL_13:

  v20.receiver = self;
  v20.super_class = MessageListViewController;
  [(MessageListViewController *)&v20 highlightedMessagesController:controllerCopy didFindMessages:messagesCopy];
  highlightsSupplementaryView = [(MessageListViewController *)self highlightsSupplementaryView];
  mailboxes = [(MessageListViewController *)self mailboxes];
  [highlightsSupplementaryView updateHighlightsSupplementaryViewMessages:messagesCopy mailboxes:mailboxes];

  if (ef_isEmpty2)
  {
    v17 = +[MessageListViewController log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138543618;
      v22 = v19;
      v23 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Will invalidate prirority section supplementary view layout", buf, 0x16u);
    }

    [(MessageListViewController *)self updateHighlightsVisibility];
  }
}

- (void)highlightedMessagesViewDidSelectMessage:(id)message
{
  messageListItem = [message messageListItem];
  highlightedMessagesController = [(MessageListViewController *)self highlightedMessagesController];
  messageList = [highlightedMessagesController messageList];
  BYTE2(v6) = 1;
  LOWORD(v6) = 256;
  [MessageListViewController _showConversationViewWithMessageListItem:"_showConversationViewWithMessageListItem:itemID:messageList:referenceItem:scrollToVisible:userInitiated:canRestoreDraft:animated:showConversationView:indexPath:" itemID:messageListItem messageList:0 referenceItem:messageList scrollToVisible:messageListItem userInitiated:0 canRestoreDraft:1 animated:v6 showConversationView:0 indexPath:?];
}

- (void)highlightedMessagesViewDidProvideFeedbackForMessage:(id)message feedbackType:(int64_t)type feedbackFeature:(int64_t)feature
{
  messageListItem = [message messageListItem];
  displayMessage = [messageListItem displayMessage];
  result = [displayMessage result];

  if (feature)
  {
    if (feature == 2)
    {
      [MUICatchUpFeedbackController provideHighlightsFeedbackWithType:type message:result sourceViewController:self];
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
    [MUICatchUpFeedbackController provideAutomaticSummaryFeedbackWithType:type message:result sourceViewController:self];
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
  collectionView = [(MessageListViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  highlightsSupplementaryView = [(MessageListViewController *)self highlightsSupplementaryView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([collectionView indexPathForSupplementaryView:highlightsSupplementaryView], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [NSIndexPath indexPathWithIndex:0];
  }

  v7 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  v9 = v6;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [v7 invalidateSupplementaryElementsOfKind:UICollectionElementKindSectionHeader atIndexPaths:v8];

  [collectionViewLayout invalidateLayoutWithContext:v7];
}

- (BOOL)_prioritySectionVisibleAndActive
{
  if ((*(self + 8) & 1) == 0)
  {
    return 0;
  }

  scene = [(MessageListViewController *)self scene];
  v2 = [scene activationState] == 0;

  return v2;
}

- (void)_generativeModelsAvailabilityDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MessageListViewController;
  [(MessageListViewController *)&v5 _generativeModelsAvailabilityDidChange:changeCopy];
  [(MessageListViewController *)self updateBarButtons];
  [(MessageListViewController *)self reloadDataSource];
}

- (void)_displayBucketBarOnNotification:(id)notification
{
  v4 = +[MessageListViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notification received to display bucket bar", v7, 2u);
  }

  iCloudMailCleanupDashboardViewController = [(MessageListViewController *)self iCloudMailCleanupDashboardViewController];

  if (iCloudMailCleanupDashboardViewController)
  {
    iCloudMailCleanupDashboardViewController2 = [(MessageListViewController *)self iCloudMailCleanupDashboardViewController];
    [iCloudMailCleanupDashboardViewController2 dismissViewControllerAnimated:1 completion:0];
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
    bucketBarConfigurationController = [(MessageListViewController *)self bucketBarConfigurationController];
    mailboxes = [(MessageListViewController *)self mailboxes];
    [bucketBarConfigurationController setBucketBarHidden:0 forMailboxes:mailboxes];

    if ([(MessageListViewController *)self _isIniCloudContext])
    {
      iCloudMailCleanupService = [(MessageListViewController *)self iCloudMailCleanupService];
      [iCloudMailCleanupService updatePrimaryAccountCategoriesHidden:0];
    }
  }
}

- (void)handleListViewTappedForOptionView:(id)view
{
  if (([(MessageListViewController *)self isBucketBarHidden]& 1) == 0)
  {

    [(MessageListViewController *)self _hideBucketBar];
  }
}

- (void)aboutCategoriesViewControllerDidSelectResetButton:(id)button
{
  messageRepository = [(MessageListViewController *)self messageRepository];
  v6 = [MFRestoreModelCategoryForAllMessagesTriageInteraction interactionWithMessageRepository:messageRepository origin:2 actor:2];

  [v6 setShouldAskForConfirmation:1];
  view = [(MessageListViewController *)self view];
  [v6 setPresentationSource:view];

  [v6 setDelegate:self];
  [v6 performInteraction];
}

- (BOOL)messageListSeparatorController:(id)controller isItemAtIndexPathSelected:(id)selected
{
  selectedCopy = selected;
  collectionView = [(MessageListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v8 = [indexPathsForSelectedItems containsObject:selectedCopy];

  return v8;
}

- (BOOL)messageListSeparatorController:(id)controller isItemAtIndexPathFocused:(id)focused
{
  focusedCopy = focused;
  collectionView = [(MessageListViewController *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:focusedCopy];

  LOBYTE(collectionView) = [v7 isFocused];
  return collectionView;
}

- (BOOL)messageListSeparatorController:(id)controller hasHeaderInSection:(int64_t)section
{
  dataSource = [(MessageListViewController *)self dataSource];
  LOBYTE(section) = [dataSource shouldDisplaySupplementaryKind:UICollectionElementKindSectionHeader forSectionAtIndex:section];

  return section;
}

- (BOOL)messageListSeparatorController:(id)controller isLastItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(MessageListViewController *)self collectionView];
  v7 = [collectionView numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];

  LOBYTE(collectionView) = [pathCopy item] + 1 == v7;
  return collectionView;
}

- (BOOL)messageListSeparatorController:(id)controller hasHeaderInSectionAfterSection:(int64_t)section
{
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource sectionAfterIndex:section];
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported() && (-[MessageListViewController dataSource](self, "dataSource"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isSection:MessageListSectionPriority atIndex:section], v8, (v9 & 1) != 0))
  {
    v10 = 1;
  }

  else if (v7)
  {
    v10 = [dataSource shouldDisplaySupplementaryKind:UICollectionElementKindSectionHeader forSectionAtIndex:{objc_msgSend(dataSource, "sectionIndexForSection:", v7)}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)messageListSeparatorController:(id)controller hasMessageContentInSection:(int64_t)section
{
  dataSource = [(MessageListViewController *)self dataSource];
  LOBYTE(section) = [dataSource isMessagesSectionAtIndex:section];

  return section;
}

- (BOOL)messageListSeparatorController:(id)controller hasMessageSectionAboveSection:(int64_t)section
{
  dataSource = [(MessageListViewController *)self dataSource];
  v6 = [dataSource sectionBeforeIndex:section];
  if (v6)
  {
    v7 = [dataSource isMessagesSection:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)messageListSeparatorController:(id)controller hasNonMessageSectionAboveSection:(int64_t)section
{
  dataSource = [(MessageListViewController *)self dataSource];
  v6 = [dataSource sectionBeforeIndex:section];
  if (v6)
  {
    v7 = [dataSource isMessagesSection:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)messageListSeparatorController:(id)controller isItemExpandedAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];
  if ([dataSource isExpandedThread:v7])
  {
    v8 = 1;
  }

  else
  {
    v8 = [dataSource anyExpandedThreadContainsItemID:v7];
  }

  return v8;
}

- (BOOL)messageListSeparatorController:(id)controller isExpandedParentAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];
  v8 = [dataSource isExpandedThread:v7];

  return v8;
}

- (BOOL)messageListSeparatorController:(id)controller isExpandedChildAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MessageListViewController *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];
  v8 = [dataSource anyExpandedThreadContainsItemID:v7];

  return v8;
}

- (BOOL)layoutUsesSplitViewStylingForMessageListSeparatorController:(id)controller
{
  state = [(MessageListViewController *)self state];
  useSplitViewStyling = [state useSplitViewStyling];

  return useSplitViewStyling;
}

- (id)_createMailActionViewHeader
{
  _displayMetrics = [(MessageListViewController *)self _displayMetrics];
  [MailActionViewHeader defaultHeightWithDisplayMetrics:_displayMetrics];
  v5 = v4;
  view = [(MessageListViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v13);

  v8 = [[MailActionViewHeader alloc] initWithFrame:0.0, 0.0, Width, v5];
  contactStore = [(MessageListViewController *)self contactStore];
  [(MFMessageConversationViewCell *)v8 setContactStore:contactStore];

  v10 = [MFMessageDisplayMetrics mf_actionCardMetricsFromDisplayMetrics:_displayMetrics];
  [(MFConversationViewCell *)v8 setDisplayMetrics:v10];

  return v8;
}

- (id)actionViewHeaderForCategorizationInteraction:(id)interaction messageListItem:(id)item
{
  itemCopy = item;
  _createMailActionViewHeader = [(MessageListViewController *)self _createMailActionViewHeader];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
  v9 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v8, [itemCopy count]);

  v10 = [ConversationCellViewModel alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10019B624;
  v15[3] = &unk_10064D108;
  v11 = itemCopy;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  selfCopy = self;
  v13 = [(ConversationCellViewModel *)v10 initWithBuilder:v15];
  [_createMailActionViewHeader setViewModel:v13];

  return _createMailActionViewHeader;
}

- (void)_sceneDidBecomeActive:(id)active
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
    view = [(MessageListViewController *)self view];
    v4 = view;
    if (self)
    {
      changeFilterStateInteraction = self->_changeFilterStateInteraction;
    }

    else
    {
      changeFilterStateInteraction = 0;
    }

    [view removeInteraction:changeFilterStateInteraction];

    sub_100489FE0(self, 0);
  }

  if (self && self->_searchMessagesInteraction)
  {
    searchBar = [(MessageListViewController *)self searchBar];
    [searchBar removeInteraction:self->_searchMessagesInteraction];

    sub_100489FCC(self, 0);
  }
}

@end