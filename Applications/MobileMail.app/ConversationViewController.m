@interface ConversationViewController
+ (OS_os_log)log;
- (BOOL)_bannerView:(id)a3 hasBannerType:(int64_t)a4;
- (BOOL)_canChangePageZoom:(BOOL)a3 fromStep:(unint64_t)a4;
- (BOOL)_headerView:(id)a3 hasBannerType:(int64_t)a4;
- (BOOL)_isItemInitiallyUnreadAtIndexPath:(id)a3;
- (BOOL)_isMessageInOutbox:(id)a3;
- (BOOL)_isQuickReplyMessageAtIndexPath:(id)a3;
- (BOOL)_isUndoSendMessageAtIndexPath:(id)a3;
- (BOOL)_shouldArchiveByDefault;
- (BOOL)_shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:(id)a3;
- (BOOL)_shouldAutomaticallyMarkAsReadMessage:(id)a3;
- (BOOL)_shouldReloadEmptyMessageList;
- (BOOL)_shouldRemoveBannerBlock:(id)a3 forHeaderViewModel:(id)a4;
- (BOOL)_shouldShowMailboxForMessage:(id)a3;
- (BOOL)_shouldShowTimeSensitiveForMessage:(id)a3;
- (BOOL)_userIsSenderAtIndexPath:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)containsMessage:(id)a3;
- (BOOL)conversationSearchHandler:(id)a3 shouldConsiderQuotedContentForItemID:(id)a4;
- (BOOL)isBucketSelected;
- (BOOL)isCategorizationActionAllowedForMessageViewController:(id)a3;
- (BOOL)isMessageListUnfiltered;
- (BOOL)swipableCollectionViewLayout:(id)a3 shouldAnimateAppearingItemAtIndexPath:(id)a4;
- (CGRect)_quickReplyViewFrame;
- (ConversationViewController)initWithScene:(id)a3 contactStore:(id)a4 avatarGenerator:(id)a5;
- (ConversationViewControllerSelectionDataSource)selectionDataSource;
- (DraftGestureHelper)draftGestureHelper;
- (EMQuery)referenceMessageListQuery;
- (MFGeneratedSummaryCollectionItemID)previousInlineSummaryItemID;
- (MFGeneratedSummaryCollectionItemID)previousTopSummaryItemID;
- (MessageTriageInteractionHelper)messageTriageInteractionHelper;
- (double)stickySubjectViewFirstBaselineForConversationHeaderView:(id)a3;
- (double)stickySubjectViewMaxYForConversationHeaderView:(id)a3;
- (id)_actionsViewControllerWithMessage:(id)a3 contentRequest:(id)a4 predictedMailbox:(id)a5 button:(id)a6 didDismissHandler:(id)a7;
- (id)_adjustedExistingItemIDForInlineSummaryItem:(id)a3 snapshot:(id)a4;
- (id)_allMessages;
- (id)_archiveActionForMessageListItemSelection:(id)a3 menuOwner:(id)a4;
- (id)_bannerBlockToInsertForHeaderView:(id)a3 message:(id)a4;
- (id)_cellForMessageItemIDIfExpanded:(id)a3;
- (id)_completionForFooterViewCardActionsForMailActionsViewController:(id)a3;
- (id)_completionForSwipeCardActionsForMailActionsViewController:(id)a3 messageListItem:(id)a4;
- (id)_contentRequestForMessageWithItemID:(id)a3;
- (id)_conversationViewQueryIncludeRelated:(BOOL)a3;
- (id)_createMailActionViewHeader;
- (id)_currentlyVisibleIndexPath;
- (id)_customReturnToGroupSenderList;
- (id)_deleteActionForMessageListItemSelection:(id)a3 menuOwner:(id)a4;
- (id)_displayObjectIDForPreCacheWithPredicate:(id)a3;
- (id)_dragItemsForItemAtIndexPath:(id)a3;
- (id)_excludedMailboxes;
- (id)_focusedMessageItemID;
- (id)_fullComposeViewControllerForQuickReply:(id)a3 userActivity:(id)a4;
- (id)_generateContentRequestForMessageWithItemID:(id)a3;
- (id)_getCurrentlySelectedMessageContentForMessageItemID:(id)a3;
- (id)_groupedSenderActionMenuItemsWithMenuOwner:(id)a3;
- (id)_indexPathForReferenceMessage;
- (id)_indexPathOfMessageViewControllerMessage:(id)a3;
- (id)_itemIDBeforeItemID:(id)a3 snapshot:(id)a4;
- (id)_itemIDsForReloadAfterInsertingObjectsAfterItemID:(id)a3 snapshot:(id)a4;
- (id)_itemsForMessage:(id)a3 changeAction:(int64_t)a4;
- (id)_lastIndexPath;
- (id)_mailActionsViewControllerFromPresentedViewController:(id)a3;
- (id)_mailActionsViewDataSourceForMailActionsViewController:(id)a3 message:(id)a4 predictedMailbox:(id)a5 preparation:(id)a6 completion:(id)a7;
- (id)_mailboxExclusionPredicate;
- (id)_manualSummaryViewModelForItemID:(id)a3;
- (id)_messageAtIndexPath:(id)a3;
- (id)_messageContentViewForMessageItemID:(id)a3;
- (id)_messageDeletionCompletionHandlerForMenuOwner:(id)a3;
- (id)_messageFutureForConversationSubject;
- (id)_messageFutureForItemID:(id)a3;
- (id)_messageItemIDsFromSnapshot:(id)a3;
- (id)_messageListItemsForBarButtonTriage;
- (id)_messageReadCompletionHandlerForSelectionDataSource:(id)a3;
- (id)_messagesForTriageInteraction:(id)a3;
- (id)_persistentIDForEMMessageObjectID:(id)a3;
- (id)_preparationForFooterViewCardActionsForMailActionsViewController:(id)a3;
- (id)_presentationStringForMessageListItem:(id)a3;
- (id)_priorityLoadingComparatorForPinnedItemID:(id)a3;
- (id)_queryForConversationViewIncludeRelated:(BOOL)a3;
- (id)_quickReplyCompositionContext;
- (id)_quickReplyView;
- (id)_readActionForMessageListItemSelection:(id)a3;
- (id)_readLaterTriageInteractionIfAvailable;
- (id)_readTriageInteraction;
- (id)_recategorizationMenu;
- (id)_recategorizationTriageInteraction:(id)a3;
- (id)_referenceDisplayMessage;
- (id)_referenceMessageListItemIDIfMatchingNotification:(id)a3;
- (id)_referenceMessageListMailboxScope;
- (id)_senderBasedQueryPredicateForReferenceMessageListQueryPredicate:(id)a3 shouldExcludeReadMessages:(BOOL)a4;
- (id)_sheetPresentationControllerViewForTouchContinuation:(id)a3;
- (id)_shouldRecalculateStickySubjectBeforeDeletedItemIDs:(id)a3;
- (id)_summarizableMessageItemIDsForSummaryItemID:(id)a3;
- (id)_swipeActionForTriageInteraction:(id)a3;
- (id)_targetMessageOrItemIDForBarButtonTriage:(BOOL)a3;
- (id)_updateQueue;
- (id)_visibleIndexPathForMessageViewController:(id)a3;
- (id)actionViewHeaderForCategorizationInteraction:(id)a3 messageListItem:(id)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)animationControllerForTransition:(BOOL)a3;
- (id)captureRestorationState;
- (id)cellConfigurator:(id)a3 messageItemIDAtIndexPath:(id)a4;
- (id)conversationSearchHandler:(id)a3 contentRepresentationRequestForItemID:(id)a4;
- (id)conversationSearchMessageListForConversationSearchHandler:(id)a3;
- (id)deleteButtonMenuForConversationNavigationBarItemsManager:(id)a3 menuOwner:(id)a4;
- (id)displayNameForAddresses:(id)a3;
- (id)findInteraction:(id)a3 sessionForView:(id)a4;
- (id)focusedMessage;
- (id)groupedSenderActionMenuForConversationNavigationBarItemsManager:(id)a3 menuOwner:(id)a4;
- (id)mailComposeViewForQuickReplyView:(id)a3;
- (id)messageContentRepresentationRequestForMessageTriageInteractionHelper:(id)a3 message:(id)a4;
- (id)messageCountHint;
- (id)messageForItemID:(id)a3;
- (id)messageItemIDAtIndexPath:(id)a3;
- (id)messageListItemsForDiagnosticsHelper:(id)a3;
- (id)messageRepositoryForTriageInteraction:(id)a3;
- (id)messageSourceMailboxObjectIDForMessageViewController:(id)a3;
- (id)messageTriageInteractionHelper:(id)a3 senderRepositoryForMessageListItems:(id)a4;
- (id)messageViewControllerMessageListMailboxScope:(id)a3;
- (id)moreTriageInteraction:(id)a3 actionsViewControllerWithInteractionTarget:(id)a4 didDismissHandler:(id)a5;
- (id)newBackgroundMonitor;
- (id)pinnedIndexPathProvider;
- (id)presentingViewControllerForTriageInteraction:(id)a3;
- (id)swipableCollectionViewLayout:(id)a3 leadingSwipeActionsConfigurationForItemAtIndexPath:(id)a4;
- (id)swipableCollectionViewLayout:(id)a3 trailingSwipeActionsConfigurationForItemAtIndexPath:(id)a4;
- (id)targetMessageForBarButtonTriage;
- (id)targetMessageItemIDForBarButtonTriage;
- (id)transferStackViewController:(id)a3 displayMessageForMessageListItemWithItemID:(id)a4;
- (id)undoManager;
- (int64_t)_dataOwnerForDragSessionAtIndexPath:(id)a3;
- (int64_t)_headerDisplayOptionsForCell:(id)a3 displayedAsSingleMessage:(BOOL)a4;
- (int64_t)_messageListItemCount;
- (int64_t)compareFoundRange:(id)a3 toRange:(id)a4 inDocument:(id)a5;
- (int64_t)compareOrderFromDocument:(id)a3 toDocument:(id)a4;
- (int64_t)countOfMessages;
- (int64_t)countOfSummaries;
- (unint64_t)_defaultZoomStep;
- (unint64_t)_summarizableMessageCountForItemID:(id)a3;
- (unint64_t)_zoomStepForViewScale:(double)a3;
- (void)_allMessageIDsWithCompletion:(id)a3;
- (void)_appIntentDidDeleteReminder:(id)a3;
- (void)_appIntentDidRemoveFollowUp:(id)a3;
- (void)_appIntentDidSetReminder:(id)a3;
- (void)_appIntentDidSummarize:(id)a3;
- (void)_autoReloadDataSourceForEmptyAddIfNeeded;
- (void)_categorizeCommandInvoked:(id)a3;
- (void)_changeZoomStep:(BOOL)a3;
- (void)_clearSelectedMessageContentForMessageItemID:(id)a3;
- (void)_clearTimeSensitiveCommandInvoked:(id)a3;
- (void)_configureCollapsedCell:(id)a3 atIndexPath:(id)a4 viewModel:(id)a5;
- (void)_configureExpandedCell:(id)a3 atIndexPath:(id)a4 viewModel:(id)a5 collapseQuotedContent:(BOOL)a6;
- (void)_configureGeneratedSummaryCell:(id)a3 atIndexPath:(id)a4 viewModel:(id)a5;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_decorateFoundRanges:(id)a3 inExpandedCell:(id)a4;
- (void)_deleteItemsWithIDs:(id)a3 fromCollection:(id)a4 completionHandler:(id)a5;
- (void)_deleteMessageListItemsForMoveOrDestructiveInteraction:(id)a3 completion:(id)a4;
- (void)_didChangeHorizontalPadding:(double)a3;
- (void)_didTapRevealActionsButton:(id)a3 message:(id)a4 predictedMailbox:(id)a5 contentRequest:(id)a6 didDismissHandler:(id)a7;
- (void)_didTapUndoSendButton:(id)a3 message:(id)a4 predictedMailbox:(id)a5 contentRequest:(id)a6 didDismissHandler:(id)a7;
- (void)_dismissKeyboardIfNecessary;
- (void)_doDeleteSelectedMessagesAskingConfirmation:(BOOL)a3 presentationSourceButtonItem:(id)a4 forceArchive:(BOOL)a5;
- (void)_ensureSubjectViewLayoutIfNeededAtIndexPath:(id)a3;
- (void)_fetchConversationAttachmentDataWithCompletion:(id)a3;
- (void)_fetchConversationRichLinkDataWithCompletion:(id)a3;
- (void)_forwardCommandInvoked:(id)a3;
- (void)_generativeModelsAvailabilityDidChange:(id)a3;
- (void)_groupedSenderMessageCountForQuery:(id)a3 completionHandler:(id)a4;
- (void)_headerView:(id)a3 displayWithBannerForViewModel:(id)a4 message:(id)a5;
- (void)_hideSeeMoreButtonForCell:(id)a3;
- (void)_markAsJunkCommandInvoked:(id)a3;
- (void)_markAsReadCommandInvoked:(id)a3;
- (void)_messageSearchEnded;
- (void)_messageViewControllerDidDisplayContent:(id)a3;
- (void)_muteCommandInvoked:(id)a3;
- (void)_nts_performDataSourceUpdateAnimated:(BOOL)a3 collection:(id)a4 update:(id)a5 completion:(id)a6;
- (void)_performDataSourceUpdateAnimated:(BOOL)a3 collection:(id)a4 update:(id)a5 completion:(id)a6;
- (void)_performFlagChangeClearOnly:(BOOL)a3;
- (void)_presentMailActionsViewControllerFromBarButtonItem:(id)a3 dataSourceClass:(id)a4 includeMessageContentRequest:(BOOL)a5 completionHandler:(id)a6;
- (void)_printCommandInvoked:(id)a3;
- (void)_recalculateStickySubjectForDeletedIndexPath:(id)a3;
- (void)_reloadCellsAtIndexPaths:(id)a3 animated:(BOOL)a4;
- (void)_reloadDataSource;
- (void)_reloadDataSourceWithMessageList:(id)a3;
- (void)_reloadTopSummaryIfNecessary;
- (void)_remindMeCommandInvoked:(id)a3;
- (void)_resetContentRequest;
- (void)_resetManualSummaryItemIDs;
- (void)_resetQuickReplyViewControllerWithReason:(int64_t)a3 resetCompose:(BOOL)a4 override:(BOOL)a5;
- (void)_runAlongsideAnimationsForTransition:(BOOL)a3;
- (void)_scrollToInitialPosition;
- (void)_scrollToRect:(CGRect)a3 forMessageContentView:(id)a4;
- (void)_scrolledToEndOfSingleMessage;
- (void)_sendCommandInvoked:(id)a3;
- (void)_setFlagColorCommandInvoked:(id)a3;
- (void)_setupQuickReplySupplementaryViewProvider;
- (void)_showSingleMessage:(id)a3 animationOffset:(CGPoint)a4 initialScrollOffset:(CGPoint)a5;
- (void)_startObservingSelectedBucketChangeNotification;
- (void)_stopTextFindingIfNecessary;
- (void)_testReplyForSelectedMessage;
- (void)_updateBarButtonsEnabled;
- (void)_updateFooterToShowUndoSendForCell:(id)a3;
- (void)_updateFooterViewFrameForCell:(id)a3;
- (void)_updateFooterViewFrameForCell:(id)a3 atIndexPath:(id)a4;
- (void)_updateFooterViewFrameForVisibleCells;
- (void)_updateForDataSourceChanges:(BOOL)a3;
- (void)_updateGestureForMessageListItem:(id)a3;
- (void)_updateGroupedSenderMessageCountQueries;
- (void)_updateHandoffWithMessageAtIndexPath:(id)a3;
- (void)_updateInitiallyUnreadItemIDs:(id)a3;
- (void)_updateManualSummaryUIForScroll:(id)a3;
- (void)_updatePredictedMailboxForConversation;
- (void)_updateQuickReplyLabelIfNeeded;
- (void)_updateQuickReplyLabelIfNeeded:(id)a3;
- (void)_updateQuickReplySendButtonOffset:(id)a3;
- (void)_updateQuickReplyState;
- (void)_updateStickySubjectForItemID:(id)a3 cell:(id)a4 indexPath:(id)a5;
- (void)_updateSubject;
- (void)_updateTimeSensitiveBanners;
- (void)bannerViewDidSelectEditButton:(id)a3 itemID:(id)a4;
- (void)cancelAutomaticMarkAsReadForCellViewModel:(id)a3;
- (void)categorizationButtonTapped:(id)a3;
- (void)clearAllDecoratedFoundText;
- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 toThreadWithItemID:(id)a5 after:(id)a6 unreadItemIDs:(id)a7 isLastObserver:(BOOL)a8;
- (void)collection:(id)a3 addedItemIDs:(id)a4 toThreadWithItemID:(id)a5 before:(id)a6 unreadItemIDs:(id)a7 isLastObserver:(BOOL)a8;
- (void)collection:(id)a3 changedItemIDs:(id)a4;
- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5;
- (void)collectionDidFinishInitialLoad:(id)a3;
- (void)configurePredictedMailboxForCell:(id)a3 forMessage:(id)a4;
- (void)conversationNavigationBarItemsManager:(id)a3 validateBarButtonItem:(id)a4 ofType:(int64_t)a5;
- (void)customBackButtonTapped:(id)a3;
- (void)datePickerViewController:(id)a3 didSelectDate:(id)a4;
- (void)datePickerViewControllerDidDeleteDate:(id)a3;
- (void)dealloc;
- (void)decorateFoundTextRange:(id)a3 inDocument:(id)a4 usingStyle:(int64_t)a5;
- (void)disableAutomaticMarkAsReadForMessages:(id)a3;
- (void)dismissBannerForUnsubscribeAndDeleteTriageInteraction:(id)a3;
- (void)find:(id)a3;
- (void)groupedSenderMessageCountForDestructiveTriageInteraction:(id)a3 completionHandler:(id)a4;
- (void)invalidateAutomaticMarkAsReadForAllMessages;
- (void)laterButtonTapped:(id)a3;
- (void)loadView;
- (void)mailComposeController:(id)a3 composeBodyIsEmpty:(BOOL)a4;
- (void)mailComposeController:(id)a3 didChangeQuickReplyWebViewHeight:(double)a4;
- (void)mailComposeController:(id)a3 isSending:(BOOL)a4;
- (void)mailComposeController:(id)a3 migrateToFullCompose:(id)a4;
- (void)mailComposeController:(id)a3 willMigrateToFullComposeWithReason:(int64_t)a4;
- (void)mailComposeViewSnapshotForQuickReplyView:(id)a3 :(id)a4;
- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5;
- (void)messageViewController:(id)a3 didStartDownloadForContentItemWithProgress:(id)a4;
- (void)messageViewController:(id)a3 didTapRevealActionsButton:(id)a4;
- (void)messageViewController:(id)a3 didTapShowMoreAtCollapsedOffset:(CGPoint)a4 expandedOffset:(CGPoint)a5;
- (void)messageViewController:(id)a3 didTapUndoSendButton:(id)a4;
- (void)messageViewController:(id)a3 scrollToRect:(CGRect)a4;
- (void)moveButtonTapped:(id)a3;
- (void)performTextSearchWithQueryString:(id)a3 usingOptions:(id)a4 resultAggregator:(id)a5;
- (void)pinCurrentItem;
- (void)pinItemAtIndexPath:(id)a3 dynamicOffset:(id)a4;
- (void)populateSummaryItemForSnapshot:(id)a3;
- (void)presentTransferUIWithMoveInteraction:(id)a3 prediction:(id)a4 fromViewController:(id)a5 didDismissHandler:(id)a6;
- (void)presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)prewarmContent;
- (void)quickReplyView:(id)a3 didTapExpandButton:(id)a4;
- (void)quickReplyView:(id)a3 didTapSendButton:(id)a4 animationContext:(id)a5;
- (void)reenableAutomaticMarkAsReadForAllMessages;
- (void)restoreState:(id)a3;
- (void)revealActionsButtonTapped:(id)a3;
- (void)scheduleAutomaticMarkAsReadForMessage:(id)a3;
- (void)scheduleAutomaticMarkAsReadForReferenceMessage;
- (void)scheduleAutomaticMarkAsReadForViewModel:(id)a3;
- (void)scrollRangeToVisible:(id)a3 inDocument:(id)a4;
- (void)scrollToMessageIfPossible:(id)a3 animated:(BOOL)a4 pin:(BOOL)a5;
- (void)scrollToMessageItemIDIfPossible:(id)a3 animated:(BOOL)a4 pin:(BOOL)a5;
- (void)searchMessages:(id)a3;
- (void)setBeingPreviewed:(BOOL)a3;
- (void)setConversationSortOrder:(unint64_t)a3;
- (void)setDiagnosticsHelper:(id)a3;
- (void)setDisplayMetrics:(id)a3;
- (void)setPinnedItem:(id)a3;
- (void)setReferenceMessageListItem:(id)a3 referenceMessageList:(id)a4 showAsConversation:(BOOL)a5 animated:(BOOL)a6;
- (void)showAllMessagesForConversationSenderHeaderView:(id)a3;
- (void)showCategoryMessagesForConversationSenderHeaderView:(id)a3;
- (void)summaryCell:(id)a3 withItemID:(id)a4 didLayoutWithHeight:(double)a5;
- (void)swipableCollectionViewLayout:(id)a3 willBeginSwipeAtIndexPath:(id)a4;
- (void)swipableCollectionViewLayout:(void *)a1 willEndSwipeForItemAtIndexPath:;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAvatarViewControllerForTriageInteraction:(id)a3 alertController:(id)a4;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ConversationViewController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E6A4;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DCE10 != -1)
  {
    dispatch_once(&qword_1006DCE10, block);
  }

  v2 = qword_1006DCE08;

  return v2;
}

- (void)_startObservingSelectedBucketChangeNotification
{
  v3 = +[ConversationViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start observing selected bucket change notification.", v6, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = [(ConversationViewControllerBase *)self delegate];
  [v4 addObserver:self selector:"_updateTimeSensitiveBanners" name:SelectedBucketDidChangeNotification object:v5];
}

- (void)_updateTimeSensitiveBanners
{
  v2 = [(ConversationViewControllerBase *)self cellConfigurator];
  [v2 enumerateExpandedCellsWithBlock:&stru_10064CAE8];
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v14 loadView];
  objc_initWeak(&location, self);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10005721C;
  v11 = &unk_10064CBD8;
  objc_copyWeak(&v12, &location);
  v3 = objc_retainBlock(&v8);
  v4 = [UICollectionViewDiffableDataSource alloc];
  v5 = [(ConversationViewControllerBase *)self collectionView:v8];
  v6 = [v4 initWithCollectionView:v5 cellProvider:v3];
  [(ConversationViewController *)self setCollectionViewDataSource:v6];

  if ([(ConversationViewControllerBase *)self allowQuickReply])
  {
    [(ConversationViewController *)self _setupQuickReplySupplementaryViewProvider];
  }

  v7 = [(ConversationViewControllerBase *)self conversationLayout];
  [v7 setSwipeDelegate:self];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = ConversationViewController;
  [(ConversationViewController *)&v2 viewDidLoad];
}

- (ConversationViewController)initWithScene:(id)a3 contactStore:(id)a4 avatarGenerator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v55.receiver = self;
  v55.super_class = ConversationViewController;
  v11 = [(ConversationViewControllerBase *)&v55 initWithScene:v8 contactStore:v9 avatarGenerator:v10];
  if (v11)
  {
    v12 = [v8 daemonInterface];
    v13 = [v12 messageRepository];
    v14 = *(v11 + 524);
    *(v11 + 524) = v13;

    v15 = [v8 daemonInterface];
    v16 = [v15 mailboxRepository];
    v17 = *(v11 + 532);
    *(v11 + 532) = v16;

    v18 = [[MessageListCollectionHelper alloc] initWithLoggableClient:v11 updateQueueName:@"com.apple.mobilemail.ConversationViewController.collectionViewUpdate" section:0];
    v19 = *(v11 + 556);
    *(v11 + 556) = v18;

    v20 = [[EFLRUCache alloc] initWithCapacity:50];
    v21 = *(v11 + 564);
    *(v11 + 564) = v20;

    if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      v22 = objc_opt_new();
      v23 = *(v11 + 780);
      *(v11 + 780) = v22;
    }

    v47 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.loadingQueue" qualityOfService:25];
    v24 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.mailboxPrediction" qualityOfService:17];
    v25 = *(v11 + 676);
    *(v11 + 676) = v24;

    v26 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.conversationViewController.messageLoading" qualityOfService:25];
    v27 = *(v11 + 684);
    *(v11 + 684) = v26;

    v28 = [[MFPriorityLoadingQueue alloc] initWithScheduler:v47];
    v29 = *(v11 + 580);
    *(v11 + 580) = v28;

    [*(v11 + 580) setItemHandler:&stru_10064CB48];
    v30 = [v11 _priorityLoadingComparatorForPinnedItemID:0];
    [*(v11 + 580) setComparator:v30];

    v31 = [[UIFindInteraction alloc] initWithSessionDelegate:v11];
    sub_100485314(v11, v31);

    v32 = +[NSUserDefaults em_userDefaults];
    v33 = EMUserDefaultDisableFollowUp;
    [v11 setHideFollowUp:{objc_msgSend(v32, "BOOLForKey:", EMUserDefaultDisableFollowUp)}];
    objc_initWeak(&location, v11);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100056F0C;
    v51[3] = &unk_10064CB70;
    objc_copyWeak(&v53, &location);
    v34 = v32;
    v52 = v34;
    v35 = [v34 ef_observeKeyPath:v33 options:1 autoCancelToken:1 usingBlock:v51];
    v36 = *(v11 + 708);
    *(v11 + 708) = v35;

    v37 = EMUserDefaultMarkAsReadBehavior;
    *(v11 + 860) = [v34 integerForKey:EMUserDefaultMarkAsReadBehavior];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100056FEC;
    v48[3] = &unk_10064CB70;
    objc_copyWeak(&v50, &location);
    v38 = v34;
    v49 = v38;
    v39 = [v38 ef_observeKeyPath:v37 options:1 autoCancelToken:1 usingBlock:v48];
    v40 = *(v11 + 868);
    *(v11 + 868) = v39;

    if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      v41 = +[NSNotificationCenter defaultCenter];
      [v41 addObserver:v11 selector:"_generativeModelsAvailabilityDidChange:" name:EMGenerativeModelsOnDemandSummarizationAvailabilityDidChange object:0];

      v42 = +[NSNotificationCenter defaultCenter];
      [v42 addObserver:v11 selector:"_appIntentDidSummarize:" name:@"AppIntentDidSummarize" object:0];
    }

    v43 = +[NSNotificationCenter defaultCenter];
    [v43 addObserver:v11 selector:"_appIntentDidSetReminder:" name:@"AppIntentDidSetReminder" object:0];

    v44 = +[NSNotificationCenter defaultCenter];
    [v44 addObserver:v11 selector:"_appIntentDidDeleteReminder:" name:@"AppIntentDidDeleteReminder" object:0];

    v45 = +[NSNotificationCenter defaultCenter];
    [v45 addObserver:v11 selector:"_appIntentDidRemoveFollowUp:" name:@"AppIntentDidRemoveFollowUp" object:0];

    [v11 _startObservingSelectedBucketChangeNotification];
    objc_destroyWeak(&v50);

    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)dealloc
{
  v3 = [(ConversationViewController *)self contentItemsCancelable];
  [v3 cancel];

  v4 = [(ConversationViewController *)self predictedMailboxForConversation];
  [v4 cancel];

  v5 = [(ConversationViewController *)self diagnosticsHelperToken];
  [v5 cancel];

  v6 = [(ConversationViewController *)self groupedSenderUnreadCountToken];
  [v6 cancel];

  v7.receiver = self;
  v7.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v7 dealloc];
}

- (void)setConversationSortOrder:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v4 setConversationSortOrder:a3];
  [(ConversationViewController *)self _reloadDataSource];
  [(ConversationViewController *)self _updateQuickReplyState];
}

- (EMQuery)referenceMessageListQuery
{
  v2 = [(ConversationViewController *)self referenceMessageList];
  v3 = [v2 query];

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v9 viewWillAppear:a3];
  v4 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v5 = [v4 sendLaterDate];
  if (v5 || ([v4 readLater], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v8 = [v4 followUp];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  [(ConversationViewController *)self _reloadDataSource];
LABEL_5:
  v6 = [(ConversationViewControllerBase *)self shouldHideStickyFooterView];
  v7 = [(ConversationViewController *)self navigationController];
  [v7 setToolbarHidden:v6 ^ 1];

  if (!v4 && [(ConversationViewControllerBase *)self shouldShowNoMessageSelectedView])
  {
    sub_100057584(self);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v4 viewDidAppear:a3];
  [(ConversationViewController *)self _reloadTopSummaryIfNecessary];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v4 viewWillDisappear:a3];
  [ConversationViewController swipableCollectionViewLayout:willEndSwipeForItemAtIndexPath:]_0(self);
}

- (void)swipableCollectionViewLayout:(void *)a1 willEndSwipeForItemAtIndexPath:
{
  if (a1)
  {
    v2 = sub_100063EB0(a1);
    v3 = [v2 presentedViewController];
    v4 = sub_100063D98(a1, v3);

    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector("_dismissPresentedViewController");
      v7 = 134218754;
      v8 = a1;
      v9 = 2112;
      v10 = v6;
      v11 = 1024;
      v12 = v4;
      v13 = 2112;
      v14 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%p> %@ shouldDismiss:%d presentingVC:%@", &v7, 0x26u);
    }

    if (v4)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v4 viewDidDisappear:a3];
  [(ConversationViewController *)self reenableAutomaticMarkAsReadForAllMessages];
}

- (id)undoManager
{
  v2 = [(ConversationViewControllerBase *)self scene];
  v3 = [v2 undoManager];

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self presentedViewController];
  v6 = [(ConversationViewController *)self _mailActionsViewControllerFromPresentedViewController:v5];

  v7 = [(ConversationViewController *)self presentedViewController];

  if (v7)
  {
    if (v6)
    {
      v8 = [(ConversationViewControllerBase *)self _shouldHideStickyFooterViewForTraitCollection:v4];
      v9 = [(ConversationViewController *)self traitCollection];
      v10 = [(ConversationViewControllerBase *)self _shouldHideStickyFooterViewForTraitCollection:v9];

      if (v8 != v10 || [v6 useActionSheetStyleCard] && (-[ConversationViewController traitCollection](self, "traitCollection"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "preferredContentSizeCategory"), v12 = objc_claimAutoreleasedReturnValue(), IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12), v12, v11, objc_msgSend(v4, "preferredContentSizeCategory"), v14 = objc_claimAutoreleasedReturnValue(), LODWORD(v12) = UIContentSizeCategoryIsAccessibilityCategory(v14), v14, IsAccessibilityCategory != v12))
      {
        [(ConversationViewController *)self dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v15 traitCollectionDidChange:v4];
}

- (BOOL)isBucketSelected
{
  v2 = [(ConversationViewController *)self messageList];
  v3 = [v2 query];
  v4 = [v3 predicate];
  v5 = [v4 ef_containsKeyPath:EMMessageListItemKeyPathCategoryType];

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100057C58;
  v8[3] = &unk_10064CC00;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)setReferenceMessageListItem:(id)a3 referenceMessageList:(id)a4 showAsConversation:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = MFMessageSelectionLifecycleSignpostLog();
  v13 = [v10 itemID];
  v14 = os_signpost_id_make_with_pointer(v12, v13);

  v15 = MFMessageSelectionLifecycleSignpostLog();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v17 = [v10 itemID];
    *buf = 138543362;
    v60 = v17;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, v14, "Message selection lifecycle", "Setting reference item for message with itemID: %{public}@", buf, 0xCu);
  }

  v18 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v19 = [v18 isEqual:v10];

  v20 = _os_activity_create(&_mh_execute_header, "loading messages for the conversation view", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v20, &state);
  if (!v19)
  {
    [(ConversationViewController *)self setDidAutoReloadDataSource:0];
LABEL_13:
    [(ConversationViewController *)self setDisabledMarkAsReadMessageItemIDs:0];
    [(ConversationViewController *)self setExpandedContentItemIDs:0];
    [(ConversationViewController *)self setPinnedItem:0];
    [(ConversationViewControllerBase *)self setDidCompleteFirstPaint:0];
    [(ConversationViewControllerBase *)self setInitialSenderHeaderExpansionStatus:1];
    [(ConversationViewController *)self _resetManualSummaryItemIDs];
    v25 = [(ConversationViewControllerBase *)self restorationFuture];

    if (v25)
    {
      v26 = [(ConversationViewControllerBase *)self restorationFuture];
      v27 = [v26 resultIfAvailable];
      v28 = [v27 referenceMessageListItem];

      if (v10 && v28 == v10)
      {
        v29 = +[ConversationViewController log];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v10 ef_publicDescription];
          *buf = 138412290;
          v60 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Conversation reference item successfully restored: %@", buf, 0xCu);
        }
      }

      else
      {
        v31 = +[ConversationViewController log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v10 itemID];
          *buf = 138412290;
          v60 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "setReferenceMessageListItem (itemID=%@): called before state restoration was complete. Cancelling restoration future.", buf, 0xCu);
        }

        v29 = [(ConversationViewControllerBase *)self restorationFuture];
        [v29 tryCancel];
      }

      [(ConversationViewControllerBase *)self setRestorationFuture:0];
    }

    [(ConversationViewControllerBase *)self shouldShowNoMessageSelectedView];
    if (v10)
    {
      v33 = [(ConversationViewController *)self blankConversationTailspinToken];
      [v33 cancel];

      v34 = +[EFScheduler globalAsyncScheduler];
      v52 = _NSConcreteStackBlock;
      v53 = 3221225472;
      v54 = sub_100058634;
      v55 = &unk_10064C660;
      v56 = self;
      v57 = v10;
      v35 = [v34 afterDelay:&v52 performBlock:1.5];
      [(ConversationViewController *)self setBlankConversationTailspinToken:v35, v52, v53, v54, v55, v56];
    }

    else
    {
      v36 = +[ConversationViewController log];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v60 = self;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%p: No message list item. Showing No Message Selected", buf, 0xCu);
      }
    }

    [(ConversationViewControllerBase *)self setShouldShowNoMessageSelectedView:v10 == 0];
    v37 = +[ConversationViewController log];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v10 ef_publicDescription];
      *buf = 138413314;
      v60 = v38;
      v61 = 2112;
      v62 = v11;
      v63 = 1024;
      *v64 = v7;
      *&v64[4] = 1024;
      *&v64[6] = v10 == 0;
      v65 = 1024;
      v66 = v6;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Setting referenceMessageListItem:%@\nreferenceMessageList:%@\nshowAsConversation:%{BOOL}d, shouldShowNoMessageSelectedView:%{BOOL}d, animated: %{BOOL}d", buf, 0x28u);
    }

    v39 = [(ConversationViewControllerBase *)self messageViewControllerReuseQueue];
    [v39 drain];

    v40 = [(ConversationViewControllerBase *)self cellHeightCache];
    [v40 removeAllObjects];

    v41 = [(ConversationViewControllerBase *)self cellConfigurator];
    [v41 resetCaches];

    v42 = +[NSMutableSet set];
    [(ConversationViewController *)self setInitiallyUnreadItemIDs:v42];

    [(ConversationViewController *)self _stopTextFindingIfNecessary];
    [(ConversationViewControllerBase *)self _updateAllowQuickReplyForMessageListItem:v10];
    if (v10)
    {
      v43 = +[ConversationViewController log];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [v10 itemID];
        v45 = [v10 displayMessageItemID];
        v46 = [v10 conversationID];
        *buf = 138543874;
        v60 = v44;
        v61 = 2114;
        v62 = v45;
        v63 = 2048;
        *v64 = v46;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Setting referenceMessageListItem: itemID=%{public}@ displayMessageItemID=%{public}@ conversationID=%lld", buf, 0x20u);
      }
    }

    else
    {
      v43 = +[ConversationViewController log];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Setting referenceMessageListItem to nil", buf, 2u);
      }
    }

    [(ConversationViewControllerBase *)self setReferenceMessageListItem:v10];
    [(ConversationViewController *)self setReferenceMessageList:v11];
    [(ConversationViewControllerBase *)self setShownAsConversation:v7];
    [(ConversationViewController *)self _reloadDataSource];
    if ((*&self->super._flags & 0x10) != 0)
    {
      [(ConversationViewControllerBase *)self _updateBarButtonsAnimated:v6 force:1];
      [(ConversationViewControllerBase *)self updateArrowControlsView];
    }

    v47 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v48 = v47 == 0;

    if (!v48)
    {
      v49 = [(ConversationViewControllerBase *)self previewState];
      [v49 transitionAfterChangingSources];
    }

    [(ConversationViewController *)self _updateGestureForMessageListItem:v10];
    [(ConversationViewController *)self _resetQuickReplyViewControllerWithReason:0 resetCompose:1 override:0];
    [(ConversationViewControllerBase *)self updateNavigationItemChromelessConfiguration];
    goto LABEL_39;
  }

  v21 = [(ConversationViewController *)self contentRequestCache];
  v22 = [v10 displayMessageItemID];
  v23 = [v21 objectForKey:v22];

  if ([(ConversationViewController *)self _shouldReloadEmptyMessageList])
  {
    [(ConversationViewController *)self setDidAutoReloadDataSource:0];
    v24 = +[ConversationViewController log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [v10 itemID];
      objc_claimAutoreleasedReturnValue();
      sub_10048405C();
    }

    goto LABEL_12;
  }

  if (!v23 || [v23 state] == 3)
  {
LABEL_12:

    goto LABEL_13;
  }

  v50 = +[ConversationViewController log];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = [v10 ef_publicDescription];
    *buf = 138412290;
    v60 = v51;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "setReferenceMessageListItem: Skip setting the same message list item: %@", buf, 0xCu);
  }

LABEL_39:
  os_activity_scope_leave(&state);
}

- (void)_resetQuickReplyViewControllerWithReason:(int64_t)a3 resetCompose:(BOOL)a4 override:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if ([(ConversationViewControllerBase *)self allowQuickReply]|| v5)
  {
    [(ConversationViewControllerBase *)self setIsPerformingQuickReplySendAnimation:0];
    +[_TtC10MobileMail14QuickReplyView defaultHeight];
    [(ConversationViewControllerBase *)self setQuickReplyHeight:?];
    [(ConversationViewController *)self setQuickReplyHasContent:0];
    v14 = [(ConversationViewController *)self _quickReplyView];
    [v14 resetWithReason:a3];
    [v14 setHidden:0];
    v9 = [(ConversationViewController *)self quickReplyMailComposeController];
    [(ConversationViewController *)self mailComposeController:v9 didChangeQuickReplyWebViewHeight:0.0];

    [(ConversationViewController *)self _updateQuickReplyLabelIfNeeded];
    v10 = [(ConversationViewControllerBase *)self quickReplyAnimationContext];
    v11 = +[NSNull null];
    [v10 setObject:v11];

    if (v6)
    {
      v12 = [(ConversationViewController *)self quickReplyMailComposeController];
      v13 = [v12 view];
      [v13 removeFromSuperview];

      [(ConversationViewController *)self setQuickReplyMailComposeController:0];
    }
  }
}

- (void)_resetManualSummaryItemIDs
{
  if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
  {
    v3 = objc_opt_new();
    [(ConversationViewController *)self setSummaryViewModelByItemID:v3];
  }

  [(ConversationViewController *)self setTopSummaryItemID:0];

  [(ConversationViewController *)self setInlineSummaryItemID:0];
}

- (id)focusedMessage
{
  v2 = [(ConversationViewControllerBase *)self handoffCoordinator];
  v3 = [v2 handoffMessageRequest];
  v4 = [v3 message];

  return v4;
}

- (id)_focusedMessageItemID
{
  v2 = [(ConversationViewControllerBase *)self handoffCoordinator];
  v3 = [v2 handoffMessageRequest];
  v4 = [v3 itemID];

  return v4;
}

- (BOOL)containsMessage:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self collectionViewDataSource];
  v6 = [v4 displayMessageItemID];
  v7 = [v5 indexPathForItemIdentifier:v6];
  v8 = v7 != 0;

  return v8;
}

- (void)scrollToMessageIfPossible:(id)a3 animated:(BOOL)a4 pin:(BOOL)a5
{
  v6 = [a3 displayMessageItemID];
  [ConversationViewController scrollToMessageItemIDIfPossible:"scrollToMessageItemIDIfPossible:animated:pin:" animated:? pin:?];
}

- (void)scrollToMessageItemIDIfPossible:(id)a3 animated:(BOOL)a4 pin:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (!v5 || (-[ConversationViewControllerBase pinnedItem](self, "pinnedItem"), v9 = objc_claimAutoreleasedReturnValue(), [v9 itemID], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", v8), v10, v9, (v11 & 1) == 0))
  {
    v12 = [(ConversationViewController *)self collectionViewDataSource];
    v13 = [v12 indexPathForItemIdentifier:v8];

    if (v13)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100058E6C;
      v18[3] = &unk_10064C6B0;
      v18[4] = self;
      v14 = v13;
      v19 = v14;
      v20 = v8;
      [(ConversationViewControllerBase *)self _scrollToItemAtIndexPath:v14 dynamicOffset:0 shouldAdjustToShowPreviousMessage:1 animated:v6 pin:v5 completion:v18];
      v15 = [(ConversationViewControllerBase *)self cellConfigurator];
      v16 = [v15 messageAtIndexPathIsExpanded:v14];

      if ((v16 & 1) == 0)
      {
        v17 = [(ConversationViewControllerBase *)self cellConfigurator];
        [v17 expandCellAtIndexPath:v14 animated:v6 highlightFirst:0];
      }
    }
  }
}

- (id)messageCountHint
{
  v3 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
    if (v5 <= 1 && (*&self->super._flags & 0x20) != 0)
    {
      v8 = +[EFPromise promise];
      v9 = [(ConversationViewController *)self _conversationViewQueryIncludeRelated:1];
      v10 = [(ConversationViewController *)self messageRepository];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100059188;
      v13[3] = &unk_10064CC28;
      v11 = v8;
      v14 = v11;
      [v10 performCountQuery:v9 completionHandler:v13];

      v7 = [v11 future];
    }

    else
    {
      v6 = [NSNumber numberWithUnsignedInteger:v5];
      v7 = [EFFuture futureWithResult:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_reloadDataSource
{
  [(ConversationViewController *)self loadViewIfNeeded];
  [(ConversationViewController *)self setMessageList:0];
  [(ConversationViewController *)self setDisplaySubjectItemID:0];
  [(ConversationViewControllerBase *)self setLastExpandedCellIndexPath:0];
  v4 = [(ConversationViewController *)self messageRepository];
  if (v4 && ([(ConversationViewControllerBase *)self referenceMessageListItem], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
    {
      v6 = [(ConversationViewController *)self referenceMessageList];
      v7 = [v6 unfilteredMessageList];
      v8 = [v7 query];
      v9 = [v8 predicate];
      v10 = [(ConversationViewController *)self _senderBasedQueryPredicateForReferenceMessageListQueryPredicate:v9 shouldExcludeReadMessages:0];

      v11 = [EMMessageList alloc];
      v12 = [(ConversationViewController *)self messageRepository];
      v13 = [v11 initWithQuery:v10 repository:v12];

      v14 = [(ConversationViewController *)self referenceMessageList];
      v15 = [v14 filterPredicate];

      if (!v15)
      {
        v22 = +[NSAssertionHandler currentHandler];
        [v22 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:655 description:@"The messageList from Message List View Controller should always have a category filter when we show the Hybrid Conversation View"];
      }

      v16 = [(ConversationViewController *)self referenceMessageList];
      v17 = [v16 filterPredicate];
      v18 = [v13 filteredMessageListWithPredicate:v17 userFiltered:0];
    }

    else
    {
      v10 = [(ConversationViewController *)self _conversationViewQueryIncludeRelated:(*&self->super._flags >> 5) & 1];
      v19 = [EMMessageList alloc];
      v16 = [(ConversationViewController *)self messageRepository];
      v18 = [v19 initWithQuery:v10 repository:v16];
    }

    v20 = +[ConversationViewController log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v18 query];
      v23 = 138412290;
      v24 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Loading messages for conversation view query: %@", &v23, 0xCu);
    }
  }

  else
  {
    v18 = 0;
  }

  [(ConversationViewController *)self _reloadDataSourceWithMessageList:v18];
  [(ConversationViewController *)self _resetContentRequest];
  [(ConversationViewController *)self setPredictedMailboxForConversation:0];
}

- (void)_reloadDataSourceWithMessageList:(id)a3
{
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:670 description:@"Current thread must be main"];
  }

  v6 = [(ConversationViewController *)self messageList];
  v7 = +[ConversationViewController log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 ef_publicDescription];
    v9 = [v5 ef_publicDescription];
    *buf = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Reloading messageList old:%@\nnew:%@", buf, 0x20u);
  }

  if (v6)
  {
    [v6 stopObserving:self];
  }

  [(ConversationViewController *)self setMessageList:v5];
  if (v5)
  {
    [(ConversationViewController *)self setDidFinishInitialLoad:0];
    [(ConversationViewController *)self setSwappingMessageList:1];
    [(ConversationViewController *)self setNextUpdateShouldAvoidAnimation:1];
    [(ConversationViewController *)self setLastSeenDate:0];
    [(ConversationViewController *)self setLastSeenDisplayDate:0];
    [v5 beginObserving:self];
    objc_initWeak(buf, self);
    v10 = +[EFScheduler mainThreadScheduler];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100059984;
    v16[3] = &unk_10064CC78;
    objc_copyWeak(&v18, buf);
    v17 = v5;
    v11 = [v10 afterDelay:v16 performBlock:0.1];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100059C10;
    v15[3] = &unk_10064CCA0;
    v15[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100059CCC;
    v14[3] = &unk_10064C7E8;
    v14[4] = self;
    [(ConversationViewController *)self _performDataSourceUpdateAnimated:0 collection:0 update:v15 completion:v14];
  }

  v12 = +[ConversationViewController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Reloading: %@", buf, 0xCu);
  }

  if (EMBlackPearlIsFeatureEnabled())
  {
    [(ConversationViewController *)self _updateGroupedSenderMessageCountQueries];
  }
}

- (void)_updateGroupedSenderMessageCountQueries
{
  [(ConversationViewController *)self setGroupedSenderUnreadCountQuery:0];
  v3 = [(ConversationViewController *)self groupedSenderUnreadCountToken];
  [v3 cancel];

  [(ConversationViewController *)self setGroupedSenderUnreadCount:0];
  [(ConversationViewController *)self setTotalUnfilteredMessageCountQuery:0];
  v4 = [(ConversationViewController *)self totalUnfilteredMessageCountToken];
  [v4 cancel];

  [(ConversationViewController *)self setTotalUnfilteredMessageCountToken:0];
  [(ConversationViewControllerBase *)self setTotalUnfilteredMessageCount:0];
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    v5 = [(ConversationViewController *)self messageList];
    v6 = [v5 query];
    v7 = [v6 predicate];
    v23[0] = v7;
    v8 = +[EMMessageListItemPredicates predicateForUnreadMessages];
    v23[1] = v8;
    v9 = [NSArray arrayWithObjects:v23 count:2];
    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

    v11 = [(ConversationViewController *)self messageList];
    v12 = [v11 query];
    v13 = [v12 queryWithPredicate:v10];
    [(ConversationViewController *)self setGroupedSenderUnreadCountQuery:v13];

    v14 = [(ConversationViewController *)self messageRepository];
    v15 = [(ConversationViewController *)self groupedSenderUnreadCountQuery];
    v16 = [v14 startCountingQuery:v15 includingServerCountsForMailboxScope:0 withObserver:self];
    [(ConversationViewController *)self setGroupedSenderUnreadCountToken:v16];

    v17 = [(ConversationViewController *)self messageList];
    v18 = [v17 unfilteredMessageList];
    v19 = [v18 query];
    [(ConversationViewController *)self setTotalUnfilteredMessageCountQuery:v19];

    v20 = [(ConversationViewController *)self messageRepository];
    v21 = [(ConversationViewController *)self totalUnfilteredMessageCountQuery];
    v22 = [v20 startCountingQuery:v21 includingServerCountsForMailboxScope:0 withObserver:self];
    [(ConversationViewController *)self setTotalUnfilteredMessageCountToken:v22];
  }
}

- (void)_performDataSourceUpdateAnimated:(BOOL)a3 collection:(id)a4 update:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005A1C0;
  v17[3] = &unk_10064CCC8;
  v17[4] = self;
  v13 = v10;
  v18 = v13;
  v21 = a3;
  v14 = v11;
  v19 = v14;
  v15 = v12;
  v20 = v15;
  v16 = +[EFScheduler mainThreadScheduler];
  [v16 performBlock:v17];
}

- (id)_updateQueue
{
  v2 = [(ConversationViewController *)self messageListCollectionHelper];
  v3 = [v2 updateQueue];

  return v3;
}

- (void)_nts_performDataSourceUpdateAnimated:(BOOL)a3 collection:(id)a4 update:(id)a5 completion:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (pthread_main_np() != 1)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:764 description:@"Current thread must be main"];
  }

  v14 = [(ConversationViewController *)self messageList];

  if (v14 == v11)
  {
    [(ConversationViewController *)self setIsPerformingDataSourceUpdate:1];
    v16 = [(ConversationViewController *)self isSwappingMessageList];
    v17 = [(ConversationViewController *)self nextUpdateShouldAvoidAnimation];
    [(ConversationViewController *)self setSwappingMessageList:0];
    [(ConversationViewController *)self setNextUpdateShouldAvoidAnimation:0];
    v25 = [(ConversationViewController *)self collectionViewDataSource];
    v18 = [(ConversationViewController *)self messageListCollectionHelper];
    v19 = [v18 section];
    v20 = [(ConversationViewController *)self _updateQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10005A7C8;
    v28[3] = &unk_10064CCF0;
    v34 = a3;
    v35 = v17;
    v36 = v16;
    v15 = v25;
    v29 = v15;
    v21 = v19;
    v30 = v21;
    v31 = self;
    v32 = v12;
    v33 = v13;
    v22 = objc_retainBlock(v28);
    v23 = v22;
    if (v20)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005AA20;
      block[3] = &unk_10064C598;
      v27 = v22;
      dispatch_async(v20, block);
    }

    else
    {
      (v22[2])(v22);
    }

    [(ConversationViewController *)self setIsPerformingDataSourceUpdate:0];
  }

  else
  {
    v15 = +[ConversationViewController log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v11 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1004840A0();
    }
  }
}

- (void)_resetContentRequest
{
  v3 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> Resetting content request", &v17, 0x16u);
  }

  v4 = [(ConversationViewController *)self contentItemsCancelable];
  [v4 cancel];

  v5 = objc_alloc_init(EFManualCancelationToken);
  [(ConversationViewController *)self setContentItemsCancelable:v5];

  v6 = [(ConversationViewController *)self contentRequestQueue];
  v7 = [v6 drain];

  v8 = [(ConversationViewControllerBase *)self referenceMessageListItem];

  v9 = v8 == 0;
  v10 = [(ConversationViewController *)self contentRequestCache];
  v11 = v10;
  if (v9)
  {
    [v10 removeAllObjects];
  }

  else
  {
    [v10 removeAllObjects];

    v12 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v11 = [v12 displayMessageItemID];

    if (v11)
    {
      v13 = [(ConversationViewController *)self _priorityLoadingComparatorForPinnedItemID:v11];
      v14 = [(ConversationViewController *)self contentRequestQueue];
      [v14 setComparator:v13];

      v15 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:v11];
      v16 = [(ConversationViewController *)self contentRequestQueue];
      [v16 immediatelyProcessQueue];
    }
  }
}

- (id)_contentRequestForMessageWithItemID:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self contentRequestCache];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = objc_opt_class();
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@: %p> Content request cache miss. Generating content request for itemID: %{public}@ ", &v14, 0x20u);
    }

    v8 = [(ConversationViewController *)self _generateContentRequestForMessageWithItemID:v4];
    v9 = [(ConversationViewController *)self contentRequestCache];
    [v9 addObject:v8 forKey:v4];

    v6 = v8;
  }

  if (([v6 hasStarted] & 1) == 0)
  {
    v10 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v14 = 138412802;
      v15 = v11;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> Enqueueing content request for itemID: %{public}@", &v14, 0x20u);
    }

    v12 = [(ConversationViewController *)self contentRequestQueue];
    [v12 enqueue:v6];
  }

  return v6;
}

- (id)_generateContentRequestForMessageWithItemID:(id)a3
{
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10005B5B0;
  v42[3] = &unk_10064CD18;
  v4 = a3;
  v43 = v4;
  v5 = objc_retainBlock(v42);
  v6 = [(ConversationViewController *)self contentRequestQueue];
  v7 = [v6 allObjects];

  v8 = [v7 indexOfObjectPassingTest:v5];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v7 objectAtIndex:v8];
    v10 = [(ConversationViewController *)self contentRequestQueue];
    [v10 dequeueObject:v9];

    v11 = v9;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v12 = [(ConversationViewControllerBase *)self collectionView];
  v13 = [(ConversationViewController *)self collectionViewDataSource];
  v14 = [v13 indexPathForItemIdentifier:v4];
  v15 = [v12 cellForItemAtIndexPath:v14];

  v16 = [v15 viewModel];
  v17 = [v16 messageContentRequest];

  if (v17)
  {
    v18 = [v17 itemID];
    v19 = [v18 isEqual:v4];

    if (v19)
    {
      v20 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *buf = 138413058;
        v45 = v21;
        v46 = 2048;
        v47 = self;
        v48 = 2048;
        v49 = v15;
        v50 = 2114;
        v51 = v4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<%@: %p> found existing content request from cell(%p) itemID: %{public}@.", buf, 0x2Au);
      }

      v11 = v17;
LABEL_8:
      if ([v11 state] != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v22 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = [v17 itemID];
      *buf = 138413058;
      v45 = v23;
      v46 = 2048;
      v47 = self;
      v48 = 2114;
      v49 = v24;
      v50 = 2114;
      v51 = v4;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "<%@: %p> contentRequest.itemID: %{public}@ does not match requested itemID: %{public}@.", buf, 0x2Au);
    }
  }

  v11 = 0;
LABEL_14:
  v25 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    *buf = 138412802;
    v45 = v26;
    v46 = 2048;
    v47 = self;
    v48 = 2114;
    v49 = v4;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "<%@: %p> Could not find an appropriate context for itemID: %{public}@. Creating a new one", buf, 0x20u);
  }

  v27 = [MessageContentRepresentationRequest alloc];
  v28 = [(ConversationViewController *)self messageList];
  v29 = [v27 initWithMessageList:v28 itemIdentifier:v4 includeSuggestions:1];

  v30 = [(ConversationViewController *)self contentItemsCancelable];
  [v30 addCancelable:v29];

  v31 = [(ConversationViewControllerBase *)self handoffCoordinator];
  objc_initWeak(buf, v29);
  v32 = +[EFScheduler mainThreadScheduler];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10005B604;
  v39[3] = &unk_10064CD40;
  objc_copyWeak(&v41, buf);
  v33 = v31;
  v40 = v33;
  v34 = [v29 onScheduler:v32 addLoadObserver:v39];

  objc_destroyWeak(&v41);
  objc_destroyWeak(buf);

  v11 = v29;
LABEL_17:
  v35 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = objc_opt_class();
    *buf = 138413058;
    v45 = v36;
    v46 = 2048;
    v47 = self;
    v48 = 2048;
    v49 = v11;
    v50 = 2114;
    v51 = v4;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "<%@: %p> Generated content request %p for itemID: %{public}@", buf, 0x2Au);
  }

  v37 = v11;
  return v11;
}

- (id)_priorityLoadingComparatorForPinnedItemID:(id)a3
{
  v4 = a3;
  [(ConversationViewController *)self collectionViewDataSource];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10005B90C;
  v5 = v20[3] = &unk_10064CD68;
  v21 = v5;
  v6 = objc_retainBlock(v20);
  v7 = v6;
  if (v4)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10005B940;
    v17[3] = &unk_10064CD90;
    v19 = v6;
    v18 = v4;
    v8 = [EFFuture lazyFutureWithBlock:v17];
  }

  else
  {
    v8 = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005B9B8;
  v14[3] = &unk_10064CDB8;
  v15 = v8;
  v16 = v7;
  v9 = v8;
  v10 = v7;
  v11 = objc_retainBlock(v14);
  v12 = objc_retainBlock(v11);

  return v12;
}

- (void)_updateForDataSourceChanges:(BOOL)a3
{
  v3 = a3;
  v5 = +[ConversationViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_updateForDataSourceChanges:%{BOOL}d", v8, 8u);
  }

  [(ConversationViewController *)self _updateSubject];
  [(ConversationViewControllerBase *)self _updateLayout];
  [(ConversationViewControllerBase *)self _updateCells];
  [(ConversationViewController *)self _updateQuickReplyLabelIfNeeded];
  if (v3 && ![(ConversationViewControllerBase *)self isPerformingQuickReplySendAnimation])
  {
    [(ConversationViewControllerBase *)self _resetBottomPaddingIfDisplayingSingleMessage];
    v6 = [(ConversationViewControllerBase *)self collectionView];
    if (([v6 isTracking] & 1) != 0 || (objc_msgSend(v6, "isDecelerating") & 1) != 0 || objc_msgSend(v6, "isDragging"))
    {
      v7 = +[ConversationViewController log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skip _scrollToInitialPosition - conversation view is currently scrolling after user interaction", v8, 2u);
      }
    }

    else
    {
      [(ConversationViewController *)self _scrollToInitialPosition];
    }
  }
}

- (void)_updateSubject
{
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005BF0C;
  v14[3] = &unk_10064CDE0;
  objc_copyWeak(&v15, &location);
  v3 = objc_retainBlock(v14);
  v4 = [(ConversationViewController *)self _messageFutureForConversationSubject];
  if (!v4)
  {
    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1004840E4();
    }
  }

  v6 = +[EFScheduler mainThreadScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005C098;
  v12[3] = &unk_10064CE08;
  v7 = v3;
  v13 = v7;
  [v4 onScheduler:v6 addSuccessBlock:v12];

  v8 = +[EFScheduler mainThreadScheduler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005C0A8;
  v10[3] = &unk_10064C478;
  v9 = v7;
  v11 = v9;
  [v4 onScheduler:v8 addFailureBlock:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (id)_messageFutureForConversationSubject
{
  v3 = [(ConversationViewController *)self countOfMessages];
  if (v3)
  {
    v4 = v3;
    if (_os_feature_enabled_impl() && EMIsGreymatterAvailable())
    {
      v5 = [(ConversationViewController *)self topSummaryItemID];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }

    if ([(ConversationViewControllerBase *)self conversationSortOrder]== 1)
    {
      v7 = v4 - 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = [NSIndexPath indexPathForItem:v7 inSection:0];
    v9 = [(ConversationViewController *)self collectionViewDataSource];
    v10 = [v9 itemIdentifierForIndexPath:v8];

    v11 = [(ConversationViewController *)self _messageFutureForItemID:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_conversationViewQueryIncludeRelated:(BOOL)a3
{
  v3 = a3;
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    v5 = [(ConversationViewController *)self messageList];
    v6 = [v5 query];
  }

  else
  {
    v6 = [(ConversationViewController *)self _queryForConversationViewIncludeRelated:v3];
  }

  return v6;
}

- (id)_senderBasedQueryPredicateForReferenceMessageListQueryPredicate:(id)a3 shouldExcludeReadMessages:(BOOL)a4
{
  v4 = a4;
  v21 = a3;
  v6 = [(ConversationViewController *)self _mailboxExclusionPredicate];
  v7 = [EMMessageListItemPredicates sortDescriptorForDateAscending:[(ConversationViewControllerBase *)self conversationSortOrder]== 0];
  v25 = v7;
  v8 = [NSArray arrayWithObjects:&v25 count:1];

  v9 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v10 = +[EMMessageListItemPredicates predicateForMessagesForBusinessID:](EMMessageListItemPredicates, "predicateForMessagesForBusinessID:", [v9 businessID]);

  v11 = [NSCompoundPredicate ef_andCompoundPredicateForOptionalPredicate:v10 second:v21];

  v12 = [NSCompoundPredicate ef_andCompoundPredicateForOptionalPredicate:v11 second:v6];

  if (v4)
  {
    v13 = +[EMMessageListItemPredicates predicateForUnreadMessages];
    v24[0] = v12;
    v24[1] = v13;
    v14 = [NSArray arrayWithObjects:v24 count:2];
    v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];
  }

  else
  {
    v15 = v12;
  }

  v16 = [EMQuery alloc];
  v17 = objc_opt_class();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10005C620;
  v22[3] = &unk_10064CE30;
  v22[4] = self;
  v23 = v15;
  v18 = v15;
  v19 = [v16 initWithTargetClass:v17 predicate:v18 sortDescriptors:v8 builder:v22];

  return v19;
}

- (id)_queryForConversationViewIncludeRelated:(BOOL)a3
{
  v5 = [(ConversationViewController *)self _mailboxExclusionPredicate];
  v6 = [EMMessageListItemPredicates sortDescriptorForDateAscending:[(ConversationViewControllerBase *)self conversationSortOrder]== 0];
  v26 = v6;
  v7 = [NSArray arrayWithObjects:&v26 count:1];

  v21 = [(ConversationViewController *)self referenceMessageListQuery];
  if ([(ConversationViewControllerBase *)self shownAsConversation])
  {
    v8 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v9 = +[EMMessageListItemPredicates predicateForMessagesInConversation:](EMMessageListItemPredicates, "predicateForMessagesInConversation:", [v8 conversationID]);

    if (a3)
    {
      goto LABEL_12;
    }

    if (([v21 queryOptions] & 0x20) != 0)
    {
      v13 = [(ConversationViewController *)self _referenceMessageListMailboxScope];
      v10 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v13];
    }

    else
    {
      v10 = [v21 predicate];
    }

    if (v10)
    {
      v25[0] = v9;
      v25[1] = v10;
      v11 = [NSArray arrayWithObjects:v25 count:2];
      v14 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];

      v9 = v14;
    }

    else
    {
      v11 = +[ConversationViewController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100484164();
      }
    }
  }

  else
  {
    v10 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v11 = [v10 displayMessageItemID];
    v12 = [(ConversationViewController *)self mailboxRepository];
    v9 = [EMMessage predicateForMessageWithItemID:v11 mailboxPredicate:v5 mailboxTypeResolver:v12];
  }

LABEL_12:
  if (v5)
  {
    v24[0] = v9;
    v24[1] = v5;
    v15 = [NSArray arrayWithObjects:v24 count:2];
    v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];
  }

  else
  {
    v16 = v9;
  }

  v22 = EMMessageListQueryOptionPrecacheAndIncludeItemWithObjectIDInInitialBatch;
  v17 = [(ConversationViewController *)self _displayObjectIDForPreCacheWithPredicate:v16];
  v23 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];

  v19 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v16 sortDescriptors:v7 queryOptions:8 targetClassOptions:v18 label:@"conversation"];

  return v19;
}

- (id)_displayObjectIDForPreCacheWithPredicate:(id)a3
{
  v5 = a3;
  v6 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v7 = [v6 displayMessageItemID];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:1097 description:@"referenceMessageListItem.displayMessageItemID is not an EMMessageCollectionItemID"];
  }

  v8 = +[ConversationViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v15 = 138543618;
    v16 = v7;
    v17 = 2048;
    v18 = [v9 conversationID];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating query with referenceMessageListItem displayMessageItemID: %{public}@ (conversation: %lld)", &v15, 0x16u);
  }

  v10 = [EMMessageObjectID alloc];
  v11 = [(ConversationViewController *)self mailboxRepository];
  v12 = [v10 initWithCollectionItemID:v7 predicate:v5 mailboxTypeResolver:v11];

  return v12;
}

- (id)_mailboxExclusionPredicate
{
  v2 = [(ConversationViewController *)self _excludedMailboxes];
  v3 = [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxes:v2];

  return v3;
}

- (id)_excludedMailboxes
{
  v3 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v4 = [v3 mailboxObjectIDs];

  v5 = objc_opt_new();
  if (_os_feature_enabled_impl() && sub_10005D23C(self))
  {
    v6 = &off_100674E98;
  }

  else
  {
    v6 = &off_100674EB0;
  }

  v7 = sub_10005CDCC(self, v6);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005D2DC;
  v11[3] = &unk_10064CEC0;
  v8 = v4;
  v12 = v8;
  v9 = [v7 ef_filter:v11];

  return v9;
}

- (id)_messageFutureForItemID:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self messageList];
  v6 = [v5 messageListItemForItemID:v4];

  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    v7 = [(ConversationViewController *)self messageList];
    if ([(ConversationViewController *)self isBucketSelected])
    {
      v8 = [(ConversationViewControllerBase *)self delegate];
      [v8 currentlySelectedBucketForConversationViewController:self];

      v9 = [NSNumber numberWithUnsignedInteger:EMCategoryTypeForBucket()];
    }

    else
    {
      v9 = 0;
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005D514;
    v13[3] = &unk_10064CEE8;
    v10 = v7;
    v14 = v10;
    v15 = self;
    v16 = v9;
    v11 = v9;
    [v6 addSuccessBlock:v13];
  }

  return v6;
}

- (id)messageForItemID:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self _messageFutureForItemID:v4];
  if (([v5 isFinished] & 1) == 0)
  {
    v6 = +[ConversationViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Waiting for item %@ future %@", &v9, 0x16u);
    }
  }

  v7 = [v5 result];

  return v7;
}

- (id)_messageAtIndexPath:(id)a3
{
  v4 = [(ConversationViewController *)self messageItemIDAtIndexPath:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ConversationViewController *)self messageForItemID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005DA24;
  v9[3] = &unk_10064CF10;
  v7 = a4;
  v10 = v7;
  v11 = self;
  v12 = a5;
  v8 = +[EFScheduler mainThreadScheduler];
  [v8 performBlock:v9];
}

- (void)collectionDidFinishInitialLoad:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self messageList];

  if (v5 == v4)
  {
    v7 = +[ConversationViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [v4 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100484218();
    }

    v8 = [(ConversationViewControllerBase *)self blankConversationController];
    [v8 conversationViewDidLoadMessageSuccessfully];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005DE4C;
    v19[3] = &unk_10064C7E8;
    v19[4] = self;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v19];

    if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
    {
      v10 = [(ConversationViewController *)self lastSeenDate];
      v11 = [(ConversationViewController *)self lastSeenDisplayDate];
      if (v10 | v11)
      {
        v12 = [(ConversationViewControllerBase *)self referenceMessageListItem];
        v13 = [v12 senderList];
        v14 = [v13 firstObject];

        v15 = [v4 unfilteredMessageList];
        LOBYTE(v12) = v15 == v4;

        if (v12)
        {
          v17 = 0;
        }

        else
        {
          v16 = [(ConversationViewControllerBase *)self delegate];
          [v16 currentlySelectedBucketForConversationViewController:self];

          v17 = [NSNumber numberWithUnsignedInteger:EMCategoryTypeForBucket()];
        }

        v18 = [(ConversationViewController *)self messageRepository];
        [v18 updateLastSeenDate:v10 andDisplayDate:v11 forBusinessWithEmailAddress:v14 category:v17];
      }
    }
  }

  else
  {
    v6 = +[ConversationViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v4 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1004841D4();
    }
  }
}

- (void)_updateInitiallyUnreadItemIDs:(id)a3
{
  v5 = a3;
  v6 = +[ConversationViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ unreadItemIDs:%{public}@", &v9, 0x16u);
  }

  v8 = [(ConversationViewController *)self initiallyUnreadItemIDs];
  [v8 addObjectsFromArray:v5];
}

- (void)populateSummaryItemForSnapshot:(id)a3
{
  v4 = a3;
  if (![(ConversationViewControllerBase *)self beingPreviewed]&& ![(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    if (_os_feature_enabled_impl())
    {
      if (EMIsGreymatterAvailable())
      {
        v5 = [(ConversationViewController *)self topSummaryItemID];
        if (!v5 || ([(ConversationViewController *)self inlineSummaryItemID], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
        {
          if ((+[MUIManagedDeviceRestrictions isManualSummaryRestricted]& 1) == 0)
          {
            v7 = [(ConversationViewController *)self _messageItemIDsFromSnapshot:v4];
            v8 = [v7 firstObject];
            v9 = [(ConversationViewControllerBase *)self referenceMessageListItem];
            v10 = [v9 displayMessageItemID];

            if (v8)
            {
              if (v10)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v11 = [(ConversationViewController *)self topSummaryItemID];

                  if (!v11)
                  {
                    v12 = [[MFGeneratedSummaryCollectionItemID alloc] initWithAnchorMessageItemID:v8];
                    [(ConversationViewController *)self setTopSummaryItemID:v12];
                    [(ConversationViewController *)self setPreviousTopSummaryItemID:v12];
                  }

                  v13 = [(ConversationViewController *)self topSummaryItemID];
                  if (v13)
                  {
                    v14 = [(ConversationViewController *)self topSummaryItemID];
                    v15 = [v4 indexOfItemIdentifier:v14];

                    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v16 = [(ConversationViewController *)self topSummaryItemID];
                      v29 = v16;
                      v17 = [NSArray arrayWithObjects:&v29 count:1];
                      [v4 insertItemsWithIdentifiers:v17 beforeItemWithIdentifier:v8];
                    }
                  }

                  v18 = 0;
                  if ([v7 count] >= 2 && v8 != v10)
                  {
                    if ([v7 containsObject:v10])
                    {
                      v19 = [(ConversationViewController *)self initiallyUnreadItemIDs];
                      v18 = [v19 containsObject:v10];
                    }

                    else
                    {
                      v18 = 0;
                    }
                  }

                  v20 = [(ConversationViewController *)self inlineSummaryItemID];
                  v21 = v20 == 0;

                  if ((v21 & v18) != 0)
                  {
                    v22 = [[MFGeneratedSummaryCollectionItemID alloc] initWithAnchorMessageItemID:v10];
                    [(ConversationViewController *)self setInlineSummaryItemID:v22];
                    [(ConversationViewController *)self setPreviousInlineSummaryItemID:v22];
                  }

                  v23 = [(ConversationViewController *)self inlineSummaryItemID];
                  if (v23)
                  {
                    v24 = [(ConversationViewController *)self inlineSummaryItemID];
                    v25 = [v4 indexOfItemIdentifier:v24] == 0x7FFFFFFFFFFFFFFFLL;

                    if (v25)
                    {
                      v26 = [(ConversationViewController *)self inlineSummaryItemID];
                      v28 = v26;
                      v27 = [NSArray arrayWithObjects:&v28 count:1];
                      [v4 insertItemsWithIdentifiers:v27 beforeItemWithIdentifier:v10];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 toThreadWithItemID:(id)a5 before:(id)a6 unreadItemIDs:(id)a7 isLastObserver:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = +[ConversationViewController log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100484264();
  }

  if (![v14 count])
  {
    sub_100057584(self);
  }

  v24 = self;
  v18 = v13;
  v25 = v18;
  v19 = v16;
  v26 = v19;
  v20 = v15;
  v27 = v20;
  v21 = v14;
  v28 = v21;
  v29 = a2;
  v22 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v22 performBlock:&v23];
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 toThreadWithItemID:(id)a5 after:(id)a6 unreadItemIDs:(id)a7 isLastObserver:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = +[ConversationViewController log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10048431C();
  }

  v24 = self;
  v18 = v13;
  v25 = v18;
  v19 = v16;
  v26 = v19;
  v20 = v15;
  v27 = v20;
  v21 = v14;
  v28 = v21;
  v29 = a2;
  v22 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v22 performBlock:&v23];
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5
{
  v8 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005F108;
  v11[3] = &unk_10064CF88;
  v11[4] = self;
  v12 = a5;
  v13 = v8;
  v9 = v8;
  v10 = v12;
  [(ConversationViewController *)self _performDataSourceUpdateAnimated:1 collection:a3 update:v11];
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005F398;
  v10[3] = &unk_10064CF88;
  v11 = a4;
  v12 = self;
  v13 = a5;
  v8 = v13;
  v9 = v11;
  [(ConversationViewController *)self _performDataSourceUpdateAnimated:1 collection:a3 update:v10];
}

- (void)collection:(id)a3 changedItemIDs:(id)a4
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_10005F674;
  v11[4] = sub_10005F684;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005F68C;
  v8[3] = &unk_10064CFB0;
  v9 = a4;
  v10 = v11;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005F70C;
  v7[3] = &unk_10064CA60;
  v7[4] = self;
  v7[5] = v11;
  v6 = v9;
  [(ConversationViewController *)self _performDataSourceUpdateAnimated:1 collection:a3 update:v8 completion:v7];

  _Block_object_dispose(v11, 8);
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(ConversationViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewController collection:addedItemIDs:before:]", "ConversationViewController.m", 1489, "0");
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [(ConversationViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewController collection:addedItemIDs:after:]", "ConversationViewController.m", 1493, "0");
}

- (void)_deleteItemsWithIDs:(id)a3 fromCollection:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ConversationViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004843D4();
  }

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_10005F674;
  v29[4] = sub_10005F684;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_10005F674;
  v27[4] = sub_10005F684;
  v28 = 0;
  v12 = [(ConversationViewControllerBase *)self pinnedItem];
  if (v12)
  {
    v13 = [(ConversationViewControllerBase *)self pinnedItem];
    v14 = [v13 itemID];
    v15 = [v8 containsObject:v14];

    if (v15)
    {
      [(ConversationViewController *)self setPinnedItem:0];
    }
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100060410;
  v22[3] = &unk_10064D050;
  v25 = v29;
  v16 = v8;
  v23 = v16;
  v24 = self;
  v26 = v27;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000607C0;
  v18[3] = &unk_10064D078;
  v20 = v29;
  v21 = v27;
  v18[4] = self;
  v17 = v10;
  v19 = v17;
  [(ConversationViewController *)self _performDataSourceUpdateAnimated:1 collection:v9 update:v22 completion:v18];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
}

- (id)_itemIDsForReloadAfterInsertingObjectsAfterItemID:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  [v8 addObject:v6];
  v9 = [(ConversationViewController *)self _itemIDBeforeItemID:v6 snapshot:v7];
  v10 = v9;
  if (v9 && ([v9 isEqual:v6] & 1) == 0)
  {
    [v8 addObject:v10];
  }

  return v8;
}

- (id)_itemIDBeforeItemID:(id)a3 snapshot:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 indexOfItemIdentifier:v5];
  v8 = v7;
  if (v7)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v10 = [v6 itemIdentifiers];
      v9 = [v10 objectAtIndexedSubscript:v8 - 1];
    }
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (id)_messageItemIDsFromSnapshot:(id)a3
{
  v3 = [a3 itemIdentifiers];
  v4 = [v3 ef_filter:&stru_10064D0B8];

  return v4;
}

- (id)_adjustedExistingItemIDForInlineSummaryItem:(id)a3 snapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6;
    v9 = [(ConversationViewController *)self _itemIDBeforeItemID:v8 snapshot:v7];
    if (v9)
    {
      v10 = [(ConversationViewController *)self inlineSummaryItemID];
      v11 = [v9 isEqual:v10];

      if (v11)
      {
        v12 = [(ConversationViewController *)self inlineSummaryItemID];

        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqual:v10])
  {
    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100484448();
    }

    memset(__b, 170, sizeof(__b));
    LODWORD(__b[4]) = 0;
    *v28 = 0xE00000001;
    v29 = 1;
    v30 = getpid();
    v26 = 648;
    if (!sysctl(v28, 4u, __b, &v26, 0, 0) && (__b[4] & 0x800) != 0)
    {
      __debugbreak();
      JUMPOUT(0x100060FF8);
    }
  }

  else
  {
    v12 = +[ConversationViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v14 = [v13 itemID];
      LODWORD(__b[0]) = 138543874;
      *(__b + 4) = v9;
      WORD2(__b[1]) = 2114;
      *(&__b[1] + 6) = v10;
      HIWORD(__b[2]) = 2114;
      __b[3] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Collection replacement: %{public}@ → %{public}@ (referenceMessageListItem.itemID: %{public}@)", __b, 0x20u);
    }

    v15 = [(ConversationViewControllerBase *)self pinnedItem];
    v16 = [v15 itemID];
    v17 = [v9 isEqual:v16];

    if (v17)
    {
      v18 = [v15 dynamicOffset];
      v19 = [(ConversationViewController *)self pinnedIndexPathProvider];
      v20 = [PinnedConversationItem pinnedItemWithID:v10 dynamicOffset:v18 indexPathProvider:v19];
      [(ConversationViewController *)self setPinnedItem:v20];
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000612B8;
    v22[3] = &unk_10064CF88;
    v23 = v9;
    v24 = self;
    v25 = v10;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100061558;
    v21[3] = &unk_10064C7E8;
    v21[4] = self;
    [(ConversationViewController *)self _performDataSourceUpdateAnimated:0 collection:v8 update:v22 completion:v21];
  }
}

- (id)cellConfigurator:(id)a3 messageItemIDAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ConversationViewController *)self collectionViewDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  return v7;
}

- (void)messageViewController:(id)a3 didStartDownloadForContentItemWithProgress:(id)a4
{
  v6 = a4;
  v5 = [(ConversationViewController *)self contentItemsCancelable];
  [v5 addCancelable:v6];
}

- (void)messageViewController:(id)a3 didTapShowMoreAtCollapsedOffset:(CGPoint)a4 expandedOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v10 = a3;
  v11 = [v10 contentRequest];
  v12 = [v11 itemID];

  v13 = [(ConversationViewControllerBase *)self cellConfigurator];
  v14 = [v13 expansionTracker];
  v15 = [v14 expansionStatusForCellWithItemID:v12];

  if (v15 == 2)
  {
    v16 = [(ConversationViewController *)self collectionViewDataSource];
    v17 = [v16 indexPathForItemIdentifier:v12];

    if (v17)
    {
      [(ConversationViewController *)self setPinnedItem:0];
      v18 = [(ConversationViewControllerBase *)self cellConfigurator];
      [v18 expandCellAtIndexPath:v17 animated:0 highlightFirst:0 expansionStatus:3];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = ConversationViewController;
    [(ConversationViewControllerBase *)&v19 messageViewController:v10 didTapShowMoreAtCollapsedOffset:v8 expandedOffset:v7, x, y];
  }
}

- (void)messageViewController:(id)a3 didTapRevealActionsButton:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 contentRequest];
  v8 = [v7 message];
  v9 = [v11 predictedMailbox];
  v10 = [v11 contentRequest];
  [(ConversationViewController *)self _didTapRevealActionsButton:v6 message:v8 predictedMailbox:v9 contentRequest:v10 didDismissHandler:0];
}

- (void)messageViewController:(id)a3 didTapUndoSendButton:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 contentRequest];
  v8 = [v7 message];
  v9 = [v11 predictedMailbox];
  v10 = [v11 contentRequest];
  [(ConversationViewController *)self _didTapUndoSendButton:v6 message:v8 predictedMailbox:v9 contentRequest:v10 didDismissHandler:0];
}

- (void)_messageViewControllerDidDisplayContent:(id)a3
{
  v11 = a3;
  if (sub_1004852F8(self))
  {
    v4 = [v11 contentRequest];
    v5 = [v4 itemID];

    v6 = sub_1004852D0(self);
    v7 = sub_100055F94(v6);
    v8 = [v7 objectForKeyedSubscript:v5];

    v9 = sub_100061BD0(self, v5);
    if (v9)
    {
      if ([v8 count])
      {
        [(ConversationViewController *)self _decorateFoundRanges:v8 inExpandedCell:v9];
      }

      else
      {
        v10 = [v11 messageContentView];
        [v10 didBeginTextSearch];
      }
    }
  }
}

- (void)_didTapRevealActionsButton:(id)a3 message:(id)a4 predictedMailbox:(id)a5 contentRequest:(id)a6 didDismissHandler:(id)a7
{
  v9 = a4;
  v8 = [ConversationViewController _actionsViewControllerWithMessage:"_actionsViewControllerWithMessage:contentRequest:predictedMailbox:button:didDismissHandler:" contentRequest:? predictedMailbox:? button:? didDismissHandler:?];
  [(ConversationViewController *)self setSelectedMessage:v9];
  if (v8)
  {
    [(ConversationViewControllerBase *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_didTapUndoSendButton:(id)a3 message:(id)a4 predictedMailbox:(id)a5 contentRequest:(id)a6 didDismissHandler:(id)a7
{
  v8 = a4;
  v9 = [(ConversationViewControllerBase *)self scene];
  v10 = [v9 daemonInterface];
  v11 = [v10 outgoingMessageRepository];

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100061F08;
  v13[3] = &unk_10064D0E0;
  objc_copyWeak(&v15, &location);
  v12 = v8;
  v14 = v12;
  [v11 cancelLastDelayedMessage:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (id)_actionsViewControllerWithMessage:(id)a3 contentRequest:(id)a4 predictedMailbox:(id)a5 button:(id)a6 didDismissHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v44 = a5;
  v45 = a6;
  v15 = a7;
  v43 = v14;
  if (v13)
  {
    v42 = [(ConversationViewControllerBase *)self displayMetrics];
    [MailActionViewHeader defaultHeightWithDisplayMetrics:v42];
    v17 = v16;
    v18 = [(ConversationViewController *)self view];
    [v18 frame];
    Width = CGRectGetWidth(v55);

    v20 = [[MailActionViewHeader alloc] initWithFrame:0.0, 0.0, Width, v17];
    v21 = [(ConversationViewControllerBase *)self contactStore];
    [(MFMessageConversationViewCell *)v20 setContactStore:v21];

    v22 = [MFMessageDisplayMetrics mf_actionCardMetricsFromDisplayMetrics:v42];
    [(MFConversationViewCell *)v20 setDisplayMetrics:v22];

    v23 = [ConversationCellViewModel alloc];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100062724;
    v49[3] = &unk_10064D108;
    v50 = v14;
    v24 = v13;
    v51 = v24;
    v52 = self;
    v25 = [(ConversationCellViewModel *)v23 initWithBuilder:v49];
    [(MFCollapsedMessageCell *)v20 setViewModel:v25];

    objc_initWeak(location, self);
    v26 = [MailActionsViewController alloc];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10006284C;
    v46[3] = &unk_10064D130;
    objc_copyWeak(&v48, location);
    v47 = v15;
    v27 = [(MailActionsViewController *)v26 initWithDelegate:self messageHeaderView:v20 didDismissHandler:v46];
    v28 = [[UINavigationController alloc] initWithRootViewController:v27];
    [v28 setModalPresentationStyle:7];
    v29 = [v28 presentationController];
    [v29 setDelegate:self];

    v30 = [v28 popoverPresentationController];
    [v30 setSourceItem:v45];

    if (+[UIDevice mf_isPadIdiom])
    {
      [v42 mailActionCardPreferredHeightForPad];
      v31 = [(ConversationViewController *)self traitCollection];
      v32 = [v31 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v32);

      if (IsAccessibilityCategory)
      {
        [(MailActionsViewController *)v27 approximateHeightNeededForAccessibilityContentSizeCategory];
      }

      [(MailActionsViewController *)v27 preferredContentSize];
      [v28 setPreferredContentSize:?];
    }

    if (v15)
    {
      v34 = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v35 = [(ConversationViewController *)self _completionForSwipeCardActionsForMailActionsViewController:v27 messageListItem:v34];
      v36 = objc_retainBlock(v35);

      v37 = 0;
    }

    else
    {
      v39 = [(ConversationViewController *)self _preparationForFooterViewCardActionsForMailActionsViewController:v27];
      v37 = objc_retainBlock(v39);

      v34 = [(ConversationViewController *)self _completionForFooterViewCardActionsForMailActionsViewController:v27];
      v36 = objc_retainBlock(v34);
    }

    v40 = [(ConversationViewController *)self _mailActionsViewDataSourceForMailActionsViewController:v27 message:v24 predictedMailbox:v44 preparation:v37 completion:v36];
    [(MailActionsViewController *)v27 setDataSource:v40];

    objc_destroyWeak(&v48);
    objc_destroyWeak(location);
  }

  else
  {
    v38 = +[ConversationViewController log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_1004844F8();
    }

    v15[2](v15);
    v28 = 0;
  }

  return v28;
}

- (void)messageViewController:(id)a3 scrollToRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [a3 messageContentView];
  [(ConversationViewController *)self _scrollToRect:x forMessageContentView:y, width, height];
}

- (id)messageViewControllerMessageListMailboxScope:(id)a3
{
  v3 = [(ConversationViewController *)self _referenceMessageListMailboxScope];

  return v3;
}

- (id)messageSourceMailboxObjectIDForMessageViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 contentRequest];
  v6 = [v5 message];

  if ([(ConversationViewController *)self _isDisplayingSingleMessage])
  {
    v7 = [v6 mailboxObjectIDs];
    v8 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v9 = [v8 mailboxObjectIDs];
    v10 = [v7 firstObjectCommonWithArray:v9];
  }

  else
  {
    v7 = [(ConversationViewController *)self _visibleIndexPathForMessageViewController:v4];
    v8 = [(ConversationViewController *)self _messageAtIndexPath:v7];
    v9 = [v6 mailboxObjectIDs];
    v11 = [v8 mailboxObjectIDs];
    v10 = [v9 firstObjectCommonWithArray:v11];
  }

  return v10;
}

- (BOOL)isCategorizationActionAllowedForMessageViewController:(id)a3
{
  v3 = self;
  v4 = [(ConversationViewControllerBase *)self delegate];
  LOBYTE(v3) = [v4 conversationViewControllerAllowsCategorizationAction:v3];

  return v3;
}

- (void)presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 presentedViewController];
    v9 = [(ConversationViewController *)self _mailActionsViewControllerFromPresentedViewController:v8];

    if (v9)
    {
      v21 = v7;
      [v21 _setShouldDismissWhenTappedOutside:1];
      v20 = [(ConversationViewControllerBase *)self displayMetrics];
      [v9 approximateHeightForActionSheetStyleCard];
      v11 = v10;
      v12 = v10 > 0.0;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100062EDC;
      v22[3] = &unk_10064D158;
      v13 = v20;
      v23 = v13;
      v26 = v12;
      v24 = v9;
      v25 = v11;
      v14 = [UISheetPresentationControllerDetent _detentWithIdentifier:@"ConversationControllerCustomMediumDetent" resolutionContextBlock:v22];
      v15 = v14;
      if (v11 <= 0.0)
      {
        v29[0] = v14;
        v16 = +[UISheetPresentationControllerDetent largeDetent];
        v29[1] = v16;
        v19 = [NSArray arrayWithObjects:v29 count:2];
      }

      else
      {
        v16 = [(ConversationViewController *)self traitCollection];
        v17 = [v16 preferredContentSizeCategory];
        if (UIContentSizeCategoryIsAccessibilityCategory(v17))
        {
          v18 = +[UISheetPresentationControllerDetent largeDetent];
          v28 = v18;
          v19 = [NSArray arrayWithObjects:&v28 count:1];
        }

        else
        {
          v27 = v15;
          v19 = [NSArray arrayWithObjects:&v27 count:1];
        }
      }

      [v21 setDetents:v19];
    }
  }
}

- (id)_mailActionsViewDataSourceForMailActionsViewController:(id)a3 message:(id)a4 predictedMailbox:(id)a5 preparation:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v33 = a7;
  v16 = [v13 itemID];
  v35 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:v16];

  v17 = [v13 itemID];
  v34 = [(ConversationViewController *)self _getCurrentlySelectedMessageContentForMessageItemID:v17];

  v18 = [MFTriageInteractionTarget alloc];
  v19 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v20 = [v13 displayMessage];
  v21 = [v20 result];
  v32 = [(MFTriageInteractionTarget *)v18 initWithMessageListItem:v19 primaryMessage:v21 selectedMessageContent:v34 primaryMessageContentRequest:v35 targetPreference:0 preferQuickCompositionalActions:0];

  v31 = [(ConversationViewControllerBase *)self delegate];
  v22 = [MailActionsViewDataSource alloc];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100063374;
  v36[3] = &unk_10064D180;
  v36[4] = self;
  v23 = v12;
  v37 = v23;
  v24 = v32;
  v38 = v24;
  v25 = v15;
  v41 = v25;
  v26 = v33;
  v42 = v26;
  v27 = v14;
  v39 = v27;
  v28 = v31;
  v40 = v28;
  v29 = [(MailActionsViewDataSource *)v22 initWithBuilderBlock:v36];

  return v29;
}

- (id)_preparationForFooterViewCardActionsForMailActionsViewController:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000635CC;
  v7[3] = &unk_10064D1A8;
  v7[4] = self;
  v8 = a3;
  v3 = v8;
  v4 = objc_retainBlock(v7);
  v5 = objc_retainBlock(v4);

  return v5;
}

- (id)_completionForFooterViewCardActionsForMailActionsViewController:(id)a3
{
  v4 = [(ConversationViewController *)self selectedMessage];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  }

  v7 = v6;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006377C;
  v12[3] = &unk_10064D1D0;
  v12[4] = self;
  v13 = v7;
  v8 = v7;
  v9 = objc_retainBlock(v12);
  v10 = objc_retainBlock(v9);

  return v10;
}

- (id)_completionForSwipeCardActionsForMailActionsViewController:(id)a3 messageListItem:(id)a4
{
  v5 = a3;
  v6 = [(ConversationViewController *)self selectedMessage];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  }

  v9 = v8;

  objc_initWeak(&location, v5);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100063A4C;
  v14[3] = &unk_10064D1F8;
  objc_copyWeak(&v16, &location);
  v14[4] = self;
  v15 = v9;
  v10 = v9;
  v11 = objc_retainBlock(v14);
  v12 = objc_retainBlock(v11);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
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

- (BOOL)_shouldArchiveByDefault
{
  v2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v3 = [v2 shouldArchiveByDefault];

  return v3;
}

- (id)messageItemIDAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self collectionViewDataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  return v6;
}

- (int64_t)countOfMessages
{
  v3 = [(ConversationViewControllerBase *)self collectionView];
  v4 = [(ConversationViewController *)self collectionViewDataSource];
  if ([v4 numberOfSectionsInCollectionView:v3] < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 collectionView:v3 numberOfItemsInSection:0];
  }

  v6 = [(ConversationViewController *)self countOfSummaries];
  v7 = (v5 - v6) & ~((v5 - v6) >> 63);

  return v7;
}

- (int64_t)countOfSummaries
{
  if (!_os_feature_enabled_impl() || !EMIsGreymatterAvailable() || (+[MUIManagedDeviceRestrictions isManualSummaryRestricted]& 1) != 0)
  {
    return 0;
  }

  v5 = [(ConversationViewController *)self topSummaryItemID];

  v6 = [(ConversationViewController *)self inlineSummaryItemID];

  v7 = [(ConversationViewController *)self previousTopSummaryItemID];
  v8 = [(ConversationViewController *)self previousInlineSummaryItemID];
  v9 = v8;
  v10 = 1;
  if (v5)
  {
    v10 = 2;
  }

  if (v6)
  {
    v3 = v10;
  }

  else
  {
    v3 = v5 != 0;
  }

  if (!v3)
  {
    if (v7 | v8)
    {
      v11 = [(ConversationViewController *)self collectionViewDataSource];
      v12 = v11;
      if (v7)
      {
        v13 = [v11 indexPathForItemIdentifier:v7];
        v3 = v13 != 0;
      }

      else
      {
        v3 = 0;
      }

      if (v9)
      {
        v14 = [v12 indexPathForItemIdentifier:v9];
        if (v14)
        {
          ++v3;
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_showSingleMessage:(id)a3 animationOffset:(CGPoint)a4 initialScrollOffset:(CGPoint)a5
{
  v6 = [a3 contentRequest];
  v17 = [v6 message];

  v7 = [v17 itemID];
  v8 = [(ConversationViewController *)self _cellForMessageItemIDIfExpanded:v7];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!*(&self->_expandedContentItemIDs + 4))
      {
        v9 = objc_alloc_init(NSMutableSet);
        v10 = *(&self->_expandedContentItemIDs + 4);
        *(&self->_expandedContentItemIDs + 4) = v9;
      }

      [(ConversationViewController *)self setPinnedItem:0];
      v11 = [v8 messageViewController];
      v12 = [v11 messageContentView];

      v13 = [(ConversationViewController *)self expandedContentItemIDs];
      v14 = [v17 itemID];
      [v13 addObject:v14];

      v15 = [v8 messageViewController];
      [v15 setAutomaticallyCollapseQuotedContent:0];

      v16 = [v12 footerView];
      [v16 setBlockquotesAreExpanded:1];

      [v12 reload];
    }
  }
}

- (BOOL)_shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ConversationViewController;
  v5 = [(ConversationViewControllerBase *)&v10 _shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:v4];
  v6 = [(ConversationViewController *)self collectionViewDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v4];

  v8 = [(ConversationViewController *)self expandedContentItemIDs];
  LOBYTE(v6) = [v8 containsObject:v7];

  return v5 & (v6 ^ 1);
}

- (void)_reloadCellsAtIndexPaths:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ConversationViewController *)self messageList];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100064648;
  v9[3] = &unk_10064CCA0;
  v8 = v6;
  v10 = v8;
  [(ConversationViewController *)self _performDataSourceUpdateAnimated:v4 collection:v7 update:v9];
}

- (int64_t)_headerDisplayOptionsForCell:(id)a3 displayedAsSingleMessage:(BOOL)a4
{
  v5 = [(ConversationViewControllerBase *)self beingPreviewed:a3];
  v6 = [(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList];
  v7 = 2;
  if (v5)
  {
    v7 = 18;
  }

  if (v6)
  {
    return v7 | 0x20;
  }

  else
  {
    return v7;
  }
}

- (void)_updateBarButtonsEnabled
{
  v4 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v3 = [(ConversationViewControllerBase *)self barItemsManager];
  [v3 updateEnabledStatesForMessage:v4];
}

- (void)_scrollToInitialPosition
{
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100064F00;
  v37[3] = &unk_10064D248;
  v37[4] = self;
  v4 = objc_retainBlock(v37);
  [(ConversationViewControllerBase *)self initialScrollOffset];
  v7 = v6;
  v8 = v5;
  if (v6 == CGPointZero.x && v5 == CGPointZero.y)
  {
    v12 = [(ConversationViewControllerBase *)self pinnedItem];
    if (!v12)
    {
      v18 = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v19 = [v18 displayMessageItemID];
      v20 = [(ConversationViewController *)self topSummaryItemID];
      v21 = [v20 anchorMessageItemID];
      v22 = v19 == v21;

      if (v22)
      {
        if ([(ConversationViewController *)self _shouldShowSummarizeControls:v19])
        {
          v31 = +[ConversationViewController log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v18 ef_publicDescription];
            *buf = 138412290;
            v39 = *&v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Scroll to top summary item: %@", buf, 0xCu);
          }

          v28 = [(ConversationViewController *)self topSummaryItemID];
          (v4[2])(v4, v28, 0, 0);
        }

        else
        {
          v35 = +[ConversationViewController log];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v18 ef_publicDescription];
            *buf = 138412290;
            v39 = *&v36;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Scroll to reference message list item: %@", buf, 0xCu);
          }

          v28 = [v18 displayMessageItemID];
          (v4[2])(v4, v28, 0, 0);
        }
      }

      else
      {
        v23 = [(ConversationViewController *)self inlineSummaryItemID];
        v24 = [v23 anchorMessageItemID];
        v25 = v19 == v24;

        if (v25)
        {
          v33 = +[ConversationViewController log];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v18 ef_publicDescription];
            *buf = 138412290;
            v39 = *&v34;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Scroll to inline summary item: %@", buf, 0xCu);
          }

          v28 = [(ConversationViewController *)self inlineSummaryItemID];
          (v4[2])(v4, v28, 0, 1);
        }

        else
        {
          v26 = +[ConversationViewController log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v18 ef_publicDescription];
            *buf = 138412290;
            v39 = *&v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Scroll to reference message list item: %@", buf, 0xCu);
          }

          v28 = [v18 displayMessageItemID];
          (v4[2])(v4, v28, 0, 1);
        }
      }

      goto LABEL_36;
    }

    v13 = +[ConversationViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v2 = [v12 ef_publicDescription];
      v14 = [v12 dynamicOffset];
      v15 = [v14 ef_publicDescription];
      *buf = 138412546;
      v39 = *&v2;
      v40 = 2112;
      v41 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Scroll to pinned item: %@, dynamicOffset: %@", buf, 0x16u);
    }

    v16 = [(ConversationViewController *)self topSummaryItemID];
    if (v16 && ([v12 indexPath], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "item") == 1))
    {
      v17 = 1;
    }

    else
    {
      v29 = [(ConversationViewController *)self topSummaryItemID];
      if (v29)
      {
        v17 = 0;
      }

      else
      {
        v30 = [v12 indexPath];
        v17 = [v30 item] == 0;
      }

      if (!v16)
      {
        goto LABEL_24;
      }
    }

LABEL_24:
    v18 = [v12 itemID];
    v19 = [v12 dynamicOffset];
    (v4[2])(v4, v18, v19, !v17);
LABEL_36:

    goto LABEL_37;
  }

  v10 = +[ConversationViewController log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Scroll to initial scroll offset: %.2f", buf, 0xCu);
  }

  v11 = [(ConversationViewControllerBase *)self collectionView];
  [v11 setContentOffset:0 animated:{v7, v8}];

  v12 = [(ConversationViewControllerBase *)self previewState];
  [v12 transitionAfterScrollingToReferenceMessage];
LABEL_37:
}

- (BOOL)_isItemInitiallyUnreadAtIndexPath:(id)a3
{
  v4 = [(ConversationViewController *)self messageItemIDAtIndexPath:a3];
  if (v4)
  {
    v5 = [*(&self->_initiallyUnreadItemIDs + 4) containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_fetchConversationAttachmentDataWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100065340;
  v4[3] = &unk_10064D2C0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ConversationViewController *)v5 _allMessageIDsWithCompletion:v4];
}

- (void)_fetchConversationRichLinkDataWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100065618;
  v4[3] = &unk_10064D2C0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(ConversationViewController *)v5 _allMessageIDsWithCompletion:v4];
}

- (void)setBeingPreviewed:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v8 setBeingPreviewed:?];
  v5 = [(ConversationViewControllerBase *)self cellConfigurator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006590C;
  v6[3] = &unk_10064D328;
  v7 = a3;
  v6[4] = self;
  [v5 enumerateExpandedCellsWithBlock:v6];
}

- (void)_configureExpandedCell:(id)a3 atIndexPath:(id)a4 viewModel:(id)a5 collapseQuotedContent:(BOOL)a6
{
  v81 = a6;
  v9 = a3;
  v89 = a4;
  v86 = a5;
  v10 = [(ConversationViewController *)self blankConversationTailspinToken];
  [v10 cancel];

  v11 = [(ConversationViewController *)self _isDisplayingSingleMessage];
  v88 = [v86 messageContentRequest];
  v12 = [v9 messageViewController];

  if (!v12)
  {
    v13 = [(ConversationViewControllerBase *)self messageViewControllerReuseQueue];
    v14 = [v13 dequeueMessageViewControllerForContentRequest:v88];

    v15 = [(ConversationViewControllerBase *)self avatarGenerator];
    [v14 setAvatarGenerator:v15];

    [v9 setMessageViewController:v14];
  }

  v16 = [v9 messageViewController];
  [v16 setDelegate:self];
  v17 = [(ConversationViewControllerBase *)self contactStore];
  [v16 setContactStore:v17];

  v18 = [(ConversationViewControllerBase *)self avatarGenerator];
  [v16 setAvatarGenerator:v18];

  v91 = [v16 messageContentView];
  v19 = [(ConversationViewControllerBase *)self cellConfigurator];
  v20 = [v19 expansionStatusForMessageAtIndexPath:v89];

  v87 = v20;
  v82 = !v11;
  if (v20 == 2)
  {
    v21 = 1;
  }

  else
  {
    v21 = v11 ^ 1;
  }

  [v91 setSuppressScrolling:v21];
  v22 = [(ConversationViewControllerBase *)self contactStore];
  [v91 setContactStore:v22];

  v23 = [v91 webView];
  [v23 setUserInteractionEnabled:v20 != 2];

  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    [v91 setHideSenderSpecificBanners:{objc_msgSend(v89, "row") > 0}];
  }

  v24 = +[ConversationViewController log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v86 messageContentRequest];
    v26 = [v25 itemID];
    *buf = 134218754;
    *v113 = v9;
    *&v113[8] = 2112;
    v114 = v89;
    *v115 = 2114;
    *&v115[2] = v26;
    v116 = 2048;
    v117 = v91;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Configuring expanded cell(%p) at indexPath: %@ with itemID: %{public}@, contentView:%p", buf, 0x2Au);
  }

  v90 = [v88 message];
  [v9 setShouldArchiveByDefault:{objc_msgSend(v90, "shouldArchiveByDefault")}];
  v27 = [v16 contentRequest];
  v28 = [v27 isEqual:v88];

  v29 = [v9 isConfiguredForSingleMessageDisplay];
  v30 = [v16 isConfiguredForGroupedSenderMessageListDisplay];
  v31 = [(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList];
  v32 = +[ConversationViewController log];
  v33 = v11 ^ v29;
  v83 = v30 ^ v31;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [v86 messageContentRequest];
    v35 = [v34 itemID];
    *buf = 67109890;
    *v113 = v28 ^ 1;
    *&v113[4] = 1024;
    *&v113[6] = v33;
    LOWORD(v114) = 1024;
    *(&v114 + 2) = v83;
    HIWORD(v114) = 2114;
    *v115 = v35;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Content requests differs %{BOOL}d, singleMessageConfigurationDiffers %{BOOL}d, messageListConfigurationDiffers %{BOOL}d for cell with itemID: %{public}@", buf, 0x1Eu);
  }

  v36 = [v90 readLater];
  if (v36)
  {
  }

  else
  {
    v37 = [v90 sendLaterDate];
    if (v37)
    {
      v38 = 1;
    }

    else
    {
      v39 = [v90 followUp];
      v38 = v39 != 0;
    }

    if (((v28 ^ 1 | v33 | v83 | v38) & 1) == 0)
    {
      [v9 setConfiguredForSingleMessageDisplay:v11];
      [v16 setAutomaticallyCollapseQuotedContent:v81 reloadIfNeeded:1];
      goto LABEL_43;
    }
  }

  val = [v91 headerView];
  if (_os_feature_enabled_impl() && EMIsGreymatterAvailable())
  {
    v40 = +[MUIManagedDeviceRestrictions isManualSummaryRestricted];
  }

  else
  {
    v40 = 1;
  }

  [val setHideTopSeparator:v82 | ((MUISolariumFeatureEnabled() & 1) == 0) | v40 & 1u];
  v41 = objc_alloc_init(NSMutableArray);
  if (MUISolariumFeatureEnabled())
  {
    v42 = sub_100066B90(self, v90, v89);
    [v41 ef_addOptionalObject:v42];
  }

  objc_initWeak(buf, v16);
  objc_initWeak(&location, v9);
  objc_initWeak(&from, self);
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_100066F94;
  v105[3] = &unk_10064D350;
  objc_copyWeak(&v106, &from);
  objc_copyWeak(&v107, buf);
  objc_copyWeak(&v108, &location);
  v109 = v11;
  v84 = objc_retainBlock(v105);
  if (v87 == 2)
  {
    objc_initWeak(&v104, val);
    v43 = [_TtC10MobileMail37SemiExpandedMessageHeaderSubjectBlock alloc];
    v101[0] = _NSConcreteStackBlock;
    v101[1] = 3221225472;
    v101[2] = sub_100067098;
    v101[3] = &unk_10064D378;
    objc_copyWeak(&v103, &v104);
    v102 = v84;
    v44 = [(SemiExpandedMessageHeaderSubjectBlock *)v43 initWithHandler:v101];
    [v41 addObject:v44];

    objc_destroyWeak(&v103);
    objc_destroyWeak(&v104);
  }

  else
  {
    v45 = (v84[2])();
    [v41 addObject:v45];
  }

  v46 = [(ConversationViewController *)self _shouldShowMailboxForMessage:v90];
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    v47 = sub_100066B90(self, v90, v89);
    [v41 ef_addOptionalObject:v47];
  }

  if (v87 != 2)
  {
    v48 = [[MessageHeaderSubjectBlock alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [v41 addObject:v48];
    [v91 setHeaderViewSubjectBlock:v48];
    [(MessageHeaderSubjectBlock *)v48 setHidden:v82];
  }

  if (v46)
  {
    v49 = [MFMessageSashHeaderBlock alloc];
    v50 = +[UIApplication sharedApplication];
    v51 = [v50 accountsProvider];
    v52 = [v49 initWithFrame:v51 accountsProvider:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

    [v52 setShouldShowMailbox:1];
    [v41 insertObject:v52 atIndex:0];
    if (v28)
    {
      goto LABEL_33;
    }

LABEL_36:
    [val setHeaderBlocks:v41];
    if (v52)
    {
      [val setPinnedBlock:v52];
    }

    goto LABEL_38;
  }

  v52 = 0;
  if ((v28 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  if (v83)
  {
    v53 = [val headerBlocks];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_100067148;
    v99[3] = &unk_10064D3A0;
    v99[4] = self;
    v54 = v41;
    v100 = v54;
    v55 = [v53 ef_filter:v99];

    v56 = [v55 arrayByAddingObjectsFromArray:v54];
    [val setHeaderBlocks:v56];
  }

LABEL_38:
  [v9 setConfiguredForSingleMessageDisplay:v11];
  [v16 setAutomaticallyCollapseQuotedContent:v81 reloadIfNeeded:v28];
  [v16 setContentRequest:v88];
  v57 = [(ConversationViewController *)self predictedMailboxForConversation];
  v58 = v57 == 0;

  if (v58)
  {
    [(ConversationViewController *)self _updatePredictedMailboxForConversation];
  }

  v59 = [v9 predictedMailbox];
  v60 = v59 == 0;

  if (v60)
  {
    [(ConversationViewController *)self configurePredictedMailboxForCell:v9 forMessage:v90];
  }

  v61 = [v90 itemID];
  [(ConversationViewController *)self _updateStickySubjectForItemID:v61 cell:v9 indexPath:v89];

  objc_destroyWeak(&v108);
  objc_destroyWeak(&v107);
  objc_destroyWeak(&v106);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

LABEL_43:
  v62 = +[ConversationViewController log];
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [v91 headerView];
    v64 = [v63 headerBlocks];
    v65 = [v86 messageContentRequest];
    v66 = [v65 itemID];
    *buf = 138544130;
    *v113 = v64;
    *&v113[8] = 2112;
    v114 = v89;
    *v115 = 2114;
    *&v115[2] = v66;
    v116 = 2048;
    v117 = v91;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Header blocks %{public}@ for expanded cell at indexPath: %@ with itemID: %{public}@, contentView:%p", buf, 0x2Au);
  }

  if (![(ConversationViewControllerBase *)self didCompleteFirstPaint])
  {
    -[ConversationViewControllerBase setDidCompleteFirstPaint:](self, "setDidCompleteFirstPaint:", [v16 didCompleteFirstPaint]);
  }

  v67 = [(ConversationViewControllerBase *)self allowQuickReply];
  v68 = v90;
  v69 = _os_feature_enabled_impl();
  if ((v67 & [(ConversationViewController *)self _isQuickReplyMessageAtIndexPath:v89]) == 1)
  {
    v70 = [(ConversationViewControllerBase *)self quickReplyAnimationContext];
    v71 = [v70 getObject];

    if ((*(EFIsNull + 16))(EFIsNull, v71))
    {
      v72 = 0;
    }

    else
    {
      v72 = v71;
    }

    v73 = v72;

    if (!v73)
    {
      [(ConversationViewController *)self _resetQuickReplyViewControllerWithReason:4 resetCompose:1 override:0];
      v74 = +[ConversationViewController log];
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v75 = objc_opt_class();
        sub_10048453C(v75, self, buf, v74);
      }
    }

    [v9 prepareForQuickReplyAnimationWithContext:v73];
    v76 = [(ConversationViewController *)self _quickReplyView];
    [v76 setHidden:1];

    +[_TtC10MobileMail14QuickReplyView defaultHeight];
    [(ConversationViewControllerBase *)self setQuickReplyHeight:?];

    v68 = v90;
  }

  if ([(ConversationViewControllerBase *)self beingPreviewed])
  {
    [v91 setShowMessageFooter:0];
  }

  v77 = [v91 footerView];
  [v77 setIsSemiExpanded:v87 == 2];
  if (v69)
  {
    [v77 setUndoSendButtonHidden:{-[ConversationViewController _isMessageInOutbox:](self, "_isMessageInOutbox:", v68) ^ 1}];
  }

  else
  {
    v78 = [v9 itemID];
    objc_initWeak(&location, self);
    v79 = [(ConversationViewController *)self messageLoadingScheduler];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_1000671F4;
    v92[3] = &unk_10064D3F0;
    v93 = v90;
    objc_copyWeak(&v98, &location);
    v94 = v9;
    v80 = v78;
    v95 = v80;
    v96 = v77;
    v97 = v89;
    [v79 performBlock:v92];

    objc_destroyWeak(&v98);
    objc_destroyWeak(&location);
  }
}

- (id)_bannerBlockToInsertForHeaderView:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ConversationViewController *)self collectionViewDataSource];
  v9 = [v7 itemID];
  v10 = [v8 indexPathForItemIdentifier:v9];

  v11 = sub_100066B90(self, v7, v10);
  if (-[ConversationViewController _headerView:hasBannerType:](self, "_headerView:hasBannerType:", v6, [v11 type]))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (BOOL)_bannerView:(id)a3 hasBannerType:(int64_t)a4
{
  v5 = a3;
  v6 = (objc_opt_respondsToSelector() & 1) != 0 && [v5 type] == a4;

  return v6;
}

- (BOOL)_headerView:(id)a3 hasBannerType:(int64_t)a4
{
  v6 = [a3 headerBlocks];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100067678;
  v9[3] = &unk_10064D418;
  v9[4] = self;
  v9[5] = a4;
  v7 = [v6 ef_firstObjectPassingTest:v9];
  LOBYTE(a4) = v7 != 0;

  return a4;
}

- (BOOL)_shouldRemoveBannerBlock:(id)a3 forHeaderViewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  if (!v8)
  {
    v9 = [v7 sendLaterDate];
    LOBYTE(self) = v9 == 0;
    goto LABEL_11;
  }

  if (v8 == 1)
  {
    v9 = [v7 readLaterDate];
    if (v9)
    {
      v10 = [(ConversationViewControllerBase *)self delegate];
      LODWORD(self) = [v10 conversationViewControllerAllowsRemindMeAction:self] ^ 1;

      goto LABEL_11;
    }

LABEL_10:
    LOBYTE(self) = 1;
    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = [v7 followUp];
    if (v9)
    {
      LOBYTE(self) = [(ConversationViewController *)self shouldHideFollowUp];
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  LOBYTE(self) = 0;
LABEL_12:

  return self;
}

- (void)configurePredictedMailboxForCell:(id)a3 forMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[EFPromise promise];
  v9 = [v8 future];
  [v6 setPredictedMailbox:v9];

  v10 = [(ConversationViewController *)self mailboxPredictionScheduler];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100067908;
  v13[3] = &unk_10064C660;
  v11 = v8;
  v14 = v11;
  v12 = v7;
  v15 = v12;
  [v10 performBlock:v13];
}

- (void)_configureCollapsedCell:(id)a3 atIndexPath:(id)a4 viewModel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ConversationViewController *)self blankConversationTailspinToken];
  [v11 cancel];

  v12 = +[ConversationViewController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 messageContentRequest];
    v14 = [v13 itemID];
    v15 = 138412546;
    v16 = v9;
    v17 = 2114;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Configuring collapsed cell at indexPath: %@ with itemID: %{public}@", &v15, 0x16u);
  }

  if (sub_1004852F8(self))
  {
    [v8 addConversationSearchOverlay];
  }
}

- (void)_configureGeneratedSummaryCell:(id)a3 atIndexPath:(id)a4 viewModel:(id)a5
{
  v8 = a3;
  v6 = [(ConversationViewController *)self summaryCellPromiseForAppIntent];

  if (v6)
  {
    v7 = [(ConversationViewController *)self summaryCellPromiseForAppIntent];
    [v7 finishWithResult:v8];
  }
}

- (id)_currentlyVisibleIndexPath
{
  v3 = [(ConversationViewController *)self collectionViewDataSource];
  v4 = [(ConversationViewController *)self _focusedMessageItemID];
  v5 = [v3 indexPathForItemIdentifier:v4];

  return v5;
}

- (id)_indexPathForReferenceMessage
{
  v3 = [(ConversationViewController *)self collectionViewDataSource];
  v4 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v5 = [v4 displayMessageItemID];
  v6 = [v3 indexPathForItemIdentifier:v5];

  return v6;
}

- (id)_indexPathOfMessageViewControllerMessage:(id)a3
{
  v4 = [a3 contentRequest];
  v5 = [v4 message];

  v6 = [(ConversationViewController *)self collectionViewDataSource];
  v7 = [v5 itemID];
  v8 = [v6 indexPathForItemIdentifier:v7];

  return v8;
}

- (id)_visibleIndexPathForMessageViewController:(id)a3
{
  v3 = [(ConversationViewController *)self _indexPathOfMessageViewControllerMessage:a3];

  return v3;
}

- (id)_targetMessageOrItemIDForBarButtonTriage:(BOOL)a3
{
  v3 = a3;
  v5 = [(ConversationViewController *)self collectionViewDataSource];
  v6 = [v5 snapshot];

  v7 = [(ConversationViewController *)self _messageItemIDsFromSnapshot:v6];
  if (![v7 count])
  {
    v17 = 0;
    goto LABEL_22;
  }

  v8 = [(ConversationViewController *)self _isDisplayingSingleMessage];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10005F674;
  v37 = sub_10005F684;
  v38 = 0;
  v9 = [(ConversationViewControllerBase *)self cellConfigurator];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000682A0;
  v27[3] = &unk_10064D4C0;
  v31 = v8;
  v32 = v3;
  v28 = &stru_10064D458;
  v29 = &stru_10064D498;
  v30 = &v33;
  [v9 enumerateExpandedCellsWithBlock:v27];

  v10 = v34[5];
  if (!v10)
  {
    v11 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v12 = [v11 displayMessageItemID];
    v13 = [v7 indexOfObject:v12];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = +[ConversationViewController log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1004845B4();
      }

      v15 = [(ConversationViewController *)self _referenceDisplayMessage];
      v16 = [EFPair pairWithFirst:0 second:v15];
    }

    else
    {
      if ([(ConversationViewControllerBase *)self conversationSortOrder]== 1)
      {
        if (v13 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v13;
        }

        v19 = (v18 - 1);
      }

      else
      {
        v20 = [v7 count];
        if (v13 + 1 < (v20 - 1))
        {
          v19 = (v13 + 1);
        }

        else
        {
          v19 = v20 - 1;
        }
      }

      v15 = [v7 objectAtIndexedSubscript:v19];
      if (v3)
      {
        v21 = [(ConversationViewController *)self messageForItemID:v15];
        v22 = [v21 displayMessage];
        v23 = [v22 result];
        v24 = [EFPair pairWithFirst:0 second:v23];
        v25 = v34[5];
        v34[5] = v24;

LABEL_20:
        v10 = v34[5];
        goto LABEL_21;
      }

      v16 = [EFPair pairWithFirst:v15 second:0];
    }

    v21 = v34[5];
    v34[5] = v16;
    goto LABEL_20;
  }

LABEL_21:
  v17 = v10;

  _Block_object_dispose(&v33, 8);
LABEL_22:

  return v17;
}

- (id)targetMessageItemIDForBarButtonTriage
{
  v2 = [(ConversationViewController *)self _targetMessageOrItemIDForBarButtonTriage:0];
  v3 = [v2 first];

  return v3;
}

- (id)targetMessageForBarButtonTriage
{
  v2 = [(ConversationViewController *)self _targetMessageOrItemIDForBarButtonTriage:1];
  v3 = [v2 second];

  return v3;
}

- (void)_updateHandoffWithMessageAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self collectionViewDataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = v6;
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    v12 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:v9];
    v13 = [(ConversationViewControllerBase *)self handoffCoordinator];
    [v13 setHandoffMessageRequest:v12];

    goto LABEL_8;
  }

  v7 = [(ConversationViewController *)self collectionViewDataSource];
  v8 = [v4 mui_nextIndexPath];
  v9 = [v7 itemIdentifierForIndexPath:v8];

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = [(ConversationViewControllerBase *)self handoffCoordinator];
  [v10 setHandoffMessageRequest:0];

  v11 = +[ConversationViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1004845F0();
  }

LABEL_8:
}

- (BOOL)_shouldReloadEmptyMessageList
{
  v3 = [(ConversationViewController *)self messageList];
  v4 = [v3 allItemIDs];
  v5 = [v4 resultIfAvailable];

  v6 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v7 = 0;
  if ([v6 count] && v5)
  {
    v7 = [v5 count] == 0;
  }

  return v7;
}

- (void)_autoReloadDataSourceForEmptyAddIfNeeded
{
  if ([(ConversationViewController *)self _shouldReloadEmptyMessageList]&& ![(ConversationViewController *)self didAutoReloadDataSource])
  {
    [(ConversationViewController *)self setDidAutoReloadDataSource:1];
    v4 = +[ConversationViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484660();
    }

    [(ConversationViewController *)self _reloadDataSource];
  }
}

- (id)_persistentIDForEMMessageObjectID:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self messageRepository];
  v6 = [v5 persistentIDForMessageObjectID:v4];

  return v6;
}

- (BOOL)_isMessageInOutbox:(id)a3
{
  v3 = a3;
  v4 = [v3 mailboxes];
  v5 = [v4 ef_any:&stru_10064D500];

  v6 = [v3 mailboxes];
  v7 = [v6 ef_any:&stru_10064D520];

  return v5 & (v7 ^ 1);
}

- (BOOL)isMessageListUnfiltered
{
  v3 = [(ConversationViewController *)self messageList];
  v4 = [(ConversationViewController *)self messageList];
  v5 = [v4 unfilteredMessageList];
  v6 = v3 == v5;

  return v6;
}

- (id)pinnedIndexPathProvider
{
  v3 = *(&self->_pinnedIndexPathProvider + 4);
  if (!v3)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100068B94;
    v8[3] = &unk_10064D548;
    objc_copyWeak(&v9, &location);
    v4 = objc_retainBlock(v8);
    v5 = *(&self->_pinnedIndexPathProvider + 4);
    *(&self->_pinnedIndexPathProvider + 4) = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    v3 = *(&self->_pinnedIndexPathProvider + 4);
  }

  v6 = objc_retainBlock(v3);

  return v6;
}

- (void)setPinnedItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v8 setPinnedItem:v4];
  if (v4)
  {
    v5 = [v4 itemID];
    v6 = [(ConversationViewController *)self _priorityLoadingComparatorForPinnedItemID:v5];
    v7 = [(ConversationViewController *)self contentRequestQueue];
    [v7 setComparator:v6];
  }
}

- (void)pinCurrentItem
{
  v13 = [(ConversationViewControllerBase *)self displayMetrics];
  [MFCollapsedMessageCell defaultHeightWithDisplayMetrics:?];
  v4 = v3;

  if ([(ConversationViewControllerBase *)self conversationSortOrder]== 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  v6 = [(ConversationViewControllerBase *)self collectionView];
  v14 = [v6 mf_mostVisibleCellNearestEdge:v5 preferredMinimumHeight:v4];

  if (v14)
  {
    v7 = [v14 itemID];

    if (v7)
    {
      v8 = [(ConversationViewControllerBase *)self collectionView];
      v9 = [v8 mf_dynamicOffsetForVisibleCell:v14];

      v10 = [v14 itemID];
      v11 = [(ConversationViewController *)self pinnedIndexPathProvider];
      v12 = [PinnedConversationItem pinnedItemWithID:v10 dynamicOffset:v9 indexPathProvider:v11];

      [(ConversationViewController *)self setPinnedItem:v12];
    }
  }
}

- (void)pinItemAtIndexPath:(id)a3 dynamicOffset:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(ConversationViewController *)self collectionViewDataSource];
  v8 = [v7 itemIdentifierForIndexPath:v11];

  v9 = [(ConversationViewController *)self pinnedIndexPathProvider];
  v10 = [PinnedConversationItem pinnedItemWithID:v8 dynamicOffset:v6 indexPathProvider:v9];
  [(ConversationViewController *)self setPinnedItem:v10];
}

- (id)_referenceMessageListMailboxScope
{
  v3 = [(ConversationViewController *)self referenceMessageListQuery];
  v4 = [v3 predicate];
  v5 = [(ConversationViewController *)self messageRepository];
  v6 = [v5 mailboxRepository];
  v7 = [EMMessageListItemPredicates mailboxScopeForPredicate:v4 withMailboxTypeResolver:v6];

  return v7;
}

- (int64_t)_dataOwnerForDragSessionAtIndexPath:(id)a3
{
  v4 = [(ConversationViewController *)self _messageAtIndexPath:a3];
  v5 = [(ConversationViewController *)self _referenceMessageListMailboxScope];
  if ([v4 isInManagedAccountWithSourceMailboxScope:v5])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)_dragItemsForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = +[ConversationViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v19 = [v4 row];
    v20 = 2048;
    v21 = [v4 section];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#DragAndDrop Conversation view drag source items requested for indexPath {%ld, %ld}", buf, 0x16u);
  }

  v6 = [(ConversationViewController *)self _messageAtIndexPath:v4];
  if (!v6)
  {
    v10 = +[ConversationViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#DragAndDrop No items found for indexPath", buf, 2u);
    }

    v14 = 0;
    goto LABEL_11;
  }

  v7 = +[ConversationViewController log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#DragAndDrop Will begin dragging message", buf, 2u);
  }

  v8 = [(ConversationViewController *)self messageList];
  v9 = [MessageListItemDragContext withItem:v6 messageList:v8];

  v10 = [v9 dragItem];
  v17 = v6;
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  v12 = [(ConversationViewController *)self undoManager];
  v13 = [(MFTriageInteraction *)MFMoveMessageTriageInteraction interactionWithMessageListItems:v11 undoManager:v12 origin:3 actor:2];

  [v10 setLocalObject:v13];
  if (v10)
  {
    v16 = v10;
    v14 = [NSArray arrayWithObjects:&v16 count:1];
LABEL_11:

    goto LABEL_13;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (id)_messageContentViewForMessageItemID:(id)a3
{
  v3 = [(ConversationViewController *)self _cellForMessageItemIDIfExpanded:a3];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 expanded])
  {
    v4 = [v3 messageViewController];
    v5 = [v4 messageContentView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_getCurrentlySelectedMessageContentForMessageItemID:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self _messageContentViewForMessageItemID:v4];
  v6 = [v5 selectedHTML];
  if ([v6 length])
  {
    v9 = v6;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_clearSelectedMessageContentForMessageItemID:(id)a3
{
  v3 = [(ConversationViewController *)self _messageContentViewForMessageItemID:a3];
  [v3 clearSelectedHTML];
}

- (void)_allMessageIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self messageList];
  v6 = [v5 allItemIDs];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000697D4;
  v8[3] = &unk_10064D298;
  v7 = v4;
  v9 = v7;
  [v6 addSuccessBlock:v8];
  [v6 addFailureBlock:&stru_10064D5C8];
}

- (id)_allMessages
{
  v3 = [(ConversationViewController *)self _conversationViewQueryIncludeRelated:0];
  v4 = +[EFPromise promise];
  v5 = [(ConversationViewController *)self messageRepository];
  v6 = [(ConversationViewController *)self countOfMessages];
  v7 = [v4 completionHandlerAdapter];
  [v5 performQuery:v3 limit:v6 completionHandler:v7];

  v8 = [v4 future];
  v9 = [v8 result:0];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  v11 = v10;

  return v10;
}

- (id)_messageListItemsForBarButtonTriage
{
  v3 = [(ConversationViewControllerBase *)self referenceMessageListItem];

  if (v3)
  {
    v4 = [(ConversationViewControllerBase *)self delegate];
    if ([(ConversationViewControllerBase *)self shownAsConversation])
    {
      if ([(ConversationViewControllerBase *)self shownAsConversation]&& ([(ConversationViewControllerBase *)self referenceMessageListItem], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v6 = objc_opt_isKindOfClass(), v5, (v6 & 1) != 0))
      {
        v7 = [(ConversationViewControllerBase *)self referenceMessageListItem];
        v18 = v7;
        v8 = [NSArray arrayWithObjects:&v18 count:1];
      }

      else
      {
        v11 = [(ConversationViewControllerBase *)self referenceMessageListItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v13 = [(ConversationViewControllerBase *)self referenceMessageListItem];
          v17 = v13;
          v8 = [NSArray arrayWithObjects:&v17 count:1];
        }

        else if (objc_opt_respondsToSelector())
        {
          v16 = [(ConversationViewControllerBase *)self referenceMessageListItem];
          v8 = [v4 conversationViewController:self messagesToActOnForReferenceMessage:v16];
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v9 = [(ConversationViewController *)self _referenceDisplayMessage];
      v10 = v9;
      if (v9)
      {
        v19 = v9;
        v8 = [NSArray arrayWithObjects:&v19 count:1];
      }

      else
      {
        v8 = 0;
      }
    }

    if (![v8 count])
    {
      v14 = [(ConversationViewController *)self _allMessages];

      v8 = v14;
    }
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (int64_t)_messageListItemCount
{
  v3 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v4 = [v3 displayMessageItemID];

  if (!v4)
  {
    return 0;
  }

  if (![(ConversationViewControllerBase *)self shownAsConversation])
  {
    return 1;
  }

  v5 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v6 = [v5 count];

  return v6;
}

- (id)_referenceDisplayMessage
{
  v4 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  if ([(ConversationViewControllerBase *)self shownAsConversation]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v9 = [v8 displayMessageItemID];

    v10 = [(ConversationViewController *)self contentRequestCache];
    v11 = [v10 objectForKey:v9];

    v7 = [v11 message];
    if (!v7)
    {
      v12 = +[ConversationViewController log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ConversationViewControllerBase *)self referenceMessageListItem];
        objc_claimAutoreleasedReturnValue();
        sub_100484714();
      }
    }
  }

  else
  {
    v5 = [v4 displayMessageItemID];
    v6 = [v4 itemID];

    if (v5 != v6)
    {
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:2862 description:@"When threading is off displayMessageItemID should always equal itemID"];
    }

    v7 = v4;
  }

  return v7;
}

- (id)_messagesForTriageInteraction:(id)a3
{
  v4 = [a3 messageListItemSelection];
  v5 = [v4 messageListItems];

  v6 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  if ([v6 count] == 1 && objc_msgSend(v5, "count") == 1)
  {
    v7 = [v5 firstObject];
    v8 = [v7 conversationID];
    v9 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v10 = [v9 conversationID];

    if (v8 == v10)
    {
      v11 = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v17 = v11;
      v12 = [NSArray arrayWithObjects:&v17 count:1];

      v13 = +[ConversationViewController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_messagesForTriageInteraction - using referenceMessageListItem.itemID:%@", &v15, 0xCu);
      }

      v5 = v12;
    }
  }

  else
  {
  }

  return v5;
}

- (void)_updatePredictedMailboxForConversation
{
  v3 = [(ConversationViewController *)self mailboxPredictionScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006A34C;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)_deleteMessageListItemsForMoveOrDestructiveInteraction:(id)a3 completion:(id)a4
{
  v10 = a4;
  v6 = [a3 messageListItemSelection];
  v7 = [v6 messageListItems];
  v8 = [v7 ef_compactMap:&stru_10064D608];

  v9 = [(ConversationViewController *)self messageList];
  [(ConversationViewController *)self _deleteItemsWithIDs:v8 fromCollection:v9 completionHandler:v10];
}

- (void)_scrollToRect:(CGRect)a3 forMessageContentView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(ConversationViewControllerBase *)self collectionView];
  [v10 convertRect:v9 fromView:{x, y, width, height}];
  v12 = v11;

  v13 = [(ConversationViewControllerBase *)self collectionView];
  [v13 adjustedContentInset];
  v15 = v14;

  v16 = +[ConversationViewController log];
  v17 = v12 - (v15 + 32.0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v28.x = 0.0;
    v28.y = v17;
    v18 = NSStringFromPoint(v28);
    v19 = [v9 contentRequest];
    v20 = [v19 messageFuture];
    v21 = [v20 resultIfAvailable];
    v22 = [v21 ef_publicDescription];
    v24 = 138412546;
    v25 = v18;
    v26 = 2112;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scroll to point (%@) for message: %@", &v24, 0x16u);
  }

  v23 = [(ConversationViewControllerBase *)self collectionView];
  [v23 setContentOffset:1 animated:{0.0, v17}];
}

- (id)_presentationStringForMessageListItem:(id)a3
{
  v3 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v4 = [v3 senderList];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = v5;
    v7 = [v6 emailAddressValue];
    v8 = [v7 em_displayableString];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v11 = [v7 simpleAddress];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [v6 stringValue];
      }

      v10 = v13;
    }
  }

  else
  {
    v10 = &stru_100662A88;
  }

  return v10;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("delete:" == a3)
  {
    v8 = objc_opt_self();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 mail_isDeleteMessageCommand])
    {
      v11.receiver = self;
      v11.super_class = ConversationViewController;
      v7 = [(ConversationViewControllerBase *)&v11 canPerformAction:a3 withSender:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ConversationViewController;
    v7 = [(ConversationViewControllerBase *)&v10 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = ConversationViewController;
  [(ConversationViewController *)&v46 validateCommand:v4];
  v5 = [(ConversationViewControllerBase *)self delegate];
  v6 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v7 = [v6 flags];

  v8 = [v4 action];
  if (v8 == "_markAsJunkCommandInvoked:")
  {
    v11 = sub_100069A50(self);
    v12 = [MSJunkTriageAction hasNonJunkMessagesInSelection:v11];

    v13 = +[NSBundle mainBundle];
    if (v12)
    {
      [v13 localizedStringForKey:@"OPERATION_JUNK_DESC" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v13 localizedStringForKey:@"OPERATION_NOT_JUNK_DESC" value:&stru_100662A88 table:@"Main"];
    }
    v15 = ;
    [v4 setTitle:v15];

    v16 = &MFImageGlyphMenuBarMarkAsNotJunk;
    if (v12)
    {
      v16 = &MFImageGlyphMenuBarMarkAsJunk;
    }

    goto LABEL_25;
  }

  if (v8 == "_markAsReadCommandInvoked:")
  {
    if ([v7 read])
    {
      v14 = +[NSBundle mainBundle];
      [v14 localizedStringForKey:@"MARK_EMAIL_UNREAD" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v14 = +[NSBundle mainBundle];
      [v14 localizedStringForKey:@"MARK_EMAIL_READ" value:&stru_100662A88 table:@"Main"];
    }
    v17 = ;
    [v4 setTitle:v17];

    v18 = [v7 read];
    v16 = &MFImageGlyphMenuBarMarkUnread;
    if (!v18)
    {
      v16 = &MFImageGlyphMenuBarMarkRead;
    }

    goto LABEL_25;
  }

  if (v8 == "delete:")
  {
    if ([(ConversationViewController *)self _messageListItemCount]== 1)
    {
      v10 = +[NSBundle mainBundle];
      [v10 localizedStringForKey:@"DELETE_EMAIL" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v10 = +[NSBundle mainBundle];
      [v10 localizedStringForKey:@"DELETE_EMAIL_PLURAL" value:&stru_100662A88 table:@"Main"];
    }
    v20 = ;
    [v4 setTitle:v20];
    v21 = v20;
    goto LABEL_30;
  }

  if (v8 == "_archiveShortcutInvoked:")
  {
    if ([(ConversationViewController *)self _messageListItemCount]== 1)
    {
      v19 = +[NSBundle mainBundle];
      [v19 localizedStringForKey:@"ARCHIVE_EMAIL" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      v19 = +[NSBundle mainBundle];
      [v19 localizedStringForKey:@"ARCHIVE_EMAIL_PLURAL" value:&stru_100662A88 table:@"Main"];
    }
    v24 = ;
    [v4 setTitle:v24];

    v25 = sub_100069A50(self);
    v26 = [(ConversationViewController *)self undoManager];
    v10 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItemSelection:v25 undoManager:v26 origin:3 actor:2];

    if (![v10 isMessageListItemSelectionSourceArchive])
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v8 == "_clearTimeSensitiveCommandInvoked:")
  {
    v22 = sub_100069A50(self);
    v23 = [(ConversationViewController *)self undoManager];
    v10 = [(MFDestructiveTriageInteraction *)MFRemoveHighImpactTriageInteraction interactionWithMessageListItemSelection:v22 undoManager:v23 origin:3 actor:2];

    if (!-[ConversationViewControllerBase isShowingGroupedSenderMessageList](self, "isShowingGroupedSenderMessageList") && [v5 currentlySelectedBucketForConversationViewController:self] == 1 && (objc_msgSend(v10, "isPermitted") & 1) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v8 == "_remindMeCommandInvoked:")
  {
    if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
    {
      goto LABEL_54;
    }

    v27 = [v4 propertyList];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_54;
    }

    v10 = [v4 propertyList];
    v21 = [v10 objectForKeyedSubscript:@"MailKBRemindMePlistKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [(ConversationViewController *)self _readLaterTriageInteractionIfAvailable];
      if (v29)
      {
        v30 = [v21 integerValue];
        v31 = [v29 messagesHaveReadLaterSet];
        if (v30 == 5)
        {
          v32 = v31;
        }

        else
        {
          v32 = 1;
        }

        if ((v32 & 1) == 0)
        {
          [v4 setAttributes:1];
        }
      }

      else
      {
        v45 = +[ConversationViewController log];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [(ConversationViewControllerBase *)self referenceMessageListItem];
          [objc_claimAutoreleasedReturnValue() ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          sub_100484868();
        }

        [v4 setAttributes:1];
      }
    }

    else
    {
      v42 = +[ConversationViewController log];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [v4 propertyList];
        objc_claimAutoreleasedReturnValue();
        sub_100484824();
      }

      [v4 setAttributes:1];
    }

    goto LABEL_30;
  }

  if (v8 == "_categorizeCommandInvoked:")
  {
    v33 = [v4 propertyList];
    objc_opt_class();
    v34 = objc_opt_isKindOfClass();

    if ((v34 & 1) == 0)
    {
      goto LABEL_54;
    }

    v10 = [v4 propertyList];
    v21 = [v10 objectForKeyedSubscript:@"MailKBCategorizationPlistKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v21 integerValue];
      v36 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
      v37 = [v36 category];

      if ([v37 state] == 3)
      {
        [v37 type];
        v38 = MUIBucketFromEMCategoryType();
      }

      else
      {
        v38 = 0;
      }

      if (v35 == v38)
      {
        [v4 setState:1];
        [v4 setAttributes:1];
      }

      v44 = [(ConversationViewController *)self selectionDataSource];
      if (([v44 shouldUseSelectionDataSourceForConversationViewController:self] & 1) != 0 || (objc_msgSend(v5, "conversationViewControllerAllowsCategorizationAction:", self) & 1) == 0)
      {
        [v4 setAttributes:1];
      }
    }

    else
    {
      [v4 setAttributes:1];
    }

LABEL_30:

    goto LABEL_38;
  }

  if (v8 == "_muteCommandInvoked:")
  {
    if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
    {
LABEL_54:
      [v4 setAttributes:1];
      goto LABEL_39;
    }

    v39 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v40 = [v39 conversationNotificationLevel];

    v41 = +[NSBundle mainBundle];
    if (v40 == 1)
    {
      [v41 localizedStringForKey:@"UNMUTE" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v41 localizedStringForKey:@"MUTE" value:&stru_100662A88 table:@"Main"];
    }
    v43 = ;
    [v4 setTitle:v43];

    v16 = &MFImageGlyphMenuBarMute;
    if (v40 == 1)
    {
      v16 = &MFImageGlyphMenuBarUnmute;
    }

LABEL_25:
    v10 = [UIImage systemImageNamed:*v16];
    [v4 setImage:v10];
    goto LABEL_38;
  }

  if (v8 == "_sendCommandInvoked:")
  {
    v9 = sub_100069A50(self);
    v10 = [(MFTriageInteraction *)MFSendAgainTriageInteraction interactionWithMessageListItemSelection:v9 undoManager:0 origin:3 actor:2];

    if (([v10 isPermitted] & 1) == 0)
    {
LABEL_37:
      [v4 setAttributes:1];
    }

LABEL_38:
  }

LABEL_39:
}

- (BOOL)_canChangePageZoom:(BOOL)a3 fromStep:(unint64_t)a4
{
  if (a3)
  {
    return [&off_100674E80 count] - 1 > a4;
  }

  else
  {
    return a4 != 0;
  }
}

- (unint64_t)_defaultZoomStep
{
  if (([&off_100674E80 containsObject:&off_100673D78] & 1) == 0)
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:3063 description:{@"Expected value %@ not in pageZoomFactors.", &off_100673D78}];
  }

  return [&off_100674E80 indexOfObject:&off_100673D78];
}

- (unint64_t)_zoomStepForViewScale:(double)a3
{
  v4 = [NSNumber numberWithDouble:a3];
  v5 = [&off_100674E80 indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(ConversationViewController *)self _defaultZoomStep];
  }

  return v5;
}

- (void)_changeZoomStep:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006B974;
  v3[3] = &unk_10064D630;
  v3[4] = self;
  v4 = a3;
  [(ConversationViewControllerBase *)self _enumerateExpandedCellMessageContentViewsWithBlock:v3];
}

- (void)_sendCommandInvoked:(id)a3
{
  v5 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  v6 = [v5 itemID];
  if (v6)
  {
    v7 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:v6];
    v8 = [(ConversationViewControllerBase *)self scene];
    v9 = [(MFMessageCompositionTriageInteraction *)MFSendAgainTriageInteraction interactionWithContentRequest:v7 scene:v8];

    [v9 setDelegate:self];
    v10 = [v5 mailboxes];
    [v9 setMessageSourceMailboxes:v10];

    [v9 setShouldPromptToLoadRestOfMessage:0];
    if ([v9 isPermitted])
    {
      [v9 performInteraction];
    }

    else
    {
      v11 = +[ConversationViewController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [v5 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100484938();
      }
    }
  }

  else
  {
    v7 = +[ConversationViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v5 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484984();
    }
  }
}

- (void)_printCommandInvoked:(id)a3
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006C3F0;
  v7[3] = &unk_10064D6A8;
  v7[4] = self;
  v5 = objc_retainBlock(v7);
  v6 = objc_opt_class();
  sub_10006BBC8(&self->super.super.super.super.isa, v6, v4, 0, v5, 0);
}

- (void)_forwardCommandInvoked:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  v6 = [v5 itemID];
  v7 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:v6];
  v8 = [(ConversationViewController *)self _getCurrentlySelectedMessageContentForMessageItemID:v6];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10006C654;
  v18 = &unk_10064D1D0;
  v19 = self;
  v9 = v6;
  v20 = v9;
  v10 = objc_retainBlock(&v15);
  v11 = [(ConversationViewControllerBase *)self scene:v15];
  v12 = [(MFMessageCompositionTriageInteraction *)MFForwardTriageInteraction interactionWithContentRequest:v7 scene:v11];

  if (v8)
  {
    [v12 setOriginalContent:v8];
  }

  [v12 setDelegate:self];
  v13 = [v5 mailboxes];
  [v12 setMessageSourceMailboxes:v13];

  [v12 setShouldPromptToLoadRestOfMessage:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setPresentationSource:v4];
  }

  else
  {
    [v12 setAttachmentPolicy:1];
  }

  v14 = [v12 alertActionWithCompletion:v10];
  [v12 performInteraction];
}

- (void)_markAsJunkCommandInvoked:(id)a3
{
  v4 = sub_100069A50(self);
  v5 = [(ConversationViewController *)self undoManager];
  v6 = [(MFFlagChangeTriageInteraction *)MFJunkTriageInteraction interactionWithMessageListItemSelection:v4 undoManager:v5 origin:3 actor:2 reason:4];

  v7 = [(ConversationViewController *)self selectionDataSource];
  if ([v7 shouldUseSelectionDataSourceForConversationViewController:self])
  {
    v8 = [v7 messageTriageInteractionHelperForConversationViewController:self];
    [v6 setDelegate:v8];
  }

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006C81C;
  v10[3] = &unk_10064D6D0;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v11 = v9;
  [v6 performInteractionWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_clearTimeSensitiveCommandInvoked:(id)a3
{
  v5 = sub_100069A50(self);
  v6 = [(ConversationViewController *)self undoManager];
  v7 = [(MFDestructiveTriageInteraction *)MFRemoveHighImpactTriageInteraction interactionWithMessageListItemSelection:v5 undoManager:v6 origin:3 actor:2];

  v8 = [(ConversationViewController *)self selectionDataSource];
  if ([v8 shouldUseSelectionDataSourceForConversationViewController:self])
  {
    v9 = [v8 messageTriageInteractionHelperForConversationViewController:self];
    [v7 setDelegate:v9];
  }

  else
  {
    [v7 setDelegate:self];
  }

  if ([v7 isPermitted])
  {
    objc_initWeak(location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10006CB30;
    v12[3] = &unk_10064D6F8;
    objc_copyWeak(&v13, location);
    [v7 performInteractionWithCompletion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v10 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_1004849D0();
    }
  }
}

- (id)_readLaterTriageInteractionIfAvailable
{
  v3 = sub_100069A50(self);
  if ([v3 isSelectAll])
  {
    v4 = +[ConversationViewController log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100484A1C();
    }

    v5 = 0;
  }

  else
  {
    v6 = [(ConversationViewController *)self undoManager];
    v5 = [MFReadLaterTriageInteraction interactionWithMessageListItemSelection:v3 undoManager:v6 origin:2 actor:2];

    [v5 setDatePickerPresentationStyle:2];
    v7 = [(ConversationViewController *)self selectionDataSource];
    if ([v7 shouldUseSelectionDataSourceForConversationViewController:self])
    {
      v8 = [v7 messageTriageInteractionHelperForConversationViewController:self];
      [v5 setDelegate:v8];
    }

    else
    {
      [v5 setDelegate:self];
    }
  }

  return v5;
}

- (void)_remindMeCommandInvoked:(id)a3
{
  v5 = a3;
  v6 = [v5 propertyList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 propertyList];
    v9 = [v8 objectForKeyedSubscript:@"MailKBRemindMePlistKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 integerValue];
      v11 = [(ConversationViewController *)self _readLaterTriageInteractionIfAvailable];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10006CF94;
      v12[3] = &unk_10064D720;
      v12[4] = self;
      [v11 performReadLaterAction:v10 preparation:0 completion:v12];
    }

    else
    {
      v11 = +[ConversationViewController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100484A9C();
      }
    }
  }

  else
  {
    v8 = +[ConversationViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484A58();
    }
  }
}

- (void)_categorizeCommandInvoked:(id)a3
{
  v5 = a3;
  v6 = [v5 propertyList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 propertyList];
    v9 = [v8 objectForKeyedSubscript:@"MailKBCategorizationPlistKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 integerValue];
      v11 = sub_100069A50(self);
      v12 = [v11 messageListItems];
      v13 = [v12 firstObject];

      v33 = v13;
      v14 = [v13 senderList];
      v15 = [v14 firstObject];

      v32 = v15;
      v30 = v9;
      v16 = [v15 emailAddressValue];
      v31 = [v16 simpleAddress];

      if (v15)
      {
        v17 = v15;
        v18 = [v17 emailAddressValue];
        v19 = [v18 em_displayableString];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v22 = [v18 simpleAddress];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = [v17 stringValue];
          }

          v21 = v24;
        }
      }

      else
      {
        v21 = &stru_100662A88;
      }

      v25 = +[UIApplication sharedApplication];
      v26 = [v25 avatarGenerator];
      LOBYTE(v29) = 0;
      LOBYTE(v28) = [v33 isAuthenticated];
      v27 = [MFCategorizationTriageInteraction interactionWithMessageListItemSelection:v11 sender:v31 groupedSenderDisplayName:v21 origin:3 actor:2 bucket:v10 avatarGenerator:v26 isAuthenticated:v28 changeOptions:2 * (v10 == 0) showMenuWithOptions:v29];

      [v27 setDelegate:self];
      [v27 setShouldAskForConfirmation:1];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10006D4A4;
      v34[3] = &unk_10064D720;
      v34[4] = self;
      v9 = v30;
      [v27 performInteractionWithCompletion:v34];
    }

    else
    {
      v11 = +[ConversationViewController log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100484B50();
      }
    }
  }

  else
  {
    v8 = +[ConversationViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484B0C();
    }
  }
}

- (void)_muteCommandInvoked:(id)a3
{
  v5 = sub_100069A50(self);
  v6 = [(ConversationViewController *)self undoManager];
  v7 = [(MFFlagChangeTriageInteraction *)MFMuteTriageInteraction interactionWithMessageListItemSelection:v5 undoManager:v6 origin:3 actor:2 reason:4];

  if ([v7 isPermitted])
  {
    objc_initWeak(location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006D754;
    v10[3] = &unk_10064D6F8;
    objc_copyWeak(&v11, location);
    [v7 performInteractionWithCompletion:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
    v9 = +[ConversationViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v8 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484BC0();
    }
  }
}

- (id)_readTriageInteraction
{
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    v3 = [(ConversationViewController *)self messageList];
    v4 = [v3 query];
    v5 = [(ConversationViewController *)self undoManager];
    v6 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithQuery:v4 undoManager:v5 origin:3 actor:2 reason:4];

    [v6 setTitleIncludesAllMessages:1];
    [v6 setTitleIncludesCount:0];
    [v6 setDelegate:self];
  }

  else
  {
    v7 = sub_100069A50(self);
    v8 = [(ConversationViewController *)self undoManager];
    v6 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItemSelection:v7 undoManager:v8 origin:3 actor:2 reason:4];
  }

  v9 = [(ConversationViewController *)self selectionDataSource];
  if ([v9 shouldUseSelectionDataSourceForConversationViewController:self])
  {
    v10 = [v9 messageTriageInteractionHelperForConversationViewController:self];
    [v6 setDelegate:v10];
  }

  return v6;
}

- (id)_messageReadCompletionHandlerForSelectionDataSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006DC34;
  v9[3] = &unk_10064D6D0;
  objc_copyWeak(&v11, &location);
  v10 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v9);
  v7 = objc_retainBlock(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (id)_readActionForMessageListItemSelection:(id)a3
{
  v4 = [(ConversationViewController *)self _readTriageInteraction];
  v5 = [(ConversationViewController *)self selectionDataSource];
  v6 = [(ConversationViewController *)self _messageReadCompletionHandlerForSelectionDataSource:v5];
  v7 = [v4 menuActionWithPreparation:0 completion:v6];

  return v7;
}

- (void)_markAsReadCommandInvoked:(id)a3
{
  v6 = [(ConversationViewController *)self _readTriageInteraction];
  v4 = [(ConversationViewController *)self selectionDataSource];
  v5 = [(ConversationViewController *)self _messageReadCompletionHandlerForSelectionDataSource:v4];
  [v6 performInteractionWithCompletion:v5];
}

- (void)_performFlagChangeClearOnly:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100069A50(self);
  v6 = [(ConversationViewController *)self undoManager];
  v7 = [(MFFlagChangeTriageInteraction *)MFFlagTriageInteraction interactionWithMessageListItemSelection:v5 undoManager:v6 origin:3 actor:2 reason:4];

  if (!v3 || ([v7 flagState] & 1) != 0)
  {
    v8 = [(ConversationViewController *)self selectionDataSource];
    if ([v8 shouldUseSelectionDataSourceForConversationViewController:self])
    {
      v9 = [v8 messageTriageInteractionHelperForConversationViewController:self];
      [v7 setDelegate:v9];
    }

    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006E2BC;
    v11[3] = &unk_10064D6D0;
    objc_copyWeak(&v13, &location);
    v10 = v8;
    v12 = v10;
    [v7 performInteractionWithCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_setFlagColorCommandInvoked:(id)a3
{
  v5 = a3;
  v6 = [v5 propertyList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 propertyList];
    v9 = [v8 objectForKeyedSubscript:@"MailKBFlagColorPlistKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 integerValue];
      [MFFlagTriageInteraction setDefaultColor:v10];
      v11 = sub_100069A50(self);
      v12 = [(ConversationViewController *)self undoManager];
      v13 = [(MFFlagChangeTriageInteraction *)MFFlagColorTriageInteraction interactionWithMessageListItemSelection:v11 undoManager:v12 origin:3 actor:2 reason:4];

      v14 = [NSNumber numberWithUnsignedInteger:v10];
      [v13 setFlagColor:v14];

      v15 = [(ConversationViewController *)self selectionDataSource];
      if ([v15 shouldUseSelectionDataSourceForConversationViewController:self])
      {
        v16 = [v15 messageTriageInteractionHelperForConversationViewController:self];
        [v13 setDelegate:v16];
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006E8B4;
      v18[3] = &unk_10064D1D0;
      v18[4] = self;
      v17 = v15;
      v19 = v17;
      [v13 performInteractionWithCompletion:v18];
    }

    else
    {
      v13 = +[ConversationViewController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100484C50();
      }
    }
  }

  else
  {
    v8 = +[ConversationViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484C0C();
    }
  }
}

- (unint64_t)_summarizableMessageCountForItemID:(id)a3
{
  v3 = [(ConversationViewController *)self _summarizableMessageItemIDsForSummaryItemID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)_summarizableMessageItemIDsForSummaryItemID:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ConversationViewController *)self collectionViewDataSource];
    v6 = [v5 snapshot];
    v7 = [v6 itemIdentifiers];

    v8 = [v7 indexOfObject:v4];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL || [v7 count] < 2)
    {
      v9 = 0;
    }

    else
    {
      v10 = [(ConversationViewController *)self topSummaryItemID];

      if (v10 == v4)
      {
        v12 = v7;
      }

      else
      {
        if ([(ConversationViewControllerBase *)self conversationSortOrder]== 1)
        {
          v11 = v8 + 1;
          v8 = 0;
        }

        else
        {
          v11 = ([v7 count] - v8);
        }

        v12 = [v7 subarrayWithRange:{v8, v11}];
      }

      v13 = v12;
      v9 = [v12 ef_filter:&stru_10064D740];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_manualSummaryViewModelForItemID:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ConversationViewController *)self _summarizableMessageCountForItemID:v4];
    v6 = [(ConversationViewController *)self inlineSummaryItemID];

    v7 = v4;
    v8 = [(ConversationViewController *)self summaryViewModelByItemID];
    v9 = [v8 objectForKeyedSubscript:v7];

    if (v9)
    {
      [v9 setSummarizableMessageCount:v5];
      v10 = v9;
    }

    else
    {
      objc_initWeak(&location, self);
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_10006EEB8;
      v19 = &unk_10064D768;
      objc_copyWeak(&v21, &location);
      v11 = v7;
      v20 = v11;
      v12 = [EFFuture lazyFutureWithBlock:&v16];
      v13 = [MUIManualSummaryViewModel alloc];
      v10 = [v13 initWithState:0 summary:0 error:0 summarizableMessageCount:v5 isInlineSummary:v6 == v4 isExternalSummary:0 summaryControllerFuture:{v12, v16, v17, v18, v19}];
      v14 = [(ConversationViewController *)self summaryViewModelByItemID];
      [v14 setObject:v10 forKeyedSubscript:v11];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_reloadTopSummaryIfNecessary
{
  v3 = [(ConversationViewController *)self topSummaryItemID];
  if (v3)
  {
    v4 = [(ConversationViewController *)self collectionViewDataSource];
    v5 = [v4 indexPathForItemIdentifier:v3];

    if (v5)
    {
      v6 = [(ConversationViewControllerBase *)self collectionView];
      v7 = [v6 mui_isIndexPathVisible:v5];

      if (v7)
      {
        v9 = v5;
        v8 = [NSArray arrayWithObjects:&v9 count:1];
        [(ConversationViewController *)self _reloadCellsAtIndexPaths:v8 animated:0];
      }
    }
  }
}

- (void)_updateQuickReplyState
{
  if ([(ConversationViewControllerBase *)self allowQuickReply])
  {

    [(ConversationViewController *)self _setupQuickReplySupplementaryViewProvider];
  }

  else if (_os_feature_enabled_impl())
  {
    v3 = [(ConversationViewController *)self collectionViewDataSource];
    [v3 setSupplementaryViewProvider:0];

    [(ConversationViewController *)self _resetQuickReplyViewControllerWithReason:2 resetCompose:1 override:1];
    v4 = [(ConversationViewControllerBase *)self conversationLayout];
    [v4 invalidateLayout];

    [(ConversationViewController *)self _reloadDataSource];
  }
}

- (void)_updateQuickReplyLabelIfNeeded
{
  v3 = [(ConversationViewController *)self _quickReplyView];
  [(ConversationViewController *)self _updateQuickReplyLabelIfNeeded:?];
}

- (void)_updateQuickReplyLabelIfNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = v4;
    v6 = [v4 isComposing];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
      v8 = [MFComposeMailMessage legacyMessageWithMessage:v7 mailboxUid:0 skipAttachmentDownload:1];
      [v9 updatePlaceholderWithMessage:v8];

      v5 = v9;
    }
  }
}

- (id)_quickReplyCompositionContext
{
  v4 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  v5 = [v4 itemID];
  if (v5)
  {
    v6 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 message];
      v9 = +[UIApplication sharedApplication];
      v10 = [v9 mailboxProvider];

      v11 = [v8 mailboxObjectIDs];
      v12 = [v11 firstObject];
      v13 = [v10 legacyMailboxForObjectID:v12];

      if (!v13)
      {
        v14 = +[ConversationViewController log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100484CC0();
        }
      }

      v15 = [MFComposeMailMessage legacyMessageWithMessage:v8 mailboxUid:v13 skipAttachmentDownload:1];
      v16 = [(ConversationViewController *)self _getCurrentlySelectedMessageContentForMessageItemID:v5];
      v17 = [[_MFMailCompositionContext alloc] initReplyAllToMessage:v8 legacyMessage:v15 isEML:0];
      [v17 setQuickReply:1];
      [v17 setShowKeyboardImmediately:1];
      [v17 setOriginalContent:v16];
    }

    else
    {
      v8 = +[ConversationViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_1004848B0();
      }

      v17 = 0;
    }
  }

  else
  {
    v7 = +[ConversationViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v4 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484984();
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)_isQuickReplyMessageAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(ConversationViewControllerBase *)self allowQuickReply])
  {
    v5 = [(ConversationViewControllerBase *)self collectionView];
    v6 = [v5 numberOfSections];

    v7 = [(ConversationViewControllerBase *)self collectionView];
    v8 = [v7 numberOfItemsInSection:--v6] - 1;

    v9 = [NSIndexPath indexPathForItem:v8 inSection:v6];
    v10 = [NSIndexPath indexPathForItem:0 inSection:0];
    if ([(ConversationViewController *)self _showQuickReplyBelowConversation])
    {
      v11 = [v4 isEqual:v9];
    }

    else
    {
      v11 = [v4 isEqual:v10];
    }

    v13 = v11;
    v14 = [(ConversationViewControllerBase *)self quickReplyAnimationContext];
    v15 = [v14 getObject];

    if ((v13 & (*(EFIsNotNull + 16))(EFIsNotNull, v15)) == 1)
    {
      v12 = [(ConversationViewController *)self _userIsSenderAtIndexPath:v4];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_isUndoSendMessageAtIndexPath:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(ConversationViewController *)self _messageAtIndexPath:v4];
    if (v5)
    {
      if ([(ConversationViewController *)self _isMessageInOutbox:v5])
      {
        v6 = sub_10005D23C(self);
LABEL_11:

        goto LABEL_12;
      }

      v7 = +[ConversationViewController log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138412802;
        v12 = objc_opt_class();
        v13 = 2048;
        v14 = self;
        v15 = 2112;
        v16 = v4;
        v10 = v12;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "<%@: %p> Message at indexPath=%@ is not in outbox, don't expand to show Undo Send", &v11, 0x20u);
      }
    }

    else
    {
      v7 = +[ConversationViewController log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138412802;
        v12 = objc_opt_class();
        v13 = 2048;
        v14 = self;
        v15 = 2112;
        v16 = v4;
        v8 = v12;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "<%@: %p> No message found for indexPath=%@", &v11, 0x20u);
      }
    }

    v6 = 0;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (void)_didChangeHorizontalPadding:(double)a3
{
  v4 = [(ConversationViewController *)self _quickReplyView];
  [v4 setHorizontalInset:a3];
}

- (CGRect)_quickReplyViewFrame
{
  v2 = [(ConversationViewController *)self _quickReplyView];
  v3 = v2;
  if (v2)
  {
    [v2 frame];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)_userIsSenderAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self _messageAtIndexPath:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 senderList];
    v8 = [v7 firstObject];
    v9 = [v8 emailAddressValue];

    v10 = [v9 simpleAddress];
    v11 = [v10 lowercaseString];

    v12 = +[UIApplication sharedApplication];
    v13 = [v12 accountsProvider];
    v14 = [v13 displayedAccounts];
    v15 = [v14 allObjects];
    v16 = [v15 ef_flatMap:&stru_10064D7A8];
    v17 = [v16 ef_mapSelector:"lowercaseString"];

    v18 = [v17 containsObject:v11];
  }

  else
  {
    v19 = +[ConversationViewController log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v23 = objc_opt_class();
      v24 = 2048;
      v25 = self;
      v26 = 2112;
      v27 = v4;
      v21 = v23;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "<%@: %p> [Quick Reply] No message found for indexPath=%@", buf, 0x20u);
    }

    v18 = 0;
  }

  return v18;
}

- (id)_quickReplyView
{
  if ([(ConversationViewControllerBase *)self allowQuickReply])
  {
    v3 = [(ConversationViewControllerBase *)self collectionView];
    v4 = [(ConversationViewControllerBase *)self conversationSortOrder];
    v5 = &UICollectionElementKindSectionFooter;
    if (v4)
    {
      v5 = &UICollectionElementKindSectionHeader;
    }

    v6 = *v5;
    v7 = [v3 indexPathsForVisibleSupplementaryElementsOfKind:v6];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100070078;
    v16 = &unk_10064D7D0;
    v8 = v3;
    v17 = v8;
    v9 = v6;
    v18 = v9;
    v10 = [v7 ef_compactMap:&v13];
    v11 = [v10 ef_firstObjectPassingTest:{&stru_10064D810, v13, v14, v15, v16}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateQuickReplySendButtonOffset:(id)a3
{
  v15 = a3;
  v4 = [(ConversationViewController *)self _quickReplyView];
  v5 = [(ConversationViewController *)self quickReplyMailComposeController];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = 0.0;
    if ([(ConversationViewController *)self _showQuickReplyBelowConversation])
    {
      [(ConversationViewControllerBase *)self _itemSpacing];
      v7 = v8;
    }

    [v15 contentInset];
    v10 = v9;
    [v15 contentOffset];
    v12 = v11;
    [v4 frame];
    v14 = v7 + v13;
    if (v10 + v12 >= v14)
    {
      [v4 updateQuickReplySendButtonTopOffset:v10 + v12 - v14];
    }
  }
}

- (void)_updateManualSummaryUIForScroll:(id)a3
{
  v4 = a3;
  if (MUISolariumFeatureEnabled())
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100070394;
    v8[3] = &unk_10064D838;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    v5 = objc_retainBlock(v8);
    v6 = [(ConversationViewController *)self topSummaryItemID];
    (v5[2])(v5, v6);

    v7 = [(ConversationViewController *)self inlineSummaryItemID];
    (v5[2])(v5, v7);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (id)_lastIndexPath
{
  v3 = [(ConversationViewControllerBase *)self collectionView];
  v4 = [(ConversationViewController *)self collectionViewDataSource];
  v5 = [v4 numberOfSectionsInCollectionView:v3];
  v6 = v5 - 1;
  if (v5 < 1 || (v7 = [v4 collectionView:v3 numberOfItemsInSection:v6], v7 < 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSIndexPath indexPathForItem:v7 - 1 inSection:v6];
  }

  return v8;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  if ([(ConversationViewControllerBase *)self allowQuickReply])
  {
    v4 = [(ConversationViewController *)self quickReplyMailComposeController];

    if (!v4)
    {
      +[_TtC10MobileMail14QuickReplyView defaultHeight];
      [(ConversationViewControllerBase *)self setQuickReplyHeight:?];
      v6 = [(ConversationViewControllerBase *)self collectionView];
      v5 = [v6 collectionViewLayout];
      [v5 invalidateLayout];
    }
  }
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = [(ConversationViewController *)self animationControllerForTransition:1, a4, a5];

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [(ConversationViewController *)self animationControllerForTransition:0];

  return v3;
}

- (id)animationControllerForTransition:(BOOL)a3
{
  v3 = a3;
  v4 = [(ConversationViewController *)self _quickReplyView];
  v5 = 0;
  if (v4 && v3)
  {
    v5 = objc_alloc_init(_UISheetAnimationController);
    [v5 setIsReversed:0];
    v6 = [v4 animationSourceView];
    [v5 setSourceView:v6];
  }

  return v5;
}

- (id)_fullComposeViewControllerForQuickReply:(id)a3 userActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ComposeNavigationController alloc];
  v9 = [(ConversationViewControllerBase *)self scene];
  v10 = [(ComposeNavigationController *)v8 initWithUserActivity:v7 scene:v9];

  [(ComposeNavigationController *)v10 setTransitioningDelegate:self];
  [(ComposeNavigationController *)v10 setModalPresentationStyle:2];
  v11 = [(ConversationViewControllerBase *)self scene];
  v12 = [v11 composeViewDelegateHandler];
  [(ComposeNavigationController *)v10 setMailComposeDelegate:v12];

  v13 = [MFActiveDraft alloc];
  v14 = [(ComposeNavigationController *)v10 autosaveIdentifier];
  v15 = [(ComposeNavigationController *)v10 originalMessageObjectID];
  v16 = [(MFActiveDraft *)v13 initWithIdentifier:v14 andOriginalMessageIdentifier:v15];
  v17 = [v11 session];
  [v17 mf_setActiveDraft:v16];

  v18 = [(ComposeNavigationController *)v10 presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
    v20 = [v6 animationSourceView];
    [v19 setSourceView:v20];

    +[_TtC10MobileMail14QuickReplyView cornerRadius];
    [v19 _setCornerRadiusForPresentationAndDismissal:?];
    [v19 _setShouldDismissWhenTappedOutside:1];
  }

  [v18 setDelegate:self];

  return v10;
}

- (void)_runAlongsideAnimationsForTransition:(BOOL)a3
{
  v3 = a3;
  v5 = [(ConversationViewController *)self transitionCoordinator];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [(ConversationViewController *)self transitionCoordinator];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100070C0C;
    v11[3] = &unk_10064D860;
    objc_copyWeak(&v12, &location);
    v13 = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100070C9C;
    v8[3] = &unk_10064D860;
    objc_copyWeak(&v9, &location);
    v10 = v3;
    [v6 animateAlongsideTransition:v11 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [(ConversationViewController *)self _quickReplyView];
    [v7 setHidden:v3];
  }
}

- (void)_setupQuickReplySupplementaryViewProvider
{
  objc_initWeak(&location, self);
  v3 = [(ConversationViewController *)self quickReplyHeaderSupplementaryRegistration];
  if (!v3 || ([(ConversationViewController *)self quickReplyFooterSupplementaryRegistration], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100071024;
    v13[3] = &unk_10064D888;
    objc_copyWeak(&v14, &location);
    v5 = objc_retainBlock(v13);
    v6 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:UICollectionElementKindSectionHeader configurationHandler:v5];
    [(ConversationViewController *)self setQuickReplyHeaderSupplementaryRegistration:v6];

    v7 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:UICollectionElementKindSectionFooter configurationHandler:v5];
    [(ConversationViewController *)self setQuickReplyFooterSupplementaryRegistration:v7];

    objc_destroyWeak(&v14);
  }

  v8 = [(ConversationViewController *)self collectionViewDataSource];
  v9 = [v8 supplementaryViewProvider];

  if (!v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000711C4;
    v11[3] = &unk_10064D8B0;
    objc_copyWeak(&v12, &location);
    v10 = [(ConversationViewController *)self collectionViewDataSource];
    [v10 setSupplementaryViewProvider:v11];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

- (void)_dismissKeyboardIfNecessary
{
  v3 = [(ConversationViewController *)self view];
  v2 = [v3 window];
  [v2 endEditing:1];
}

- (id)mailComposeViewForQuickReplyView:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self quickReplyMailComposeController];
  [v5 removeFromParentViewController];

  v6 = [(ConversationViewController *)self quickReplyMailComposeController];
  v7 = [v6 view];
  [v7 removeFromSuperview];

  v8 = [(ConversationViewControllerBase *)self scene];
  v9 = [(ConversationViewController *)self _quickReplyCompositionContext];
  v10 = [[MFMailComposeController alloc] initWithCompositionContext:v9 options:0];
  [(ConversationViewController *)self setQuickReplyMailComposeController:v10];
  v11 = [v8 composeViewDelegate];
  [v10 setDelegate:v11];

  [v10 setQuickReplyDelegate:self];
  [v10 setQuickReplyActionButtonProvider:v4];
  [(ConversationViewController *)self addChildViewController:v10];
  v12 = [v10 view];

  return v12;
}

- (void)mailComposeViewSnapshotForQuickReplyView:(id)a3 :(id)a4
{
  v5 = a4;
  v6 = [(ConversationViewController *)self quickReplyMailComposeController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000716CC;
  v8[3] = &unk_10064D8D8;
  v7 = v5;
  v9 = v7;
  [v6 takeSnapshotWithCompletionHandler:v8];
}

- (id)displayNameForAddresses:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(ConversationViewControllerBase *)self contactStore];
        v12 = [v11 displayNameForEmailAddress:v10];
        [v5 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v5 componentsJoinedByString:{@", "}];

  return v13;
}

- (void)quickReplyView:(id)a3 didTapExpandButton:(id)a4
{
  v5 = [(ConversationViewController *)self quickReplyMailComposeController:a3];
  v6 = [v5 composeWebView];
  v7 = [v6 getCaretPosition];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100071A10;
  v8[3] = &unk_10064D900;
  v8[4] = self;
  [v7 addSuccessBlock:v8];
}

- (void)quickReplyView:(id)a3 didTapSendButton:(id)a4 animationContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    objc_initWeak(&location, self);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100071DE4;
    v20 = &unk_10064C838;
    objc_copyWeak(&v21, &location);
    [v10 setCompletionBlock:&v17];
    v11 = [(ConversationViewControllerBase *)self quickReplyAnimationContext:v17];
    [v11 setObject:v10];

    v12 = +[ConversationViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138412802;
      v24 = v13;
      v25 = 2048;
      v26 = self;
      v27 = 2112;
      v28 = v10;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Quick Reply][Send Animation] Did prepare quick-reply send animation with context: %@", buf, 0x20u);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v15 = MFComposeLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Quick Reply][Send Animation] Will perform send...", buf, 2u);
  }

  [(ConversationViewControllerBase *)self setIsPerformingQuickReplySendAnimation:1];
  v16 = [(ConversationViewController *)self quickReplyMailComposeController];
  [v16 performSend];
}

- (void)mailComposeController:(id)a3 didChangeQuickReplyWebViewHeight:(double)a4
{
  v6 = +[ConversationViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v59 = objc_opt_class();
    [(ConversationViewControllerBase *)self quickReplyHeight];
    *buf = 138413058;
    v65 = v59;
    v66 = 2048;
    v67 = self;
    v68 = 2048;
    v69 = a4;
    v70 = 2048;
    v71 = v60;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "<%@: %p> [Quick Reply] Wants to change height to: %f, current height: %f", buf, 0x2Au);
  }

  +[_TtC10MobileMail14QuickReplyView innerVerticalPadding];
  v8 = v7;
  +[_TtC10MobileMail14QuickReplyView innerVerticalPadding];
  v10 = v9;
  v11 = [(ConversationViewControllerBase *)self collectionView];
  +[_TtC10MobileMail14QuickReplyView defaultHeight];
  v13 = v8 + a4 + v10;
  if (v13 >= v12)
  {
    v14 = v8 + a4 + v10;
  }

  else
  {
    v14 = v12;
  }

  [(ConversationViewControllerBase *)self quickReplyHeight];
  v16 = v15 - v14;
  if (v16 < 0.0)
  {
    v16 = -v16;
  }

  if (v16 >= 2.22044605e-16)
  {
    [(ConversationViewControllerBase *)self quickReplyHeight];
    v18 = v17;
    [(ConversationViewControllerBase *)self setQuickReplyHeight:v14];
    v19 = +[ConversationViewController log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      *buf = 138413058;
      v65 = v20;
      v66 = 2048;
      v67 = self;
      v68 = 2048;
      v69 = v14;
      v70 = 2048;
      v71 = v14 - v18;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Quick Reply] Did change height to: %f, delta: %f", buf, 0x2Au);
    }

    v22 = [(ConversationViewController *)self _quickReplyView];
    if (v22)
    {
      if ([(ConversationViewController *)self _showQuickReplyBelowConversation])
      {
        [(ConversationViewControllerBase *)self _itemSpacing];
        v24 = v23;
        [v11 mf_visibleFrame];
        v62 = v26;
        v63 = v25;
        rect = v27;
        v29 = v28;
        [v22 frame];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v38 = [(ConversationViewController *)self view];
        v39 = [(ConversationViewControllerBase *)self collectionView];
        [v38 convertRect:v39 fromView:{v31, v24 + v33, v35, v37 - v24}];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v73.origin.x = v41;
        v73.origin.y = v43;
        v73.size.width = v45;
        v73.size.height = v47;
        MinX = CGRectGetMinX(v73);
        v74.origin.x = v41;
        v74.origin.y = v43;
        v74.size.width = v45;
        v74.size.height = v47;
        v72.y = CGRectGetMaxY(v74);
        v75.size.height = v24 + v29;
        v75.origin.y = v62;
        v75.origin.x = v63;
        v75.size.width = rect;
        v72.x = MinX;
        LOBYTE(v38) = CGRectContainsPoint(v75, v72);
        [v11 contentSize];
        v50 = v49;
        [v11 contentInset];
        v52 = v51;
        [v11 contentInset];
        v54 = v53;
        [v11 frame];
        v56 = v55;
        v57 = [v11 collectionViewLayout];
        [v57 invalidateLayout];

        if ((v38 & (v13 + v50 + v52 + v54 >= v56)) == 1)
        {
          [v11 contentOffset];
          [v11 setContentOffset:0 animated:?];
        }
      }

      else
      {
        v58 = [v11 collectionViewLayout];
        [v58 invalidateLayout];
      }
    }

    [(ConversationViewController *)self _updateQuickReplySendButtonOffset:v11];
  }
}

- (void)mailComposeController:(id)a3 composeBodyIsEmpty:(BOOL)a4
{
  v4 = a4;
  [(ConversationViewController *)self setQuickReplyHasContent:!a4];
  v6 = [(ConversationViewController *)self _quickReplyView];
  [v6 setQuickReplyPlaceholderLabelState:v4];
}

- (void)mailComposeController:(id)a3 willMigrateToFullComposeWithReason:(int64_t)a4
{
  if (!a4)
  {
    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = self;
      v6 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Quick Reply] Will add attachment, applying snapshot to view hierarchy", &v8, 0x16u);
    }

    v7 = [(ConversationViewController *)self _quickReplyView];
    [v7 showSnapshot];
  }
}

- (void)mailComposeController:(id)a3 migrateToFullCompose:(id)a4
{
  v5 = a4;
  if (+[UIDevice mf_isPadIdiom])
  {
    v6 = [(ConversationViewControllerBase *)self scene];
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000728EC;
    v22[3] = &unk_10064D928;
    objc_copyWeak(&v23, &location);
    [v6 showComposeWithUserActivity:v5 completion:v22];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = [(ConversationViewController *)self _quickReplyView];
    v7 = [(ConversationViewController *)self _fullComposeViewControllerForQuickReply:v6 userActivity:v5];
    v8 = [v7 autosaveIdentifier];
    v16 = [v7 originalMessageObjectID];
    if (v8)
    {
      v9 = +[UIApplication sharedApplication];
      v10 = [v9 dockPersistence];
      [v10 removeDockedStateWithIdentifier:v8 sender:0];
    }

    v11 = [(ConversationViewControllerBase *)self scene];
    v12 = [v11 dockContainer];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100072964;
    v18[3] = &unk_10064C6B0;
    v13 = v11;
    v19 = v13;
    v14 = v8;
    v20 = v14;
    v15 = v17;
    v21 = v15;
    [v12 presentViewController:v7 animated:1 completion:v18];

    [(ConversationViewController *)self _runAlongsideAnimationsForTransition:1];
  }
}

- (void)mailComposeController:(id)a3 isSending:(BOOL)a4
{
  v6 = a3;
  if (!a4 && [(ConversationViewControllerBase *)self isPerformingQuickReplySendAnimation])
  {
    v7 = +[ConversationViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2048;
      v14 = self;
      v8 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Quick Reply][Send Animation] Aborting send animation", &v11, 0x16u);
    }

    [(ConversationViewControllerBase *)self setIsPerformingQuickReplySendAnimation:0];
    v9 = [(ConversationViewControllerBase *)self quickReplyAnimationContext];
    v10 = +[NSNull null];
    [v9 setObject:v10];
  }
}

- (id)_sheetPresentationControllerViewForTouchContinuation:(id)a3
{
  v3 = [a3 presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 view];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)disableAutomaticMarkAsReadForMessages:(id)a3
{
  v4 = a3;
  if (!*(&self->_disabledMarkAsReadMessageItemIDs + 4))
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = *(&self->_disabledMarkAsReadMessageItemIDs + 4);
    *(&self->_disabledMarkAsReadMessageItemIDs + 4) = v5;
  }

  v7 = [v4 firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count] == 1)
  {
    v8 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v9 = [v4 firstObject];

    if (v8 == v9)
    {
      v10 = [(ConversationViewController *)self collectionViewDataSource];
      v11 = [v10 snapshot];
      v12 = [v11 itemIdentifiers];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v12 = [v4 ef_mapSelector:"itemID"];
LABEL_9:
  v13 = +[ConversationViewController log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Disable auto-mark-as-read for itemIDs: %@", &v14, 0xCu);
  }

  [*(&self->_disabledMarkAsReadMessageItemIDs + 4) addObjectsFromArray:v12];
}

- (void)reenableAutomaticMarkAsReadForAllMessages
{
  if (*(&self->_disabledMarkAsReadMessageItemIDs + 4))
  {
    v3 = +[ConversationViewController log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Leaving the conversation should re-enable automatic mark-as-read", v5, 2u);
    }

    v4 = *(&self->_disabledMarkAsReadMessageItemIDs + 4);
    *(&self->_disabledMarkAsReadMessageItemIDs + 4) = 0;
  }
}

- (void)scheduleAutomaticMarkAsReadForViewModel:(id)a3
{
  v4 = [a3 messageContentRequest];
  v5 = [v4 message];

  [(ConversationViewController *)self scheduleAutomaticMarkAsReadForMessage:v5];
}

- (void)scheduleAutomaticMarkAsReadForMessage:(id)a3
{
  v4 = a3;
  if ([(ConversationViewController *)self _shouldAutomaticallyMarkAsReadMessage:v4])
  {
    if (!*(&self->_delayedReadCancelables + 4))
    {
      v5 = +[NSMapTable strongToStrongObjectsMapTable];
      v6 = *(&self->_delayedReadCancelables + 4);
      *(&self->_delayedReadCancelables + 4) = v5;
    }

    objc_initWeak(&location, self);
    v7 = [(ConversationViewController *)self markAsReadBehavior];
    v8 = 0.0;
    if (v7 <= 3 && v7 != 1)
    {
      v8 = 0.66;
    }

    v9 = +[EFScheduler mainThreadScheduler];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10007313C;
    v17 = &unk_10064C8B0;
    objc_copyWeak(v19, &location);
    v10 = v4;
    v18 = v10;
    v19[1] = *&v8;
    v11 = [v9 afterDelay:&v14 performBlock:v8];

    v12 = *(&self->_delayedReadCancelables + 4);
    v13 = [v10 itemID];
    [v12 setObject:v11 forKey:v13];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }
}

- (void)scheduleAutomaticMarkAsReadForReferenceMessage
{
  v3 = [(ConversationViewController *)self _indexPathForReferenceMessage];
  if (v3)
  {
    v4 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v5 = [v4 displayMessageItemID];
    v6 = [(ConversationViewController *)self _messageFutureForItemID:v5];

    objc_initWeak(&location, self);
    v7 = +[ConversationViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 displayMessageItemID];
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ - Scheduling auto-mark-as-read for reference message", buf, 0xCu);
    }

    v9 = +[EFScheduler mainThreadScheduler];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100073968;
    v15[3] = &unk_10064CDE0;
    objc_copyWeak(&v16, &location);
    [v6 onScheduler:v9 addSuccessBlock:v15];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000739DC;
    v13[3] = &unk_10064D028;
    v10 = v4;
    v14 = v10;
    [v6 addFailureBlock:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = +[ConversationViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v12 = [v11 itemID];
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read because indexPath for referenceMessage is nil", buf, 0xCu);
    }
  }
}

- (void)cancelAutomaticMarkAsReadForCellViewModel:(id)a3
{
  v4 = [a3 messageContentRequest];
  v10 = [v4 message];

  v5 = *(&self->_delayedReadCancelables + 4);
  v6 = [v10 itemID];
  v7 = [v5 objectForKey:v6];
  [v7 cancel];

  v8 = *(&self->_delayedReadCancelables + 4);
  v9 = [v10 itemID];
  [v8 removeObjectForKey:v9];
}

- (void)invalidateAutomaticMarkAsReadForAllMessages
{
  v3 = [*(&self->_delayedReadCancelables + 4) objectEnumerator];
  v4 = [v3 allObjects];
  [v4 makeObjectsPerformSelector:"cancel"];

  v5 = *(&self->_delayedReadCancelables + 4);

  [v5 removeAllObjects];
}

- (BOOL)_shouldAutomaticallyMarkAsReadMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 flags];
  v6 = [v5 read];

  if ((v4 == 0) | v6 & 1)
  {
    if (!v4)
    {
      v7 = +[ConversationViewController log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100484D74();
      }
    }

    goto LABEL_14;
  }

  if ([(ConversationViewController *)self markAsReadBehavior]!= 2)
  {
    v9 = *(&self->_delayedReadCancelables + 4);
    v10 = [v4 itemID];
    v11 = [v9 objectForKey:v10];

    if (v11)
    {
      v8 = +[ConversationViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v4 itemID];
        LODWORD(buf.origin.x) = 138412290;
        *(&buf.origin.x + 4) = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read because it is already set up", &buf, 0xCu);
      }

      goto LABEL_13;
    }

    v15 = [(ConversationViewController *)self collectionViewDataSource];
    v16 = [v4 itemID];
    v17 = [v15 indexPathForItemIdentifier:v16];

    if (v17)
    {
      v18 = [(ConversationViewControllerBase *)self previewState];
      if ([v18 shouldScheduleMarkMessageAsRead])
      {
        v19 = [(ConversationViewControllerBase *)self cellConfigurator];
        v20 = [v19 messageAtIndexPathIsExpandedOrSemiExpanded:v17];

        if (v20)
        {
          v21 = *(&self->_disabledMarkAsReadMessageItemIDs + 4);
          v22 = [v4 itemID];
          LOBYTE(v21) = [v21 containsObject:v22];

          if ((v21 & 1) == 0)
          {
            v23 = [(ConversationViewControllerBase *)self collectionView];
            [v23 mf_visibleBounds];
            v30 = v29;
            v32 = v31;
            v34 = v33;
            v36 = v35;
            v37 = [(ConversationViewControllerBase *)self _layoutAttributesForItemAtIndexPath:v17];
            [v37 frame];
            v84.origin.x = v38;
            v84.origin.y = v39;
            v84.size.width = v40;
            v84.size.height = v41;
            v80.origin.x = v30;
            v80.origin.y = v32;
            v80.size.width = v34;
            v80.size.height = v36;
            if (CGRectIntersectsRect(v80, v84))
            {
              v42 = [v23 cellForItemAtIndexPath:v17];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_14;
              }

              v43 = [v42 messageViewController];
              v44 = [v43 messageContentView];

              v45 = [v44 headerView];
              v72 = v36;
              v73 = v34;
              v74 = v32;
              v75 = v30;
              [v45 frame];
              v47 = v46;
              v49 = v48;
              v51 = v50;
              v53 = v52;

              v54.width = NAN;
              v54.height = NAN;
              buf.origin = v54;
              buf.size = v54;
              remainder.origin = v54;
              remainder.size = v54;
              [v44 bounds];
              v56 = v55;
              v58 = v57;
              v60 = v59;
              v62 = v61;
              v81.origin.x = v47;
              v81.origin.y = v49;
              v81.size.width = v51;
              v81.size.height = v53;
              Height = CGRectGetHeight(v81);
              v82.origin.x = v56;
              v82.origin.y = v58;
              v82.size.width = v60;
              v82.size.height = v62;
              CGRectDivide(v82, &buf, &remainder, Height, CGRectMinYEdge);
              [v23 convertRect:v44 fromView:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];

              v64 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
              [v64 lineHeight];
              [v64 leading];
              UIRectInset();
              v85.origin.x = v65;
              v85.origin.y = v66;
              v85.size.width = v67;
              v85.size.height = fmax(v68, 1.0);
              v83.origin.y = v74;
              v83.origin.x = v75;
              v83.size.height = v72;
              v83.size.width = v73;
              v13 = CGRectIntersectsRect(v83, v85);
              if (!v13)
              {
                v69 = +[ConversationViewController log];
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  v70 = [v4 itemID];
                  LODWORD(buf.origin.x) = 138412290;
                  *(&buf.origin.x + 4) = v70;
                  _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read because not enough of it is visible", &buf, 0xCu);
                }
              }
            }

            else
            {
              v42 = +[ConversationViewController log];
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v71 = [v4 itemID];
                LODWORD(buf.origin.x) = 138412290;
                *(&buf.origin.x + 4) = v71;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read because it is not yet visible", &buf, 0xCu);
              }

              v13 = 0;
            }

LABEL_36:
            goto LABEL_15;
          }

          v23 = +[ConversationViewController log];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v4 itemID];
            LODWORD(buf.origin.x) = 138412546;
            *(&buf.origin.x + 4) = v24;
            WORD2(buf.origin.y) = 2080;
            *(&buf.origin.y + 6) = "was explicitly marked unread";
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read because it %s", &buf, 0x16u);
          }

LABEL_35:
          v13 = 0;
          goto LABEL_36;
        }
      }

      else
      {
      }
    }

    v23 = +[ConversationViewController log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v4 itemID];
      if (v17)
      {
        v26 = "NO";
      }

      else
      {
        v26 = "YES";
      }

      v27 = [(ConversationViewControllerBase *)self previewState];
      if (v17)
      {
        self = [(ConversationViewControllerBase *)self cellConfigurator];
        if ([(ConversationViewController *)self messageAtIndexPathIsExpanded:v17])
        {
          v28 = "YES";
        }

        else
        {
          v28 = "NO";
        }
      }

      else
      {
        v28 = "UNKNOWN";
      }

      LODWORD(buf.origin.x) = 138413058;
      *(&buf.origin.x + 4) = v25;
      WORD2(buf.origin.y) = 2080;
      *(&buf.origin.y + 6) = v26;
      HIWORD(buf.size.width) = 2112;
      *&buf.size.height = v27;
      v78 = 2080;
      v79 = v28;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read for reasons: indexPath-is-nil: %s, previewState: %@, message-is-expanded: %s", &buf, 0x2Au);
      if (v17)
      {
      }
    }

    goto LABEL_35;
  }

  v8 = +[ConversationViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.origin.x) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Auto-mark-as-read is disabled", &buf, 2u);
  }

LABEL_13:

LABEL_14:
  v13 = 0;
LABEL_15:

  return v13;
}

- (id)_cellForMessageItemIDIfExpanded:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self collectionViewDataSource];
  v6 = [v5 indexPathForItemIdentifier:v4];

  if (v6 && (-[ConversationViewControllerBase cellConfigurator](self, "cellConfigurator"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 messageAtIndexPathIsExpanded:v6], v7, v8))
  {
    v9 = [(ConversationViewControllerBase *)self collectionView];
    v10 = [v9 cellForItemAtIndexPath:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_shouldShowMailboxForMessage:(id)a3
{
  v4 = a3;
  if ([(ConversationViewControllerBase *)self messagesShowSourceMailbox])
  {
    v5 = 1;
  }

  else if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 mailboxObjectIDs];
    v7 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v8 = [v7 mailboxObjectIDs];

    v9 = [v6 firstObjectCommonWithArray:v8];
    v5 = v9 == 0;
  }

  return v5;
}

- (BOOL)_shouldShowTimeSensitiveForMessage:(id)a3
{
  v4 = a3;
  if (!-[ConversationViewController _shouldShowMailboxForMessage:](self, "_shouldShowMailboxForMessage:", v4) && EMBlackPearlIsFeatureEnabled() && ([v4 category], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isHighImpact"), v5, (v6 & 1) != 0) && (objc_msgSend(v4, "category"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, v8) && (-[ConversationViewControllerBase delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "currentlySelectedBucketForConversationViewController:", self), v9, v10 == 1))
  {
    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 ef_publicDescription];
      v15 = 134218242;
      v16 = self;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%p: Show time sensitive banner for message: %{public}@", &v15, 0x16u);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)swipableCollectionViewLayout:(id)a3 willBeginSwipeAtIndexPath:(id)a4
{
  v4 = [(ConversationViewControllerBase *)self cellExpansionRecognizer:a3];
  [v4 cancel];
}

- (id)_itemsForMessage:(id)a3 changeAction:(int64_t)a4
{
  v6 = a3;
  v7 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  if ([v7 count] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && +[MessageStatusIndicatorManager doesUpdateForChangeAction:](MessageStatusIndicatorManager, "doesUpdateForChangeAction:", a4))
  {
    v8 = +[ConversationViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 objectID];
      v10 = [v6 objectID];
      *buf = 134218498;
      v18 = a4;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "For changeAction:%ld, include both itemID:%{public}@ displayMessage:%{public}@", buf, 0x20u);
    }

    v16[0] = v7;
    v16[1] = v6;
    v11 = v16;
    v12 = 2;
  }

  else
  {
    v15 = v6;
    v11 = &v15;
    v12 = 1;
  }

  v13 = [NSArray arrayWithObjects:v11 count:v12];

  return v13;
}

- (id)swipableCollectionViewLayout:(id)a3 leadingSwipeActionsConfigurationForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ConversationViewController *)self _messageAtIndexPath:v5];
  v7 = v6;
  if (v6 && ([v6 isEditable] & 1) == 0)
  {
    v9 = sub_10024BB48(0);
    v10 = [MFTriageActionUtilities triageActionForActionKey:v9];

    v11 = [(ConversationViewController *)self messageTriageInteractionHelper];
    v12 = [(ConversationViewController *)self _itemsForMessage:v7 changeAction:v10];
    v13 = [(ConversationViewControllerBase *)self collectionView];
    v14 = [v13 cellForItemAtIndexPath:v5];
    v15 = [v11 triageInteractionForTriageAction:v10 withMessageListItems:v12 presentationSource:v14 presentingViewController:self moveInteractionDelegate:self forPreview:0 origin:3];

    v16 = [(ConversationViewController *)self _swipeActionForTriageInteraction:v15];
    v17 = v16;
    if (v16)
    {
      v20 = v16;
      v18 = [NSArray arrayWithObjects:&v20 count:1];
      v8 = [UISwipeActionsConfiguration configurationWithActions:v18];

      [v8 setPerformsFirstActionWithFullSwipe:{objc_msgSend(v15, "isDestructive") ^ 1}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)swipableCollectionViewLayout:(id)a3 trailingSwipeActionsConfigurationForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ConversationViewController *)self _messageAtIndexPath:v5];
  if (v6)
  {
    v7 = [(ConversationViewControllerBase *)self collectionView];
    v31 = [v7 cellForItemAtIndexPath:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v31;
      v9 = [v8 predictedMailbox];

      if (!v9)
      {
        v33 = v6;
        v10 = [NSArray arrayWithObjects:&v33 count:1];
        v11 = [MFMoveToPredictionTriageInteraction predictMailboxForMovingMessages:v10];
        [v8 setPredictedMailbox:v11];
      }
    }

    v12 = [v6 isEditable];
    v32 = v6;
    v30 = [NSArray arrayWithObjects:&v32 count:1];
    v13 = objc_alloc_init(NSMutableArray);
    if ((v12 & 1) != 0 || ![v6 shouldArchiveByDefault])
    {
      v14 = [(ConversationViewController *)self undoManager];
      v29 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItems:v30 undoManager:v14 origin:3 actor:2];
    }

    else
    {
      v14 = [(ConversationViewController *)self undoManager];
      v29 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItems:v30 undoManager:v14 origin:3 actor:2];
    }

    v15 = [v29 swipeActionWithPreparation:0 completion:0];
    [v13 addObject:v15];
    if ((v12 & 1) == 0)
    {
      v16 = sub_10024BC14(0);
      v17 = [MFTriageActionUtilities triageActionForActionKey:v16];

      v18 = [(ConversationViewController *)self messageTriageInteractionHelper];
      v19 = [(ConversationViewController *)self _itemsForMessage:v6 changeAction:v17];
      v20 = [(ConversationViewControllerBase *)self collectionView];
      v21 = [v20 cellForItemAtIndexPath:v5];
      v22 = [v18 triageInteractionForTriageAction:v17 withMessageListItems:v19 presentationSource:v21 presentingViewController:self moveInteractionDelegate:self forPreview:0 origin:3];

      v23 = [(ConversationViewController *)self _swipeActionForTriageInteraction:v22];
      if (v23)
      {
        [v13 addObject:v23];
      }

      v24 = [(ConversationViewController *)self undoManager];
      v25 = [MFMoreTriageInteraction interactionWithMessageListItems:v30 undoManager:v24 origin:3 actor:2 interactionStyle:1];

      [v25 setDelegate:self];
      v26 = [v25 swipeAction];
      [v13 addObject:v26];
    }

    v27 = [UISwipeActionsConfiguration configurationWithActions:v13];
    [v27 setPerformsFirstActionWithFullSwipe:0];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)swipableCollectionViewLayout:(id)a3 shouldAnimateAppearingItemAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(ConversationViewControllerBase *)self allowQuickReply]&& [(ConversationViewController *)self _isQuickReplyMessageAtIndexPath:v5])
  {
    v6 = +[ConversationViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v11 = 138412802;
      v12 = v8;
      v13 = 2048;
      v14 = self;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> Should animate appearing item at indexPath=%@)", &v11, 0x20u);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_swipeActionForTriageInteraction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000754A4;
    v8[3] = &unk_10064D720;
    v8[4] = self;
    v5 = [v4 swipeActionWithPreparation:0 completion:v8];
  }

  else
  {
    v5 = [v4 swipeAction];
  }

  v6 = v5;

  return v6;
}

- (void)laterButtonTapped:(id)a3
{
  v4 = sub_1000756FC(self, a3, 2);
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100075804;
  v5[3] = &unk_10064D6F8;
  objc_copyWeak(&v6, &location);
  [v4 performInteractionWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)customBackButtonTapped:(id)a3
{
  v3 = [(ConversationViewController *)self splitViewController];
  [v3 showMessageListViewController:1 animated:1 completion:0];
}

- (void)conversationNavigationBarItemsManager:(id)a3 validateBarButtonItem:(id)a4 ofType:(int64_t)a5
{
  v7 = a4;
  v8 = [(ConversationViewController *)self selectionDataSource];
  v9 = [v8 shouldUseSelectionDataSourceForConversationViewController:self];
  if (v9)
  {
    v10 = [v8 messageListItemSelectionForConversationViewController:self];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 isSelectAll])
  {
    v11 = 1;
  }

  else
  {
    v12 = [v10 messageListItems];
    v11 = [v12 count] != 0;
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100076780;
  v46[3] = &unk_10064D9B0;
  v46[4] = self;
  v13 = v7;
  v47 = v13;
  v14 = objc_retainBlock(v46);
  switch(a5)
  {
    case 0:
    case 1:
    case 2:
      goto LABEL_19;
    case 3:
    case 4:
    case 5:
    case 12:
    case 13:
      v11 = v9 ^ 1;
      goto LABEL_20;
    case 6:
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100076818;
      v38[3] = &unk_10064DA00;
      v38[4] = self;
      v41 = v9;
      v39 = v10;
      v40 = v13;
      v42 = v11;
      (v14[2])(v14, v38);

      v15 = v39;
      goto LABEL_22;
    case 7:
      v16 = v13;
      v17 = [UIImage systemImageNamed:MFImageGlyphRead];
      [v16 setImage:?];

      v18 = _EFLocalizedString();
      [v16 setTitle:v18];
      v19 = 0;
      goto LABEL_16;
    case 8:
      v19 = v13;
      v21 = [UIImage systemImageNamed:MFImageGlyphUnread];
      [v19 setImage:v21];

      v18 = _EFLocalizedString();
      [v19 setTitle:v18];
      v16 = 0;
LABEL_16:

      if (v9)
      {
        v28 = v16;
        v22 = [v8 messageTriageInteractionHelperForConversationViewController:self];
        v23 = [v10 messageListItems];
        v24 = [v22 flagStateForTriageAction:2 messageListItems:v23 isSelectAll:objc_msgSend(v10 supportsSelectAll:{"isSelectAll"), 1}];

        sub_10006E008(self, v19, v28, v24, v11);
        v16 = v28;
      }

      else
      {
        v22 = [(ConversationViewControllerBase *)self referenceMessageListItem];
        v27 = [v22 flags];
        sub_10006E008(self, v19, v16, [v27 read], v22 != 0);
      }

      break;
    case 9:
      v25 = [UIImage systemImageNamed:MFImageGlyphJunk];
      [v13 setImage:v25];

      v26 = _EFLocalizedString();
      [v13 setTitle:v26];

LABEL_19:
      if (v9)
      {
LABEL_20:
        [v13 setEnabled:v11];
      }

      break;
    case 10:
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100076AA0;
      v29[3] = &unk_10064DA28;
      v29[4] = self;
      v30 = v13;
      v32 = v9;
      v31 = v10;
      (v14[2])(v14, v29);

      v15 = v30;
      goto LABEL_22;
    case 11:
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100076978;
      v33[3] = &unk_10064DA28;
      v37 = v9;
      v34 = v10;
      v35 = self;
      v36 = v13;
      (v14[2])(v14, v33);

      v15 = v34;
      goto LABEL_22;
    case 14:
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100076804;
      v43[3] = &unk_10064D9D8;
      v44 = v13;
      v45 = v9;
      (v14[2])(v14, v43);
      v15 = v44;
LABEL_22:

      break;
    case 15:
      if (v9)
      {
        v20 = 0;
      }

      else
      {
        v11 = [(ConversationViewControllerBase *)self delegate];
        v20 = [v11 conversationViewControllerAllowsCategorizationAction:self];
      }

      [v13 setEnabled:v20];
      if ((v9 & 1) == 0)
      {
      }

      break;
    default:
      break;
  }
}

- (void)prewarmContent
{
  v2 = [(ConversationViewControllerBase *)self barItemsManager];
  [v2 prewarmContent];
}

- (void)revealActionsButtonTapped:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076CA0;
  v7[3] = &unk_10064DA78;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [(ConversationViewController *)self _presentMailActionsViewControllerFromBarButtonItem:v6 dataSourceClass:v5 includeMessageContentRequest:1 completionHandler:v7];
}

- (void)_doDeleteSelectedMessagesAskingConfirmation:(BOOL)a3 presentationSourceButtonItem:(id)a4 forceArchive:(BOOL)a5
{
  v6 = a3;
  v9 = a4;
  v10 = sub_100069A50(self);
  if (v10)
  {
    if (a5 || [(ConversationViewController *)self _shouldArchiveByDefault])
    {
      v11 = [(ConversationViewController *)self undoManager];
      v12 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItemSelection:v10 undoManager:v11 origin:3 actor:2];
      v13 = 1;
    }

    else
    {
      v11 = [(ConversationViewController *)self undoManager];
      v12 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItemSelection:v10 undoManager:v11 origin:3 actor:2];
      v13 = 0;
    }

    v15 = +[ConversationViewController log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"Delete";
      *buf = 134218498;
      v37 = self;
      if (v13)
      {
        v16 = @"Archive";
      }

      v38 = 2112;
      v39 = v16;
      v40 = 1024;
      v41 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<%p> %@ selected messages. Ask for confirmation? %{BOOL}d", buf, 0x1Cu);
    }

    v26 = v13;

    v17 = [(ConversationViewController *)self selectionDataSource];
    v18 = [v17 shouldUseSelectionDataSourceForConversationViewController:self];
    if (v18)
    {
      v19 = [v17 messageTriageInteractionHelperForConversationViewController:self];
      [v12 setDelegate:v19];
    }

    else
    {
      [v12 setDelegate:self];
    }

    [v12 setShouldAskForConfirmation:v6];
    [v12 setPresentationSource:v9];
    [v9 setEnabled:0];
    objc_initWeak(&location, self);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000775AC;
    v33[3] = &unk_10064D928;
    objc_copyWeak(&v34, &location);
    v20 = objc_retainBlock(v33);
    v21 = +[ConversationViewController log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v10 messageListItems];
      v23 = v22;
      v24 = @"selection data source";
      if (!v18)
      {
        v24 = self;
      }

      *buf = 138412546;
      v37 = v24;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Performing triage interaction with delegate from %@ and selection: %@", buf, 0x16u);
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100077608;
    v27[3] = &unk_10064DAA0;
    objc_copyWeak(&v31, &location);
    v32 = v26;
    v28 = v9;
    v25 = v20;
    v30 = v25;
    v14 = v12;
    v29 = v14;
    [v14 performInteractionWithCompletion:v27];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = +[ConversationViewController log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484DB0();
    }
  }
}

- (void)searchMessages:(id)a3
{
  v3 = sub_1004852A4(self);
  [v3 presentFindNavigatorShowingReplace:0];
}

- (id)_recategorizationMenu
{
  objc_initWeak(&location, self);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1000779A4;
  v9 = &unk_10064DAC8;
  objc_copyWeak(&v10, &location);
  v2 = [UIDeferredMenuElement elementWithUncachedProvider:&v6];
  v12 = v2;
  v3 = [NSArray arrayWithObjects:&v12 count:1, v6, v7, v8, v9];
  v4 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:v3];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v4;
}

- (id)_groupedSenderActionMenuItemsWithMenuOwner:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100077EAC;
  v16 = &unk_10064DAF0;
  objc_copyWeak(&v18, &location);
  v5 = v4;
  v17 = v5;
  v6 = [UIDeferredMenuElement elementWithUncachedProvider:&v13];
  v21 = v6;
  v7 = [NSArray arrayWithObjects:&v21 count:1, v13, v14, v15, v16];
  v8 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:v7];

  v9 = [(ConversationViewController *)self _customReturnToGroupSenderList];
  v10 = [(ConversationViewController *)self _recategorizationMenu];
  v20[0] = v9;
  v20[1] = v8;
  v20[2] = v10;
  v11 = [NSArray arrayWithObjects:v20 count:3];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v11;
}

- (id)groupedSenderActionMenuForConversationNavigationBarItemsManager:(id)a3 menuOwner:(id)a4
{
  v4 = [(ConversationViewController *)self _groupedSenderActionMenuItemsWithMenuOwner:a4];
  v5 = [UIMenu menuWithTitle:&stru_100662A88 children:v4];

  [v5 setAccessibilityIdentifier:MSAccessibilityIdentifierGroupedSenderActionMenu];

  return v5;
}

- (id)_customReturnToGroupSenderList
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100078180;
  v4[3] = &unk_10064DB40;
  v4[4] = self;
  v2 = [UICustomViewMenuElement elementWithViewProvider:v4];

  return v2;
}

- (void)_groupedSenderMessageCountForQuery:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[EFPromise promise];
  v9 = [(ConversationViewController *)self messageRepository];
  v10 = [v8 completionHandlerAdapter];
  [v9 performCountQuery:v6 completionHandler:v10];

  v11 = +[EFScheduler mainThreadScheduler];
  v12 = [v8 future];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000789B4;
  v20[3] = &unk_10064DB68;
  v13 = v7;
  v21 = v13;
  [v12 onScheduler:v11 addSuccessBlock:v20];

  v14 = [v8 future];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100078A28;
  v17[3] = &unk_10064DB90;
  v15 = v6;
  v18 = v15;
  v16 = v13;
  v19 = v16;
  [v14 onScheduler:v11 addFailureBlock:v17];
}

- (id)_messageDeletionCompletionHandlerForMenuOwner:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100078BFC;
  v9[3] = &unk_10064D1F8;
  objc_copyWeak(&v12, &location);
  v10 = v4;
  v11 = self;
  v5 = v4;
  v6 = objc_retainBlock(v9);
  v7 = objc_retainBlock(v6);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v7;
}

- (id)_deleteActionForMessageListItemSelection:(id)a3 menuOwner:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    v8 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v9 = [(ConversationViewController *)self _presentationStringForMessageListItem:v8];

    v10 = [(ConversationViewControllerBase *)self delegate];
    v11 = [v10 currentlySelectedBucketForConversationViewController:self];

    v12 = [(ConversationViewController *)self messageList];
    v13 = [v12 query];
    v14 = [(ConversationViewController *)self undoManager];
    v15 = [(MFGroupedSenderDestructiveTriageInteraction *)MFGroupedSenderDeleteTriageInteraction interactionWithQuery:v13 groupedSenderDisplayName:v9 selectedBucket:v11 undoManager:v14 origin:3 actor:2];

    [v15 setTitleIncludesCount:0];
    v16 = [(ConversationViewController *)self view];
    [v15 setPresentationSource:v16];

    [v15 setShouldAskForConfirmation:1];
    [v15 setType:2];
    [v15 setDelegate:self];
    v17 = [(ConversationViewController *)self _messageDeletionCompletionHandlerForMenuOwner:v7];
    v18 = [v15 menuActionWithPreparation:0 completion:v17];
  }

  else
  {
    v19 = [(ConversationViewController *)self undoManager];
    v9 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItemSelection:v6 undoManager:v19 origin:3 actor:2];

    [v9 setDelegate:self];
    v15 = [(ConversationViewController *)self _messageDeletionCompletionHandlerForMenuOwner:v7];
    v18 = [v9 menuActionWithPreparation:0 completion:v15];
  }

  return v18;
}

- (id)_archiveActionForMessageListItemSelection:(id)a3 menuOwner:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    v8 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v9 = [(ConversationViewController *)self _presentationStringForMessageListItem:v8];

    v10 = [(ConversationViewControllerBase *)self delegate];
    v11 = [v10 currentlySelectedBucketForConversationViewController:self];

    v12 = [(ConversationViewController *)self messageList];
    v13 = [v12 query];
    v14 = [(ConversationViewController *)self undoManager];
    v15 = [(MFGroupedSenderDestructiveTriageInteraction *)MFGroupedSenderArchiveTriageInteraction interactionWithQuery:v13 groupedSenderDisplayName:v9 selectedBucket:v11 undoManager:v14 origin:3 actor:2];

    [v15 setTitleIncludesCount:0];
    v16 = [(ConversationViewController *)self view];
    [v15 setPresentationSource:v16];

    [v15 setShouldAskForConfirmation:1];
    [v15 setType:2];
    [v15 setDelegate:self];
  }

  else
  {
    v17 = [(ConversationViewController *)self undoManager];
    v15 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItemSelection:v6 undoManager:v17 origin:3 actor:2];

    [v15 setDelegate:self];
  }

  v18 = [(ConversationViewController *)self _messageDeletionCompletionHandlerForMenuOwner:v7];
  v19 = [v15 menuActionWithPreparation:0 completion:v18];

  [v19 setAttributes:{objc_msgSend(v19, "attributes") ^ 2}];

  return v19;
}

- (id)deleteButtonMenuForConversationNavigationBarItemsManager:(id)a3 menuOwner:(id)a4
{
  v5 = a4;
  v6 = sub_100069A50(self);
  v7 = [(ConversationViewController *)self _deleteActionForMessageListItemSelection:v6 menuOwner:v5];
  v8 = [(ConversationViewController *)self _archiveActionForMessageListItemSelection:v6 menuOwner:v5];
  v12[0] = v8;
  v12[1] = v7;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [UIMenu menuWithTitle:&stru_100662A88 children:v9];

  return v10;
}

- (void)moveButtonTapped:(id)a3
{
  v5 = a3;
  v6 = sub_100069A50(self);
  if (v6)
  {
    v7 = [(ConversationViewController *)self selectionDataSource];
    if ([v7 shouldUseSelectionDataSourceForConversationViewController:self])
    {
      [v7 conversationViewController:self performTriageAction:7 presentationSource:v5];
    }

    else
    {
      v8 = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v9 = v8;
      if (v8 && ([v8 displayMessage], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "result"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
      {
        v12 = [(ConversationViewController *)self predictedMailboxForConversation];
        v13 = [v12 resultIfAvailable];

        v14 = [(ConversationViewControllerBase *)self shouldHideStickyFooterView];
        if (v13)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        if (v15 == 1)
        {
          v16 = objc_opt_class();
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1000797F0;
          v24[3] = &unk_10064DA78;
          v24[4] = self;
          v25 = v5;
          [(ConversationViewController *)self _presentMailActionsViewControllerFromBarButtonItem:v25 dataSourceClass:v16 includeMessageContentRequest:0 completionHandler:v24];
        }

        else
        {
          v17 = [v6 messageListItems];
          v18 = [(ConversationViewController *)self undoManager];
          v19 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:v17 undoManager:v18 origin:3 actor:2 presentationSource:v5 delegate:self presentingViewController:self predictedMailbox:v13];

          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100079968;
          v21[3] = &unk_10064DBB8;
          v21[4] = self;
          v22 = v5;
          v23 = v19;
          v20 = v19;
          [v20 performInteractionWithCompletion:v21];
        }
      }

      else
      {
        v13 = +[ConversationViewController log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100484E48();
        }
      }
    }
  }

  else
  {
    v7 = +[ConversationViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484DB0();
    }
  }
}

- (id)_createMailActionViewHeader
{
  v3 = [(ConversationViewControllerBase *)self displayMetrics];
  [MailActionViewHeader defaultHeightWithDisplayMetrics:v3];
  v5 = v4;
  v6 = [(ConversationViewController *)self view];
  [v6 frame];
  Width = CGRectGetWidth(v13);

  v8 = [[MailActionViewHeader alloc] initWithFrame:0.0, 0.0, Width, v5];
  v9 = [(ConversationViewControllerBase *)self contactStore];
  [(MFMessageConversationViewCell *)v8 setContactStore:v9];

  v10 = [MFMessageDisplayMetrics mf_actionCardMetricsFromDisplayMetrics:v3];
  [(MFConversationViewCell *)v8 setDisplayMetrics:v10];

  return v8;
}

- (void)_presentMailActionsViewControllerFromBarButtonItem:(id)a3 dataSourceClass:(id)a4 includeMessageContentRequest:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  if (v13)
  {
    [(ConversationViewController *)self setSelectedMessage:v13];
    v14 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v15 = v14;
    if (v14 && ([v14 displayMessage], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      v50 = v10;
      v45 = v11;
      v48 = v12;
      if (v7)
      {
        v17 = [v13 itemID];
        v18 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:v17];

        v19 = [v13 itemID];
        v46 = [(ConversationViewController *)self _getCurrentlySelectedMessageContentForMessageItemID:v19];
      }

      else
      {
        v46 = 0;
        v18 = 0;
      }

      v47 = v18;
      v49 = [(ConversationViewController *)self _createMailActionViewHeader];
      if ([(ConversationViewController *)self _isDisplayingSingleMessage]|| v7)
      {
        v21 = [ConversationCellViewModel alloc];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_10007A320;
        v59[3] = &unk_10064CFD8;
        v60 = v13;
        v61 = self;
        v22 = [(ConversationCellViewModel *)v21 initWithBuilder:v59];
        [v49 setViewModel:v22];
      }

      else
      {
        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
        v25 = [NSString localizedStringWithFormat:v24, [v15 count]];

        v26 = [(ConversationViewControllerBase *)self conversationSubject];
        v27 = [ECSubjectFormatter subjectStringForDisplayForSubject:v26 style:1];

        [v49 updateTitle:v25 subject:v27];
      }

      objc_initWeak(&location, self);
      v28 = [MailActionsViewController alloc];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10007A43C;
      v56[3] = &unk_10064C838;
      objc_copyWeak(&v57, &location);
      v29 = [(MailActionsViewController *)v28 initWithDelegate:self messageHeaderView:v49 didDismissHandler:v56];
      v30 = [[UINavigationController alloc] initWithRootViewController:v29];
      [v30 setModalPresentationStyle:7];
      v31 = [v30 presentationController];
      [v31 setDelegate:self];

      v32 = [v30 popoverPresentationController];
      [v32 setSourceItem:v50];

      v44 = v48[2](v48, v29);
      v33 = [v15 count]!= 1;
      v34 = [MFTriageInteractionTarget alloc];
      v35 = [v15 displayMessage];
      v36 = [v35 result];
      v37 = [(MFTriageInteractionTarget *)v34 initWithMessageListItem:v15 primaryMessage:v36 selectedMessageContent:v46 primaryMessageContentRequest:v47 targetPreference:v33 preferQuickCompositionalActions:0];

      v38 = [(ConversationViewControllerBase *)self delegate];
      v39 = [v11 alloc];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10007A49C;
      v51[3] = &unk_10064DBE0;
      v51[4] = self;
      v52 = v50;
      v40 = v37;
      v53 = v40;
      v41 = v44;
      v55 = v41;
      v42 = v38;
      v54 = v42;
      v43 = [v39 initWithBuilderBlock:v51];
      [(MailActionsViewController *)v29 setDataSource:v43];

      [(ConversationViewControllerBase *)self presentViewController:v30 animated:1 completion:0];
      objc_destroyWeak(&v57);
      objc_destroyWeak(&location);

      v10 = v50;
      v11 = v45;
      v20 = v47;
      v12 = v48;
    }

    else
    {
      v20 = +[ConversationViewController log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100484EB8();
      }
    }
  }

  else
  {
    v15 = +[ConversationViewController log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100484F28();
    }
  }
}

- (void)presentTransferUIWithMoveInteraction:(id)a3 prediction:(id)a4 fromViewController:(id)a5 didDismissHandler:(id)a6
{
  v10 = a3;
  v23 = a4;
  v11 = a5;
  v12 = a6;
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_10007A7E0;
  v28 = &unk_10064DC08;
  v13 = v10;
  v29 = v13;
  v14 = objc_retainBlock(&v25);
  v15 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  if (v15)
  {
    v16 = [v13 messageListItemSelection];
    v17 = [v16 messageListItems];
    v18 = [v17 em_messageListItemTotalCount];
    v19 = v18 == [v15 count];
  }

  else
  {
    v19 = 1;
  }

  v20 = [v13 messageListItemSelection];
  v21 = [v20 messageListItems];
  v22 = [v13 presentationSource];
  sub_10007A7EC(self, v21, v24, v11, v22, v19, v14, v12);
}

- (id)moreTriageInteraction:(id)a3 actionsViewControllerWithInteractionTarget:(id)a4 didDismissHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 messageListItem];
  v12 = [v11 itemID];

  v13 = [(ConversationViewController *)self collectionViewDataSource];
  v14 = [v13 indexPathForItemIdentifier:v12];

  v15 = [(ConversationViewControllerBase *)self collectionView];
  v16 = [v15 cellForItemAtIndexPath:v14];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v10;
    v17 = v16;
    v24 = v8;
    v18 = [v9 primaryMessage];
    v19 = [v9 primaryMessageContentRequest];
    v20 = [v17 predictedMailbox];
    v21 = [v8 presentationSource];
    v22 = [(ConversationViewController *)self _actionsViewControllerWithMessage:v18 contentRequest:v19 predictedMailbox:v20 button:v21 didDismissHandler:v25];

    v8 = v24;
    v10 = v25;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)dismissBannerForUnsubscribeAndDeleteTriageInteraction:(id)a3
{
  v4 = [(ConversationViewController *)self displaySubjectItemID];
  v6 = [(ConversationViewController *)self _cellForMessageItemIDIfExpanded:v4];

  v5 = [v6 messageViewController];
  [v5 clearSuggestionsBannerAnimated:1];
}

- (void)updateAvatarViewControllerForTriageInteraction:(id)a3 alertController:(id)a4
{
  v7 = a4;
  v5 = [(ConversationViewControllerBase *)self avatarGenerator];
  v6 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  [v7 mf_addAvatarWithAvatarGenerator:v5 messageListItem:v6];
}

- (void)groupedSenderMessageCountForDestructiveTriageInteraction:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = +[EFPromise promise];
  v7 = [(ConversationViewController *)self messageList];
  v8 = [v7 unfilteredMessageList];
  v9 = [v8 query];

  v10 = [(ConversationViewController *)self messageRepository];
  v11 = [v6 completionHandlerAdapter];
  [v10 performCountQuery:v9 completionHandler:v11];

  v12 = +[EFPromise promise];
  v13 = [(ConversationViewController *)self messageRepository];
  v14 = [(ConversationViewController *)self messageList];
  v15 = [v14 query];
  v16 = [v12 completionHandlerAdapter];
  [v13 performCountQuery:v15 completionHandler:v16];

  v26[0] = v6;
  v26[1] = v12;
  v17 = [NSArray arrayWithObjects:v26 count:2];
  v18 = [EFFuture join:v17];

  v19 = +[EFScheduler mainThreadScheduler];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007BA60;
  v24[3] = &unk_10064D298;
  v20 = v5;
  v25 = v20;
  [v18 onScheduler:v19 addSuccessBlock:v24];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007BB2C;
  v22[3] = &unk_10064C478;
  v21 = v20;
  v23 = v21;
  [v18 onScheduler:v19 addFailureBlock:v22];
}

- (id)actionViewHeaderForCategorizationInteraction:(id)a3 messageListItem:(id)a4
{
  v5 = a4;
  v6 = [(ConversationViewController *)self _createMailActionViewHeader];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
  v9 = [NSString localizedStringWithFormat:v8, [(ConversationViewController *)self countOfMessages]];

  v10 = [ConversationCellViewModel alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007BDEC;
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

- (void)categorizationButtonTapped:(id)a3
{
  v4 = [(ConversationViewController *)self _recategorizationTriageInteraction:a3];
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007BFA8;
  v5[3] = &unk_10064D6F8;
  objc_copyWeak(&v6, &location);
  [v4 performInteractionWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)_recategorizationTriageInteraction:(id)a3
{
  v4 = a3;
  v5 = [MSMessageListItemSelection alloc];
  v6 = [(ConversationViewController *)self _messageListItemsForBarButtonTriage];
  v7 = [v5 initWithMessageListItems:v6];

  v8 = [(ConversationViewController *)self undoManager];
  v9 = [(MFTriageInteraction *)MFCategorizationMenuTriageInteraction interactionWithMessageListItemSelection:v7 undoManager:v8 origin:3 actor:2];

  [v9 setDelegate:self];
  [v9 setPresentationSource:v4];

  return v9;
}

- (id)messageRepositoryForTriageInteraction:(id)a3
{
  v3 = [(ConversationViewController *)self messageRepository];

  return v3;
}

- (id)transferStackViewController:(id)a3 displayMessageForMessageListItemWithItemID:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v8 = [v7 itemID];
    v9 = [v8 isEqual:v6];

    if ((v9 & 1) == 0)
    {
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:5402 description:{@"we're displaying something other than referenceMessageListItem for itemID:%@", v6}];
    }

    v10 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v11 = [v10 displayMessage];
  }

  else
  {
    v10 = [(ConversationViewController *)self messageList];
    v11 = [v10 messageListItemForItemID:v6];
  }

  v12 = v11;

  return v12;
}

- (void)showAllMessagesForConversationSenderHeaderView:(id)a3
{
  v8 = [(ConversationViewController *)self messageList];
  v5 = [v8 filterPredicate];

  if (!v5)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:5416 description:@"There needs to be a valid predicate"];
  }

  v9 = [(ConversationViewController *)self messageList];
  v6 = [v9 filterPredicate];
  [(ConversationViewController *)self setCategoryPredicate:v6];

  v10 = [(ConversationViewController *)self messageList];
  v7 = [v10 unfilteredMessageList];
  [(ConversationViewController *)self _reloadDataSourceWithMessageList:v7];
}

- (void)showCategoryMessagesForConversationSenderHeaderView:(id)a3
{
  v4 = [(ConversationViewController *)self messageList];
  v5 = [(ConversationViewController *)self categoryPredicate];
  v6 = [v4 filteredMessageListWithPredicate:v5 userFiltered:1];

  [(ConversationViewController *)self _reloadDataSourceWithMessageList:v6];
}

- (void)datePickerViewController:(id)a3 didSelectDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  if (!v8)
  {
    v12 = [v6 message];
    sub_10007C684(self, v7, v12);
LABEL_7:

    goto LABEL_8;
  }

  if (v8 == 1)
  {
    v9 = +[ConversationViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1004850B8();
    }

    v10 = [NSArray alloc];
    v11 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v12 = [v10 initWithObjects:{v11, 0}];

    v13 = [[EMMessageReadLaterAction alloc] initWithMessageListItems:v12 origin:3 actor:2 readLaterDate:v7];
    v14 = [(ConversationViewController *)self messageRepository];
    [v14 performMessageChangeAction:v13];

    goto LABEL_7;
  }

LABEL_8:
  [v6 dismissViewControllerAnimated:1 completion:0];
  [(ConversationViewController *)self _reloadDataSource];
}

- (void)datePickerViewControllerDidDeleteDate:(id)a3
{
  v4 = a3;
  v5 = [NSArray alloc];
  v6 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v7 = [v5 initWithObjects:{v6, 0}];

  v8 = [v4 message];
  v9 = [v8 sendLaterDate];

  if (v9)
  {
    sub_10007C684(self, 0, v8);
  }

  else
  {
    v10 = [v8 readLater];

    if (v10)
    {
      v11 = [[EMMessageReadLaterAction alloc] initWithMessageListItems:v7 origin:3 actor:2 readLaterDate:0];
      v12 = [(ConversationViewController *)self messageRepository];
      [v12 performMessageChangeAction:v11];

      sub_10007CCA0(self, v8, &stru_10064DD30);
    }

    else
    {
      v13 = +[ConversationViewController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [v8 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1004850F8();
      }
    }
  }

  [(ConversationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_headerView:(id)a3 displayWithBannerForViewModel:(id)a4 message:(id)a5
{
  v8 = a3;
  v9 = a5;
  [v8 displayMessageUsingViewModel:a4];
  v10 = [v8 headerBlocks];
  v11 = [v10 ef_firstObjectPassingTest:&stru_10064DDC0];

  if (v11)
  {
    v12 = [v8 viewModel];
    v13 = [(ConversationViewController *)self _shouldRemoveBannerBlock:v11 forHeaderViewModel:v12];

    if (v13)
    {
      v14 = +[ConversationViewController log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        [v11 type];
        v15 = MFBannerViewTypeDescription();
        v16 = [v8 viewModel];
        v17 = [v16 itemID];
        v25 = 134218498;
        v26 = self;
        v27 = 2114;
        v28 = v15;
        v29 = 2114;
        v30 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%p: Remove %{public}@ banner for message with itemID: %{public}@", &v25, 0x20u);
      }

      [v8 removeHeaderBlock:v11 animated:1];
    }
  }

  v18 = [v8 headerBlocks];
  v19 = [v18 ef_firstObjectPassingTest:&stru_10064DDE0];

  v20 = [(ConversationViewController *)self _bannerBlockToInsertForHeaderView:v8 message:v9];
  if (v20)
  {
    v21 = +[ConversationViewController log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [v20 type];
      v22 = MFBannerViewTypeDescription();
      v23 = [v8 viewModel];
      v24 = [v23 itemID];
      v25 = 134218498;
      v26 = self;
      v27 = 2114;
      v28 = v22;
      v29 = 2114;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%p: Add %{public}@ banner for message with itemID: %{public}@", &v25, 0x20u);
    }

    if (v19)
    {
      [v8 insertHeaderBlock:v20 before:v19 animated:1];
    }

    else
    {
      [v8 addHeaderBlock:v20 animated:1];
    }
  }
}

- (id)presentingViewControllerForTriageInteraction:(id)a3
{
  v4 = [(ConversationViewController *)self presentingViewController];

  if (v4)
  {
    goto LABEL_2;
  }

  v8 = [(ConversationViewController *)self presentedViewController];

  if (v8)
  {
    v9 = [(ConversationViewController *)self presentedViewController];
    v10 = [v9 isBeingDismissed];

    if (!v10)
    {
      v5 = [(ConversationViewController *)self presentedViewController];
      goto LABEL_3;
    }

LABEL_2:
    v5 = self;
LABEL_3:
    v6 = v5;
    goto LABEL_4;
  }

  v11 = [(ConversationViewControllerBase *)self scene];
  v6 = [v11 mf_rootViewController];

LABEL_4:

  return v6;
}

- (void)setDisplayMetrics:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewControllerBase *)self displayMetrics];
  v6 = [v5 isEqual:v4];

  v9.receiver = self;
  v9.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v9 setDisplayMetrics:v4];
  if ((v6 & 1) == 0)
  {
    v7 = [(ConversationViewController *)self presentedViewController];
    v8 = [(ConversationViewController *)self _mailActionsViewControllerFromPresentedViewController:v7];

    [v8 updateHeaderDisplayMetrics:v4];
  }
}

- (void)_testReplyForSelectedMessage
{
  v9 = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  v3 = [v9 itemID];
  v4 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:v3];

  v5 = [(ConversationViewControllerBase *)self scene];
  v6 = [(MFMessageCompositionTriageInteraction *)MFReplyTriageInteraction interactionWithContentRequest:v4 scene:v5];

  v7 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v8 = [v7 mailboxes];
  [v6 setMessageSourceMailboxes:v8];

  [v6 setShouldPromptToLoadRestOfMessage:0];
  [v6 performInteraction];
}

- (MessageTriageInteractionHelper)messageTriageInteractionHelper
{
  v3 = *(&self->_messageTriageInteractionHelper + 4);
  if (!v3)
  {
    v4 = [MessageTriageInteractionHelper alloc];
    v5 = [(ConversationViewControllerBase *)self scene];
    v6 = [(MessageTriageInteractionHelper *)v4 initWithDataSource:self triageInteractionDelegate:self scene:v5];
    v7 = *(&self->_messageTriageInteractionHelper + 4);
    *(&self->_messageTriageInteractionHelper + 4) = v6;

    v3 = *(&self->_messageTriageInteractionHelper + 4);
  }

  return v3;
}

- (id)messageContentRepresentationRequestForMessageTriageInteractionHelper:(id)a3 message:(id)a4
{
  v5 = [a4 itemID];
  v6 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:v5];

  return v6;
}

- (id)messageTriageInteractionHelper:(id)a3 senderRepositoryForMessageListItems:(id)a4
{
  v4 = [(ConversationViewControllerBase *)self scene:a3];
  v5 = [v4 daemonInterface];
  v6 = [v5 senderRepository];

  return v6;
}

- (void)_scrolledToEndOfSingleMessage
{
  v3 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v4 = [v3 displayMessageItemID];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = [(ConversationViewController *)self _messageFutureForItemID:v4];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007DA1C;
    v6[3] = &unk_10064CDE0;
    objc_copyWeak(&v7, &location);
    [v5 addSuccessBlock:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_updateFooterViewFrameForCell:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(ConversationViewControllerBase *)self shouldHideStickyFooterView])
  {
    v4 = [(ConversationViewControllerBase *)self collectionView];
    v5 = [v4 indexPathForCell:v6];

    [(ConversationViewController *)self _updateFooterViewFrameForCell:v6 atIndexPath:v5];
  }
}

- (void)_updateFooterToShowUndoSendForCell:(id)a3
{
  v15 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [(ConversationViewControllerBase *)self collectionView];
    v5 = [v4 indexPathForCell:v15];

    if (v5)
    {
      v6 = [v15 messageViewController];
      v7 = [v6 messageContentView];
      v8 = [v7 showMessageFooter];

      if (v8)
      {
        v9 = [v15 messageViewController];
        v10 = [v9 messageContentView];
        v11 = [v10 footerView];

        v12 = [v15 messageViewController];
        v13 = [v12 contentRequest];
        v14 = [v13 message];
        [v11 setUndoSendButtonHidden:{-[ConversationViewController _isMessageInOutbox:](self, "_isMessageInOutbox:", v14) ^ 1}];
      }
    }
  }
}

- (void)_updateFooterViewFrameForCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ConversationViewControllerBase *)self shouldHideStickyFooterView];
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    if ([v6 expanded])
    {
      v10 = [v6 messageViewController];
      v11 = [v10 messageContentView];
      v12 = [v11 showMessageFooter];

      if (v12)
      {
        v87 = [(ConversationViewControllerBase *)self displayMetrics];
        v13 = [(ConversationViewControllerBase *)self collectionView];
        v86 = [(ConversationViewControllerBase *)self _layoutAttributesForItemAtIndexPath:v7];
        v14 = [v6 messageViewController];
        v15 = [v14 messageContentView];

        v16 = [v15 footerView];
        [v16 frame];
        v83 = v17;
        v84 = v18;
        rect1 = v19;
        [v87 estimatedFooterViewHeight];
        v82 = v20;
        [v13 frame];
        MaxY = CGRectGetMaxY(v94);
        [v87 cellHeightToStartScroll];
        v23 = v22;
        [v86 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v32 = [(ConversationViewController *)self view];
        [v13 convertRect:v32 toView:{v25, v27, v29, v31}];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v95.origin.x = v34;
        v95.origin.y = v36;
        v95.size.width = v38;
        v95.size.height = v40;
        MinY = CGRectGetMinY(v95);
        v96.origin.x = v34;
        v96.origin.y = v36;
        v96.size.width = v38;
        v96.size.height = v40;
        Height = CGRectGetHeight(v96);
        [v6 frame];
        v42 = MaxY - v82;
        v43 = fmax(Height, CGRectGetHeight(v97)) - v82;
        if (v43 >= v23)
        {
          [v13 bounds];
          v44 = CGRectGetHeight(v98);
          v45 = [v13 superview];
          [v6 convertPoint:v45 fromView:{0.0, v42}];
          v42 = v46;

          if (MinY >= v44 - v23)
          {
            v43 = v23;
          }

          else
          {
            v43 = fmin(fmax(v42, v23), v43);
          }
        }

        UIRoundToViewScale();
        v48 = v47;
        [v16 frame];
        v104.origin.x = v49;
        v104.origin.y = v50;
        v104.size.width = v51;
        v104.size.height = v52;
        v99.origin.x = v83;
        v99.size.height = v84;
        v99.origin.y = v48;
        v99.size.width = rect1;
        if (!CGRectEqualToRect(v99, v104))
        {
          [v16 setFrame:{v83, v48, rect1, v84}];
        }

        [v87 footerViewButtonsAnimationOffset];
        v54 = v53;
        [v13 frame];
        v55 = CGRectGetMaxY(v100);
        v101.origin.x = v34;
        v101.origin.y = v36;
        v101.size.width = v38;
        v101.size.height = v40;
        v56 = v55 - CGRectGetMaxY(v101);
        if (v56 <= v54)
        {
          v57 = 0.0;
        }

        else
        {
          v57 = v54;
        }

        if (v56 > v54 || v56 < 0.0)
        {
          v56 = v57;
        }

        [v16 moveOriginYByOffset:v56];
        v59 = [v15 scrollView];
        [v59 contentSize];
        v61 = v60;
        v62 = [v15 scrollView];
        [v62 contentInset];
        v64 = v63;
        v102.origin.x = v34;
        v102.origin.y = v36;
        v102.size.width = v38;
        v102.size.height = v40;
        v65 = CGRectGetMinY(v102);

        if (v43 >= v42)
        {
          v68 = [(ConversationViewControllerBase *)self collectionView];
          [v68 frame];
          v69 = CGRectGetMaxY(v103);
          v70 = v82 + v61 + v64 + v65;

          v66 = v70 >= v69;
          if (v70 < v69)
          {
            v67 = 0.0;
          }

          else
          {
            v67 = 1.0;
          }
        }

        else
        {
          v66 = 0;
          v67 = 0.0;
        }

        v71 = [v16 backgroundView];
        [v71 alpha];
        v73 = v72;

        if (v73 != v67)
        {
          v91[0] = _NSConcreteStackBlock;
          v91[1] = 3221225472;
          v91[2] = sub_10007E47C;
          v91[3] = &unk_10064DE08;
          v92 = v16;
          v93 = v67;
          [UIView animateWithDuration:v91 animations:0.2];
        }

        if (_os_feature_enabled_impl())
        {
          v74 = [v16 isUndoSendButtonHidden] ^ 1;
        }

        else
        {
          LOBYTE(v74) = 0;
        }

        v75 = [(ConversationViewControllerBase *)self cellConfigurator];
        v76 = [v75 expansionStatusForMessageAtIndexPath:v7];

        if (v76 == 2)
        {
          v77 = 0;
        }

        else if ([(ConversationViewController *)self _isDisplayingSingleMessage])
        {
          v77 = 1;
        }

        else
        {
          v77 = [v15 automaticallyCollapseQuotedContent] ^ 1 | v74;
        }

        [v16 setIsSemiExpanded:v76 == 2];
        [v16 setSeeMoreButtonHidden:v77 & 1];
        v78 = 0.0;
        if (!v66)
        {
          [v16 seeMoreButtonHeight];
          if (v43 <= v42 + v79)
          {
            v78 = 1.0;
          }

          else
          {
            v78 = 0.0;
          }
        }

        if (([v16 isSeeMoreButtonHidden] & 1) == 0)
        {
          [v16 seeMoreButtonAlpha];
          if (v80 != v78)
          {
            v88[0] = _NSConcreteStackBlock;
            v88[1] = 3221225472;
            v88[2] = sub_10007E4EC;
            v88[3] = &unk_10064DE08;
            v89 = v16;
            v90 = v78;
            [UIView animateWithDuration:v88 animations:0.2];
          }
        }

        [v16 setAllowsPointerSnapping:v66];
      }
    }
  }
}

- (void)_hideSeeMoreButtonForCell:(id)a3
{
  v3 = [a3 messageViewController];
  v5 = [v3 messageContentView];

  v4 = [v5 footerView];
  [v4 setIsSemiExpanded:0];
}

- (void)_updateFooterViewFrameForVisibleCells
{
  v3 = [(ConversationViewControllerBase *)self collectionView];
  v4 = [v3 visibleCells];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007E650;
  v5[3] = &unk_10064DE30;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

- (id)captureRestorationState
{
  v3 = [(ConversationViewControllerBase *)self delegate];
  v4 = [v3 conversationViewControllerIsResultOfSearch:self];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    [(ConversationViewController *)self pinCurrentItem];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10007E7B4;
    v7[3] = &unk_10064DE58;
    v7[4] = self;
    v5 = [ConversationViewRestorationState stateWithBuilder:v7];
  }

  return v5;
}

- (void)restoreState:(id)a3
{
  v4 = a3;
  v5 = +[ConversationViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v4 != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restore state? %{BOOL}d", &buf, 8u);
  }

  [(ConversationViewControllerBase *)self setRestorationFuture:v4];
  objc_initWeak(&buf, self);
  v6 = +[EFScheduler mainThreadScheduler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007EBF8;
  v10[3] = &unk_10064DE80;
  objc_copyWeak(&v11, &buf);
  [v4 onScheduler:v6 addSuccessBlock:v10];

  v7 = +[EFScheduler mainThreadScheduler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007F078;
  v8[3] = &unk_10064DEA8;
  objc_copyWeak(&v9, &buf);
  [v4 onScheduler:v7 addFailureBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&buf);
}

- (id)newBackgroundMonitor
{
  v3 = [(ConversationViewController *)self messageList];
  if (v3)
  {
    v4 = [(ConversationViewControllerBase *)self collectionView];
    v5 = [v4 visibleCells];
    v6 = [v5 ef_compactMap:&stru_10064DEE8];

    if ([v6 count])
    {
      v7 = [MailSceneBackgroundQueryMonitor alloc];
      v8 = [(ConversationViewControllerBase *)self scene];
      v9 = [v8 daemonInterface];
      v10 = [v9 messageRepository];
      v11 = [(MailSceneBackgroundQueryMonitor *)v7 initWithMessageListItems:v6 messageList:v3 messageRepository:v10 changeTypes:8];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateStickySubjectForItemID:(id)a3 cell:(id)a4 indexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v42 = v8;
      v43 = 2114;
      v44 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Will not update sticky subject for itemID:%{public}@ at indexPath:%{public}@", buf, 0x16u);
    }

LABEL_29:

    goto LABEL_30;
  }

  if (-[ConversationViewController _isDisplayingSingleMessage](self, "_isDisplayingSingleMessage") && (-[ConversationViewControllerBase referenceMessageListItem](self, "referenceMessageListItem"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count], v12, v13 == 1))
  {
    [(ConversationViewController *)self setDisplaySubjectItemID:v8];
  }

  else if (!v9 || [v9 expanded])
  {
    v11 = [(ConversationViewController *)self _indexPathForReferenceMessage];
    v14 = [(ConversationViewController *)self displaySubjectItemID];
    if (v14)
    {
    }

    else
    {
      v15 = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v16 = [v15 displayMessageItemID];
      v17 = [v8 isEqual:v16];

      if (v17)
      {
        [(ConversationViewController *)self setDisplaySubjectItemID:v8];
        [(ConversationViewControllerBase *)self setLastExpandedCellIndexPath:v11];
      }
    }

    v18 = [(ConversationViewController *)self collectionViewDataSource];
    v19 = [(ConversationViewController *)self displaySubjectItemID];
    v20 = [v18 indexPathForItemIdentifier:v19];

    if (v20)
    {
      v21 = [v9 messageViewController];
      v22 = [v21 messageContentView];
      v23 = [v22 headerViewSubjectBlock];

      v24 = [v10 item];
      if (v24 == [v20 item] || (v25 = objc_msgSend(v10, "item"), -[ConversationViewControllerBase lastExpandedCellIndexPath](self, "lastExpandedCellIndexPath"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "item"), v26, v25 == v27))
      {
        v28 = [v20 copy];
        if (v28)
        {
          v29 = [v10 item];
          if (v29 <= [v28 item])
          {
            if ([v23 isHidden])
            {
              [(ConversationViewController *)self setDisplaySubjectItemID:v8];
              [v23 setHidden:0];
              v30 = v10;

              v20 = v30;
            }
          }
        }

        if (([v28 isEqual:v20] & 1) == 0)
        {
          v31 = [(ConversationViewControllerBase *)self collectionView];
          v32 = [v31 cellForItemAtIndexPath:v28];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
            v34 = v33;
            if (v33 && [v33 expanded])
            {
              v39 = [v34 messageViewController];
              v38 = [v39 messageContentView];
              v37 = [v38 headerViewSubjectBlock];
              [v37 setHidden:1];
            }
          }

          v35 = +[EFScheduler mainThreadScheduler];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_10007F92C;
          v40[3] = &unk_10064C7E8;
          v40[4] = self;
          v36 = [v35 afterDelay:v40 performBlock:0.1];
        }
      }

      else if (([v23 isHidden] & 1) == 0)
      {
        [v23 setHidden:1];
      }
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)_ensureSubjectViewLayoutIfNeededAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewControllerBase *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 expanded])
  {
    v7 = [(ConversationViewController *)self collectionViewDataSource];
    v8 = [v7 itemIdentifierForIndexPath:v4];
    [(ConversationViewController *)self _updateStickySubjectForItemID:v8 cell:v6 indexPath:v4];
  }

  v9.receiver = self;
  v9.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v9 _ensureSubjectViewLayoutIfNeededAtIndexPath:v4];
}

- (id)_shouldRecalculateStickySubjectBeforeDeletedItemIDs:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewController *)self displaySubjectItemID];
  if (v5 && [v4 containsObject:v5])
  {
    v6 = [(ConversationViewController *)self collectionViewDataSource];
    v7 = [v6 indexPathForItemIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_recalculateStickySubjectForDeletedIndexPath:(id)a3
{
  v4 = [a3 item];
  v5 = [(ConversationViewController *)self countOfMessages];
  v6 = v5;
  if (v5 - 1 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5 - 1;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10005F674;
  v26 = sub_10005F684;
  v27 = 0;
  [(ConversationViewController *)self setDisplaySubjectItemID:0];
  [(ConversationViewControllerBase *)self setLastExpandedCellIndexPath:0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10007FE08;
  v21[3] = &unk_10064DF10;
  v21[4] = self;
  v21[5] = &v22;
  v8 = objc_retainBlock(v21);
  v9 = v7;
  do
  {
    v10 = (v8[2])(v8, v9++);
    if (v9 >= v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  while ((v11 & 1) == 0);
  v12 = v23[5];
  if (!v12 && (v7 & 0x8000000000000000) == 0)
  {
    do
    {
      v13 = (v8[2])(v8, v7);
      if (v7-- < 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v13;
      }
    }

    while ((v15 & 1) == 0);
    v12 = v23[5];
  }

  if (v12)
  {
    v16 = [(ConversationViewControllerBase *)self collectionView];
    v17 = [v16 cellForItemAtIndexPath:v23[5]];

    v18 = [(ConversationViewController *)self collectionViewDataSource];
    v19 = [v18 itemIdentifierForIndexPath:v23[5]];
    [(ConversationViewController *)self setDisplaySubjectItemID:v19];

    [(ConversationViewControllerBase *)self setLastExpandedCellIndexPath:v23[5]];
    v20 = [(ConversationViewController *)self displaySubjectItemID];
    [(ConversationViewController *)self _updateStickySubjectForItemID:v20 cell:v17 indexPath:v23[5]];
  }

  _Block_object_dispose(&v22, 8);
}

- (double)stickySubjectViewMaxYForConversationHeaderView:(id)a3
{
  v4 = [(ConversationViewController *)self collectionViewDataSource];
  v5 = [(ConversationViewController *)self displaySubjectItemID];
  v6 = [v4 indexPathForItemIdentifier:v5];

  v7 = [(ConversationViewControllerBase *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  v9 = 0.0;
  if (v8 && [v8 expanded])
  {
    [v8 frame];
    MinY = CGRectGetMinY(v15);
    v11 = [v8 messageViewController];
    v12 = [v11 messageContentView];
    v13 = [v12 headerViewSubjectBlock];
    [v13 frame];
    v9 = MinY + 0.0 + CGRectGetMaxY(v16);
  }

  return v9;
}

- (double)stickySubjectViewFirstBaselineForConversationHeaderView:(id)a3
{
  v4 = [(ConversationViewController *)self collectionViewDataSource];
  v5 = [(ConversationViewController *)self displaySubjectItemID];
  v6 = [v4 indexPathForItemIdentifier:v5];

  v7 = [(ConversationViewControllerBase *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v6];

  v9 = 0.0;
  if (v8 && [v8 expanded])
  {
    [v8 frame];
    MinY = CGRectGetMinY(v20);
    v11 = [v8 messageViewController];
    v12 = [v11 messageContentView];
    v13 = [v12 headerViewSubjectBlock];
    [v13 frame];
    v14 = CGRectGetMinY(v21);
    v15 = [(ConversationViewControllerBase *)self displayMetrics];
    [v15 firstSeparatorToSubjectBaseline];
    v17 = v16;

    v18 = [(ConversationViewController *)self view];
    [v18 bounds];
    v9 = MinY + v14 + v17 + 0.0 - CGRectGetHeight(v22);
  }

  return v9;
}

- (DraftGestureHelper)draftGestureHelper
{
  v3 = *(&self->_draftGestureHelper + 4);
  if (!v3)
  {
    v4 = [DraftGestureHelper alloc];
    v5 = [(ConversationViewControllerBase *)self scene];
    v6 = [(DraftGestureHelper *)v4 initWithConversationViewController:self scene:v5];
    v7 = *(&self->_draftGestureHelper + 4);
    *(&self->_draftGestureHelper + 4) = v6;

    v3 = *(&self->_draftGestureHelper + 4);
  }

  return v3;
}

- (void)_updateGestureForMessageListItem:(id)a3
{
  v7 = a3;
  v4 = [v7 mailboxes];
  v5 = [v4 ef_any:&stru_10064DF30];

  if ((v5 & 1) != 0 || *(&self->_draftGestureHelper + 4))
  {
    v6 = [(ConversationViewController *)self draftGestureHelper];
    [v6 enableGesture:v5];
  }
}

- (void)setDiagnosticsHelper:(id)a3
{
  v7 = a3;
  if (*(&self->_diagnosticsHelper + 4) != v7)
  {
    v5 = [(ConversationViewController *)self diagnosticsHelperToken];
    [v5 cancel];

    objc_storeStrong((&self->_diagnosticsHelper + 4), a3);
    v6 = [v7 registerDiagnosticFileProvider:self];
    [(ConversationViewController *)self setDiagnosticsHelperToken:v6];
  }
}

- (id)messageListItemsForDiagnosticsHelper:(id)a3
{
  v4 = a3;
  if ([v4 source])
  {
    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = [v4 source];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not providing diagnostics because source is %lu", buf, 0xCu);
    }
  }

  else
  {
    v5 = [(ConversationViewController *)self focusedMessage];
    v6 = +[ConversationViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 ef_publicDescription];
      *buf = 138543618;
      v12 = v7;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Providing focusedMessage %{public}@ to %@", buf, 0x16u);
    }

    if (v5)
    {
      v10 = v5;
      v8 = [NSArray arrayWithObjects:&v10 count:1];
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)findInteraction:(id)a3 sessionForView:(id)a4
{
  v4 = [[UITextSearchingFindSession alloc] initWithSearchableObject:self];

  return v4;
}

- (void)find:(id)a3
{
  v3 = sub_1004852A4(self);
  [v3 presentFindNavigatorShowingReplace:0];
}

- (void)clearAllDecoratedFoundText
{
  v2 = [(ConversationViewControllerBase *)self cellConfigurator];
  [v2 enumerateExpandedCellsWithBlock:&stru_10064DF50];
}

- (void)decorateFoundTextRange:(id)a3 inDocument:(id)a4 usingStyle:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (([objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL___EMCollectionItemID] & 1) == 0)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:6091 description:@"Expected an EMCollectionItemID"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:6092 description:{@"Expected ConversationSearchTextRange, got %@", objc_opt_class()}];
  }

  v21 = v9;
  if (a5 == 2)
  {
    v11 = sub_1004852D0(self);
    sub_100483458(v11, v21);
  }

  v12 = [(ConversationViewController *)self collectionViewDataSource];
  v13 = [v12 indexPathForItemIdentifier:v10];

  v14 = [(ConversationViewControllerBase *)self collectionView];
  v15 = [v14 cellForItemAtIndexPath:v13];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 messageViewController];
    v17 = [v16 messageContentView];

    [v17 didBeginTextSearch];
    v18 = sub_100483FD0(v21);
    [v17 showSearchResultsAtRange:v18 usingStyle:a5];
  }
}

- (int64_t)compareFoundRange:(id)a3 toRange:(id)a4 inDocument:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_1004852D0(self);
  v12 = sub_100056248(v11, v8, v9);

  return v12;
}

- (void)performTextSearchWithQueryString:(id)a3 usingOptions:(id)a4 resultAggregator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ConversationViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beginning search with string %@, options: %@, aggregator: %@", &v13, 0x20u);
  }

  [(ConversationViewController *)self setSearchAggregator:v10];
  v12 = sub_1004852D0(self);
  sub_1000547D8(v12, v8, v9, v10);

  sub_100080CC4(self, 1);
}

- (int64_t)compareOrderFromDocument:(id)a3 toDocument:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  v10 = [(ConversationViewController *)self collectionViewDataSource];
  v11 = [v10 indexPathForItemIdentifier:v8];
  v12 = [v10 indexPathForItemIdentifier:v9];
  v13 = [v11 compare:v12];

  return v13;
}

- (void)scrollRangeToVisible:(id)a3 inDocument:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[ConversationViewController log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "[ConversationViewController scrollRangeToVisible:inDocument:]";
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: range: %@, document: %@", buf, 0x20u);
  }

  v10 = v8;
  if (([objc_opt_class() conformsToProtocol:&OBJC_PROTOCOL___EMCollectionItemID] & 1) == 0)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:6149 description:@"Expected an EMCollectionItemID"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:6150 description:{@"Expected ConversationSearchTextRange, got %@", objc_opt_class()}];
  }

  v11 = v7;
  v12 = sub_100061BD0(self, v10);
  v13 = v12;
  if (v12)
  {
    v14 = [v12 messageViewController];
    v15 = [v14 messageContentView];

    v16 = sub_100483FD0(v11);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10008122C;
    v20[3] = &unk_10064DF78;
    v21 = v11;
    v22 = v10;
    v23 = self;
    v17 = v15;
    v24 = v17;
    [v17 requestRectForFoundTextRange:v16 completionHandler:v20];
  }

  else
  {
    [(ConversationViewController *)self scrollToMessageItemIDIfPossible:v10 animated:1 pin:0];
  }
}

- (void)_messageSearchEnded
{
  v5.receiver = self;
  v5.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v5 _messageSearchEnded];
  v3 = sub_1004852A4(self);
  [v3 setSearchText:&stru_100662A88];

  v4 = [(ConversationViewController *)self searchAggregator];
  [v4 invalidate];

  [(ConversationViewController *)self setSearchAggregator:0];
  sub_100080CC4(self, 0);
}

- (void)_decorateFoundRanges:(id)a3 inExpandedCell:(id)a4
{
  v18 = a3;
  v6 = [a4 messageViewController];
  v7 = [v6 messageContentView];

  v20 = v7;
  [v7 didBeginTextSearch];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v18;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = sub_1004852D0(self);
        v13 = sub_100483C48(v12);
        if (v13)
        {
          v14 = sub_1004852D0(self);
          v15 = sub_100483C48(v14);
          v16 = [v11 isEqual:v15];

          if (v16)
          {
            v17 = sub_100483FD0(v11);
            [v20 showSearchResultsAtRange:v17 usingStyle:2];
            goto LABEL_11;
          }
        }

        else
        {
        }

        v17 = sub_100483FD0(v11);
        [v20 showSearchResultsAtRange:v17 usingStyle:1];
LABEL_11:
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

- (void)_stopTextFindingIfNecessary
{
  v3 = sub_1004852D0(self);

  if (v3)
  {
    v5 = sub_1004852A4(self);
    v4 = [v5 isFindNavigatorVisible];

    if (v4)
    {
      v6 = sub_1004852A4(self);
      [v6 setSearchText:&stru_100662A88];

      v7 = sub_1004852A4(self);
      [v7 dismissFindNavigator];
    }
  }
}

- (id)conversationSearchMessageListForConversationSearchHandler:(id)a3
{
  v3 = [(ConversationViewController *)self messageList];

  return v3;
}

- (id)conversationSearchHandler:(id)a3 contentRepresentationRequestForItemID:(id)a4
{
  v4 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:a4];

  return v4;
}

- (BOOL)conversationSearchHandler:(id)a3 shouldConsiderQuotedContentForItemID:(id)a4
{
  v5 = a4;
  v6 = [(ConversationViewController *)self collectionViewDataSource];
  v7 = [v6 indexPathForItemIdentifier:v5];

  LOBYTE(self) = [(ConversationViewController *)self _shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:v7];
  return self ^ 1;
}

- (void)bannerViewDidSelectEditButton:(id)a3 itemID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:v7];
  v9 = [v6 type];
  if (!v9)
  {
    v19 = [v8 message];
    v11 = [MFDatePickerViewController datePickerViewControllerWithType:0 message:v19];

    [v11 setDelegate:self];
    v20 = [[UINavigationController alloc] initWithRootViewController:v11];
    [v20 setModalPresentationStyle:7];
    v21 = [v20 popoverPresentationController];
    [v21 setSourceItem:v6];

    [(ConversationViewControllerBase *)self presentViewController:v20 animated:1 completion:0];
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    v14 = [v8 message];
    v27 = v14;
    v15 = [NSArray arrayWithObjects:&v27 count:1];
    v16 = [(ConversationViewController *)self undoManager];
    v17 = [MFReadLaterTriageInteraction interactionWithMessageListItems:v15 undoManager:v16 origin:3 actor:2];

    [v17 setDelegate:self];
    [v17 setPresentationSource:v6];
    [v17 setDatePickerPresentationStyle:7];
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100081E0C;
    v22[3] = &unk_10064D1F8;
    objc_copyWeak(&v25, &location);
    v18 = v17;
    v23 = v18;
    v24 = v8;
    [v18 performInteractionWithCompletion:v22];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else if (v9 == 2)
  {
    v10 = [(ConversationViewControllerBase *)self scene];
    v11 = [(MFMessageCompositionTriageInteraction *)MFReplyAllTriageInteraction interactionWithContentRequest:v8 scene:v10];

    v12 = [v8 message];
    v13 = [v12 mailboxes];
    [v11 setMessageSourceMailboxes:v13];

    [v11 setShouldPromptToLoadRestOfMessage:0];
    [v11 setDelegate:self];
    [v11 setPresentationSource:v6];
    [v11 performInteraction];
LABEL_7:
  }
}

- (void)summaryCell:(id)a3 withItemID:(id)a4 didLayoutWithHeight:(double)a5
{
  v8 = a3;
  v9 = a4;
  [v8 bounds];
  v11 = v10;
  v12 = [(ConversationViewControllerBase *)self cellConfigurator];
  v13 = [v12 sizeTracker];
  [v13 intrinsicSizeForCellWithItemID:v9];
  v15 = v14;
  v17 = v16;

  if (v15 != v11 || v17 != a5)
  {
    v20 = v9;
    v21 = v15;
    v22 = v17;
    v23 = v11;
    v24 = a5;
    v18 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v18 performBlock:&v19];
  }
}

- (void)_generativeModelsAvailabilityDidChange:(id)a3
{
  [(ConversationViewController *)self _resetManualSummaryItemIDs];

  [(ConversationViewController *)self _reloadDataSource];
}

- (void)_appIntentDidSummarize:(id)a3
{
  v4 = a3;
  v7 = v4;
  v8 = self;
  v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v5 performBlock:&v6];
}

- (void)_appIntentDidSetReminder:(id)a3
{
  v6 = self;
  v3 = a3;
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)_appIntentDidDeleteReminder:(id)a3
{
  v6 = self;
  v3 = a3;
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)_appIntentDidRemoveFollowUp:(id)a3
{
  v6 = self;
  v3 = a3;
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (id)_referenceMessageListItemIDIfMatchingNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"mailMessageIDs"];

  v7 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v8 = [v7 displayMessageObjectID];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v8 globalMessageID]);
  if ([v6 containsObjectIdenticalTo:v9])
  {
    v10 = v9;
  }

  else
  {
    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100485224();
    }

    v10 = 0;
  }

  return v10;
}

- (ConversationViewControllerSelectionDataSource)selectionDataSource
{
  WeakRetained = objc_loadWeakRetained((&self->_selectionDataSource + 4));

  return WeakRetained;
}

- (MFGeneratedSummaryCollectionItemID)previousTopSummaryItemID
{
  WeakRetained = objc_loadWeakRetained((&self->_previousTopSummaryItemID + 4));

  return WeakRetained;
}

- (MFGeneratedSummaryCollectionItemID)previousInlineSummaryItemID
{
  WeakRetained = objc_loadWeakRetained((&self->_previousInlineSummaryItemID + 4));

  return WeakRetained;
}

@end