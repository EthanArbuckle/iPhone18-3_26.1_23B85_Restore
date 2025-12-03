@interface ConversationViewController
+ (OS_os_log)log;
- (BOOL)_bannerView:(id)view hasBannerType:(int64_t)type;
- (BOOL)_canChangePageZoom:(BOOL)zoom fromStep:(unint64_t)step;
- (BOOL)_headerView:(id)view hasBannerType:(int64_t)type;
- (BOOL)_isItemInitiallyUnreadAtIndexPath:(id)path;
- (BOOL)_isMessageInOutbox:(id)outbox;
- (BOOL)_isQuickReplyMessageAtIndexPath:(id)path;
- (BOOL)_isUndoSendMessageAtIndexPath:(id)path;
- (BOOL)_shouldArchiveByDefault;
- (BOOL)_shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:(id)path;
- (BOOL)_shouldAutomaticallyMarkAsReadMessage:(id)message;
- (BOOL)_shouldReloadEmptyMessageList;
- (BOOL)_shouldRemoveBannerBlock:(id)block forHeaderViewModel:(id)model;
- (BOOL)_shouldShowMailboxForMessage:(id)message;
- (BOOL)_shouldShowTimeSensitiveForMessage:(id)message;
- (BOOL)_userIsSenderAtIndexPath:(id)path;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)containsMessage:(id)message;
- (BOOL)conversationSearchHandler:(id)handler shouldConsiderQuotedContentForItemID:(id)d;
- (BOOL)isBucketSelected;
- (BOOL)isCategorizationActionAllowedForMessageViewController:(id)controller;
- (BOOL)isMessageListUnfiltered;
- (BOOL)swipableCollectionViewLayout:(id)layout shouldAnimateAppearingItemAtIndexPath:(id)path;
- (CGRect)_quickReplyViewFrame;
- (ConversationViewController)initWithScene:(id)scene contactStore:(id)store avatarGenerator:(id)generator;
- (ConversationViewControllerSelectionDataSource)selectionDataSource;
- (DraftGestureHelper)draftGestureHelper;
- (EMQuery)referenceMessageListQuery;
- (MFGeneratedSummaryCollectionItemID)previousInlineSummaryItemID;
- (MFGeneratedSummaryCollectionItemID)previousTopSummaryItemID;
- (MessageTriageInteractionHelper)messageTriageInteractionHelper;
- (double)stickySubjectViewFirstBaselineForConversationHeaderView:(id)view;
- (double)stickySubjectViewMaxYForConversationHeaderView:(id)view;
- (id)_actionsViewControllerWithMessage:(id)message contentRequest:(id)request predictedMailbox:(id)mailbox button:(id)button didDismissHandler:(id)handler;
- (id)_adjustedExistingItemIDForInlineSummaryItem:(id)item snapshot:(id)snapshot;
- (id)_allMessages;
- (id)_archiveActionForMessageListItemSelection:(id)selection menuOwner:(id)owner;
- (id)_bannerBlockToInsertForHeaderView:(id)view message:(id)message;
- (id)_cellForMessageItemIDIfExpanded:(id)expanded;
- (id)_completionForFooterViewCardActionsForMailActionsViewController:(id)controller;
- (id)_completionForSwipeCardActionsForMailActionsViewController:(id)controller messageListItem:(id)item;
- (id)_contentRequestForMessageWithItemID:(id)d;
- (id)_conversationViewQueryIncludeRelated:(BOOL)related;
- (id)_createMailActionViewHeader;
- (id)_currentlyVisibleIndexPath;
- (id)_customReturnToGroupSenderList;
- (id)_deleteActionForMessageListItemSelection:(id)selection menuOwner:(id)owner;
- (id)_displayObjectIDForPreCacheWithPredicate:(id)predicate;
- (id)_dragItemsForItemAtIndexPath:(id)path;
- (id)_excludedMailboxes;
- (id)_focusedMessageItemID;
- (id)_fullComposeViewControllerForQuickReply:(id)reply userActivity:(id)activity;
- (id)_generateContentRequestForMessageWithItemID:(id)d;
- (id)_getCurrentlySelectedMessageContentForMessageItemID:(id)d;
- (id)_groupedSenderActionMenuItemsWithMenuOwner:(id)owner;
- (id)_indexPathForReferenceMessage;
- (id)_indexPathOfMessageViewControllerMessage:(id)message;
- (id)_itemIDBeforeItemID:(id)d snapshot:(id)snapshot;
- (id)_itemIDsForReloadAfterInsertingObjectsAfterItemID:(id)d snapshot:(id)snapshot;
- (id)_itemsForMessage:(id)message changeAction:(int64_t)action;
- (id)_lastIndexPath;
- (id)_mailActionsViewControllerFromPresentedViewController:(id)controller;
- (id)_mailActionsViewDataSourceForMailActionsViewController:(id)controller message:(id)message predictedMailbox:(id)mailbox preparation:(id)preparation completion:(id)completion;
- (id)_mailboxExclusionPredicate;
- (id)_manualSummaryViewModelForItemID:(id)d;
- (id)_messageAtIndexPath:(id)path;
- (id)_messageContentViewForMessageItemID:(id)d;
- (id)_messageDeletionCompletionHandlerForMenuOwner:(id)owner;
- (id)_messageFutureForConversationSubject;
- (id)_messageFutureForItemID:(id)d;
- (id)_messageItemIDsFromSnapshot:(id)snapshot;
- (id)_messageListItemsForBarButtonTriage;
- (id)_messageReadCompletionHandlerForSelectionDataSource:(id)source;
- (id)_messagesForTriageInteraction:(id)interaction;
- (id)_persistentIDForEMMessageObjectID:(id)d;
- (id)_preparationForFooterViewCardActionsForMailActionsViewController:(id)controller;
- (id)_presentationStringForMessageListItem:(id)item;
- (id)_priorityLoadingComparatorForPinnedItemID:(id)d;
- (id)_queryForConversationViewIncludeRelated:(BOOL)related;
- (id)_quickReplyCompositionContext;
- (id)_quickReplyView;
- (id)_readActionForMessageListItemSelection:(id)selection;
- (id)_readLaterTriageInteractionIfAvailable;
- (id)_readTriageInteraction;
- (id)_recategorizationMenu;
- (id)_recategorizationTriageInteraction:(id)interaction;
- (id)_referenceDisplayMessage;
- (id)_referenceMessageListItemIDIfMatchingNotification:(id)notification;
- (id)_referenceMessageListMailboxScope;
- (id)_senderBasedQueryPredicateForReferenceMessageListQueryPredicate:(id)predicate shouldExcludeReadMessages:(BOOL)messages;
- (id)_sheetPresentationControllerViewForTouchContinuation:(id)continuation;
- (id)_shouldRecalculateStickySubjectBeforeDeletedItemIDs:(id)ds;
- (id)_summarizableMessageItemIDsForSummaryItemID:(id)d;
- (id)_swipeActionForTriageInteraction:(id)interaction;
- (id)_targetMessageOrItemIDForBarButtonTriage:(BOOL)triage;
- (id)_updateQueue;
- (id)_visibleIndexPathForMessageViewController:(id)controller;
- (id)actionViewHeaderForCategorizationInteraction:(id)interaction messageListItem:(id)item;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)animationControllerForTransition:(BOOL)transition;
- (id)captureRestorationState;
- (id)cellConfigurator:(id)configurator messageItemIDAtIndexPath:(id)path;
- (id)conversationSearchHandler:(id)handler contentRepresentationRequestForItemID:(id)d;
- (id)conversationSearchMessageListForConversationSearchHandler:(id)handler;
- (id)deleteButtonMenuForConversationNavigationBarItemsManager:(id)manager menuOwner:(id)owner;
- (id)displayNameForAddresses:(id)addresses;
- (id)findInteraction:(id)interaction sessionForView:(id)view;
- (id)focusedMessage;
- (id)groupedSenderActionMenuForConversationNavigationBarItemsManager:(id)manager menuOwner:(id)owner;
- (id)mailComposeViewForQuickReplyView:(id)view;
- (id)messageContentRepresentationRequestForMessageTriageInteractionHelper:(id)helper message:(id)message;
- (id)messageCountHint;
- (id)messageForItemID:(id)d;
- (id)messageItemIDAtIndexPath:(id)path;
- (id)messageListItemsForDiagnosticsHelper:(id)helper;
- (id)messageRepositoryForTriageInteraction:(id)interaction;
- (id)messageSourceMailboxObjectIDForMessageViewController:(id)controller;
- (id)messageTriageInteractionHelper:(id)helper senderRepositoryForMessageListItems:(id)items;
- (id)messageViewControllerMessageListMailboxScope:(id)scope;
- (id)moreTriageInteraction:(id)interaction actionsViewControllerWithInteractionTarget:(id)target didDismissHandler:(id)handler;
- (id)newBackgroundMonitor;
- (id)pinnedIndexPathProvider;
- (id)presentingViewControllerForTriageInteraction:(id)interaction;
- (id)swipableCollectionViewLayout:(id)layout leadingSwipeActionsConfigurationForItemAtIndexPath:(id)path;
- (id)swipableCollectionViewLayout:(id)layout trailingSwipeActionsConfigurationForItemAtIndexPath:(id)path;
- (id)targetMessageForBarButtonTriage;
- (id)targetMessageItemIDForBarButtonTriage;
- (id)transferStackViewController:(id)controller displayMessageForMessageListItemWithItemID:(id)d;
- (id)undoManager;
- (int64_t)_dataOwnerForDragSessionAtIndexPath:(id)path;
- (int64_t)_headerDisplayOptionsForCell:(id)cell displayedAsSingleMessage:(BOOL)message;
- (int64_t)_messageListItemCount;
- (int64_t)compareFoundRange:(id)range toRange:(id)toRange inDocument:(id)document;
- (int64_t)compareOrderFromDocument:(id)document toDocument:(id)toDocument;
- (int64_t)countOfMessages;
- (int64_t)countOfSummaries;
- (unint64_t)_defaultZoomStep;
- (unint64_t)_summarizableMessageCountForItemID:(id)d;
- (unint64_t)_zoomStepForViewScale:(double)scale;
- (void)_allMessageIDsWithCompletion:(id)completion;
- (void)_appIntentDidDeleteReminder:(id)reminder;
- (void)_appIntentDidRemoveFollowUp:(id)up;
- (void)_appIntentDidSetReminder:(id)reminder;
- (void)_appIntentDidSummarize:(id)summarize;
- (void)_autoReloadDataSourceForEmptyAddIfNeeded;
- (void)_categorizeCommandInvoked:(id)invoked;
- (void)_changeZoomStep:(BOOL)step;
- (void)_clearSelectedMessageContentForMessageItemID:(id)d;
- (void)_clearTimeSensitiveCommandInvoked:(id)invoked;
- (void)_configureCollapsedCell:(id)cell atIndexPath:(id)path viewModel:(id)model;
- (void)_configureExpandedCell:(id)cell atIndexPath:(id)path viewModel:(id)model collapseQuotedContent:(BOOL)content;
- (void)_configureGeneratedSummaryCell:(id)cell atIndexPath:(id)path viewModel:(id)model;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_decorateFoundRanges:(id)ranges inExpandedCell:(id)cell;
- (void)_deleteItemsWithIDs:(id)ds fromCollection:(id)collection completionHandler:(id)handler;
- (void)_deleteMessageListItemsForMoveOrDestructiveInteraction:(id)interaction completion:(id)completion;
- (void)_didChangeHorizontalPadding:(double)padding;
- (void)_didTapRevealActionsButton:(id)button message:(id)message predictedMailbox:(id)mailbox contentRequest:(id)request didDismissHandler:(id)handler;
- (void)_didTapUndoSendButton:(id)button message:(id)message predictedMailbox:(id)mailbox contentRequest:(id)request didDismissHandler:(id)handler;
- (void)_dismissKeyboardIfNecessary;
- (void)_doDeleteSelectedMessagesAskingConfirmation:(BOOL)confirmation presentationSourceButtonItem:(id)item forceArchive:(BOOL)archive;
- (void)_ensureSubjectViewLayoutIfNeededAtIndexPath:(id)path;
- (void)_fetchConversationAttachmentDataWithCompletion:(id)completion;
- (void)_fetchConversationRichLinkDataWithCompletion:(id)completion;
- (void)_forwardCommandInvoked:(id)invoked;
- (void)_generativeModelsAvailabilityDidChange:(id)change;
- (void)_groupedSenderMessageCountForQuery:(id)query completionHandler:(id)handler;
- (void)_headerView:(id)view displayWithBannerForViewModel:(id)model message:(id)message;
- (void)_hideSeeMoreButtonForCell:(id)cell;
- (void)_markAsJunkCommandInvoked:(id)invoked;
- (void)_markAsReadCommandInvoked:(id)invoked;
- (void)_messageSearchEnded;
- (void)_messageViewControllerDidDisplayContent:(id)content;
- (void)_muteCommandInvoked:(id)invoked;
- (void)_nts_performDataSourceUpdateAnimated:(BOOL)animated collection:(id)collection update:(id)update completion:(id)completion;
- (void)_performDataSourceUpdateAnimated:(BOOL)animated collection:(id)collection update:(id)update completion:(id)completion;
- (void)_performFlagChangeClearOnly:(BOOL)only;
- (void)_presentMailActionsViewControllerFromBarButtonItem:(id)item dataSourceClass:(id)class includeMessageContentRequest:(BOOL)request completionHandler:(id)handler;
- (void)_printCommandInvoked:(id)invoked;
- (void)_recalculateStickySubjectForDeletedIndexPath:(id)path;
- (void)_reloadCellsAtIndexPaths:(id)paths animated:(BOOL)animated;
- (void)_reloadDataSource;
- (void)_reloadDataSourceWithMessageList:(id)list;
- (void)_reloadTopSummaryIfNecessary;
- (void)_remindMeCommandInvoked:(id)invoked;
- (void)_resetContentRequest;
- (void)_resetManualSummaryItemIDs;
- (void)_resetQuickReplyViewControllerWithReason:(int64_t)reason resetCompose:(BOOL)compose override:(BOOL)override;
- (void)_runAlongsideAnimationsForTransition:(BOOL)transition;
- (void)_scrollToInitialPosition;
- (void)_scrollToRect:(CGRect)rect forMessageContentView:(id)view;
- (void)_scrolledToEndOfSingleMessage;
- (void)_sendCommandInvoked:(id)invoked;
- (void)_setFlagColorCommandInvoked:(id)invoked;
- (void)_setupQuickReplySupplementaryViewProvider;
- (void)_showSingleMessage:(id)message animationOffset:(CGPoint)offset initialScrollOffset:(CGPoint)scrollOffset;
- (void)_startObservingSelectedBucketChangeNotification;
- (void)_stopTextFindingIfNecessary;
- (void)_testReplyForSelectedMessage;
- (void)_updateBarButtonsEnabled;
- (void)_updateFooterToShowUndoSendForCell:(id)cell;
- (void)_updateFooterViewFrameForCell:(id)cell;
- (void)_updateFooterViewFrameForCell:(id)cell atIndexPath:(id)path;
- (void)_updateFooterViewFrameForVisibleCells;
- (void)_updateForDataSourceChanges:(BOOL)changes;
- (void)_updateGestureForMessageListItem:(id)item;
- (void)_updateGroupedSenderMessageCountQueries;
- (void)_updateHandoffWithMessageAtIndexPath:(id)path;
- (void)_updateInitiallyUnreadItemIDs:(id)ds;
- (void)_updateManualSummaryUIForScroll:(id)scroll;
- (void)_updatePredictedMailboxForConversation;
- (void)_updateQuickReplyLabelIfNeeded;
- (void)_updateQuickReplyLabelIfNeeded:(id)needed;
- (void)_updateQuickReplySendButtonOffset:(id)offset;
- (void)_updateQuickReplyState;
- (void)_updateStickySubjectForItemID:(id)d cell:(id)cell indexPath:(id)path;
- (void)_updateSubject;
- (void)_updateTimeSensitiveBanners;
- (void)bannerViewDidSelectEditButton:(id)button itemID:(id)d;
- (void)cancelAutomaticMarkAsReadForCellViewModel:(id)model;
- (void)categorizationButtonTapped:(id)tapped;
- (void)clearAllDecoratedFoundText;
- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection addedItemIDs:(id)ds toThreadWithItemID:(id)d after:(id)after unreadItemIDs:(id)iDs isLastObserver:(BOOL)observer;
- (void)collection:(id)collection addedItemIDs:(id)ds toThreadWithItemID:(id)d before:(id)before unreadItemIDs:(id)iDs isLastObserver:(BOOL)observer;
- (void)collection:(id)collection changedItemIDs:(id)ds;
- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD;
- (void)collectionDidFinishInitialLoad:(id)load;
- (void)configurePredictedMailboxForCell:(id)cell forMessage:(id)message;
- (void)conversationNavigationBarItemsManager:(id)manager validateBarButtonItem:(id)item ofType:(int64_t)type;
- (void)customBackButtonTapped:(id)tapped;
- (void)datePickerViewController:(id)controller didSelectDate:(id)date;
- (void)datePickerViewControllerDidDeleteDate:(id)date;
- (void)dealloc;
- (void)decorateFoundTextRange:(id)range inDocument:(id)document usingStyle:(int64_t)style;
- (void)disableAutomaticMarkAsReadForMessages:(id)messages;
- (void)dismissBannerForUnsubscribeAndDeleteTriageInteraction:(id)interaction;
- (void)find:(id)find;
- (void)groupedSenderMessageCountForDestructiveTriageInteraction:(id)interaction completionHandler:(id)handler;
- (void)invalidateAutomaticMarkAsReadForAllMessages;
- (void)laterButtonTapped:(id)tapped;
- (void)loadView;
- (void)mailComposeController:(id)controller composeBodyIsEmpty:(BOOL)empty;
- (void)mailComposeController:(id)controller didChangeQuickReplyWebViewHeight:(double)height;
- (void)mailComposeController:(id)controller isSending:(BOOL)sending;
- (void)mailComposeController:(id)controller migrateToFullCompose:(id)compose;
- (void)mailComposeController:(id)controller willMigrateToFullComposeWithReason:(int64_t)reason;
- (void)mailComposeViewSnapshotForQuickReplyView:(id)view :(id)a4;
- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change;
- (void)messageViewController:(id)controller didStartDownloadForContentItemWithProgress:(id)progress;
- (void)messageViewController:(id)controller didTapRevealActionsButton:(id)button;
- (void)messageViewController:(id)controller didTapShowMoreAtCollapsedOffset:(CGPoint)offset expandedOffset:(CGPoint)expandedOffset;
- (void)messageViewController:(id)controller didTapUndoSendButton:(id)button;
- (void)messageViewController:(id)controller scrollToRect:(CGRect)rect;
- (void)moveButtonTapped:(id)tapped;
- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator;
- (void)pinCurrentItem;
- (void)pinItemAtIndexPath:(id)path dynamicOffset:(id)offset;
- (void)populateSummaryItemForSnapshot:(id)snapshot;
- (void)presentTransferUIWithMoveInteraction:(id)interaction prediction:(id)prediction fromViewController:(id)controller didDismissHandler:(id)handler;
- (void)presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)prewarmContent;
- (void)quickReplyView:(id)view didTapExpandButton:(id)button;
- (void)quickReplyView:(id)view didTapSendButton:(id)button animationContext:(id)context;
- (void)reenableAutomaticMarkAsReadForAllMessages;
- (void)restoreState:(id)state;
- (void)revealActionsButtonTapped:(id)tapped;
- (void)scheduleAutomaticMarkAsReadForMessage:(id)message;
- (void)scheduleAutomaticMarkAsReadForReferenceMessage;
- (void)scheduleAutomaticMarkAsReadForViewModel:(id)model;
- (void)scrollRangeToVisible:(id)visible inDocument:(id)document;
- (void)scrollToMessageIfPossible:(id)possible animated:(BOOL)animated pin:(BOOL)pin;
- (void)scrollToMessageItemIDIfPossible:(id)possible animated:(BOOL)animated pin:(BOOL)pin;
- (void)searchMessages:(id)messages;
- (void)setBeingPreviewed:(BOOL)previewed;
- (void)setConversationSortOrder:(unint64_t)order;
- (void)setDiagnosticsHelper:(id)helper;
- (void)setDisplayMetrics:(id)metrics;
- (void)setPinnedItem:(id)item;
- (void)setReferenceMessageListItem:(id)item referenceMessageList:(id)list showAsConversation:(BOOL)conversation animated:(BOOL)animated;
- (void)showAllMessagesForConversationSenderHeaderView:(id)view;
- (void)showCategoryMessagesForConversationSenderHeaderView:(id)view;
- (void)summaryCell:(id)cell withItemID:(id)d didLayoutWithHeight:(double)height;
- (void)swipableCollectionViewLayout:(id)layout willBeginSwipeAtIndexPath:(id)path;
- (void)swipableCollectionViewLayout:(void *)layout willEndSwipeForItemAtIndexPath:;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAvatarViewControllerForTriageInteraction:(id)interaction alertController:(id)controller;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ConversationViewController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E6A4;
  block[3] = &unk_10064C4F8;
  block[4] = self;
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
  delegate = [(ConversationViewControllerBase *)self delegate];
  [v4 addObserver:self selector:"_updateTimeSensitiveBanners" name:SelectedBucketDidChangeNotification object:delegate];
}

- (void)_updateTimeSensitiveBanners
{
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  [cellConfigurator enumerateExpandedCellsWithBlock:&stru_10064CAE8];
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

  conversationLayout = [(ConversationViewControllerBase *)self conversationLayout];
  [conversationLayout setSwipeDelegate:self];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = ConversationViewController;
  [(ConversationViewController *)&v2 viewDidLoad];
}

- (ConversationViewController)initWithScene:(id)scene contactStore:(id)store avatarGenerator:(id)generator
{
  sceneCopy = scene;
  storeCopy = store;
  generatorCopy = generator;
  v55.receiver = self;
  v55.super_class = ConversationViewController;
  v11 = [(ConversationViewControllerBase *)&v55 initWithScene:sceneCopy contactStore:storeCopy avatarGenerator:generatorCopy];
  if (v11)
  {
    daemonInterface = [sceneCopy daemonInterface];
    messageRepository = [daemonInterface messageRepository];
    v14 = *(v11 + 524);
    *(v11 + 524) = messageRepository;

    daemonInterface2 = [sceneCopy daemonInterface];
    mailboxRepository = [daemonInterface2 mailboxRepository];
    v17 = *(v11 + 532);
    *(v11 + 532) = mailboxRepository;

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
  contentItemsCancelable = [(ConversationViewController *)self contentItemsCancelable];
  [contentItemsCancelable cancel];

  predictedMailboxForConversation = [(ConversationViewController *)self predictedMailboxForConversation];
  [predictedMailboxForConversation cancel];

  diagnosticsHelperToken = [(ConversationViewController *)self diagnosticsHelperToken];
  [diagnosticsHelperToken cancel];

  groupedSenderUnreadCountToken = [(ConversationViewController *)self groupedSenderUnreadCountToken];
  [groupedSenderUnreadCountToken cancel];

  v7.receiver = self;
  v7.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v7 dealloc];
}

- (void)setConversationSortOrder:(unint64_t)order
{
  v4.receiver = self;
  v4.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v4 setConversationSortOrder:order];
  [(ConversationViewController *)self _reloadDataSource];
  [(ConversationViewController *)self _updateQuickReplyState];
}

- (EMQuery)referenceMessageListQuery
{
  referenceMessageList = [(ConversationViewController *)self referenceMessageList];
  query = [referenceMessageList query];

  return query;
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v9 viewWillAppear:appear];
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  sendLaterDate = [referenceMessageListItem sendLaterDate];
  if (sendLaterDate || ([referenceMessageListItem readLater], (sendLaterDate = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    followUp = [referenceMessageListItem followUp];

    if (!followUp)
    {
      goto LABEL_5;
    }
  }

  [(ConversationViewController *)self _reloadDataSource];
LABEL_5:
  shouldHideStickyFooterView = [(ConversationViewControllerBase *)self shouldHideStickyFooterView];
  navigationController = [(ConversationViewController *)self navigationController];
  [navigationController setToolbarHidden:shouldHideStickyFooterView ^ 1];

  if (!referenceMessageListItem && [(ConversationViewControllerBase *)self shouldShowNoMessageSelectedView])
  {
    sub_100057584(self);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v4 viewDidAppear:appear];
  [(ConversationViewController *)self _reloadTopSummaryIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v4 viewWillDisappear:disappear];
  [ConversationViewController swipableCollectionViewLayout:willEndSwipeForItemAtIndexPath:]_0(self);
}

- (void)swipableCollectionViewLayout:(void *)layout willEndSwipeForItemAtIndexPath:
{
  if (layout)
  {
    v2 = sub_100063EB0(layout);
    presentedViewController = [v2 presentedViewController];
    v4 = sub_100063D98(layout, presentedViewController);

    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector("_dismissPresentedViewController");
      v7 = 134218754;
      layoutCopy = layout;
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v4 viewDidDisappear:disappear];
  [(ConversationViewController *)self reenableAutomaticMarkAsReadForAllMessages];
}

- (id)undoManager
{
  scene = [(ConversationViewControllerBase *)self scene];
  undoManager = [scene undoManager];

  return undoManager;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  presentedViewController = [(ConversationViewController *)self presentedViewController];
  v6 = [(ConversationViewController *)self _mailActionsViewControllerFromPresentedViewController:presentedViewController];

  presentedViewController2 = [(ConversationViewController *)self presentedViewController];

  if (presentedViewController2)
  {
    if (v6)
    {
      v8 = [(ConversationViewControllerBase *)self _shouldHideStickyFooterViewForTraitCollection:changeCopy];
      traitCollection = [(ConversationViewController *)self traitCollection];
      v10 = [(ConversationViewControllerBase *)self _shouldHideStickyFooterViewForTraitCollection:traitCollection];

      if (v8 != v10 || [v6 useActionSheetStyleCard] && (-[ConversationViewController traitCollection](self, "traitCollection"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "preferredContentSizeCategory"), v12 = objc_claimAutoreleasedReturnValue(), IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v12), v12, v11, objc_msgSend(changeCopy, "preferredContentSizeCategory"), v14 = objc_claimAutoreleasedReturnValue(), LODWORD(v12) = UIContentSizeCategoryIsAccessibilityCategory(v14), v14, IsAccessibilityCategory != v12))
      {
        [(ConversationViewController *)self dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v15 traitCollectionDidChange:changeCopy];
}

- (BOOL)isBucketSelected
{
  messageList = [(ConversationViewController *)self messageList];
  query = [messageList query];
  predicate = [query predicate];
  v5 = [predicate ef_containsKeyPath:EMMessageListItemKeyPathCategoryType];

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100057C58;
  v8[3] = &unk_10064CC00;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)setReferenceMessageListItem:(id)item referenceMessageList:(id)list showAsConversation:(BOOL)conversation animated:(BOOL)animated
{
  animatedCopy = animated;
  conversationCopy = conversation;
  itemCopy = item;
  listCopy = list;
  v12 = MFMessageSelectionLifecycleSignpostLog();
  itemID = [itemCopy itemID];
  v14 = os_signpost_id_make_with_pointer(v12, itemID);

  v15 = MFMessageSelectionLifecycleSignpostLog();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    itemID2 = [itemCopy itemID];
    *buf = 138543362;
    selfCopy2 = itemID2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, v14, "Message selection lifecycle", "Setting reference item for message with itemID: %{public}@", buf, 0xCu);
  }

  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v19 = [referenceMessageListItem isEqual:itemCopy];

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
    restorationFuture = [(ConversationViewControllerBase *)self restorationFuture];

    if (restorationFuture)
    {
      restorationFuture2 = [(ConversationViewControllerBase *)self restorationFuture];
      resultIfAvailable = [restorationFuture2 resultIfAvailable];
      referenceMessageListItem2 = [resultIfAvailable referenceMessageListItem];

      if (itemCopy && referenceMessageListItem2 == itemCopy)
      {
        restorationFuture3 = +[ConversationViewController log];
        if (os_log_type_enabled(restorationFuture3, OS_LOG_TYPE_DEFAULT))
        {
          ef_publicDescription = [itemCopy ef_publicDescription];
          *buf = 138412290;
          selfCopy2 = ef_publicDescription;
          _os_log_impl(&_mh_execute_header, restorationFuture3, OS_LOG_TYPE_DEFAULT, "Conversation reference item successfully restored: %@", buf, 0xCu);
        }
      }

      else
      {
        v31 = +[ConversationViewController log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          itemID3 = [itemCopy itemID];
          *buf = 138412290;
          selfCopy2 = itemID3;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "setReferenceMessageListItem (itemID=%@): called before state restoration was complete. Cancelling restoration future.", buf, 0xCu);
        }

        restorationFuture3 = [(ConversationViewControllerBase *)self restorationFuture];
        [restorationFuture3 tryCancel];
      }

      [(ConversationViewControllerBase *)self setRestorationFuture:0];
    }

    [(ConversationViewControllerBase *)self shouldShowNoMessageSelectedView];
    if (itemCopy)
    {
      blankConversationTailspinToken = [(ConversationViewController *)self blankConversationTailspinToken];
      [blankConversationTailspinToken cancel];

      v34 = +[EFScheduler globalAsyncScheduler];
      v52 = _NSConcreteStackBlock;
      v53 = 3221225472;
      v54 = sub_100058634;
      v55 = &unk_10064C660;
      selfCopy = self;
      v57 = itemCopy;
      v35 = [v34 afterDelay:&v52 performBlock:1.5];
      [(ConversationViewController *)self setBlankConversationTailspinToken:v35, v52, v53, v54, v55, selfCopy];
    }

    else
    {
      v36 = +[ConversationViewController log];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%p: No message list item. Showing No Message Selected", buf, 0xCu);
      }
    }

    [(ConversationViewControllerBase *)self setShouldShowNoMessageSelectedView:itemCopy == 0];
    v37 = +[ConversationViewController log];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription2 = [itemCopy ef_publicDescription];
      *buf = 138413314;
      selfCopy2 = ef_publicDescription2;
      v61 = 2112;
      v62 = listCopy;
      v63 = 1024;
      *v64 = conversationCopy;
      *&v64[4] = 1024;
      *&v64[6] = itemCopy == 0;
      v65 = 1024;
      v66 = animatedCopy;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Setting referenceMessageListItem:%@\nreferenceMessageList:%@\nshowAsConversation:%{BOOL}d, shouldShowNoMessageSelectedView:%{BOOL}d, animated: %{BOOL}d", buf, 0x28u);
    }

    messageViewControllerReuseQueue = [(ConversationViewControllerBase *)self messageViewControllerReuseQueue];
    [messageViewControllerReuseQueue drain];

    cellHeightCache = [(ConversationViewControllerBase *)self cellHeightCache];
    [cellHeightCache removeAllObjects];

    cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
    [cellConfigurator resetCaches];

    v42 = +[NSMutableSet set];
    [(ConversationViewController *)self setInitiallyUnreadItemIDs:v42];

    [(ConversationViewController *)self _stopTextFindingIfNecessary];
    [(ConversationViewControllerBase *)self _updateAllowQuickReplyForMessageListItem:itemCopy];
    if (itemCopy)
    {
      v43 = +[ConversationViewController log];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        itemID4 = [itemCopy itemID];
        displayMessageItemID = [itemCopy displayMessageItemID];
        conversationID = [itemCopy conversationID];
        *buf = 138543874;
        selfCopy2 = itemID4;
        v61 = 2114;
        v62 = displayMessageItemID;
        v63 = 2048;
        *v64 = conversationID;
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

    [(ConversationViewControllerBase *)self setReferenceMessageListItem:itemCopy];
    [(ConversationViewController *)self setReferenceMessageList:listCopy];
    [(ConversationViewControllerBase *)self setShownAsConversation:conversationCopy];
    [(ConversationViewController *)self _reloadDataSource];
    if ((*&self->super._flags & 0x10) != 0)
    {
      [(ConversationViewControllerBase *)self _updateBarButtonsAnimated:animatedCopy force:1];
      [(ConversationViewControllerBase *)self updateArrowControlsView];
    }

    referenceMessageListItem3 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v48 = referenceMessageListItem3 == 0;

    if (!v48)
    {
      previewState = [(ConversationViewControllerBase *)self previewState];
      [previewState transitionAfterChangingSources];
    }

    [(ConversationViewController *)self _updateGestureForMessageListItem:itemCopy];
    [(ConversationViewController *)self _resetQuickReplyViewControllerWithReason:0 resetCompose:1 override:0];
    [(ConversationViewControllerBase *)self updateNavigationItemChromelessConfiguration];
    goto LABEL_39;
  }

  contentRequestCache = [(ConversationViewController *)self contentRequestCache];
  displayMessageItemID2 = [itemCopy displayMessageItemID];
  v23 = [contentRequestCache objectForKey:displayMessageItemID2];

  if ([(ConversationViewController *)self _shouldReloadEmptyMessageList])
  {
    [(ConversationViewController *)self setDidAutoReloadDataSource:0];
    v24 = +[ConversationViewController log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [itemCopy itemID];
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
    ef_publicDescription3 = [itemCopy ef_publicDescription];
    *buf = 138412290;
    selfCopy2 = ef_publicDescription3;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "setReferenceMessageListItem: Skip setting the same message list item: %@", buf, 0xCu);
  }

LABEL_39:
  os_activity_scope_leave(&state);
}

- (void)_resetQuickReplyViewControllerWithReason:(int64_t)reason resetCompose:(BOOL)compose override:(BOOL)override
{
  overrideCopy = override;
  composeCopy = compose;
  if ([(ConversationViewControllerBase *)self allowQuickReply]|| overrideCopy)
  {
    [(ConversationViewControllerBase *)self setIsPerformingQuickReplySendAnimation:0];
    +[_TtC10MobileMail14QuickReplyView defaultHeight];
    [(ConversationViewControllerBase *)self setQuickReplyHeight:?];
    [(ConversationViewController *)self setQuickReplyHasContent:0];
    _quickReplyView = [(ConversationViewController *)self _quickReplyView];
    [_quickReplyView resetWithReason:reason];
    [_quickReplyView setHidden:0];
    quickReplyMailComposeController = [(ConversationViewController *)self quickReplyMailComposeController];
    [(ConversationViewController *)self mailComposeController:quickReplyMailComposeController didChangeQuickReplyWebViewHeight:0.0];

    [(ConversationViewController *)self _updateQuickReplyLabelIfNeeded];
    quickReplyAnimationContext = [(ConversationViewControllerBase *)self quickReplyAnimationContext];
    v11 = +[NSNull null];
    [quickReplyAnimationContext setObject:v11];

    if (composeCopy)
    {
      quickReplyMailComposeController2 = [(ConversationViewController *)self quickReplyMailComposeController];
      view = [quickReplyMailComposeController2 view];
      [view removeFromSuperview];

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
  handoffCoordinator = [(ConversationViewControllerBase *)self handoffCoordinator];
  handoffMessageRequest = [handoffCoordinator handoffMessageRequest];
  message = [handoffMessageRequest message];

  return message;
}

- (id)_focusedMessageItemID
{
  handoffCoordinator = [(ConversationViewControllerBase *)self handoffCoordinator];
  handoffMessageRequest = [handoffCoordinator handoffMessageRequest];
  itemID = [handoffMessageRequest itemID];

  return itemID;
}

- (BOOL)containsMessage:(id)message
{
  messageCopy = message;
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  displayMessageItemID = [messageCopy displayMessageItemID];
  v7 = [collectionViewDataSource indexPathForItemIdentifier:displayMessageItemID];
  v8 = v7 != 0;

  return v8;
}

- (void)scrollToMessageIfPossible:(id)possible animated:(BOOL)animated pin:(BOOL)pin
{
  displayMessageItemID = [possible displayMessageItemID];
  [ConversationViewController scrollToMessageItemIDIfPossible:"scrollToMessageItemIDIfPossible:animated:pin:" animated:? pin:?];
}

- (void)scrollToMessageItemIDIfPossible:(id)possible animated:(BOOL)animated pin:(BOOL)pin
{
  pinCopy = pin;
  animatedCopy = animated;
  possibleCopy = possible;
  if (!pinCopy || (-[ConversationViewControllerBase pinnedItem](self, "pinnedItem"), v9 = objc_claimAutoreleasedReturnValue(), [v9 itemID], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", possibleCopy), v10, v9, (v11 & 1) == 0))
  {
    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    v13 = [collectionViewDataSource indexPathForItemIdentifier:possibleCopy];

    if (v13)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100058E6C;
      v18[3] = &unk_10064C6B0;
      v18[4] = self;
      v14 = v13;
      v19 = v14;
      v20 = possibleCopy;
      [(ConversationViewControllerBase *)self _scrollToItemAtIndexPath:v14 dynamicOffset:0 shouldAdjustToShowPreviousMessage:1 animated:animatedCopy pin:pinCopy completion:v18];
      cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
      v16 = [cellConfigurator messageAtIndexPathIsExpanded:v14];

      if ((v16 & 1) == 0)
      {
        cellConfigurator2 = [(ConversationViewControllerBase *)self cellConfigurator];
        [cellConfigurator2 expandCellAtIndexPath:v14 animated:animatedCopy highlightFirst:0];
      }
    }
  }
}

- (id)messageCountHint
{
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v4 = referenceMessageListItem;
  if (referenceMessageListItem)
  {
    v5 = [referenceMessageListItem count];
    if (v5 <= 1 && (*&self->super._flags & 0x20) != 0)
    {
      v8 = +[EFPromise promise];
      v9 = [(ConversationViewController *)self _conversationViewQueryIncludeRelated:1];
      messageRepository = [(ConversationViewController *)self messageRepository];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100059188;
      v13[3] = &unk_10064CC28;
      v11 = v8;
      v14 = v11;
      [messageRepository performCountQuery:v9 completionHandler:v13];

      future = [v11 future];
    }

    else
    {
      v6 = [NSNumber numberWithUnsignedInteger:v5];
      future = [EFFuture futureWithResult:v6];
    }
  }

  else
  {
    future = 0;
  }

  return future;
}

- (void)_reloadDataSource
{
  [(ConversationViewController *)self loadViewIfNeeded];
  [(ConversationViewController *)self setMessageList:0];
  [(ConversationViewController *)self setDisplaySubjectItemID:0];
  [(ConversationViewControllerBase *)self setLastExpandedCellIndexPath:0];
  messageRepository = [(ConversationViewController *)self messageRepository];
  if (messageRepository && ([(ConversationViewControllerBase *)self referenceMessageListItem], v5 = objc_claimAutoreleasedReturnValue(), v5, messageRepository, v5))
  {
    if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
    {
      referenceMessageList = [(ConversationViewController *)self referenceMessageList];
      unfilteredMessageList = [referenceMessageList unfilteredMessageList];
      query = [unfilteredMessageList query];
      predicate = [query predicate];
      v10 = [(ConversationViewController *)self _senderBasedQueryPredicateForReferenceMessageListQueryPredicate:predicate shouldExcludeReadMessages:0];

      v11 = [EMMessageList alloc];
      messageRepository2 = [(ConversationViewController *)self messageRepository];
      v13 = [v11 initWithQuery:v10 repository:messageRepository2];

      referenceMessageList2 = [(ConversationViewController *)self referenceMessageList];
      filterPredicate = [referenceMessageList2 filterPredicate];

      if (!filterPredicate)
      {
        v22 = +[NSAssertionHandler currentHandler];
        [v22 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:655 description:@"The messageList from Message List View Controller should always have a category filter when we show the Hybrid Conversation View"];
      }

      referenceMessageList3 = [(ConversationViewController *)self referenceMessageList];
      filterPredicate2 = [referenceMessageList3 filterPredicate];
      v18 = [v13 filteredMessageListWithPredicate:filterPredicate2 userFiltered:0];
    }

    else
    {
      v10 = [(ConversationViewController *)self _conversationViewQueryIncludeRelated:(*&self->super._flags >> 5) & 1];
      v19 = [EMMessageList alloc];
      referenceMessageList3 = [(ConversationViewController *)self messageRepository];
      v18 = [v19 initWithQuery:v10 repository:referenceMessageList3];
    }

    v20 = +[ConversationViewController log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      query2 = [v18 query];
      v23 = 138412290;
      v24 = query2;
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

- (void)_reloadDataSourceWithMessageList:(id)list
{
  listCopy = list;
  if (pthread_main_np() != 1)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:670 description:@"Current thread must be main"];
  }

  messageList = [(ConversationViewController *)self messageList];
  v7 = +[ConversationViewController log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [messageList ef_publicDescription];
    ef_publicDescription2 = [listCopy ef_publicDescription];
    *buf = 138412802;
    selfCopy2 = self;
    v21 = 2112;
    v22 = ef_publicDescription;
    v23 = 2112;
    v24 = ef_publicDescription2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Reloading messageList old:%@\nnew:%@", buf, 0x20u);
  }

  if (messageList)
  {
    [messageList stopObserving:self];
  }

  [(ConversationViewController *)self setMessageList:listCopy];
  if (listCopy)
  {
    [(ConversationViewController *)self setDidFinishInitialLoad:0];
    [(ConversationViewController *)self setSwappingMessageList:1];
    [(ConversationViewController *)self setNextUpdateShouldAvoidAnimation:1];
    [(ConversationViewController *)self setLastSeenDate:0];
    [(ConversationViewController *)self setLastSeenDisplayDate:0];
    [listCopy beginObserving:self];
    objc_initWeak(buf, self);
    v10 = +[EFScheduler mainThreadScheduler];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100059984;
    v16[3] = &unk_10064CC78;
    objc_copyWeak(&v18, buf);
    v17 = listCopy;
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
    selfCopy2 = self;
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
  groupedSenderUnreadCountToken = [(ConversationViewController *)self groupedSenderUnreadCountToken];
  [groupedSenderUnreadCountToken cancel];

  [(ConversationViewController *)self setGroupedSenderUnreadCount:0];
  [(ConversationViewController *)self setTotalUnfilteredMessageCountQuery:0];
  totalUnfilteredMessageCountToken = [(ConversationViewController *)self totalUnfilteredMessageCountToken];
  [totalUnfilteredMessageCountToken cancel];

  [(ConversationViewController *)self setTotalUnfilteredMessageCountToken:0];
  [(ConversationViewControllerBase *)self setTotalUnfilteredMessageCount:0];
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    messageList = [(ConversationViewController *)self messageList];
    query = [messageList query];
    predicate = [query predicate];
    v23[0] = predicate;
    v8 = +[EMMessageListItemPredicates predicateForUnreadMessages];
    v23[1] = v8;
    v9 = [NSArray arrayWithObjects:v23 count:2];
    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v9];

    messageList2 = [(ConversationViewController *)self messageList];
    query2 = [messageList2 query];
    v13 = [query2 queryWithPredicate:v10];
    [(ConversationViewController *)self setGroupedSenderUnreadCountQuery:v13];

    messageRepository = [(ConversationViewController *)self messageRepository];
    groupedSenderUnreadCountQuery = [(ConversationViewController *)self groupedSenderUnreadCountQuery];
    v16 = [messageRepository startCountingQuery:groupedSenderUnreadCountQuery includingServerCountsForMailboxScope:0 withObserver:self];
    [(ConversationViewController *)self setGroupedSenderUnreadCountToken:v16];

    messageList3 = [(ConversationViewController *)self messageList];
    unfilteredMessageList = [messageList3 unfilteredMessageList];
    query3 = [unfilteredMessageList query];
    [(ConversationViewController *)self setTotalUnfilteredMessageCountQuery:query3];

    messageRepository2 = [(ConversationViewController *)self messageRepository];
    totalUnfilteredMessageCountQuery = [(ConversationViewController *)self totalUnfilteredMessageCountQuery];
    v22 = [messageRepository2 startCountingQuery:totalUnfilteredMessageCountQuery includingServerCountsForMailboxScope:0 withObserver:self];
    [(ConversationViewController *)self setTotalUnfilteredMessageCountToken:v22];
  }
}

- (void)_performDataSourceUpdateAnimated:(BOOL)animated collection:(id)collection update:(id)update completion:(id)completion
{
  collectionCopy = collection;
  updateCopy = update;
  completionCopy = completion;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005A1C0;
  v17[3] = &unk_10064CCC8;
  v17[4] = self;
  v13 = collectionCopy;
  v18 = v13;
  animatedCopy = animated;
  v14 = updateCopy;
  v19 = v14;
  v15 = completionCopy;
  v20 = v15;
  v16 = +[EFScheduler mainThreadScheduler];
  [v16 performBlock:v17];
}

- (id)_updateQueue
{
  messageListCollectionHelper = [(ConversationViewController *)self messageListCollectionHelper];
  updateQueue = [messageListCollectionHelper updateQueue];

  return updateQueue;
}

- (void)_nts_performDataSourceUpdateAnimated:(BOOL)animated collection:(id)collection update:(id)update completion:(id)completion
{
  collectionCopy = collection;
  updateCopy = update;
  completionCopy = completion;
  if (pthread_main_np() != 1)
  {
    v24 = +[NSAssertionHandler currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:764 description:@"Current thread must be main"];
  }

  messageList = [(ConversationViewController *)self messageList];

  if (messageList == collectionCopy)
  {
    [(ConversationViewController *)self setIsPerformingDataSourceUpdate:1];
    isSwappingMessageList = [(ConversationViewController *)self isSwappingMessageList];
    nextUpdateShouldAvoidAnimation = [(ConversationViewController *)self nextUpdateShouldAvoidAnimation];
    [(ConversationViewController *)self setSwappingMessageList:0];
    [(ConversationViewController *)self setNextUpdateShouldAvoidAnimation:0];
    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    messageListCollectionHelper = [(ConversationViewController *)self messageListCollectionHelper];
    section = [messageListCollectionHelper section];
    _updateQueue = [(ConversationViewController *)self _updateQueue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10005A7C8;
    v28[3] = &unk_10064CCF0;
    animatedCopy = animated;
    v35 = nextUpdateShouldAvoidAnimation;
    v36 = isSwappingMessageList;
    v15 = collectionViewDataSource;
    v29 = v15;
    v21 = section;
    v30 = v21;
    selfCopy = self;
    v32 = updateCopy;
    v33 = completionCopy;
    v22 = objc_retainBlock(v28);
    v23 = v22;
    if (_updateQueue)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005AA20;
      block[3] = &unk_10064C598;
      v27 = v22;
      dispatch_async(_updateQueue, block);
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
      [collectionCopy ef_publicDescription];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<%@: %p> Resetting content request", &v17, 0x16u);
  }

  contentItemsCancelable = [(ConversationViewController *)self contentItemsCancelable];
  [contentItemsCancelable cancel];

  v5 = objc_alloc_init(EFManualCancelationToken);
  [(ConversationViewController *)self setContentItemsCancelable:v5];

  contentRequestQueue = [(ConversationViewController *)self contentRequestQueue];
  drain = [contentRequestQueue drain];

  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];

  v9 = referenceMessageListItem == 0;
  contentRequestCache = [(ConversationViewController *)self contentRequestCache];
  displayMessageItemID = contentRequestCache;
  if (v9)
  {
    [contentRequestCache removeAllObjects];
  }

  else
  {
    [contentRequestCache removeAllObjects];

    referenceMessageListItem2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    displayMessageItemID = [referenceMessageListItem2 displayMessageItemID];

    if (displayMessageItemID)
    {
      v13 = [(ConversationViewController *)self _priorityLoadingComparatorForPinnedItemID:displayMessageItemID];
      contentRequestQueue2 = [(ConversationViewController *)self contentRequestQueue];
      [contentRequestQueue2 setComparator:v13];

      v15 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:displayMessageItemID];
      contentRequestQueue3 = [(ConversationViewController *)self contentRequestQueue];
      [contentRequestQueue3 immediatelyProcessQueue];
    }
  }
}

- (id)_contentRequestForMessageWithItemID:(id)d
{
  dCopy = d;
  contentRequestCache = [(ConversationViewController *)self contentRequestCache];
  v6 = [contentRequestCache objectForKey:dCopy];

  if (!v6)
  {
    v7 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = objc_opt_class();
      v16 = 2048;
      selfCopy2 = self;
      v18 = 2114;
      v19 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@: %p> Content request cache miss. Generating content request for itemID: %{public}@ ", &v14, 0x20u);
    }

    v8 = [(ConversationViewController *)self _generateContentRequestForMessageWithItemID:dCopy];
    contentRequestCache2 = [(ConversationViewController *)self contentRequestCache];
    [contentRequestCache2 addObject:v8 forKey:dCopy];

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
      selfCopy2 = self;
      v18 = 2114;
      v19 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> Enqueueing content request for itemID: %{public}@", &v14, 0x20u);
    }

    contentRequestQueue = [(ConversationViewController *)self contentRequestQueue];
    [contentRequestQueue enqueue:v6];
  }

  return v6;
}

- (id)_generateContentRequestForMessageWithItemID:(id)d
{
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10005B5B0;
  v42[3] = &unk_10064CD18;
  dCopy = d;
  v43 = dCopy;
  v5 = objc_retainBlock(v42);
  contentRequestQueue = [(ConversationViewController *)self contentRequestQueue];
  allObjects = [contentRequestQueue allObjects];

  v8 = [allObjects indexOfObjectPassingTest:v5];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [allObjects objectAtIndex:v8];
    contentRequestQueue2 = [(ConversationViewController *)self contentRequestQueue];
    [contentRequestQueue2 dequeueObject:v9];

    v11 = v9;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  collectionView = [(ConversationViewControllerBase *)self collectionView];
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v14 = [collectionViewDataSource indexPathForItemIdentifier:dCopy];
  v15 = [collectionView cellForItemAtIndexPath:v14];

  viewModel = [v15 viewModel];
  messageContentRequest = [viewModel messageContentRequest];

  if (messageContentRequest)
  {
    itemID = [messageContentRequest itemID];
    v19 = [itemID isEqual:dCopy];

    if (v19)
    {
      v20 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *buf = 138413058;
        v45 = v21;
        v46 = 2048;
        selfCopy4 = self;
        v48 = 2048;
        v49 = v15;
        v50 = 2114;
        v51 = dCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<%@: %p> found existing content request from cell(%p) itemID: %{public}@.", buf, 0x2Au);
      }

      v11 = messageContentRequest;
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
      itemID2 = [messageContentRequest itemID];
      *buf = 138413058;
      v45 = v23;
      v46 = 2048;
      selfCopy4 = self;
      v48 = 2114;
      v49 = itemID2;
      v50 = 2114;
      v51 = dCopy;
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
    selfCopy4 = self;
    v48 = 2114;
    v49 = dCopy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "<%@: %p> Could not find an appropriate context for itemID: %{public}@. Creating a new one", buf, 0x20u);
  }

  v27 = [MessageContentRepresentationRequest alloc];
  messageList = [(ConversationViewController *)self messageList];
  v29 = [v27 initWithMessageList:messageList itemIdentifier:dCopy includeSuggestions:1];

  contentItemsCancelable = [(ConversationViewController *)self contentItemsCancelable];
  [contentItemsCancelable addCancelable:v29];

  handoffCoordinator = [(ConversationViewControllerBase *)self handoffCoordinator];
  objc_initWeak(buf, v29);
  v32 = +[EFScheduler mainThreadScheduler];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10005B604;
  v39[3] = &unk_10064CD40;
  objc_copyWeak(&v41, buf);
  v33 = handoffCoordinator;
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
    selfCopy4 = self;
    v48 = 2048;
    v49 = v11;
    v50 = 2114;
    v51 = dCopy;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "<%@: %p> Generated content request %p for itemID: %{public}@", buf, 0x2Au);
  }

  v37 = v11;
  return v11;
}

- (id)_priorityLoadingComparatorForPinnedItemID:(id)d
{
  dCopy = d;
  [(ConversationViewController *)self collectionViewDataSource];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10005B90C;
  v5 = v20[3] = &unk_10064CD68;
  v21 = v5;
  v6 = objc_retainBlock(v20);
  v7 = v6;
  if (dCopy)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10005B940;
    v17[3] = &unk_10064CD90;
    v19 = v6;
    v18 = dCopy;
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

- (void)_updateForDataSourceChanges:(BOOL)changes
{
  changesCopy = changes;
  v5 = +[ConversationViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = changesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_updateForDataSourceChanges:%{BOOL}d", v8, 8u);
  }

  [(ConversationViewController *)self _updateSubject];
  [(ConversationViewControllerBase *)self _updateLayout];
  [(ConversationViewControllerBase *)self _updateCells];
  [(ConversationViewController *)self _updateQuickReplyLabelIfNeeded];
  if (changesCopy && ![(ConversationViewControllerBase *)self isPerformingQuickReplySendAnimation])
  {
    [(ConversationViewControllerBase *)self _resetBottomPaddingIfDisplayingSingleMessage];
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    if (([collectionView isTracking] & 1) != 0 || (objc_msgSend(collectionView, "isDecelerating") & 1) != 0 || objc_msgSend(collectionView, "isDragging"))
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
  _messageFutureForConversationSubject = [(ConversationViewController *)self _messageFutureForConversationSubject];
  if (!_messageFutureForConversationSubject)
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
  [_messageFutureForConversationSubject onScheduler:v6 addSuccessBlock:v12];

  v8 = +[EFScheduler mainThreadScheduler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005C0A8;
  v10[3] = &unk_10064C478;
  v9 = v7;
  v11 = v9;
  [_messageFutureForConversationSubject onScheduler:v8 addFailureBlock:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (id)_messageFutureForConversationSubject
{
  countOfMessages = [(ConversationViewController *)self countOfMessages];
  if (countOfMessages)
  {
    v4 = countOfMessages;
    if (_os_feature_enabled_impl() && EMIsGreymatterAvailable())
    {
      topSummaryItemID = [(ConversationViewController *)self topSummaryItemID];
      v6 = topSummaryItemID != 0;
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
    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    v10 = [collectionViewDataSource itemIdentifierForIndexPath:v8];

    v11 = [(ConversationViewController *)self _messageFutureForItemID:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_conversationViewQueryIncludeRelated:(BOOL)related
{
  relatedCopy = related;
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    messageList = [(ConversationViewController *)self messageList];
    query = [messageList query];
  }

  else
  {
    query = [(ConversationViewController *)self _queryForConversationViewIncludeRelated:relatedCopy];
  }

  return query;
}

- (id)_senderBasedQueryPredicateForReferenceMessageListQueryPredicate:(id)predicate shouldExcludeReadMessages:(BOOL)messages
{
  messagesCopy = messages;
  predicateCopy = predicate;
  _mailboxExclusionPredicate = [(ConversationViewController *)self _mailboxExclusionPredicate];
  v7 = [EMMessageListItemPredicates sortDescriptorForDateAscending:[(ConversationViewControllerBase *)self conversationSortOrder]== 0];
  v25 = v7;
  v8 = [NSArray arrayWithObjects:&v25 count:1];

  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v10 = +[EMMessageListItemPredicates predicateForMessagesForBusinessID:](EMMessageListItemPredicates, "predicateForMessagesForBusinessID:", [referenceMessageListItem businessID]);

  v11 = [NSCompoundPredicate ef_andCompoundPredicateForOptionalPredicate:v10 second:predicateCopy];

  v12 = [NSCompoundPredicate ef_andCompoundPredicateForOptionalPredicate:v11 second:_mailboxExclusionPredicate];

  if (messagesCopy)
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

- (id)_queryForConversationViewIncludeRelated:(BOOL)related
{
  _mailboxExclusionPredicate = [(ConversationViewController *)self _mailboxExclusionPredicate];
  v6 = [EMMessageListItemPredicates sortDescriptorForDateAscending:[(ConversationViewControllerBase *)self conversationSortOrder]== 0];
  v26 = v6;
  v7 = [NSArray arrayWithObjects:&v26 count:1];

  referenceMessageListQuery = [(ConversationViewController *)self referenceMessageListQuery];
  if ([(ConversationViewControllerBase *)self shownAsConversation])
  {
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v9 = +[EMMessageListItemPredicates predicateForMessagesInConversation:](EMMessageListItemPredicates, "predicateForMessagesInConversation:", [referenceMessageListItem conversationID]);

    if (related)
    {
      goto LABEL_12;
    }

    if (([referenceMessageListQuery queryOptions] & 0x20) != 0)
    {
      _referenceMessageListMailboxScope = [(ConversationViewController *)self _referenceMessageListMailboxScope];
      predicate = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:_referenceMessageListMailboxScope];
    }

    else
    {
      predicate = [referenceMessageListQuery predicate];
    }

    if (predicate)
    {
      v25[0] = v9;
      v25[1] = predicate;
      displayMessageItemID = [NSArray arrayWithObjects:v25 count:2];
      v14 = [NSCompoundPredicate andPredicateWithSubpredicates:displayMessageItemID];

      v9 = v14;
    }

    else
    {
      displayMessageItemID = +[ConversationViewController log];
      if (os_log_type_enabled(displayMessageItemID, OS_LOG_TYPE_ERROR))
      {
        sub_100484164();
      }
    }
  }

  else
  {
    predicate = [(ConversationViewControllerBase *)self referenceMessageListItem];
    displayMessageItemID = [predicate displayMessageItemID];
    mailboxRepository = [(ConversationViewController *)self mailboxRepository];
    v9 = [EMMessage predicateForMessageWithItemID:displayMessageItemID mailboxPredicate:_mailboxExclusionPredicate mailboxTypeResolver:mailboxRepository];
  }

LABEL_12:
  if (_mailboxExclusionPredicate)
  {
    v24[0] = v9;
    v24[1] = _mailboxExclusionPredicate;
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

- (id)_displayObjectIDForPreCacheWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  displayMessageItemID = [referenceMessageListItem displayMessageItemID];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:1097 description:@"referenceMessageListItem.displayMessageItemID is not an EMMessageCollectionItemID"];
  }

  v8 = +[ConversationViewController log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    referenceMessageListItem2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v15 = 138543618;
    v16 = displayMessageItemID;
    v17 = 2048;
    conversationID = [referenceMessageListItem2 conversationID];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating query with referenceMessageListItem displayMessageItemID: %{public}@ (conversation: %lld)", &v15, 0x16u);
  }

  v10 = [EMMessageObjectID alloc];
  mailboxRepository = [(ConversationViewController *)self mailboxRepository];
  v12 = [v10 initWithCollectionItemID:displayMessageItemID predicate:predicateCopy mailboxTypeResolver:mailboxRepository];

  return v12;
}

- (id)_mailboxExclusionPredicate
{
  _excludedMailboxes = [(ConversationViewController *)self _excludedMailboxes];
  v3 = [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxes:_excludedMailboxes];

  return v3;
}

- (id)_excludedMailboxes
{
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  mailboxObjectIDs = [referenceMessageListItem mailboxObjectIDs];

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
  v8 = mailboxObjectIDs;
  v12 = v8;
  v9 = [v7 ef_filter:v11];

  return v9;
}

- (id)_messageFutureForItemID:(id)d
{
  dCopy = d;
  messageList = [(ConversationViewController *)self messageList];
  v6 = [messageList messageListItemForItemID:dCopy];

  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    messageList2 = [(ConversationViewController *)self messageList];
    if ([(ConversationViewController *)self isBucketSelected])
    {
      delegate = [(ConversationViewControllerBase *)self delegate];
      [delegate currentlySelectedBucketForConversationViewController:self];

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
    v10 = messageList2;
    v14 = v10;
    selfCopy = self;
    v16 = v9;
    v11 = v9;
    [v6 addSuccessBlock:v13];
  }

  return v6;
}

- (id)messageForItemID:(id)d
{
  dCopy = d;
  v5 = [(ConversationViewController *)self _messageFutureForItemID:dCopy];
  if (([v5 isFinished] & 1) == 0)
  {
    v6 = +[ConversationViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = dCopy;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Waiting for item %@ future %@", &v9, 0x16u);
    }
  }

  result = [v5 result];

  return result;
}

- (id)_messageAtIndexPath:(id)path
{
  v4 = [(ConversationViewController *)self messageItemIDAtIndexPath:path];
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

- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005DA24;
  v9[3] = &unk_10064CF10;
  queryCopy = query;
  v10 = queryCopy;
  selfCopy = self;
  changeCopy = change;
  v8 = +[EFScheduler mainThreadScheduler];
  [v8 performBlock:v9];
}

- (void)collectionDidFinishInitialLoad:(id)load
{
  loadCopy = load;
  messageList = [(ConversationViewController *)self messageList];

  if (messageList == loadCopy)
  {
    v7 = +[ConversationViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [loadCopy ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_100484218();
    }

    blankConversationController = [(ConversationViewControllerBase *)self blankConversationController];
    [blankConversationController conversationViewDidLoadMessageSuccessfully];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005DE4C;
    v19[3] = &unk_10064C7E8;
    v19[4] = self;
    v9 = +[EFScheduler mainThreadScheduler];
    [v9 performBlock:v19];

    if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
    {
      lastSeenDate = [(ConversationViewController *)self lastSeenDate];
      lastSeenDisplayDate = [(ConversationViewController *)self lastSeenDisplayDate];
      if (lastSeenDate | lastSeenDisplayDate)
      {
        referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
        senderList = [referenceMessageListItem senderList];
        firstObject = [senderList firstObject];

        unfilteredMessageList = [loadCopy unfilteredMessageList];
        LOBYTE(referenceMessageListItem) = unfilteredMessageList == loadCopy;

        if (referenceMessageListItem)
        {
          v17 = 0;
        }

        else
        {
          delegate = [(ConversationViewControllerBase *)self delegate];
          [delegate currentlySelectedBucketForConversationViewController:self];

          v17 = [NSNumber numberWithUnsignedInteger:EMCategoryTypeForBucket()];
        }

        messageRepository = [(ConversationViewController *)self messageRepository];
        [messageRepository updateLastSeenDate:lastSeenDate andDisplayDate:lastSeenDisplayDate forBusinessWithEmailAddress:firstObject category:v17];
      }
    }
  }

  else
  {
    v6 = +[ConversationViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [loadCopy ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1004841D4();
    }
  }
}

- (void)_updateInitiallyUnreadItemIDs:(id)ds
{
  dsCopy = ds;
  v6 = +[ConversationViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = dsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ unreadItemIDs:%{public}@", &v9, 0x16u);
  }

  initiallyUnreadItemIDs = [(ConversationViewController *)self initiallyUnreadItemIDs];
  [initiallyUnreadItemIDs addObjectsFromArray:dsCopy];
}

- (void)populateSummaryItemForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (![(ConversationViewControllerBase *)self beingPreviewed]&& ![(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    if (_os_feature_enabled_impl())
    {
      if (EMIsGreymatterAvailable())
      {
        topSummaryItemID = [(ConversationViewController *)self topSummaryItemID];
        if (!topSummaryItemID || ([(ConversationViewController *)self inlineSummaryItemID], v6 = objc_claimAutoreleasedReturnValue(), v6, topSummaryItemID, !v6))
        {
          if ((+[MUIManagedDeviceRestrictions isManualSummaryRestricted]& 1) == 0)
          {
            v7 = [(ConversationViewController *)self _messageItemIDsFromSnapshot:snapshotCopy];
            firstObject = [v7 firstObject];
            referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
            displayMessageItemID = [referenceMessageListItem displayMessageItemID];

            if (firstObject)
            {
              if (displayMessageItemID)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  topSummaryItemID2 = [(ConversationViewController *)self topSummaryItemID];

                  if (!topSummaryItemID2)
                  {
                    v12 = [[MFGeneratedSummaryCollectionItemID alloc] initWithAnchorMessageItemID:firstObject];
                    [(ConversationViewController *)self setTopSummaryItemID:v12];
                    [(ConversationViewController *)self setPreviousTopSummaryItemID:v12];
                  }

                  topSummaryItemID3 = [(ConversationViewController *)self topSummaryItemID];
                  if (topSummaryItemID3)
                  {
                    topSummaryItemID4 = [(ConversationViewController *)self topSummaryItemID];
                    v15 = [snapshotCopy indexOfItemIdentifier:topSummaryItemID4];

                    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      topSummaryItemID5 = [(ConversationViewController *)self topSummaryItemID];
                      v29 = topSummaryItemID5;
                      v17 = [NSArray arrayWithObjects:&v29 count:1];
                      [snapshotCopy insertItemsWithIdentifiers:v17 beforeItemWithIdentifier:firstObject];
                    }
                  }

                  v18 = 0;
                  if ([v7 count] >= 2 && firstObject != displayMessageItemID)
                  {
                    if ([v7 containsObject:displayMessageItemID])
                    {
                      initiallyUnreadItemIDs = [(ConversationViewController *)self initiallyUnreadItemIDs];
                      v18 = [initiallyUnreadItemIDs containsObject:displayMessageItemID];
                    }

                    else
                    {
                      v18 = 0;
                    }
                  }

                  inlineSummaryItemID = [(ConversationViewController *)self inlineSummaryItemID];
                  v21 = inlineSummaryItemID == 0;

                  if ((v21 & v18) != 0)
                  {
                    v22 = [[MFGeneratedSummaryCollectionItemID alloc] initWithAnchorMessageItemID:displayMessageItemID];
                    [(ConversationViewController *)self setInlineSummaryItemID:v22];
                    [(ConversationViewController *)self setPreviousInlineSummaryItemID:v22];
                  }

                  inlineSummaryItemID2 = [(ConversationViewController *)self inlineSummaryItemID];
                  if (inlineSummaryItemID2)
                  {
                    inlineSummaryItemID3 = [(ConversationViewController *)self inlineSummaryItemID];
                    v25 = [snapshotCopy indexOfItemIdentifier:inlineSummaryItemID3] == 0x7FFFFFFFFFFFFFFFLL;

                    if (v25)
                    {
                      inlineSummaryItemID4 = [(ConversationViewController *)self inlineSummaryItemID];
                      v28 = inlineSummaryItemID4;
                      v27 = [NSArray arrayWithObjects:&v28 count:1];
                      [snapshotCopy insertItemsWithIdentifiers:v27 beforeItemWithIdentifier:displayMessageItemID];
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

- (void)collection:(id)collection addedItemIDs:(id)ds toThreadWithItemID:(id)d before:(id)before unreadItemIDs:(id)iDs isLastObserver:(BOOL)observer
{
  collectionCopy = collection;
  dsCopy = ds;
  beforeCopy = before;
  iDsCopy = iDs;
  v17 = +[ConversationViewController log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100484264();
  }

  if (![dsCopy count])
  {
    sub_100057584(self);
  }

  selfCopy = self;
  v18 = collectionCopy;
  v25 = v18;
  v19 = iDsCopy;
  v26 = v19;
  v20 = beforeCopy;
  v27 = v20;
  v21 = dsCopy;
  v28 = v21;
  v29 = a2;
  v22 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v22 performBlock:&v23];
}

- (void)collection:(id)collection addedItemIDs:(id)ds toThreadWithItemID:(id)d after:(id)after unreadItemIDs:(id)iDs isLastObserver:(BOOL)observer
{
  collectionCopy = collection;
  dsCopy = ds;
  afterCopy = after;
  iDsCopy = iDs;
  v17 = +[ConversationViewController log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10048431C();
  }

  selfCopy = self;
  v18 = collectionCopy;
  v25 = v18;
  v19 = iDsCopy;
  v26 = v19;
  v20 = afterCopy;
  v27 = v20;
  v21 = dsCopy;
  v28 = v21;
  v29 = a2;
  v22 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v22 performBlock:&v23];
}

- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before
{
  dsCopy = ds;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005F108;
  v11[3] = &unk_10064CF88;
  v11[4] = self;
  beforeCopy = before;
  v13 = dsCopy;
  v9 = dsCopy;
  v10 = beforeCopy;
  [(ConversationViewController *)self _performDataSourceUpdateAnimated:1 collection:collection update:v11];
}

- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005F398;
  v10[3] = &unk_10064CF88;
  dsCopy = ds;
  selfCopy = self;
  afterCopy = after;
  v8 = afterCopy;
  v9 = dsCopy;
  [(ConversationViewController *)self _performDataSourceUpdateAnimated:1 collection:collection update:v10];
}

- (void)collection:(id)collection changedItemIDs:(id)ds
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
  dsCopy = ds;
  v10 = v11;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005F70C;
  v7[3] = &unk_10064CA60;
  v7[4] = self;
  v7[5] = v11;
  v6 = dsCopy;
  [(ConversationViewController *)self _performDataSourceUpdateAnimated:1 collection:collection update:v8 completion:v7];

  _Block_object_dispose(v11, 8);
}

- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before
{
  collectionCopy = collection;
  dsCopy = ds;
  beforeCopy = before;
  [(ConversationViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewController collection:addedItemIDs:before:]", "ConversationViewController.m", 1489, "0");
}

- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after
{
  collectionCopy = collection;
  dsCopy = ds;
  afterCopy = after;
  [(ConversationViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewController collection:addedItemIDs:after:]", "ConversationViewController.m", 1493, "0");
}

- (void)_deleteItemsWithIDs:(id)ds fromCollection:(id)collection completionHandler:(id)handler
{
  dsCopy = ds;
  collectionCopy = collection;
  handlerCopy = handler;
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
  pinnedItem = [(ConversationViewControllerBase *)self pinnedItem];
  if (pinnedItem)
  {
    pinnedItem2 = [(ConversationViewControllerBase *)self pinnedItem];
    itemID = [pinnedItem2 itemID];
    v15 = [dsCopy containsObject:itemID];

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
  v16 = dsCopy;
  v23 = v16;
  selfCopy = self;
  v26 = v27;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000607C0;
  v18[3] = &unk_10064D078;
  v20 = v29;
  v21 = v27;
  v18[4] = self;
  v17 = handlerCopy;
  v19 = v17;
  [(ConversationViewController *)self _performDataSourceUpdateAnimated:1 collection:collectionCopy update:v22 completion:v18];

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
}

- (id)_itemIDsForReloadAfterInsertingObjectsAfterItemID:(id)d snapshot:(id)snapshot
{
  dCopy = d;
  snapshotCopy = snapshot;
  v8 = objc_alloc_init(NSMutableArray);
  [v8 addObject:dCopy];
  v9 = [(ConversationViewController *)self _itemIDBeforeItemID:dCopy snapshot:snapshotCopy];
  v10 = v9;
  if (v9 && ([v9 isEqual:dCopy] & 1) == 0)
  {
    [v8 addObject:v10];
  }

  return v8;
}

- (id)_itemIDBeforeItemID:(id)d snapshot:(id)snapshot
{
  dCopy = d;
  snapshotCopy = snapshot;
  v7 = [snapshotCopy indexOfItemIdentifier:dCopy];
  v8 = v7;
  if (v7)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      itemIdentifiers = [snapshotCopy itemIdentifiers];
      v9 = [itemIdentifiers objectAtIndexedSubscript:v8 - 1];
    }
  }

  else
  {
    v9 = dCopy;
  }

  return v9;
}

- (id)_messageItemIDsFromSnapshot:(id)snapshot
{
  itemIdentifiers = [snapshot itemIdentifiers];
  v4 = [itemIdentifiers ef_filter:&stru_10064D0B8];

  return v4;
}

- (id)_adjustedExistingItemIDForInlineSummaryItem:(id)item snapshot:(id)snapshot
{
  itemCopy = item;
  snapshotCopy = snapshot;
  if (itemCopy)
  {
    v8 = itemCopy;
    v9 = [(ConversationViewController *)self _itemIDBeforeItemID:v8 snapshot:snapshotCopy];
    if (v9)
    {
      inlineSummaryItemID = [(ConversationViewController *)self inlineSummaryItemID];
      v11 = [v9 isEqual:inlineSummaryItemID];

      if (v11)
      {
        inlineSummaryItemID2 = [(ConversationViewController *)self inlineSummaryItemID];

        v8 = inlineSummaryItemID2;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD
{
  collectionCopy = collection;
  dCopy = d;
  iDCopy = iD;
  if ([dCopy isEqual:iDCopy])
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
      referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
      itemID = [referenceMessageListItem itemID];
      LODWORD(__b[0]) = 138543874;
      *(__b + 4) = dCopy;
      WORD2(__b[1]) = 2114;
      *(&__b[1] + 6) = iDCopy;
      HIWORD(__b[2]) = 2114;
      __b[3] = itemID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Collection replacement: %{public}@ → %{public}@ (referenceMessageListItem.itemID: %{public}@)", __b, 0x20u);
    }

    pinnedItem = [(ConversationViewControllerBase *)self pinnedItem];
    itemID2 = [pinnedItem itemID];
    v17 = [dCopy isEqual:itemID2];

    if (v17)
    {
      dynamicOffset = [pinnedItem dynamicOffset];
      pinnedIndexPathProvider = [(ConversationViewController *)self pinnedIndexPathProvider];
      v20 = [PinnedConversationItem pinnedItemWithID:iDCopy dynamicOffset:dynamicOffset indexPathProvider:pinnedIndexPathProvider];
      [(ConversationViewController *)self setPinnedItem:v20];
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000612B8;
    v22[3] = &unk_10064CF88;
    v23 = dCopy;
    selfCopy = self;
    v25 = iDCopy;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100061558;
    v21[3] = &unk_10064C7E8;
    v21[4] = self;
    [(ConversationViewController *)self _performDataSourceUpdateAnimated:0 collection:collectionCopy update:v22 completion:v21];
  }
}

- (id)cellConfigurator:(id)configurator messageItemIDAtIndexPath:(id)path
{
  pathCopy = path;
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v7 = [collectionViewDataSource itemIdentifierForIndexPath:pathCopy];

  return v7;
}

- (void)messageViewController:(id)controller didStartDownloadForContentItemWithProgress:(id)progress
{
  progressCopy = progress;
  contentItemsCancelable = [(ConversationViewController *)self contentItemsCancelable];
  [contentItemsCancelable addCancelable:progressCopy];
}

- (void)messageViewController:(id)controller didTapShowMoreAtCollapsedOffset:(CGPoint)offset expandedOffset:(CGPoint)expandedOffset
{
  y = expandedOffset.y;
  x = expandedOffset.x;
  v7 = offset.y;
  v8 = offset.x;
  controllerCopy = controller;
  contentRequest = [controllerCopy contentRequest];
  itemID = [contentRequest itemID];

  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  expansionTracker = [cellConfigurator expansionTracker];
  v15 = [expansionTracker expansionStatusForCellWithItemID:itemID];

  if (v15 == 2)
  {
    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    v17 = [collectionViewDataSource indexPathForItemIdentifier:itemID];

    if (v17)
    {
      [(ConversationViewController *)self setPinnedItem:0];
      cellConfigurator2 = [(ConversationViewControllerBase *)self cellConfigurator];
      [cellConfigurator2 expandCellAtIndexPath:v17 animated:0 highlightFirst:0 expansionStatus:3];
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = ConversationViewController;
    [(ConversationViewControllerBase *)&v19 messageViewController:controllerCopy didTapShowMoreAtCollapsedOffset:v8 expandedOffset:v7, x, y];
  }
}

- (void)messageViewController:(id)controller didTapRevealActionsButton:(id)button
{
  controllerCopy = controller;
  buttonCopy = button;
  contentRequest = [controllerCopy contentRequest];
  message = [contentRequest message];
  predictedMailbox = [controllerCopy predictedMailbox];
  contentRequest2 = [controllerCopy contentRequest];
  [(ConversationViewController *)self _didTapRevealActionsButton:buttonCopy message:message predictedMailbox:predictedMailbox contentRequest:contentRequest2 didDismissHandler:0];
}

- (void)messageViewController:(id)controller didTapUndoSendButton:(id)button
{
  controllerCopy = controller;
  buttonCopy = button;
  contentRequest = [controllerCopy contentRequest];
  message = [contentRequest message];
  predictedMailbox = [controllerCopy predictedMailbox];
  contentRequest2 = [controllerCopy contentRequest];
  [(ConversationViewController *)self _didTapUndoSendButton:buttonCopy message:message predictedMailbox:predictedMailbox contentRequest:contentRequest2 didDismissHandler:0];
}

- (void)_messageViewControllerDidDisplayContent:(id)content
{
  contentCopy = content;
  if (sub_1004852F8(self))
  {
    contentRequest = [contentCopy contentRequest];
    itemID = [contentRequest itemID];

    v6 = sub_1004852D0(self);
    v7 = sub_100055F94(v6);
    v8 = [v7 objectForKeyedSubscript:itemID];

    v9 = sub_100061BD0(self, itemID);
    if (v9)
    {
      if ([v8 count])
      {
        [(ConversationViewController *)self _decorateFoundRanges:v8 inExpandedCell:v9];
      }

      else
      {
        messageContentView = [contentCopy messageContentView];
        [messageContentView didBeginTextSearch];
      }
    }
  }
}

- (void)_didTapRevealActionsButton:(id)button message:(id)message predictedMailbox:(id)mailbox contentRequest:(id)request didDismissHandler:(id)handler
{
  messageCopy = message;
  v8 = [ConversationViewController _actionsViewControllerWithMessage:"_actionsViewControllerWithMessage:contentRequest:predictedMailbox:button:didDismissHandler:" contentRequest:? predictedMailbox:? button:? didDismissHandler:?];
  [(ConversationViewController *)self setSelectedMessage:messageCopy];
  if (v8)
  {
    [(ConversationViewControllerBase *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_didTapUndoSendButton:(id)button message:(id)message predictedMailbox:(id)mailbox contentRequest:(id)request didDismissHandler:(id)handler
{
  messageCopy = message;
  scene = [(ConversationViewControllerBase *)self scene];
  daemonInterface = [scene daemonInterface];
  outgoingMessageRepository = [daemonInterface outgoingMessageRepository];

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100061F08;
  v13[3] = &unk_10064D0E0;
  objc_copyWeak(&v15, &location);
  v12 = messageCopy;
  v14 = v12;
  [outgoingMessageRepository cancelLastDelayedMessage:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (id)_actionsViewControllerWithMessage:(id)message contentRequest:(id)request predictedMailbox:(id)mailbox button:(id)button didDismissHandler:(id)handler
{
  messageCopy = message;
  requestCopy = request;
  mailboxCopy = mailbox;
  buttonCopy = button;
  handlerCopy = handler;
  v43 = requestCopy;
  if (messageCopy)
  {
    displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
    [MailActionViewHeader defaultHeightWithDisplayMetrics:displayMetrics];
    v17 = v16;
    view = [(ConversationViewController *)self view];
    [view frame];
    Width = CGRectGetWidth(v55);

    v20 = [[MailActionViewHeader alloc] initWithFrame:0.0, 0.0, Width, v17];
    contactStore = [(ConversationViewControllerBase *)self contactStore];
    [(MFMessageConversationViewCell *)v20 setContactStore:contactStore];

    v22 = [MFMessageDisplayMetrics mf_actionCardMetricsFromDisplayMetrics:displayMetrics];
    [(MFConversationViewCell *)v20 setDisplayMetrics:v22];

    v23 = [ConversationCellViewModel alloc];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100062724;
    v49[3] = &unk_10064D108;
    v50 = requestCopy;
    v24 = messageCopy;
    v51 = v24;
    selfCopy = self;
    v25 = [(ConversationCellViewModel *)v23 initWithBuilder:v49];
    [(MFCollapsedMessageCell *)v20 setViewModel:v25];

    objc_initWeak(location, self);
    v26 = [MailActionsViewController alloc];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10006284C;
    v46[3] = &unk_10064D130;
    objc_copyWeak(&v48, location);
    v47 = handlerCopy;
    v27 = [(MailActionsViewController *)v26 initWithDelegate:self messageHeaderView:v20 didDismissHandler:v46];
    v28 = [[UINavigationController alloc] initWithRootViewController:v27];
    [v28 setModalPresentationStyle:7];
    presentationController = [v28 presentationController];
    [presentationController setDelegate:self];

    popoverPresentationController = [v28 popoverPresentationController];
    [popoverPresentationController setSourceItem:buttonCopy];

    if (+[UIDevice mf_isPadIdiom])
    {
      [displayMetrics mailActionCardPreferredHeightForPad];
      traitCollection = [(ConversationViewController *)self traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

      if (IsAccessibilityCategory)
      {
        [(MailActionsViewController *)v27 approximateHeightNeededForAccessibilityContentSizeCategory];
      }

      [(MailActionsViewController *)v27 preferredContentSize];
      [v28 setPreferredContentSize:?];
    }

    if (handlerCopy)
    {
      referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v35 = [(ConversationViewController *)self _completionForSwipeCardActionsForMailActionsViewController:v27 messageListItem:referenceMessageListItem];
      v36 = objc_retainBlock(v35);

      v37 = 0;
    }

    else
    {
      v39 = [(ConversationViewController *)self _preparationForFooterViewCardActionsForMailActionsViewController:v27];
      v37 = objc_retainBlock(v39);

      referenceMessageListItem = [(ConversationViewController *)self _completionForFooterViewCardActionsForMailActionsViewController:v27];
      v36 = objc_retainBlock(referenceMessageListItem);
    }

    v40 = [(ConversationViewController *)self _mailActionsViewDataSourceForMailActionsViewController:v27 message:v24 predictedMailbox:mailboxCopy preparation:v37 completion:v36];
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

    handlerCopy[2](handlerCopy);
    v28 = 0;
  }

  return v28;
}

- (void)messageViewController:(id)controller scrollToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  messageContentView = [controller messageContentView];
  [(ConversationViewController *)self _scrollToRect:x forMessageContentView:y, width, height];
}

- (id)messageViewControllerMessageListMailboxScope:(id)scope
{
  _referenceMessageListMailboxScope = [(ConversationViewController *)self _referenceMessageListMailboxScope];

  return _referenceMessageListMailboxScope;
}

- (id)messageSourceMailboxObjectIDForMessageViewController:(id)controller
{
  controllerCopy = controller;
  contentRequest = [controllerCopy contentRequest];
  message = [contentRequest message];

  if ([(ConversationViewController *)self _isDisplayingSingleMessage])
  {
    mailboxObjectIDs = [message mailboxObjectIDs];
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    mailboxObjectIDs2 = [referenceMessageListItem mailboxObjectIDs];
    v10 = [mailboxObjectIDs firstObjectCommonWithArray:mailboxObjectIDs2];
  }

  else
  {
    mailboxObjectIDs = [(ConversationViewController *)self _visibleIndexPathForMessageViewController:controllerCopy];
    referenceMessageListItem = [(ConversationViewController *)self _messageAtIndexPath:mailboxObjectIDs];
    mailboxObjectIDs2 = [message mailboxObjectIDs];
    mailboxObjectIDs3 = [referenceMessageListItem mailboxObjectIDs];
    v10 = [mailboxObjectIDs2 firstObjectCommonWithArray:mailboxObjectIDs3];
  }

  return v10;
}

- (BOOL)isCategorizationActionAllowedForMessageViewController:(id)controller
{
  selfCopy = self;
  delegate = [(ConversationViewControllerBase *)self delegate];
  LOBYTE(selfCopy) = [delegate conversationViewControllerAllowsCategorizationAction:selfCopy];

  return selfCopy;
}

- (void)presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController = [controllerCopy presentedViewController];
    v9 = [(ConversationViewController *)self _mailActionsViewControllerFromPresentedViewController:presentedViewController];

    if (v9)
    {
      v21 = presentationControllerCopy;
      [v21 _setShouldDismissWhenTappedOutside:1];
      displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
      [v9 approximateHeightForActionSheetStyleCard];
      v11 = v10;
      v12 = v10 > 0.0;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100062EDC;
      v22[3] = &unk_10064D158;
      v13 = displayMetrics;
      v23 = v13;
      v26 = v12;
      v24 = v9;
      v25 = v11;
      v14 = [UISheetPresentationControllerDetent _detentWithIdentifier:@"ConversationControllerCustomMediumDetent" resolutionContextBlock:v22];
      v15 = v14;
      if (v11 <= 0.0)
      {
        v29[0] = v14;
        traitCollection = +[UISheetPresentationControllerDetent largeDetent];
        v29[1] = traitCollection;
        v19 = [NSArray arrayWithObjects:v29 count:2];
      }

      else
      {
        traitCollection = [(ConversationViewController *)self traitCollection];
        preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
        if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
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

- (id)_mailActionsViewDataSourceForMailActionsViewController:(id)controller message:(id)message predictedMailbox:(id)mailbox preparation:(id)preparation completion:(id)completion
{
  controllerCopy = controller;
  messageCopy = message;
  mailboxCopy = mailbox;
  preparationCopy = preparation;
  completionCopy = completion;
  itemID = [messageCopy itemID];
  v35 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:itemID];

  itemID2 = [messageCopy itemID];
  v34 = [(ConversationViewController *)self _getCurrentlySelectedMessageContentForMessageItemID:itemID2];

  v18 = [MFTriageInteractionTarget alloc];
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  displayMessage = [messageCopy displayMessage];
  result = [displayMessage result];
  v32 = [(MFTriageInteractionTarget *)v18 initWithMessageListItem:referenceMessageListItem primaryMessage:result selectedMessageContent:v34 primaryMessageContentRequest:v35 targetPreference:0 preferQuickCompositionalActions:0];

  delegate = [(ConversationViewControllerBase *)self delegate];
  v22 = [MailActionsViewDataSource alloc];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100063374;
  v36[3] = &unk_10064D180;
  v36[4] = self;
  v23 = controllerCopy;
  v37 = v23;
  v24 = v32;
  v38 = v24;
  v25 = preparationCopy;
  v41 = v25;
  v26 = completionCopy;
  v42 = v26;
  v27 = mailboxCopy;
  v39 = v27;
  v28 = delegate;
  v40 = v28;
  v29 = [(MailActionsViewDataSource *)v22 initWithBuilderBlock:v36];

  return v29;
}

- (id)_preparationForFooterViewCardActionsForMailActionsViewController:(id)controller
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000635CC;
  v7[3] = &unk_10064D1A8;
  v7[4] = self;
  controllerCopy = controller;
  v3 = controllerCopy;
  v4 = objc_retainBlock(v7);
  v5 = objc_retainBlock(v4);

  return v5;
}

- (id)_completionForFooterViewCardActionsForMailActionsViewController:(id)controller
{
  selectedMessage = [(ConversationViewController *)self selectedMessage];
  v5 = selectedMessage;
  if (selectedMessage)
  {
    targetMessageForBarButtonTriage = selectedMessage;
  }

  else
  {
    targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  }

  v7 = targetMessageForBarButtonTriage;

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

- (id)_completionForSwipeCardActionsForMailActionsViewController:(id)controller messageListItem:(id)item
{
  controllerCopy = controller;
  selectedMessage = [(ConversationViewController *)self selectedMessage];
  v7 = selectedMessage;
  if (selectedMessage)
  {
    targetMessageForBarButtonTriage = selectedMessage;
  }

  else
  {
    targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  }

  v9 = targetMessageForBarButtonTriage;

  objc_initWeak(&location, controllerCopy);
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

- (BOOL)_shouldArchiveByDefault
{
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  shouldArchiveByDefault = [referenceMessageListItem shouldArchiveByDefault];

  return shouldArchiveByDefault;
}

- (id)messageItemIDAtIndexPath:(id)path
{
  pathCopy = path;
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v6 = [collectionViewDataSource itemIdentifierForIndexPath:pathCopy];

  return v6;
}

- (int64_t)countOfMessages
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  if ([collectionViewDataSource numberOfSectionsInCollectionView:collectionView] < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [collectionViewDataSource collectionView:collectionView numberOfItemsInSection:0];
  }

  countOfSummaries = [(ConversationViewController *)self countOfSummaries];
  v7 = (v5 - countOfSummaries) & ~((v5 - countOfSummaries) >> 63);

  return v7;
}

- (int64_t)countOfSummaries
{
  if (!_os_feature_enabled_impl() || !EMIsGreymatterAvailable() || (+[MUIManagedDeviceRestrictions isManualSummaryRestricted]& 1) != 0)
  {
    return 0;
  }

  topSummaryItemID = [(ConversationViewController *)self topSummaryItemID];

  inlineSummaryItemID = [(ConversationViewController *)self inlineSummaryItemID];

  previousTopSummaryItemID = [(ConversationViewController *)self previousTopSummaryItemID];
  previousInlineSummaryItemID = [(ConversationViewController *)self previousInlineSummaryItemID];
  v9 = previousInlineSummaryItemID;
  v10 = 1;
  if (topSummaryItemID)
  {
    v10 = 2;
  }

  if (inlineSummaryItemID)
  {
    v3 = v10;
  }

  else
  {
    v3 = topSummaryItemID != 0;
  }

  if (!v3)
  {
    if (previousTopSummaryItemID | previousInlineSummaryItemID)
    {
      collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
      v12 = collectionViewDataSource;
      if (previousTopSummaryItemID)
      {
        v13 = [collectionViewDataSource indexPathForItemIdentifier:previousTopSummaryItemID];
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

- (void)_showSingleMessage:(id)message animationOffset:(CGPoint)offset initialScrollOffset:(CGPoint)scrollOffset
{
  contentRequest = [message contentRequest];
  message = [contentRequest message];

  itemID = [message itemID];
  v8 = [(ConversationViewController *)self _cellForMessageItemIDIfExpanded:itemID];

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
      messageViewController = [v8 messageViewController];
      messageContentView = [messageViewController messageContentView];

      expandedContentItemIDs = [(ConversationViewController *)self expandedContentItemIDs];
      itemID2 = [message itemID];
      [expandedContentItemIDs addObject:itemID2];

      messageViewController2 = [v8 messageViewController];
      [messageViewController2 setAutomaticallyCollapseQuotedContent:0];

      footerView = [messageContentView footerView];
      [footerView setBlockquotesAreExpanded:1];

      [messageContentView reload];
    }
  }
}

- (BOOL)_shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = ConversationViewController;
  v5 = [(ConversationViewControllerBase *)&v10 _shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:pathCopy];
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v7 = [collectionViewDataSource itemIdentifierForIndexPath:pathCopy];

  expandedContentItemIDs = [(ConversationViewController *)self expandedContentItemIDs];
  LOBYTE(collectionViewDataSource) = [expandedContentItemIDs containsObject:v7];

  return v5 & (collectionViewDataSource ^ 1);
}

- (void)_reloadCellsAtIndexPaths:(id)paths animated:(BOOL)animated
{
  animatedCopy = animated;
  pathsCopy = paths;
  messageList = [(ConversationViewController *)self messageList];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100064648;
  v9[3] = &unk_10064CCA0;
  v8 = pathsCopy;
  v10 = v8;
  [(ConversationViewController *)self _performDataSourceUpdateAnimated:animatedCopy collection:messageList update:v9];
}

- (int64_t)_headerDisplayOptionsForCell:(id)cell displayedAsSingleMessage:(BOOL)message
{
  v5 = [(ConversationViewControllerBase *)self beingPreviewed:cell];
  isShowingGroupedSenderMessageList = [(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList];
  v7 = 2;
  if (v5)
  {
    v7 = 18;
  }

  if (isShowingGroupedSenderMessageList)
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
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  [barItemsManager updateEnabledStatesForMessage:referenceMessageListItem];
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
    pinnedItem = [(ConversationViewControllerBase *)self pinnedItem];
    if (!pinnedItem)
    {
      referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
      displayMessageItemID = [referenceMessageListItem displayMessageItemID];
      topSummaryItemID = [(ConversationViewController *)self topSummaryItemID];
      anchorMessageItemID = [topSummaryItemID anchorMessageItemID];
      v22 = displayMessageItemID == anchorMessageItemID;

      if (v22)
      {
        if ([(ConversationViewController *)self _shouldShowSummarizeControls:displayMessageItemID])
        {
          v31 = +[ConversationViewController log];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription = [referenceMessageListItem ef_publicDescription];
            *buf = 138412290;
            v39 = *&ef_publicDescription;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Scroll to top summary item: %@", buf, 0xCu);
          }

          topSummaryItemID2 = [(ConversationViewController *)self topSummaryItemID];
          (v4[2])(v4, topSummaryItemID2, 0, 0);
        }

        else
        {
          v35 = +[ConversationViewController log];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription2 = [referenceMessageListItem ef_publicDescription];
            *buf = 138412290;
            v39 = *&ef_publicDescription2;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Scroll to reference message list item: %@", buf, 0xCu);
          }

          topSummaryItemID2 = [referenceMessageListItem displayMessageItemID];
          (v4[2])(v4, topSummaryItemID2, 0, 0);
        }
      }

      else
      {
        inlineSummaryItemID = [(ConversationViewController *)self inlineSummaryItemID];
        anchorMessageItemID2 = [inlineSummaryItemID anchorMessageItemID];
        v25 = displayMessageItemID == anchorMessageItemID2;

        if (v25)
        {
          v33 = +[ConversationViewController log];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription3 = [referenceMessageListItem ef_publicDescription];
            *buf = 138412290;
            v39 = *&ef_publicDescription3;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Scroll to inline summary item: %@", buf, 0xCu);
          }

          topSummaryItemID2 = [(ConversationViewController *)self inlineSummaryItemID];
          (v4[2])(v4, topSummaryItemID2, 0, 1);
        }

        else
        {
          v26 = +[ConversationViewController log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            ef_publicDescription4 = [referenceMessageListItem ef_publicDescription];
            *buf = 138412290;
            v39 = *&ef_publicDescription4;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Scroll to reference message list item: %@", buf, 0xCu);
          }

          topSummaryItemID2 = [referenceMessageListItem displayMessageItemID];
          (v4[2])(v4, topSummaryItemID2, 0, 1);
        }
      }

      goto LABEL_36;
    }

    v13 = +[ConversationViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription5 = [pinnedItem ef_publicDescription];
      dynamicOffset = [pinnedItem dynamicOffset];
      ef_publicDescription6 = [dynamicOffset ef_publicDescription];
      *buf = 138412546;
      v39 = *&ef_publicDescription5;
      v40 = 2112;
      v41 = ef_publicDescription6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Scroll to pinned item: %@, dynamicOffset: %@", buf, 0x16u);
    }

    topSummaryItemID3 = [(ConversationViewController *)self topSummaryItemID];
    if (topSummaryItemID3 && ([pinnedItem indexPath], ef_publicDescription5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(ef_publicDescription5, "item") == 1))
    {
      v17 = 1;
    }

    else
    {
      topSummaryItemID4 = [(ConversationViewController *)self topSummaryItemID];
      if (topSummaryItemID4)
      {
        v17 = 0;
      }

      else
      {
        indexPath = [pinnedItem indexPath];
        v17 = [indexPath item] == 0;
      }

      if (!topSummaryItemID3)
      {
        goto LABEL_24;
      }
    }

LABEL_24:
    referenceMessageListItem = [pinnedItem itemID];
    displayMessageItemID = [pinnedItem dynamicOffset];
    (v4[2])(v4, referenceMessageListItem, displayMessageItemID, !v17);
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

  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView setContentOffset:0 animated:{v7, v8}];

  pinnedItem = [(ConversationViewControllerBase *)self previewState];
  [pinnedItem transitionAfterScrollingToReferenceMessage];
LABEL_37:
}

- (BOOL)_isItemInitiallyUnreadAtIndexPath:(id)path
{
  v4 = [(ConversationViewController *)self messageItemIDAtIndexPath:path];
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

- (void)_fetchConversationAttachmentDataWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100065340;
  v4[3] = &unk_10064D2C0;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(ConversationViewController *)selfCopy _allMessageIDsWithCompletion:v4];
}

- (void)_fetchConversationRichLinkDataWithCompletion:(id)completion
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100065618;
  v4[3] = &unk_10064D2C0;
  selfCopy = self;
  completionCopy = completion;
  v3 = completionCopy;
  [(ConversationViewController *)selfCopy _allMessageIDsWithCompletion:v4];
}

- (void)setBeingPreviewed:(BOOL)previewed
{
  v8.receiver = self;
  v8.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v8 setBeingPreviewed:?];
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006590C;
  v6[3] = &unk_10064D328;
  previewedCopy = previewed;
  v6[4] = self;
  [cellConfigurator enumerateExpandedCellsWithBlock:v6];
}

- (void)_configureExpandedCell:(id)cell atIndexPath:(id)path viewModel:(id)model collapseQuotedContent:(BOOL)content
{
  contentCopy = content;
  cellCopy = cell;
  pathCopy = path;
  modelCopy = model;
  blankConversationTailspinToken = [(ConversationViewController *)self blankConversationTailspinToken];
  [blankConversationTailspinToken cancel];

  _isDisplayingSingleMessage = [(ConversationViewController *)self _isDisplayingSingleMessage];
  messageContentRequest = [modelCopy messageContentRequest];
  messageViewController = [cellCopy messageViewController];

  if (!messageViewController)
  {
    messageViewControllerReuseQueue = [(ConversationViewControllerBase *)self messageViewControllerReuseQueue];
    v14 = [messageViewControllerReuseQueue dequeueMessageViewControllerForContentRequest:messageContentRequest];

    avatarGenerator = [(ConversationViewControllerBase *)self avatarGenerator];
    [v14 setAvatarGenerator:avatarGenerator];

    [cellCopy setMessageViewController:v14];
  }

  messageViewController2 = [cellCopy messageViewController];
  [messageViewController2 setDelegate:self];
  contactStore = [(ConversationViewControllerBase *)self contactStore];
  [messageViewController2 setContactStore:contactStore];

  avatarGenerator2 = [(ConversationViewControllerBase *)self avatarGenerator];
  [messageViewController2 setAvatarGenerator:avatarGenerator2];

  messageContentView = [messageViewController2 messageContentView];
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  v20 = [cellConfigurator expansionStatusForMessageAtIndexPath:pathCopy];

  v87 = v20;
  v82 = !_isDisplayingSingleMessage;
  if (v20 == 2)
  {
    v21 = 1;
  }

  else
  {
    v21 = _isDisplayingSingleMessage ^ 1;
  }

  [messageContentView setSuppressScrolling:v21];
  contactStore2 = [(ConversationViewControllerBase *)self contactStore];
  [messageContentView setContactStore:contactStore2];

  webView = [messageContentView webView];
  [webView setUserInteractionEnabled:v20 != 2];

  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    [messageContentView setHideSenderSpecificBanners:{objc_msgSend(pathCopy, "row") > 0}];
  }

  v24 = +[ConversationViewController log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    messageContentRequest2 = [modelCopy messageContentRequest];
    itemID = [messageContentRequest2 itemID];
    *buf = 134218754;
    *v113 = cellCopy;
    *&v113[8] = 2112;
    v114 = pathCopy;
    *v115 = 2114;
    *&v115[2] = itemID;
    v116 = 2048;
    v117 = messageContentView;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Configuring expanded cell(%p) at indexPath: %@ with itemID: %{public}@, contentView:%p", buf, 0x2Au);
  }

  message = [messageContentRequest message];
  [cellCopy setShouldArchiveByDefault:{objc_msgSend(message, "shouldArchiveByDefault")}];
  contentRequest = [messageViewController2 contentRequest];
  v28 = [contentRequest isEqual:messageContentRequest];

  isConfiguredForSingleMessageDisplay = [cellCopy isConfiguredForSingleMessageDisplay];
  isConfiguredForGroupedSenderMessageListDisplay = [messageViewController2 isConfiguredForGroupedSenderMessageListDisplay];
  isShowingGroupedSenderMessageList = [(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList];
  v32 = +[ConversationViewController log];
  v33 = _isDisplayingSingleMessage ^ isConfiguredForSingleMessageDisplay;
  v83 = isConfiguredForGroupedSenderMessageListDisplay ^ isShowingGroupedSenderMessageList;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    messageContentRequest3 = [modelCopy messageContentRequest];
    itemID2 = [messageContentRequest3 itemID];
    *buf = 67109890;
    *v113 = v28 ^ 1;
    *&v113[4] = 1024;
    *&v113[6] = v33;
    LOWORD(v114) = 1024;
    *(&v114 + 2) = v83;
    HIWORD(v114) = 2114;
    *v115 = itemID2;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Content requests differs %{BOOL}d, singleMessageConfigurationDiffers %{BOOL}d, messageListConfigurationDiffers %{BOOL}d for cell with itemID: %{public}@", buf, 0x1Eu);
  }

  readLater = [message readLater];
  if (readLater)
  {
  }

  else
  {
    sendLaterDate = [message sendLaterDate];
    if (sendLaterDate)
    {
      v38 = 1;
    }

    else
    {
      followUp = [message followUp];
      v38 = followUp != 0;
    }

    if (((v28 ^ 1 | v33 | v83 | v38) & 1) == 0)
    {
      [cellCopy setConfiguredForSingleMessageDisplay:_isDisplayingSingleMessage];
      [messageViewController2 setAutomaticallyCollapseQuotedContent:contentCopy reloadIfNeeded:1];
      goto LABEL_43;
    }
  }

  val = [messageContentView headerView];
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
    v42 = sub_100066B90(self, message, pathCopy);
    [v41 ef_addOptionalObject:v42];
  }

  objc_initWeak(buf, messageViewController2);
  objc_initWeak(&location, cellCopy);
  objc_initWeak(&from, self);
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_100066F94;
  v105[3] = &unk_10064D350;
  objc_copyWeak(&v106, &from);
  objc_copyWeak(&v107, buf);
  objc_copyWeak(&v108, &location);
  v109 = _isDisplayingSingleMessage;
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

  v46 = [(ConversationViewController *)self _shouldShowMailboxForMessage:message];
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    v47 = sub_100066B90(self, message, pathCopy);
    [v41 ef_addOptionalObject:v47];
  }

  if (v87 != 2)
  {
    v48 = [[MessageHeaderSubjectBlock alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [v41 addObject:v48];
    [messageContentView setHeaderViewSubjectBlock:v48];
    [(MessageHeaderSubjectBlock *)v48 setHidden:v82];
  }

  if (v46)
  {
    v49 = [MFMessageSashHeaderBlock alloc];
    v50 = +[UIApplication sharedApplication];
    accountsProvider = [v50 accountsProvider];
    v52 = [v49 initWithFrame:accountsProvider accountsProvider:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

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
    headerBlocks = [val headerBlocks];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_100067148;
    v99[3] = &unk_10064D3A0;
    v99[4] = self;
    v54 = v41;
    v100 = v54;
    v55 = [headerBlocks ef_filter:v99];

    v56 = [v55 arrayByAddingObjectsFromArray:v54];
    [val setHeaderBlocks:v56];
  }

LABEL_38:
  [cellCopy setConfiguredForSingleMessageDisplay:_isDisplayingSingleMessage];
  [messageViewController2 setAutomaticallyCollapseQuotedContent:contentCopy reloadIfNeeded:v28];
  [messageViewController2 setContentRequest:messageContentRequest];
  predictedMailboxForConversation = [(ConversationViewController *)self predictedMailboxForConversation];
  v58 = predictedMailboxForConversation == 0;

  if (v58)
  {
    [(ConversationViewController *)self _updatePredictedMailboxForConversation];
  }

  predictedMailbox = [cellCopy predictedMailbox];
  v60 = predictedMailbox == 0;

  if (v60)
  {
    [(ConversationViewController *)self configurePredictedMailboxForCell:cellCopy forMessage:message];
  }

  itemID3 = [message itemID];
  [(ConversationViewController *)self _updateStickySubjectForItemID:itemID3 cell:cellCopy indexPath:pathCopy];

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
    headerView = [messageContentView headerView];
    headerBlocks2 = [headerView headerBlocks];
    messageContentRequest4 = [modelCopy messageContentRequest];
    itemID4 = [messageContentRequest4 itemID];
    *buf = 138544130;
    *v113 = headerBlocks2;
    *&v113[8] = 2112;
    v114 = pathCopy;
    *v115 = 2114;
    *&v115[2] = itemID4;
    v116 = 2048;
    v117 = messageContentView;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Header blocks %{public}@ for expanded cell at indexPath: %@ with itemID: %{public}@, contentView:%p", buf, 0x2Au);
  }

  if (![(ConversationViewControllerBase *)self didCompleteFirstPaint])
  {
    -[ConversationViewControllerBase setDidCompleteFirstPaint:](self, "setDidCompleteFirstPaint:", [messageViewController2 didCompleteFirstPaint]);
  }

  allowQuickReply = [(ConversationViewControllerBase *)self allowQuickReply];
  v68 = message;
  v69 = _os_feature_enabled_impl();
  if ((allowQuickReply & [(ConversationViewController *)self _isQuickReplyMessageAtIndexPath:pathCopy]) == 1)
  {
    quickReplyAnimationContext = [(ConversationViewControllerBase *)self quickReplyAnimationContext];
    getObject = [quickReplyAnimationContext getObject];

    if ((*(EFIsNull + 16))(EFIsNull, getObject))
    {
      v72 = 0;
    }

    else
    {
      v72 = getObject;
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

    [cellCopy prepareForQuickReplyAnimationWithContext:v73];
    _quickReplyView = [(ConversationViewController *)self _quickReplyView];
    [_quickReplyView setHidden:1];

    +[_TtC10MobileMail14QuickReplyView defaultHeight];
    [(ConversationViewControllerBase *)self setQuickReplyHeight:?];

    v68 = message;
  }

  if ([(ConversationViewControllerBase *)self beingPreviewed])
  {
    [messageContentView setShowMessageFooter:0];
  }

  footerView = [messageContentView footerView];
  [footerView setIsSemiExpanded:v87 == 2];
  if (v69)
  {
    [footerView setUndoSendButtonHidden:{-[ConversationViewController _isMessageInOutbox:](self, "_isMessageInOutbox:", v68) ^ 1}];
  }

  else
  {
    itemID5 = [cellCopy itemID];
    objc_initWeak(&location, self);
    messageLoadingScheduler = [(ConversationViewController *)self messageLoadingScheduler];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_1000671F4;
    v92[3] = &unk_10064D3F0;
    v93 = message;
    objc_copyWeak(&v98, &location);
    v94 = cellCopy;
    v80 = itemID5;
    v95 = v80;
    v96 = footerView;
    v97 = pathCopy;
    [messageLoadingScheduler performBlock:v92];

    objc_destroyWeak(&v98);
    objc_destroyWeak(&location);
  }
}

- (id)_bannerBlockToInsertForHeaderView:(id)view message:(id)message
{
  viewCopy = view;
  messageCopy = message;
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  itemID = [messageCopy itemID];
  v10 = [collectionViewDataSource indexPathForItemIdentifier:itemID];

  v11 = sub_100066B90(self, messageCopy, v10);
  if (-[ConversationViewController _headerView:hasBannerType:](self, "_headerView:hasBannerType:", viewCopy, [v11 type]))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (BOOL)_bannerView:(id)view hasBannerType:(int64_t)type
{
  viewCopy = view;
  v6 = (objc_opt_respondsToSelector() & 1) != 0 && [viewCopy type] == type;

  return v6;
}

- (BOOL)_headerView:(id)view hasBannerType:(int64_t)type
{
  headerBlocks = [view headerBlocks];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100067678;
  v9[3] = &unk_10064D418;
  v9[4] = self;
  v9[5] = type;
  v7 = [headerBlocks ef_firstObjectPassingTest:v9];
  LOBYTE(type) = v7 != 0;

  return type;
}

- (BOOL)_shouldRemoveBannerBlock:(id)block forHeaderViewModel:(id)model
{
  blockCopy = block;
  modelCopy = model;
  type = [blockCopy type];
  if (!type)
  {
    sendLaterDate = [modelCopy sendLaterDate];
    LOBYTE(self) = sendLaterDate == 0;
    goto LABEL_11;
  }

  if (type == 1)
  {
    sendLaterDate = [modelCopy readLaterDate];
    if (sendLaterDate)
    {
      delegate = [(ConversationViewControllerBase *)self delegate];
      LODWORD(self) = [delegate conversationViewControllerAllowsRemindMeAction:self] ^ 1;

      goto LABEL_11;
    }

LABEL_10:
    LOBYTE(self) = 1;
    goto LABEL_11;
  }

  if (type == 2)
  {
    sendLaterDate = [modelCopy followUp];
    if (sendLaterDate)
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

- (void)configurePredictedMailboxForCell:(id)cell forMessage:(id)message
{
  cellCopy = cell;
  messageCopy = message;
  v8 = +[EFPromise promise];
  future = [v8 future];
  [cellCopy setPredictedMailbox:future];

  mailboxPredictionScheduler = [(ConversationViewController *)self mailboxPredictionScheduler];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100067908;
  v13[3] = &unk_10064C660;
  v11 = v8;
  v14 = v11;
  v12 = messageCopy;
  v15 = v12;
  [mailboxPredictionScheduler performBlock:v13];
}

- (void)_configureCollapsedCell:(id)cell atIndexPath:(id)path viewModel:(id)model
{
  cellCopy = cell;
  pathCopy = path;
  modelCopy = model;
  blankConversationTailspinToken = [(ConversationViewController *)self blankConversationTailspinToken];
  [blankConversationTailspinToken cancel];

  v12 = +[ConversationViewController log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    messageContentRequest = [modelCopy messageContentRequest];
    itemID = [messageContentRequest itemID];
    v15 = 138412546;
    v16 = pathCopy;
    v17 = 2114;
    v18 = itemID;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Configuring collapsed cell at indexPath: %@ with itemID: %{public}@", &v15, 0x16u);
  }

  if (sub_1004852F8(self))
  {
    [cellCopy addConversationSearchOverlay];
  }
}

- (void)_configureGeneratedSummaryCell:(id)cell atIndexPath:(id)path viewModel:(id)model
{
  cellCopy = cell;
  summaryCellPromiseForAppIntent = [(ConversationViewController *)self summaryCellPromiseForAppIntent];

  if (summaryCellPromiseForAppIntent)
  {
    summaryCellPromiseForAppIntent2 = [(ConversationViewController *)self summaryCellPromiseForAppIntent];
    [summaryCellPromiseForAppIntent2 finishWithResult:cellCopy];
  }
}

- (id)_currentlyVisibleIndexPath
{
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  _focusedMessageItemID = [(ConversationViewController *)self _focusedMessageItemID];
  v5 = [collectionViewDataSource indexPathForItemIdentifier:_focusedMessageItemID];

  return v5;
}

- (id)_indexPathForReferenceMessage
{
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  displayMessageItemID = [referenceMessageListItem displayMessageItemID];
  v6 = [collectionViewDataSource indexPathForItemIdentifier:displayMessageItemID];

  return v6;
}

- (id)_indexPathOfMessageViewControllerMessage:(id)message
{
  contentRequest = [message contentRequest];
  message = [contentRequest message];

  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  itemID = [message itemID];
  v8 = [collectionViewDataSource indexPathForItemIdentifier:itemID];

  return v8;
}

- (id)_visibleIndexPathForMessageViewController:(id)controller
{
  v3 = [(ConversationViewController *)self _indexPathOfMessageViewControllerMessage:controller];

  return v3;
}

- (id)_targetMessageOrItemIDForBarButtonTriage:(BOOL)triage
{
  triageCopy = triage;
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  snapshot = [collectionViewDataSource snapshot];

  v7 = [(ConversationViewController *)self _messageItemIDsFromSnapshot:snapshot];
  if (![v7 count])
  {
    v17 = 0;
    goto LABEL_22;
  }

  _isDisplayingSingleMessage = [(ConversationViewController *)self _isDisplayingSingleMessage];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_10005F674;
  v37 = sub_10005F684;
  v38 = 0;
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000682A0;
  v27[3] = &unk_10064D4C0;
  v31 = _isDisplayingSingleMessage;
  v32 = triageCopy;
  v28 = &stru_10064D458;
  v29 = &stru_10064D498;
  v30 = &v33;
  [cellConfigurator enumerateExpandedCellsWithBlock:v27];

  v10 = v34[5];
  if (!v10)
  {
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    displayMessageItemID = [referenceMessageListItem displayMessageItemID];
    v13 = [v7 indexOfObject:displayMessageItemID];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = +[ConversationViewController log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1004845B4();
      }

      _referenceDisplayMessage = [(ConversationViewController *)self _referenceDisplayMessage];
      v16 = [EFPair pairWithFirst:0 second:_referenceDisplayMessage];
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

      _referenceDisplayMessage = [v7 objectAtIndexedSubscript:v19];
      if (triageCopy)
      {
        v21 = [(ConversationViewController *)self messageForItemID:_referenceDisplayMessage];
        displayMessage = [v21 displayMessage];
        result = [displayMessage result];
        v24 = [EFPair pairWithFirst:0 second:result];
        v25 = v34[5];
        v34[5] = v24;

LABEL_20:
        v10 = v34[5];
        goto LABEL_21;
      }

      v16 = [EFPair pairWithFirst:_referenceDisplayMessage second:0];
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
  first = [v2 first];

  return first;
}

- (id)targetMessageForBarButtonTriage
{
  v2 = [(ConversationViewController *)self _targetMessageOrItemIDForBarButtonTriage:1];
  second = [v2 second];

  return second;
}

- (void)_updateHandoffWithMessageAtIndexPath:(id)path
{
  pathCopy = path;
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v6 = [collectionViewDataSource itemIdentifierForIndexPath:pathCopy];

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
    handoffCoordinator = [(ConversationViewControllerBase *)self handoffCoordinator];
    [handoffCoordinator setHandoffMessageRequest:v12];

    goto LABEL_8;
  }

  collectionViewDataSource2 = [(ConversationViewController *)self collectionViewDataSource];
  mui_nextIndexPath = [pathCopy mui_nextIndexPath];
  v9 = [collectionViewDataSource2 itemIdentifierForIndexPath:mui_nextIndexPath];

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  handoffCoordinator2 = [(ConversationViewControllerBase *)self handoffCoordinator];
  [handoffCoordinator2 setHandoffMessageRequest:0];

  v11 = +[ConversationViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1004845F0();
  }

LABEL_8:
}

- (BOOL)_shouldReloadEmptyMessageList
{
  messageList = [(ConversationViewController *)self messageList];
  allItemIDs = [messageList allItemIDs];
  resultIfAvailable = [allItemIDs resultIfAvailable];

  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v7 = 0;
  if ([referenceMessageListItem count] && resultIfAvailable)
  {
    v7 = [resultIfAvailable count] == 0;
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

- (id)_persistentIDForEMMessageObjectID:(id)d
{
  dCopy = d;
  messageRepository = [(ConversationViewController *)self messageRepository];
  v6 = [messageRepository persistentIDForMessageObjectID:dCopy];

  return v6;
}

- (BOOL)_isMessageInOutbox:(id)outbox
{
  outboxCopy = outbox;
  mailboxes = [outboxCopy mailboxes];
  v5 = [mailboxes ef_any:&stru_10064D500];

  mailboxes2 = [outboxCopy mailboxes];
  v7 = [mailboxes2 ef_any:&stru_10064D520];

  return v5 & (v7 ^ 1);
}

- (BOOL)isMessageListUnfiltered
{
  messageList = [(ConversationViewController *)self messageList];
  messageList2 = [(ConversationViewController *)self messageList];
  unfilteredMessageList = [messageList2 unfilteredMessageList];
  v6 = messageList == unfilteredMessageList;

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

- (void)setPinnedItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v8 setPinnedItem:itemCopy];
  if (itemCopy)
  {
    itemID = [itemCopy itemID];
    v6 = [(ConversationViewController *)self _priorityLoadingComparatorForPinnedItemID:itemID];
    contentRequestQueue = [(ConversationViewController *)self contentRequestQueue];
    [contentRequestQueue setComparator:v6];
  }
}

- (void)pinCurrentItem
{
  displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
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

  collectionView = [(ConversationViewControllerBase *)self collectionView];
  v14 = [collectionView mf_mostVisibleCellNearestEdge:v5 preferredMinimumHeight:v4];

  if (v14)
  {
    itemID = [v14 itemID];

    if (itemID)
    {
      collectionView2 = [(ConversationViewControllerBase *)self collectionView];
      v9 = [collectionView2 mf_dynamicOffsetForVisibleCell:v14];

      itemID2 = [v14 itemID];
      pinnedIndexPathProvider = [(ConversationViewController *)self pinnedIndexPathProvider];
      v12 = [PinnedConversationItem pinnedItemWithID:itemID2 dynamicOffset:v9 indexPathProvider:pinnedIndexPathProvider];

      [(ConversationViewController *)self setPinnedItem:v12];
    }
  }
}

- (void)pinItemAtIndexPath:(id)path dynamicOffset:(id)offset
{
  pathCopy = path;
  offsetCopy = offset;
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v8 = [collectionViewDataSource itemIdentifierForIndexPath:pathCopy];

  pinnedIndexPathProvider = [(ConversationViewController *)self pinnedIndexPathProvider];
  v10 = [PinnedConversationItem pinnedItemWithID:v8 dynamicOffset:offsetCopy indexPathProvider:pinnedIndexPathProvider];
  [(ConversationViewController *)self setPinnedItem:v10];
}

- (id)_referenceMessageListMailboxScope
{
  referenceMessageListQuery = [(ConversationViewController *)self referenceMessageListQuery];
  predicate = [referenceMessageListQuery predicate];
  messageRepository = [(ConversationViewController *)self messageRepository];
  mailboxRepository = [messageRepository mailboxRepository];
  v7 = [EMMessageListItemPredicates mailboxScopeForPredicate:predicate withMailboxTypeResolver:mailboxRepository];

  return v7;
}

- (int64_t)_dataOwnerForDragSessionAtIndexPath:(id)path
{
  v4 = [(ConversationViewController *)self _messageAtIndexPath:path];
  _referenceMessageListMailboxScope = [(ConversationViewController *)self _referenceMessageListMailboxScope];
  if ([v4 isInManagedAccountWithSourceMailboxScope:_referenceMessageListMailboxScope])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)_dragItemsForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = +[ConversationViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v19 = [pathCopy row];
    v20 = 2048;
    section = [pathCopy section];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#DragAndDrop Conversation view drag source items requested for indexPath {%ld, %ld}", buf, 0x16u);
  }

  v6 = [(ConversationViewController *)self _messageAtIndexPath:pathCopy];
  if (!v6)
  {
    dragItem = +[ConversationViewController log];
    if (os_log_type_enabled(dragItem, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, dragItem, OS_LOG_TYPE_INFO, "#DragAndDrop No items found for indexPath", buf, 2u);
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

  messageList = [(ConversationViewController *)self messageList];
  v9 = [MessageListItemDragContext withItem:v6 messageList:messageList];

  dragItem = [v9 dragItem];
  v17 = v6;
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  undoManager = [(ConversationViewController *)self undoManager];
  v13 = [(MFTriageInteraction *)MFMoveMessageTriageInteraction interactionWithMessageListItems:v11 undoManager:undoManager origin:3 actor:2];

  [dragItem setLocalObject:v13];
  if (dragItem)
  {
    v16 = dragItem;
    v14 = [NSArray arrayWithObjects:&v16 count:1];
LABEL_11:

    goto LABEL_13;
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (id)_messageContentViewForMessageItemID:(id)d
{
  v3 = [(ConversationViewController *)self _cellForMessageItemIDIfExpanded:d];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 expanded])
  {
    messageViewController = [v3 messageViewController];
    messageContentView = [messageViewController messageContentView];
  }

  else
  {
    messageContentView = 0;
  }

  return messageContentView;
}

- (id)_getCurrentlySelectedMessageContentForMessageItemID:(id)d
{
  dCopy = d;
  v5 = [(ConversationViewController *)self _messageContentViewForMessageItemID:dCopy];
  selectedHTML = [v5 selectedHTML];
  if ([selectedHTML length])
  {
    v9 = selectedHTML;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_clearSelectedMessageContentForMessageItemID:(id)d
{
  v3 = [(ConversationViewController *)self _messageContentViewForMessageItemID:d];
  [v3 clearSelectedHTML];
}

- (void)_allMessageIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  messageList = [(ConversationViewController *)self messageList];
  allItemIDs = [messageList allItemIDs];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000697D4;
  v8[3] = &unk_10064D298;
  v7 = completionCopy;
  v9 = v7;
  [allItemIDs addSuccessBlock:v8];
  [allItemIDs addFailureBlock:&stru_10064D5C8];
}

- (id)_allMessages
{
  v3 = [(ConversationViewController *)self _conversationViewQueryIncludeRelated:0];
  v4 = +[EFPromise promise];
  messageRepository = [(ConversationViewController *)self messageRepository];
  countOfMessages = [(ConversationViewController *)self countOfMessages];
  completionHandlerAdapter = [v4 completionHandlerAdapter];
  [messageRepository performQuery:v3 limit:countOfMessages completionHandler:completionHandlerAdapter];

  future = [v4 future];
  v9 = [future result:0];

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
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];

  if (referenceMessageListItem)
  {
    delegate = [(ConversationViewControllerBase *)self delegate];
    if ([(ConversationViewControllerBase *)self shownAsConversation])
    {
      if ([(ConversationViewControllerBase *)self shownAsConversation]&& ([(ConversationViewControllerBase *)self referenceMessageListItem], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v6 = objc_opt_isKindOfClass(), v5, (v6 & 1) != 0))
      {
        referenceMessageListItem2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
        v18 = referenceMessageListItem2;
        v8 = [NSArray arrayWithObjects:&v18 count:1];
      }

      else
      {
        referenceMessageListItem3 = [(ConversationViewControllerBase *)self referenceMessageListItem];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          referenceMessageListItem4 = [(ConversationViewControllerBase *)self referenceMessageListItem];
          v17 = referenceMessageListItem4;
          v8 = [NSArray arrayWithObjects:&v17 count:1];
        }

        else if (objc_opt_respondsToSelector())
        {
          referenceMessageListItem5 = [(ConversationViewControllerBase *)self referenceMessageListItem];
          v8 = [delegate conversationViewController:self messagesToActOnForReferenceMessage:referenceMessageListItem5];
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      _referenceDisplayMessage = [(ConversationViewController *)self _referenceDisplayMessage];
      v10 = _referenceDisplayMessage;
      if (_referenceDisplayMessage)
      {
        v19 = _referenceDisplayMessage;
        v8 = [NSArray arrayWithObjects:&v19 count:1];
      }

      else
      {
        v8 = 0;
      }
    }

    if (![v8 count])
    {
      _allMessages = [(ConversationViewController *)self _allMessages];

      v8 = _allMessages;
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
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  displayMessageItemID = [referenceMessageListItem displayMessageItemID];

  if (!displayMessageItemID)
  {
    return 0;
  }

  if (![(ConversationViewControllerBase *)self shownAsConversation])
  {
    return 1;
  }

  referenceMessageListItem2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v6 = [referenceMessageListItem2 count];

  return v6;
}

- (id)_referenceDisplayMessage
{
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  if ([(ConversationViewControllerBase *)self shownAsConversation]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    referenceMessageListItem2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    displayMessageItemID = [referenceMessageListItem2 displayMessageItemID];

    contentRequestCache = [(ConversationViewController *)self contentRequestCache];
    v11 = [contentRequestCache objectForKey:displayMessageItemID];

    message = [v11 message];
    if (!message)
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
    displayMessageItemID2 = [referenceMessageListItem displayMessageItemID];
    itemID = [referenceMessageListItem itemID];

    if (displayMessageItemID2 != itemID)
    {
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:2862 description:@"When threading is off displayMessageItemID should always equal itemID"];
    }

    message = referenceMessageListItem;
  }

  return message;
}

- (id)_messagesForTriageInteraction:(id)interaction
{
  messageListItemSelection = [interaction messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];

  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  if ([referenceMessageListItem count] == 1 && objc_msgSend(messageListItems, "count") == 1)
  {
    firstObject = [messageListItems firstObject];
    conversationID = [firstObject conversationID];
    referenceMessageListItem2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    conversationID2 = [referenceMessageListItem2 conversationID];

    if (conversationID == conversationID2)
    {
      referenceMessageListItem3 = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v17 = referenceMessageListItem3;
      v12 = [NSArray arrayWithObjects:&v17 count:1];

      v13 = +[ConversationViewController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_messagesForTriageInteraction - using referenceMessageListItem.itemID:%@", &v15, 0xCu);
      }

      messageListItems = v12;
    }
  }

  else
  {
  }

  return messageListItems;
}

- (void)_updatePredictedMailboxForConversation
{
  mailboxPredictionScheduler = [(ConversationViewController *)self mailboxPredictionScheduler];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006A34C;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  [mailboxPredictionScheduler performBlock:v4];
}

- (void)_deleteMessageListItemsForMoveOrDestructiveInteraction:(id)interaction completion:(id)completion
{
  completionCopy = completion;
  messageListItemSelection = [interaction messageListItemSelection];
  messageListItems = [messageListItemSelection messageListItems];
  v8 = [messageListItems ef_compactMap:&stru_10064D608];

  messageList = [(ConversationViewController *)self messageList];
  [(ConversationViewController *)self _deleteItemsWithIDs:v8 fromCollection:messageList completionHandler:completionCopy];
}

- (void)_scrollToRect:(CGRect)rect forMessageContentView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView convertRect:viewCopy fromView:{x, y, width, height}];
  v12 = v11;

  collectionView2 = [(ConversationViewControllerBase *)self collectionView];
  [collectionView2 adjustedContentInset];
  v15 = v14;

  v16 = +[ConversationViewController log];
  v17 = v12 - (v15 + 32.0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v28.x = 0.0;
    v28.y = v17;
    v18 = NSStringFromPoint(v28);
    contentRequest = [viewCopy contentRequest];
    messageFuture = [contentRequest messageFuture];
    resultIfAvailable = [messageFuture resultIfAvailable];
    ef_publicDescription = [resultIfAvailable ef_publicDescription];
    v24 = 138412546;
    v25 = v18;
    v26 = 2112;
    v27 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scroll to point (%@) for message: %@", &v24, 0x16u);
  }

  collectionView3 = [(ConversationViewControllerBase *)self collectionView];
  [collectionView3 setContentOffset:1 animated:{0.0, v17}];
}

- (id)_presentationStringForMessageListItem:(id)item
{
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  senderList = [referenceMessageListItem senderList];
  firstObject = [senderList firstObject];

  if (firstObject)
  {
    v6 = firstObject;
    emailAddressValue = [v6 emailAddressValue];
    em_displayableString = [emailAddressValue em_displayableString];
    v9 = em_displayableString;
    if (em_displayableString)
    {
      v10 = em_displayableString;
    }

    else
    {
      simpleAddress = [emailAddressValue simpleAddress];
      v12 = simpleAddress;
      if (simpleAddress)
      {
        stringValue = simpleAddress;
      }

      else
      {
        stringValue = [v6 stringValue];
      }

      v10 = stringValue;
    }
  }

  else
  {
    v10 = &stru_100662A88;
  }

  return v10;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("delete:" == action)
  {
    v8 = objc_opt_self();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [senderCopy mail_isDeleteMessageCommand])
    {
      v11.receiver = self;
      v11.super_class = ConversationViewController;
      v7 = [(ConversationViewControllerBase *)&v11 canPerformAction:action withSender:senderCopy];
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
    v7 = [(ConversationViewControllerBase *)&v10 canPerformAction:action withSender:senderCopy];
  }

  return v7;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v46.receiver = self;
  v46.super_class = ConversationViewController;
  [(ConversationViewController *)&v46 validateCommand:commandCopy];
  delegate = [(ConversationViewControllerBase *)self delegate];
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  flags = [referenceMessageListItem flags];

  action = [commandCopy action];
  if (action == "_markAsJunkCommandInvoked:")
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
    [commandCopy setTitle:v15];

    v16 = &MFImageGlyphMenuBarMarkAsNotJunk;
    if (v12)
    {
      v16 = &MFImageGlyphMenuBarMarkAsJunk;
    }

    goto LABEL_25;
  }

  if (action == "_markAsReadCommandInvoked:")
  {
    if ([flags read])
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
    [commandCopy setTitle:v17];

    read = [flags read];
    v16 = &MFImageGlyphMenuBarMarkUnread;
    if (!read)
    {
      v16 = &MFImageGlyphMenuBarMarkRead;
    }

    goto LABEL_25;
  }

  if (action == "delete:")
  {
    if ([(ConversationViewController *)self _messageListItemCount]== 1)
    {
      propertyList2 = +[NSBundle mainBundle];
      [propertyList2 localizedStringForKey:@"DELETE_EMAIL" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      propertyList2 = +[NSBundle mainBundle];
      [propertyList2 localizedStringForKey:@"DELETE_EMAIL_PLURAL" value:&stru_100662A88 table:@"Main"];
    }
    v20 = ;
    [commandCopy setTitle:v20];
    v21 = v20;
    goto LABEL_30;
  }

  if (action == "_archiveShortcutInvoked:")
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
    [commandCopy setTitle:v24];

    v25 = sub_100069A50(self);
    undoManager = [(ConversationViewController *)self undoManager];
    propertyList2 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItemSelection:v25 undoManager:undoManager origin:3 actor:2];

    if (![propertyList2 isMessageListItemSelectionSourceArchive])
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (action == "_clearTimeSensitiveCommandInvoked:")
  {
    v22 = sub_100069A50(self);
    undoManager2 = [(ConversationViewController *)self undoManager];
    propertyList2 = [(MFDestructiveTriageInteraction *)MFRemoveHighImpactTriageInteraction interactionWithMessageListItemSelection:v22 undoManager:undoManager2 origin:3 actor:2];

    if (!-[ConversationViewControllerBase isShowingGroupedSenderMessageList](self, "isShowingGroupedSenderMessageList") && [delegate currentlySelectedBucketForConversationViewController:self] == 1 && (objc_msgSend(propertyList2, "isPermitted") & 1) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (action == "_remindMeCommandInvoked:")
  {
    if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
    {
      goto LABEL_54;
    }

    propertyList = [commandCopy propertyList];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_54;
    }

    propertyList2 = [commandCopy propertyList];
    v21 = [propertyList2 objectForKeyedSubscript:@"MailKBRemindMePlistKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _readLaterTriageInteractionIfAvailable = [(ConversationViewController *)self _readLaterTriageInteractionIfAvailable];
      if (_readLaterTriageInteractionIfAvailable)
      {
        integerValue = [v21 integerValue];
        messagesHaveReadLaterSet = [_readLaterTriageInteractionIfAvailable messagesHaveReadLaterSet];
        if (integerValue == 5)
        {
          v32 = messagesHaveReadLaterSet;
        }

        else
        {
          v32 = 1;
        }

        if ((v32 & 1) == 0)
        {
          [commandCopy setAttributes:1];
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

        [commandCopy setAttributes:1];
      }
    }

    else
    {
      v42 = +[ConversationViewController log];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [commandCopy propertyList];
        objc_claimAutoreleasedReturnValue();
        sub_100484824();
      }

      [commandCopy setAttributes:1];
    }

    goto LABEL_30;
  }

  if (action == "_categorizeCommandInvoked:")
  {
    propertyList3 = [commandCopy propertyList];
    objc_opt_class();
    v34 = objc_opt_isKindOfClass();

    if ((v34 & 1) == 0)
    {
      goto LABEL_54;
    }

    propertyList2 = [commandCopy propertyList];
    v21 = [propertyList2 objectForKeyedSubscript:@"MailKBCategorizationPlistKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue2 = [v21 integerValue];
      targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
      category = [targetMessageForBarButtonTriage category];

      if ([category state] == 3)
      {
        [category type];
        v38 = MUIBucketFromEMCategoryType();
      }

      else
      {
        v38 = 0;
      }

      if (integerValue2 == v38)
      {
        [commandCopy setState:1];
        [commandCopy setAttributes:1];
      }

      selectionDataSource = [(ConversationViewController *)self selectionDataSource];
      if (([selectionDataSource shouldUseSelectionDataSourceForConversationViewController:self] & 1) != 0 || (objc_msgSend(delegate, "conversationViewControllerAllowsCategorizationAction:", self) & 1) == 0)
      {
        [commandCopy setAttributes:1];
      }
    }

    else
    {
      [commandCopy setAttributes:1];
    }

LABEL_30:

    goto LABEL_38;
  }

  if (action == "_muteCommandInvoked:")
  {
    if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
    {
LABEL_54:
      [commandCopy setAttributes:1];
      goto LABEL_39;
    }

    referenceMessageListItem2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    conversationNotificationLevel = [referenceMessageListItem2 conversationNotificationLevel];

    v41 = +[NSBundle mainBundle];
    if (conversationNotificationLevel == 1)
    {
      [v41 localizedStringForKey:@"UNMUTE" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      [v41 localizedStringForKey:@"MUTE" value:&stru_100662A88 table:@"Main"];
    }
    v43 = ;
    [commandCopy setTitle:v43];

    v16 = &MFImageGlyphMenuBarMute;
    if (conversationNotificationLevel == 1)
    {
      v16 = &MFImageGlyphMenuBarUnmute;
    }

LABEL_25:
    propertyList2 = [UIImage systemImageNamed:*v16];
    [commandCopy setImage:propertyList2];
    goto LABEL_38;
  }

  if (action == "_sendCommandInvoked:")
  {
    v9 = sub_100069A50(self);
    propertyList2 = [(MFTriageInteraction *)MFSendAgainTriageInteraction interactionWithMessageListItemSelection:v9 undoManager:0 origin:3 actor:2];

    if (([propertyList2 isPermitted] & 1) == 0)
    {
LABEL_37:
      [commandCopy setAttributes:1];
    }

LABEL_38:
  }

LABEL_39:
}

- (BOOL)_canChangePageZoom:(BOOL)zoom fromStep:(unint64_t)step
{
  if (zoom)
  {
    return [&off_100674E80 count] - 1 > step;
  }

  else
  {
    return step != 0;
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

- (unint64_t)_zoomStepForViewScale:(double)scale
{
  v4 = [NSNumber numberWithDouble:scale];
  _defaultZoomStep = [&off_100674E80 indexOfObject:v4];
  if (_defaultZoomStep == 0x7FFFFFFFFFFFFFFFLL)
  {
    _defaultZoomStep = [(ConversationViewController *)self _defaultZoomStep];
  }

  return _defaultZoomStep;
}

- (void)_changeZoomStep:(BOOL)step
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006B974;
  v3[3] = &unk_10064D630;
  v3[4] = self;
  stepCopy = step;
  [(ConversationViewControllerBase *)self _enumerateExpandedCellMessageContentViewsWithBlock:v3];
}

- (void)_sendCommandInvoked:(id)invoked
{
  targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  itemID = [targetMessageForBarButtonTriage itemID];
  if (itemID)
  {
    v7 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:itemID];
    scene = [(ConversationViewControllerBase *)self scene];
    v9 = [(MFMessageCompositionTriageInteraction *)MFSendAgainTriageInteraction interactionWithContentRequest:v7 scene:scene];

    [v9 setDelegate:self];
    mailboxes = [targetMessageForBarButtonTriage mailboxes];
    [v9 setMessageSourceMailboxes:mailboxes];

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
        [targetMessageForBarButtonTriage ef_publicDescription];
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
      [targetMessageForBarButtonTriage ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484984();
    }
  }
}

- (void)_printCommandInvoked:(id)invoked
{
  invokedCopy = invoked;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006C3F0;
  v7[3] = &unk_10064D6A8;
  v7[4] = self;
  v5 = objc_retainBlock(v7);
  v6 = objc_opt_class();
  sub_10006BBC8(&self->super.super.super.super.isa, v6, invokedCopy, 0, v5, 0);
}

- (void)_forwardCommandInvoked:(id)invoked
{
  invokedCopy = invoked;
  targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  itemID = [targetMessageForBarButtonTriage itemID];
  v7 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:itemID];
  v8 = [(ConversationViewController *)self _getCurrentlySelectedMessageContentForMessageItemID:itemID];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10006C654;
  v18 = &unk_10064D1D0;
  selfCopy = self;
  v9 = itemID;
  v20 = v9;
  v10 = objc_retainBlock(&v15);
  v11 = [(ConversationViewControllerBase *)self scene:v15];
  v12 = [(MFMessageCompositionTriageInteraction *)MFForwardTriageInteraction interactionWithContentRequest:v7 scene:v11];

  if (v8)
  {
    [v12 setOriginalContent:v8];
  }

  [v12 setDelegate:self];
  mailboxes = [targetMessageForBarButtonTriage mailboxes];
  [v12 setMessageSourceMailboxes:mailboxes];

  [v12 setShouldPromptToLoadRestOfMessage:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 setPresentationSource:invokedCopy];
  }

  else
  {
    [v12 setAttachmentPolicy:1];
  }

  v14 = [v12 alertActionWithCompletion:v10];
  [v12 performInteraction];
}

- (void)_markAsJunkCommandInvoked:(id)invoked
{
  v4 = sub_100069A50(self);
  undoManager = [(ConversationViewController *)self undoManager];
  v6 = [(MFFlagChangeTriageInteraction *)MFJunkTriageInteraction interactionWithMessageListItemSelection:v4 undoManager:undoManager origin:3 actor:2 reason:4];

  selectionDataSource = [(ConversationViewController *)self selectionDataSource];
  if ([selectionDataSource shouldUseSelectionDataSourceForConversationViewController:self])
  {
    v8 = [selectionDataSource messageTriageInteractionHelperForConversationViewController:self];
    [v6 setDelegate:v8];
  }

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006C81C;
  v10[3] = &unk_10064D6D0;
  objc_copyWeak(&v12, &location);
  v9 = selectionDataSource;
  v11 = v9;
  [v6 performInteractionWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_clearTimeSensitiveCommandInvoked:(id)invoked
{
  v5 = sub_100069A50(self);
  undoManager = [(ConversationViewController *)self undoManager];
  v7 = [(MFDestructiveTriageInteraction *)MFRemoveHighImpactTriageInteraction interactionWithMessageListItemSelection:v5 undoManager:undoManager origin:3 actor:2];

  selectionDataSource = [(ConversationViewController *)self selectionDataSource];
  if ([selectionDataSource shouldUseSelectionDataSourceForConversationViewController:self])
  {
    v9 = [selectionDataSource messageTriageInteractionHelperForConversationViewController:self];
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
    targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [targetMessageForBarButtonTriage ef_publicDescription];
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
    undoManager = [(ConversationViewController *)self undoManager];
    v5 = [MFReadLaterTriageInteraction interactionWithMessageListItemSelection:v3 undoManager:undoManager origin:2 actor:2];

    [v5 setDatePickerPresentationStyle:2];
    selectionDataSource = [(ConversationViewController *)self selectionDataSource];
    if ([selectionDataSource shouldUseSelectionDataSourceForConversationViewController:self])
    {
      v8 = [selectionDataSource messageTriageInteractionHelperForConversationViewController:self];
      [v5 setDelegate:v8];
    }

    else
    {
      [v5 setDelegate:self];
    }
  }

  return v5;
}

- (void)_remindMeCommandInvoked:(id)invoked
{
  invokedCopy = invoked;
  propertyList = [invokedCopy propertyList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    propertyList2 = [invokedCopy propertyList];
    v9 = [propertyList2 objectForKeyedSubscript:@"MailKBRemindMePlistKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v9 integerValue];
      _readLaterTriageInteractionIfAvailable = [(ConversationViewController *)self _readLaterTriageInteractionIfAvailable];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10006CF94;
      v12[3] = &unk_10064D720;
      v12[4] = self;
      [_readLaterTriageInteractionIfAvailable performReadLaterAction:integerValue preparation:0 completion:v12];
    }

    else
    {
      _readLaterTriageInteractionIfAvailable = +[ConversationViewController log];
      if (os_log_type_enabled(_readLaterTriageInteractionIfAvailable, OS_LOG_TYPE_ERROR))
      {
        sub_100484A9C();
      }
    }
  }

  else
  {
    propertyList2 = +[ConversationViewController log];
    if (os_log_type_enabled(propertyList2, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484A58();
    }
  }
}

- (void)_categorizeCommandInvoked:(id)invoked
{
  invokedCopy = invoked;
  propertyList = [invokedCopy propertyList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    propertyList2 = [invokedCopy propertyList];
    v9 = [propertyList2 objectForKeyedSubscript:@"MailKBCategorizationPlistKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v9 integerValue];
      v11 = sub_100069A50(self);
      messageListItems = [v11 messageListItems];
      firstObject = [messageListItems firstObject];

      v33 = firstObject;
      senderList = [firstObject senderList];
      firstObject2 = [senderList firstObject];

      v32 = firstObject2;
      v30 = v9;
      emailAddressValue = [firstObject2 emailAddressValue];
      simpleAddress = [emailAddressValue simpleAddress];

      if (firstObject2)
      {
        v17 = firstObject2;
        emailAddressValue2 = [v17 emailAddressValue];
        em_displayableString = [emailAddressValue2 em_displayableString];
        v20 = em_displayableString;
        if (em_displayableString)
        {
          v21 = em_displayableString;
        }

        else
        {
          simpleAddress2 = [emailAddressValue2 simpleAddress];
          v23 = simpleAddress2;
          if (simpleAddress2)
          {
            stringValue = simpleAddress2;
          }

          else
          {
            stringValue = [v17 stringValue];
          }

          v21 = stringValue;
        }
      }

      else
      {
        v21 = &stru_100662A88;
      }

      v25 = +[UIApplication sharedApplication];
      avatarGenerator = [v25 avatarGenerator];
      LOBYTE(v29) = 0;
      LOBYTE(v28) = [v33 isAuthenticated];
      v27 = [MFCategorizationTriageInteraction interactionWithMessageListItemSelection:v11 sender:simpleAddress groupedSenderDisplayName:v21 origin:3 actor:2 bucket:integerValue avatarGenerator:avatarGenerator isAuthenticated:v28 changeOptions:2 * (integerValue == 0) showMenuWithOptions:v29];

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
    propertyList2 = +[ConversationViewController log];
    if (os_log_type_enabled(propertyList2, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484B0C();
    }
  }
}

- (void)_muteCommandInvoked:(id)invoked
{
  v5 = sub_100069A50(self);
  undoManager = [(ConversationViewController *)self undoManager];
  v7 = [(MFFlagChangeTriageInteraction *)MFMuteTriageInteraction interactionWithMessageListItemSelection:v5 undoManager:undoManager origin:3 actor:2 reason:4];

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
    targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
    v9 = +[ConversationViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [targetMessageForBarButtonTriage ef_publicDescription];
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
    messageList = [(ConversationViewController *)self messageList];
    query = [messageList query];
    undoManager = [(ConversationViewController *)self undoManager];
    v6 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithQuery:query undoManager:undoManager origin:3 actor:2 reason:4];

    [v6 setTitleIncludesAllMessages:1];
    [v6 setTitleIncludesCount:0];
    [v6 setDelegate:self];
  }

  else
  {
    v7 = sub_100069A50(self);
    undoManager2 = [(ConversationViewController *)self undoManager];
    v6 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItemSelection:v7 undoManager:undoManager2 origin:3 actor:2 reason:4];
  }

  selectionDataSource = [(ConversationViewController *)self selectionDataSource];
  if ([selectionDataSource shouldUseSelectionDataSourceForConversationViewController:self])
  {
    v10 = [selectionDataSource messageTriageInteractionHelperForConversationViewController:self];
    [v6 setDelegate:v10];
  }

  return v6;
}

- (id)_messageReadCompletionHandlerForSelectionDataSource:(id)source
{
  sourceCopy = source;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006DC34;
  v9[3] = &unk_10064D6D0;
  objc_copyWeak(&v11, &location);
  v10 = sourceCopy;
  v5 = sourceCopy;
  v6 = objc_retainBlock(v9);
  v7 = objc_retainBlock(v6);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (id)_readActionForMessageListItemSelection:(id)selection
{
  _readTriageInteraction = [(ConversationViewController *)self _readTriageInteraction];
  selectionDataSource = [(ConversationViewController *)self selectionDataSource];
  v6 = [(ConversationViewController *)self _messageReadCompletionHandlerForSelectionDataSource:selectionDataSource];
  v7 = [_readTriageInteraction menuActionWithPreparation:0 completion:v6];

  return v7;
}

- (void)_markAsReadCommandInvoked:(id)invoked
{
  _readTriageInteraction = [(ConversationViewController *)self _readTriageInteraction];
  selectionDataSource = [(ConversationViewController *)self selectionDataSource];
  v5 = [(ConversationViewController *)self _messageReadCompletionHandlerForSelectionDataSource:selectionDataSource];
  [_readTriageInteraction performInteractionWithCompletion:v5];
}

- (void)_performFlagChangeClearOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = sub_100069A50(self);
  undoManager = [(ConversationViewController *)self undoManager];
  v7 = [(MFFlagChangeTriageInteraction *)MFFlagTriageInteraction interactionWithMessageListItemSelection:v5 undoManager:undoManager origin:3 actor:2 reason:4];

  if (!onlyCopy || ([v7 flagState] & 1) != 0)
  {
    selectionDataSource = [(ConversationViewController *)self selectionDataSource];
    if ([selectionDataSource shouldUseSelectionDataSourceForConversationViewController:self])
    {
      v9 = [selectionDataSource messageTriageInteractionHelperForConversationViewController:self];
      [v7 setDelegate:v9];
    }

    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006E2BC;
    v11[3] = &unk_10064D6D0;
    objc_copyWeak(&v13, &location);
    v10 = selectionDataSource;
    v12 = v10;
    [v7 performInteractionWithCompletion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_setFlagColorCommandInvoked:(id)invoked
{
  invokedCopy = invoked;
  propertyList = [invokedCopy propertyList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    propertyList2 = [invokedCopy propertyList];
    v9 = [propertyList2 objectForKeyedSubscript:@"MailKBFlagColorPlistKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v9 integerValue];
      [MFFlagTriageInteraction setDefaultColor:integerValue];
      v11 = sub_100069A50(self);
      undoManager = [(ConversationViewController *)self undoManager];
      v13 = [(MFFlagChangeTriageInteraction *)MFFlagColorTriageInteraction interactionWithMessageListItemSelection:v11 undoManager:undoManager origin:3 actor:2 reason:4];

      v14 = [NSNumber numberWithUnsignedInteger:integerValue];
      [v13 setFlagColor:v14];

      selectionDataSource = [(ConversationViewController *)self selectionDataSource];
      if ([selectionDataSource shouldUseSelectionDataSourceForConversationViewController:self])
      {
        v16 = [selectionDataSource messageTriageInteractionHelperForConversationViewController:self];
        [v13 setDelegate:v16];
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10006E8B4;
      v18[3] = &unk_10064D1D0;
      v18[4] = self;
      v17 = selectionDataSource;
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
    propertyList2 = +[ConversationViewController log];
    if (os_log_type_enabled(propertyList2, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484C0C();
    }
  }
}

- (unint64_t)_summarizableMessageCountForItemID:(id)d
{
  v3 = [(ConversationViewController *)self _summarizableMessageItemIDsForSummaryItemID:d];
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

- (id)_summarizableMessageItemIDsForSummaryItemID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    snapshot = [collectionViewDataSource snapshot];
    itemIdentifiers = [snapshot itemIdentifiers];

    v8 = [itemIdentifiers indexOfObject:dCopy];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL || [itemIdentifiers count] < 2)
    {
      v9 = 0;
    }

    else
    {
      topSummaryItemID = [(ConversationViewController *)self topSummaryItemID];

      if (topSummaryItemID == dCopy)
      {
        v12 = itemIdentifiers;
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
          v11 = ([itemIdentifiers count] - v8);
        }

        v12 = [itemIdentifiers subarrayWithRange:{v8, v11}];
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

- (id)_manualSummaryViewModelForItemID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ConversationViewController *)self _summarizableMessageCountForItemID:dCopy];
    inlineSummaryItemID = [(ConversationViewController *)self inlineSummaryItemID];

    v7 = dCopy;
    summaryViewModelByItemID = [(ConversationViewController *)self summaryViewModelByItemID];
    v9 = [summaryViewModelByItemID objectForKeyedSubscript:v7];

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
      v10 = [v13 initWithState:0 summary:0 error:0 summarizableMessageCount:v5 isInlineSummary:inlineSummaryItemID == dCopy isExternalSummary:0 summaryControllerFuture:{v12, v16, v17, v18, v19}];
      summaryViewModelByItemID2 = [(ConversationViewController *)self summaryViewModelByItemID];
      [summaryViewModelByItemID2 setObject:v10 forKeyedSubscript:v11];

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
  topSummaryItemID = [(ConversationViewController *)self topSummaryItemID];
  if (topSummaryItemID)
  {
    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    v5 = [collectionViewDataSource indexPathForItemIdentifier:topSummaryItemID];

    if (v5)
    {
      collectionView = [(ConversationViewControllerBase *)self collectionView];
      v7 = [collectionView mui_isIndexPathVisible:v5];

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
    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    [collectionViewDataSource setSupplementaryViewProvider:0];

    [(ConversationViewController *)self _resetQuickReplyViewControllerWithReason:2 resetCompose:1 override:1];
    conversationLayout = [(ConversationViewControllerBase *)self conversationLayout];
    [conversationLayout invalidateLayout];

    [(ConversationViewController *)self _reloadDataSource];
  }
}

- (void)_updateQuickReplyLabelIfNeeded
{
  _quickReplyView = [(ConversationViewController *)self _quickReplyView];
  [(ConversationViewController *)self _updateQuickReplyLabelIfNeeded:?];
}

- (void)_updateQuickReplyLabelIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  if (neededCopy)
  {
    v9 = neededCopy;
    isComposing = [neededCopy isComposing];
    v5 = v9;
    if ((isComposing & 1) == 0)
    {
      targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
      v8 = [MFComposeMailMessage legacyMessageWithMessage:targetMessageForBarButtonTriage mailboxUid:0 skipAttachmentDownload:1];
      [v9 updatePlaceholderWithMessage:v8];

      v5 = v9;
    }
  }
}

- (id)_quickReplyCompositionContext
{
  targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  itemID = [targetMessageForBarButtonTriage itemID];
  if (itemID)
  {
    v6 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:itemID];
    v7 = v6;
    if (v6)
    {
      message = [v6 message];
      v9 = +[UIApplication sharedApplication];
      mailboxProvider = [v9 mailboxProvider];

      mailboxObjectIDs = [message mailboxObjectIDs];
      firstObject = [mailboxObjectIDs firstObject];
      v13 = [mailboxProvider legacyMailboxForObjectID:firstObject];

      if (!v13)
      {
        v14 = +[ConversationViewController log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100484CC0();
        }
      }

      v15 = [MFComposeMailMessage legacyMessageWithMessage:message mailboxUid:v13 skipAttachmentDownload:1];
      v16 = [(ConversationViewController *)self _getCurrentlySelectedMessageContentForMessageItemID:itemID];
      v17 = [[_MFMailCompositionContext alloc] initReplyAllToMessage:message legacyMessage:v15 isEML:0];
      [v17 setQuickReply:1];
      [v17 setShowKeyboardImmediately:1];
      [v17 setOriginalContent:v16];
    }

    else
    {
      message = +[ConversationViewController log];
      if (os_log_type_enabled(message, OS_LOG_TYPE_ERROR))
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
      [targetMessageForBarButtonTriage ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484984();
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)_isQuickReplyMessageAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(ConversationViewControllerBase *)self allowQuickReply])
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    numberOfSections = [collectionView numberOfSections];

    collectionView2 = [(ConversationViewControllerBase *)self collectionView];
    v8 = [collectionView2 numberOfItemsInSection:--numberOfSections] - 1;

    v9 = [NSIndexPath indexPathForItem:v8 inSection:numberOfSections];
    v10 = [NSIndexPath indexPathForItem:0 inSection:0];
    if ([(ConversationViewController *)self _showQuickReplyBelowConversation])
    {
      v11 = [pathCopy isEqual:v9];
    }

    else
    {
      v11 = [pathCopy isEqual:v10];
    }

    v13 = v11;
    quickReplyAnimationContext = [(ConversationViewControllerBase *)self quickReplyAnimationContext];
    getObject = [quickReplyAnimationContext getObject];

    if ((v13 & (*(EFIsNotNull + 16))(EFIsNotNull, getObject)) == 1)
    {
      v12 = [(ConversationViewController *)self _userIsSenderAtIndexPath:pathCopy];
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

- (BOOL)_isUndoSendMessageAtIndexPath:(id)path
{
  pathCopy = path;
  if (_os_feature_enabled_impl())
  {
    v5 = [(ConversationViewController *)self _messageAtIndexPath:pathCopy];
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
        selfCopy2 = self;
        v15 = 2112;
        v16 = pathCopy;
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
        selfCopy2 = self;
        v15 = 2112;
        v16 = pathCopy;
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

- (void)_didChangeHorizontalPadding:(double)padding
{
  _quickReplyView = [(ConversationViewController *)self _quickReplyView];
  [_quickReplyView setHorizontalInset:padding];
}

- (CGRect)_quickReplyViewFrame
{
  _quickReplyView = [(ConversationViewController *)self _quickReplyView];
  v3 = _quickReplyView;
  if (_quickReplyView)
  {
    [_quickReplyView frame];
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

- (BOOL)_userIsSenderAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(ConversationViewController *)self _messageAtIndexPath:pathCopy];
  v6 = v5;
  if (v5)
  {
    senderList = [v5 senderList];
    firstObject = [senderList firstObject];
    emailAddressValue = [firstObject emailAddressValue];

    simpleAddress = [emailAddressValue simpleAddress];
    lowercaseString = [simpleAddress lowercaseString];

    v12 = +[UIApplication sharedApplication];
    accountsProvider = [v12 accountsProvider];
    displayedAccounts = [accountsProvider displayedAccounts];
    allObjects = [displayedAccounts allObjects];
    v16 = [allObjects ef_flatMap:&stru_10064D7A8];
    v17 = [v16 ef_mapSelector:"lowercaseString"];

    v18 = [v17 containsObject:lowercaseString];
  }

  else
  {
    v19 = +[ConversationViewController log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v23 = objc_opt_class();
      v24 = 2048;
      selfCopy = self;
      v26 = 2112;
      v27 = pathCopy;
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
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    conversationSortOrder = [(ConversationViewControllerBase *)self conversationSortOrder];
    v5 = &UICollectionElementKindSectionFooter;
    if (conversationSortOrder)
    {
      v5 = &UICollectionElementKindSectionHeader;
    }

    v6 = *v5;
    v7 = [collectionView indexPathsForVisibleSupplementaryElementsOfKind:v6];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100070078;
    v16 = &unk_10064D7D0;
    v8 = collectionView;
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

- (void)_updateQuickReplySendButtonOffset:(id)offset
{
  offsetCopy = offset;
  _quickReplyView = [(ConversationViewController *)self _quickReplyView];
  quickReplyMailComposeController = [(ConversationViewController *)self quickReplyMailComposeController];
  v6 = quickReplyMailComposeController;
  if (_quickReplyView && quickReplyMailComposeController)
  {
    v7 = 0.0;
    if ([(ConversationViewController *)self _showQuickReplyBelowConversation])
    {
      [(ConversationViewControllerBase *)self _itemSpacing];
      v7 = v8;
    }

    [offsetCopy contentInset];
    v10 = v9;
    [offsetCopy contentOffset];
    v12 = v11;
    [_quickReplyView frame];
    v14 = v7 + v13;
    if (v10 + v12 >= v14)
    {
      [_quickReplyView updateQuickReplySendButtonTopOffset:v10 + v12 - v14];
    }
  }
}

- (void)_updateManualSummaryUIForScroll:(id)scroll
{
  scrollCopy = scroll;
  if (MUISolariumFeatureEnabled())
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100070394;
    v8[3] = &unk_10064D838;
    objc_copyWeak(&v10, &location);
    v9 = scrollCopy;
    v5 = objc_retainBlock(v8);
    topSummaryItemID = [(ConversationViewController *)self topSummaryItemID];
    (v5[2])(v5, topSummaryItemID);

    inlineSummaryItemID = [(ConversationViewController *)self inlineSummaryItemID];
    (v5[2])(v5, inlineSummaryItemID);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (id)_lastIndexPath
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v5 = [collectionViewDataSource numberOfSectionsInCollectionView:collectionView];
  v6 = v5 - 1;
  if (v5 < 1 || (v7 = [collectionViewDataSource collectionView:collectionView numberOfItemsInSection:v6], v7 < 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = [NSIndexPath indexPathForItem:v7 - 1 inSection:v6];
  }

  return v8;
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  if ([(ConversationViewControllerBase *)self allowQuickReply])
  {
    quickReplyMailComposeController = [(ConversationViewController *)self quickReplyMailComposeController];

    if (!quickReplyMailComposeController)
    {
      +[_TtC10MobileMail14QuickReplyView defaultHeight];
      [(ConversationViewControllerBase *)self setQuickReplyHeight:?];
      collectionView = [(ConversationViewControllerBase *)self collectionView];
      collectionViewLayout = [collectionView collectionViewLayout];
      [collectionViewLayout invalidateLayout];
    }
  }
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  sourceController = [(ConversationViewController *)self animationControllerForTransition:1, presentingController, sourceController];

  return sourceController;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = [(ConversationViewController *)self animationControllerForTransition:0];

  return v3;
}

- (id)animationControllerForTransition:(BOOL)transition
{
  transitionCopy = transition;
  _quickReplyView = [(ConversationViewController *)self _quickReplyView];
  v5 = 0;
  if (_quickReplyView && transitionCopy)
  {
    v5 = objc_alloc_init(_UISheetAnimationController);
    [v5 setIsReversed:0];
    animationSourceView = [_quickReplyView animationSourceView];
    [v5 setSourceView:animationSourceView];
  }

  return v5;
}

- (id)_fullComposeViewControllerForQuickReply:(id)reply userActivity:(id)activity
{
  replyCopy = reply;
  activityCopy = activity;
  v8 = [ComposeNavigationController alloc];
  scene = [(ConversationViewControllerBase *)self scene];
  v10 = [(ComposeNavigationController *)v8 initWithUserActivity:activityCopy scene:scene];

  [(ComposeNavigationController *)v10 setTransitioningDelegate:self];
  [(ComposeNavigationController *)v10 setModalPresentationStyle:2];
  scene2 = [(ConversationViewControllerBase *)self scene];
  composeViewDelegateHandler = [scene2 composeViewDelegateHandler];
  [(ComposeNavigationController *)v10 setMailComposeDelegate:composeViewDelegateHandler];

  v13 = [MFActiveDraft alloc];
  autosaveIdentifier = [(ComposeNavigationController *)v10 autosaveIdentifier];
  originalMessageObjectID = [(ComposeNavigationController *)v10 originalMessageObjectID];
  v16 = [(MFActiveDraft *)v13 initWithIdentifier:autosaveIdentifier andOriginalMessageIdentifier:originalMessageObjectID];
  session = [scene2 session];
  [session mf_setActiveDraft:v16];

  presentationController = [(ComposeNavigationController *)v10 presentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = presentationController;
    animationSourceView = [replyCopy animationSourceView];
    [v19 setSourceView:animationSourceView];

    +[_TtC10MobileMail14QuickReplyView cornerRadius];
    [v19 _setCornerRadiusForPresentationAndDismissal:?];
    [v19 _setShouldDismissWhenTappedOutside:1];
  }

  [presentationController setDelegate:self];

  return v10;
}

- (void)_runAlongsideAnimationsForTransition:(BOOL)transition
{
  transitionCopy = transition;
  transitionCoordinator = [(ConversationViewController *)self transitionCoordinator];

  if (transitionCoordinator)
  {
    objc_initWeak(&location, self);
    transitionCoordinator2 = [(ConversationViewController *)self transitionCoordinator];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100070C0C;
    v11[3] = &unk_10064D860;
    objc_copyWeak(&v12, &location);
    v13 = transitionCopy;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100070C9C;
    v8[3] = &unk_10064D860;
    objc_copyWeak(&v9, &location);
    v10 = transitionCopy;
    [transitionCoordinator2 animateAlongsideTransition:v11 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    _quickReplyView = [(ConversationViewController *)self _quickReplyView];
    [_quickReplyView setHidden:transitionCopy];
  }
}

- (void)_setupQuickReplySupplementaryViewProvider
{
  objc_initWeak(&location, self);
  quickReplyHeaderSupplementaryRegistration = [(ConversationViewController *)self quickReplyHeaderSupplementaryRegistration];
  if (!quickReplyHeaderSupplementaryRegistration || ([(ConversationViewController *)self quickReplyFooterSupplementaryRegistration], v4 = objc_claimAutoreleasedReturnValue(), v4, quickReplyHeaderSupplementaryRegistration, !v4))
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

  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  supplementaryViewProvider = [collectionViewDataSource supplementaryViewProvider];

  if (!supplementaryViewProvider)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000711C4;
    v11[3] = &unk_10064D8B0;
    objc_copyWeak(&v12, &location);
    collectionViewDataSource2 = [(ConversationViewController *)self collectionViewDataSource];
    [collectionViewDataSource2 setSupplementaryViewProvider:v11];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

- (void)_dismissKeyboardIfNecessary
{
  view = [(ConversationViewController *)self view];
  window = [view window];
  [window endEditing:1];
}

- (id)mailComposeViewForQuickReplyView:(id)view
{
  viewCopy = view;
  quickReplyMailComposeController = [(ConversationViewController *)self quickReplyMailComposeController];
  [quickReplyMailComposeController removeFromParentViewController];

  quickReplyMailComposeController2 = [(ConversationViewController *)self quickReplyMailComposeController];
  view = [quickReplyMailComposeController2 view];
  [view removeFromSuperview];

  scene = [(ConversationViewControllerBase *)self scene];
  _quickReplyCompositionContext = [(ConversationViewController *)self _quickReplyCompositionContext];
  v10 = [[MFMailComposeController alloc] initWithCompositionContext:_quickReplyCompositionContext options:0];
  [(ConversationViewController *)self setQuickReplyMailComposeController:v10];
  composeViewDelegate = [scene composeViewDelegate];
  [v10 setDelegate:composeViewDelegate];

  [v10 setQuickReplyDelegate:self];
  [v10 setQuickReplyActionButtonProvider:viewCopy];
  [(ConversationViewController *)self addChildViewController:v10];
  view2 = [v10 view];

  return view2;
}

- (void)mailComposeViewSnapshotForQuickReplyView:(id)view :(id)a4
{
  v5 = a4;
  quickReplyMailComposeController = [(ConversationViewController *)self quickReplyMailComposeController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000716CC;
  v8[3] = &unk_10064D8D8;
  v7 = v5;
  v9 = v7;
  [quickReplyMailComposeController takeSnapshotWithCompletionHandler:v8];
}

- (id)displayNameForAddresses:(id)addresses
{
  addressesCopy = addresses;
  v5 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = addressesCopy;
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
        contactStore = [(ConversationViewControllerBase *)self contactStore];
        v12 = [contactStore displayNameForEmailAddress:v10];
        [v5 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v5 componentsJoinedByString:{@", "}];

  return v13;
}

- (void)quickReplyView:(id)view didTapExpandButton:(id)button
{
  v5 = [(ConversationViewController *)self quickReplyMailComposeController:view];
  composeWebView = [v5 composeWebView];
  getCaretPosition = [composeWebView getCaretPosition];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100071A10;
  v8[3] = &unk_10064D900;
  v8[4] = self;
  [getCaretPosition addSuccessBlock:v8];
}

- (void)quickReplyView:(id)view didTapSendButton:(id)button animationContext:(id)context
{
  viewCopy = view;
  buttonCopy = button;
  contextCopy = context;
  if (contextCopy)
  {
    objc_initWeak(&location, self);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100071DE4;
    v20 = &unk_10064C838;
    objc_copyWeak(&v21, &location);
    [contextCopy setCompletionBlock:&v17];
    v11 = [(ConversationViewControllerBase *)self quickReplyAnimationContext:v17];
    [v11 setObject:contextCopy];

    v12 = +[ConversationViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138412802;
      v24 = v13;
      v25 = 2048;
      selfCopy = self;
      v27 = 2112;
      v28 = contextCopy;
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
  quickReplyMailComposeController = [(ConversationViewController *)self quickReplyMailComposeController];
  [quickReplyMailComposeController performSend];
}

- (void)mailComposeController:(id)controller didChangeQuickReplyWebViewHeight:(double)height
{
  v6 = +[ConversationViewController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v59 = objc_opt_class();
    [(ConversationViewControllerBase *)self quickReplyHeight];
    *buf = 138413058;
    v65 = v59;
    v66 = 2048;
    selfCopy2 = self;
    v68 = 2048;
    heightCopy = height;
    v70 = 2048;
    v71 = v60;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "<%@: %p> [Quick Reply] Wants to change height to: %f, current height: %f", buf, 0x2Au);
  }

  +[_TtC10MobileMail14QuickReplyView innerVerticalPadding];
  v8 = v7;
  +[_TtC10MobileMail14QuickReplyView innerVerticalPadding];
  v10 = v9;
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  +[_TtC10MobileMail14QuickReplyView defaultHeight];
  v13 = v8 + height + v10;
  if (v13 >= v12)
  {
    v14 = v8 + height + v10;
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
      selfCopy2 = self;
      v68 = 2048;
      heightCopy = v14;
      v70 = 2048;
      v71 = v14 - v18;
      v21 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Quick Reply] Did change height to: %f, delta: %f", buf, 0x2Au);
    }

    _quickReplyView = [(ConversationViewController *)self _quickReplyView];
    if (_quickReplyView)
    {
      if ([(ConversationViewController *)self _showQuickReplyBelowConversation])
      {
        [(ConversationViewControllerBase *)self _itemSpacing];
        v24 = v23;
        [collectionView mf_visibleFrame];
        v62 = v26;
        v63 = v25;
        rect = v27;
        v29 = v28;
        [_quickReplyView frame];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        view = [(ConversationViewController *)self view];
        collectionView2 = [(ConversationViewControllerBase *)self collectionView];
        [view convertRect:collectionView2 fromView:{v31, v24 + v33, v35, v37 - v24}];
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
        LOBYTE(view) = CGRectContainsPoint(v75, v72);
        [collectionView contentSize];
        v50 = v49;
        [collectionView contentInset];
        v52 = v51;
        [collectionView contentInset];
        v54 = v53;
        [collectionView frame];
        v56 = v55;
        collectionViewLayout = [collectionView collectionViewLayout];
        [collectionViewLayout invalidateLayout];

        if ((view & (v13 + v50 + v52 + v54 >= v56)) == 1)
        {
          [collectionView contentOffset];
          [collectionView setContentOffset:0 animated:?];
        }
      }

      else
      {
        collectionViewLayout2 = [collectionView collectionViewLayout];
        [collectionViewLayout2 invalidateLayout];
      }
    }

    [(ConversationViewController *)self _updateQuickReplySendButtonOffset:collectionView];
  }
}

- (void)mailComposeController:(id)controller composeBodyIsEmpty:(BOOL)empty
{
  emptyCopy = empty;
  [(ConversationViewController *)self setQuickReplyHasContent:!empty];
  _quickReplyView = [(ConversationViewController *)self _quickReplyView];
  [_quickReplyView setQuickReplyPlaceholderLabelState:emptyCopy];
}

- (void)mailComposeController:(id)controller willMigrateToFullComposeWithReason:(int64_t)reason
{
  if (!reason)
  {
    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      selfCopy = self;
      v6 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Quick Reply] Will add attachment, applying snapshot to view hierarchy", &v8, 0x16u);
    }

    _quickReplyView = [(ConversationViewController *)self _quickReplyView];
    [_quickReplyView showSnapshot];
  }
}

- (void)mailComposeController:(id)controller migrateToFullCompose:(id)compose
{
  composeCopy = compose;
  if (+[UIDevice mf_isPadIdiom])
  {
    scene = [(ConversationViewControllerBase *)self scene];
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000728EC;
    v22[3] = &unk_10064D928;
    objc_copyWeak(&v23, &location);
    [scene showComposeWithUserActivity:composeCopy completion:v22];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    scene = [(ConversationViewController *)self _quickReplyView];
    v7 = [(ConversationViewController *)self _fullComposeViewControllerForQuickReply:scene userActivity:composeCopy];
    autosaveIdentifier = [v7 autosaveIdentifier];
    originalMessageObjectID = [v7 originalMessageObjectID];
    if (autosaveIdentifier)
    {
      v9 = +[UIApplication sharedApplication];
      dockPersistence = [v9 dockPersistence];
      [dockPersistence removeDockedStateWithIdentifier:autosaveIdentifier sender:0];
    }

    scene2 = [(ConversationViewControllerBase *)self scene];
    dockContainer = [scene2 dockContainer];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100072964;
    v18[3] = &unk_10064C6B0;
    v13 = scene2;
    v19 = v13;
    v14 = autosaveIdentifier;
    v20 = v14;
    v15 = v17;
    v21 = v15;
    [dockContainer presentViewController:v7 animated:1 completion:v18];

    [(ConversationViewController *)self _runAlongsideAnimationsForTransition:1];
  }
}

- (void)mailComposeController:(id)controller isSending:(BOOL)sending
{
  controllerCopy = controller;
  if (!sending && [(ConversationViewControllerBase *)self isPerformingQuickReplySendAnimation])
  {
    v7 = +[ConversationViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2048;
      selfCopy = self;
      v8 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Quick Reply][Send Animation] Aborting send animation", &v11, 0x16u);
    }

    [(ConversationViewControllerBase *)self setIsPerformingQuickReplySendAnimation:0];
    quickReplyAnimationContext = [(ConversationViewControllerBase *)self quickReplyAnimationContext];
    v10 = +[NSNull null];
    [quickReplyAnimationContext setObject:v10];
  }
}

- (id)_sheetPresentationControllerViewForTouchContinuation:(id)continuation
{
  presentedViewController = [continuation presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [presentedViewController view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)disableAutomaticMarkAsReadForMessages:(id)messages
{
  messagesCopy = messages;
  if (!*(&self->_disabledMarkAsReadMessageItemIDs + 4))
  {
    v5 = objc_alloc_init(NSMutableSet);
    v6 = *(&self->_disabledMarkAsReadMessageItemIDs + 4);
    *(&self->_disabledMarkAsReadMessageItemIDs + 4) = v5;
  }

  firstObject = [messagesCopy firstObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [messagesCopy count] == 1)
  {
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    firstObject2 = [messagesCopy firstObject];

    if (referenceMessageListItem == firstObject2)
    {
      collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
      snapshot = [collectionViewDataSource snapshot];
      itemIdentifiers = [snapshot itemIdentifiers];

      goto LABEL_9;
    }
  }

  else
  {
  }

  itemIdentifiers = [messagesCopy ef_mapSelector:"itemID"];
LABEL_9:
  v13 = +[ConversationViewController log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = itemIdentifiers;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Disable auto-mark-as-read for itemIDs: %@", &v14, 0xCu);
  }

  [*(&self->_disabledMarkAsReadMessageItemIDs + 4) addObjectsFromArray:itemIdentifiers];
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

- (void)scheduleAutomaticMarkAsReadForViewModel:(id)model
{
  messageContentRequest = [model messageContentRequest];
  message = [messageContentRequest message];

  [(ConversationViewController *)self scheduleAutomaticMarkAsReadForMessage:message];
}

- (void)scheduleAutomaticMarkAsReadForMessage:(id)message
{
  messageCopy = message;
  if ([(ConversationViewController *)self _shouldAutomaticallyMarkAsReadMessage:messageCopy])
  {
    if (!*(&self->_delayedReadCancelables + 4))
    {
      v5 = +[NSMapTable strongToStrongObjectsMapTable];
      v6 = *(&self->_delayedReadCancelables + 4);
      *(&self->_delayedReadCancelables + 4) = v5;
    }

    objc_initWeak(&location, self);
    markAsReadBehavior = [(ConversationViewController *)self markAsReadBehavior];
    v8 = 0.0;
    if (markAsReadBehavior <= 3 && markAsReadBehavior != 1)
    {
      v8 = 0.66;
    }

    v9 = +[EFScheduler mainThreadScheduler];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10007313C;
    v17 = &unk_10064C8B0;
    objc_copyWeak(v19, &location);
    v10 = messageCopy;
    v18 = v10;
    v19[1] = *&v8;
    v11 = [v9 afterDelay:&v14 performBlock:v8];

    v12 = *(&self->_delayedReadCancelables + 4);
    itemID = [v10 itemID];
    [v12 setObject:v11 forKey:itemID];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }
}

- (void)scheduleAutomaticMarkAsReadForReferenceMessage
{
  _indexPathForReferenceMessage = [(ConversationViewController *)self _indexPathForReferenceMessage];
  if (_indexPathForReferenceMessage)
  {
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    displayMessageItemID = [referenceMessageListItem displayMessageItemID];
    v6 = [(ConversationViewController *)self _messageFutureForItemID:displayMessageItemID];

    objc_initWeak(&location, self);
    v7 = +[ConversationViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      displayMessageItemID2 = [referenceMessageListItem displayMessageItemID];
      *buf = 138412290;
      v19 = displayMessageItemID2;
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
    v10 = referenceMessageListItem;
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
      referenceMessageListItem2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
      itemID = [referenceMessageListItem2 itemID];
      *buf = 138412290;
      v19 = itemID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read because indexPath for referenceMessage is nil", buf, 0xCu);
    }
  }
}

- (void)cancelAutomaticMarkAsReadForCellViewModel:(id)model
{
  messageContentRequest = [model messageContentRequest];
  message = [messageContentRequest message];

  v5 = *(&self->_delayedReadCancelables + 4);
  itemID = [message itemID];
  v7 = [v5 objectForKey:itemID];
  [v7 cancel];

  v8 = *(&self->_delayedReadCancelables + 4);
  itemID2 = [message itemID];
  [v8 removeObjectForKey:itemID2];
}

- (void)invalidateAutomaticMarkAsReadForAllMessages
{
  objectEnumerator = [*(&self->_delayedReadCancelables + 4) objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  [allObjects makeObjectsPerformSelector:"cancel"];

  v5 = *(&self->_delayedReadCancelables + 4);

  [v5 removeAllObjects];
}

- (BOOL)_shouldAutomaticallyMarkAsReadMessage:(id)message
{
  messageCopy = message;
  flags = [messageCopy flags];
  read = [flags read];

  if ((messageCopy == 0) | read & 1)
  {
    if (!messageCopy)
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
    itemID = [messageCopy itemID];
    v11 = [v9 objectForKey:itemID];

    if (v11)
    {
      v8 = +[ConversationViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        itemID2 = [messageCopy itemID];
        LODWORD(buf.origin.x) = 138412290;
        *(&buf.origin.x + 4) = itemID2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read because it is already set up", &buf, 0xCu);
      }

      goto LABEL_13;
    }

    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    itemID3 = [messageCopy itemID];
    v17 = [collectionViewDataSource indexPathForItemIdentifier:itemID3];

    if (v17)
    {
      previewState = [(ConversationViewControllerBase *)self previewState];
      if ([previewState shouldScheduleMarkMessageAsRead])
      {
        cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
        v20 = [cellConfigurator messageAtIndexPathIsExpandedOrSemiExpanded:v17];

        if (v20)
        {
          v21 = *(&self->_disabledMarkAsReadMessageItemIDs + 4);
          itemID4 = [messageCopy itemID];
          LOBYTE(v21) = [v21 containsObject:itemID4];

          if ((v21 & 1) == 0)
          {
            collectionView = [(ConversationViewControllerBase *)self collectionView];
            [collectionView mf_visibleBounds];
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
              v42 = [collectionView cellForItemAtIndexPath:v17];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_14;
              }

              messageViewController = [v42 messageViewController];
              messageContentView = [messageViewController messageContentView];

              headerView = [messageContentView headerView];
              v72 = v36;
              v73 = v34;
              v74 = v32;
              v75 = v30;
              [headerView frame];
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
              [messageContentView bounds];
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
              [collectionView convertRect:messageContentView fromView:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];

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
                  itemID5 = [messageCopy itemID];
                  LODWORD(buf.origin.x) = 138412290;
                  *(&buf.origin.x + 4) = itemID5;
                  _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read because not enough of it is visible", &buf, 0xCu);
                }
              }
            }

            else
            {
              v42 = +[ConversationViewController log];
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                itemID6 = [messageCopy itemID];
                LODWORD(buf.origin.x) = 138412290;
                *(&buf.origin.x + 4) = itemID6;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read because it is not yet visible", &buf, 0xCu);
              }

              v13 = 0;
            }

LABEL_36:
            goto LABEL_15;
          }

          collectionView = +[ConversationViewController log];
          if (os_log_type_enabled(collectionView, OS_LOG_TYPE_DEFAULT))
          {
            itemID7 = [messageCopy itemID];
            LODWORD(buf.origin.x) = 138412546;
            *(&buf.origin.x + 4) = itemID7;
            WORD2(buf.origin.y) = 2080;
            *(&buf.origin.y + 6) = "was explicitly marked unread";
            _os_log_impl(&_mh_execute_header, collectionView, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read because it %s", &buf, 0x16u);
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

    collectionView = +[ConversationViewController log];
    if (os_log_type_enabled(collectionView, OS_LOG_TYPE_DEFAULT))
    {
      itemID8 = [messageCopy itemID];
      if (v17)
      {
        v26 = "NO";
      }

      else
      {
        v26 = "YES";
      }

      previewState2 = [(ConversationViewControllerBase *)self previewState];
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
      *(&buf.origin.x + 4) = itemID8;
      WORD2(buf.origin.y) = 2080;
      *(&buf.origin.y + 6) = v26;
      HIWORD(buf.size.width) = 2112;
      *&buf.size.height = previewState2;
      v78 = 2080;
      v79 = v28;
      _os_log_impl(&_mh_execute_header, collectionView, OS_LOG_TYPE_DEFAULT, "%@ - Do not auto-mark-as-read for reasons: indexPath-is-nil: %s, previewState: %@, message-is-expanded: %s", &buf, 0x2Au);
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

- (id)_cellForMessageItemIDIfExpanded:(id)expanded
{
  expandedCopy = expanded;
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v6 = [collectionViewDataSource indexPathForItemIdentifier:expandedCopy];

  if (v6 && (-[ConversationViewControllerBase cellConfigurator](self, "cellConfigurator"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 messageAtIndexPathIsExpanded:v6], v7, v8))
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    v10 = [collectionView cellForItemAtIndexPath:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_shouldShowMailboxForMessage:(id)message
{
  messageCopy = message;
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
    mailboxObjectIDs = [messageCopy mailboxObjectIDs];
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    mailboxObjectIDs2 = [referenceMessageListItem mailboxObjectIDs];

    v9 = [mailboxObjectIDs firstObjectCommonWithArray:mailboxObjectIDs2];
    v5 = v9 == 0;
  }

  return v5;
}

- (BOOL)_shouldShowTimeSensitiveForMessage:(id)message
{
  messageCopy = message;
  if (!-[ConversationViewController _shouldShowMailboxForMessage:](self, "_shouldShowMailboxForMessage:", messageCopy) && EMBlackPearlIsFeatureEnabled() && ([messageCopy category], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isHighImpact"), v5, (v6 & 1) != 0) && (objc_msgSend(messageCopy, "category"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, v8) && (-[ConversationViewControllerBase delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "currentlySelectedBucketForConversationViewController:", self), v9, v10 == 1))
  {
    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [messageCopy ef_publicDescription];
      v15 = 134218242;
      selfCopy = self;
      v17 = 2114;
      v18 = ef_publicDescription;
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

- (void)swipableCollectionViewLayout:(id)layout willBeginSwipeAtIndexPath:(id)path
{
  v4 = [(ConversationViewControllerBase *)self cellExpansionRecognizer:layout];
  [v4 cancel];
}

- (id)_itemsForMessage:(id)message changeAction:(int64_t)action
{
  messageCopy = message;
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  if ([referenceMessageListItem count] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && +[MessageStatusIndicatorManager doesUpdateForChangeAction:](MessageStatusIndicatorManager, "doesUpdateForChangeAction:", action))
  {
    v8 = +[ConversationViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      objectID = [referenceMessageListItem objectID];
      objectID2 = [messageCopy objectID];
      *buf = 134218498;
      actionCopy = action;
      v19 = 2114;
      v20 = objectID;
      v21 = 2114;
      v22 = objectID2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "For changeAction:%ld, include both itemID:%{public}@ displayMessage:%{public}@", buf, 0x20u);
    }

    v16[0] = referenceMessageListItem;
    v16[1] = messageCopy;
    v11 = v16;
    v12 = 2;
  }

  else
  {
    v15 = messageCopy;
    v11 = &v15;
    v12 = 1;
  }

  v13 = [NSArray arrayWithObjects:v11 count:v12];

  return v13;
}

- (id)swipableCollectionViewLayout:(id)layout leadingSwipeActionsConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(ConversationViewController *)self _messageAtIndexPath:pathCopy];
  v7 = v6;
  if (v6 && ([v6 isEditable] & 1) == 0)
  {
    v9 = sub_10024BB48(0);
    v10 = [MFTriageActionUtilities triageActionForActionKey:v9];

    messageTriageInteractionHelper = [(ConversationViewController *)self messageTriageInteractionHelper];
    v12 = [(ConversationViewController *)self _itemsForMessage:v7 changeAction:v10];
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    v14 = [collectionView cellForItemAtIndexPath:pathCopy];
    v15 = [messageTriageInteractionHelper triageInteractionForTriageAction:v10 withMessageListItems:v12 presentationSource:v14 presentingViewController:self moveInteractionDelegate:self forPreview:0 origin:3];

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

- (id)swipableCollectionViewLayout:(id)layout trailingSwipeActionsConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(ConversationViewController *)self _messageAtIndexPath:pathCopy];
  if (v6)
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    v31 = [collectionView cellForItemAtIndexPath:pathCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v31;
      predictedMailbox = [v8 predictedMailbox];

      if (!predictedMailbox)
      {
        v33 = v6;
        v10 = [NSArray arrayWithObjects:&v33 count:1];
        v11 = [MFMoveToPredictionTriageInteraction predictMailboxForMovingMessages:v10];
        [v8 setPredictedMailbox:v11];
      }
    }

    isEditable = [v6 isEditable];
    v32 = v6;
    v30 = [NSArray arrayWithObjects:&v32 count:1];
    v13 = objc_alloc_init(NSMutableArray);
    if ((isEditable & 1) != 0 || ![v6 shouldArchiveByDefault])
    {
      undoManager = [(ConversationViewController *)self undoManager];
      v29 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItems:v30 undoManager:undoManager origin:3 actor:2];
    }

    else
    {
      undoManager = [(ConversationViewController *)self undoManager];
      v29 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItems:v30 undoManager:undoManager origin:3 actor:2];
    }

    v15 = [v29 swipeActionWithPreparation:0 completion:0];
    [v13 addObject:v15];
    if ((isEditable & 1) == 0)
    {
      v16 = sub_10024BC14(0);
      v17 = [MFTriageActionUtilities triageActionForActionKey:v16];

      messageTriageInteractionHelper = [(ConversationViewController *)self messageTriageInteractionHelper];
      v19 = [(ConversationViewController *)self _itemsForMessage:v6 changeAction:v17];
      collectionView2 = [(ConversationViewControllerBase *)self collectionView];
      v21 = [collectionView2 cellForItemAtIndexPath:pathCopy];
      v22 = [messageTriageInteractionHelper triageInteractionForTriageAction:v17 withMessageListItems:v19 presentationSource:v21 presentingViewController:self moveInteractionDelegate:self forPreview:0 origin:3];

      v23 = [(ConversationViewController *)self _swipeActionForTriageInteraction:v22];
      if (v23)
      {
        [v13 addObject:v23];
      }

      undoManager2 = [(ConversationViewController *)self undoManager];
      v25 = [MFMoreTriageInteraction interactionWithMessageListItems:v30 undoManager:undoManager2 origin:3 actor:2 interactionStyle:1];

      [v25 setDelegate:self];
      swipeAction = [v25 swipeAction];
      [v13 addObject:swipeAction];
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

- (BOOL)swipableCollectionViewLayout:(id)layout shouldAnimateAppearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(ConversationViewControllerBase *)self allowQuickReply]&& [(ConversationViewController *)self _isQuickReplyMessageAtIndexPath:pathCopy])
  {
    v6 = +[ConversationViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v11 = 138412802;
      v12 = v8;
      v13 = 2048;
      selfCopy = self;
      v15 = 2112;
      v16 = pathCopy;
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

- (id)_swipeActionForTriageInteraction:(id)interaction
{
  interactionCopy = interaction;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000754A4;
    v8[3] = &unk_10064D720;
    v8[4] = self;
    swipeAction = [interactionCopy swipeActionWithPreparation:0 completion:v8];
  }

  else
  {
    swipeAction = [interactionCopy swipeAction];
  }

  v6 = swipeAction;

  return v6;
}

- (void)laterButtonTapped:(id)tapped
{
  v4 = sub_1000756FC(self, tapped, 2);
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

- (void)customBackButtonTapped:(id)tapped
{
  splitViewController = [(ConversationViewController *)self splitViewController];
  [splitViewController showMessageListViewController:1 animated:1 completion:0];
}

- (void)conversationNavigationBarItemsManager:(id)manager validateBarButtonItem:(id)item ofType:(int64_t)type
{
  itemCopy = item;
  selectionDataSource = [(ConversationViewController *)self selectionDataSource];
  v9 = [selectionDataSource shouldUseSelectionDataSourceForConversationViewController:self];
  if (v9)
  {
    v10 = [selectionDataSource messageListItemSelectionForConversationViewController:self];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 isSelectAll])
  {
    delegate = 1;
  }

  else
  {
    messageListItems = [v10 messageListItems];
    delegate = [messageListItems count] != 0;
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100076780;
  v46[3] = &unk_10064D9B0;
  v46[4] = self;
  v13 = itemCopy;
  v47 = v13;
  v14 = objc_retainBlock(v46);
  switch(type)
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
      delegate = v9 ^ 1;
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
      v42 = delegate;
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
        referenceMessageListItem = [selectionDataSource messageTriageInteractionHelperForConversationViewController:self];
        messageListItems2 = [v10 messageListItems];
        v24 = [referenceMessageListItem flagStateForTriageAction:2 messageListItems:messageListItems2 isSelectAll:objc_msgSend(v10 supportsSelectAll:{"isSelectAll"), 1}];

        sub_10006E008(self, v19, v28, v24, delegate);
        v16 = v28;
      }

      else
      {
        referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
        flags = [referenceMessageListItem flags];
        sub_10006E008(self, v19, v16, [flags read], referenceMessageListItem != 0);
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
        [v13 setEnabled:delegate];
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
      selfCopy = self;
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
        delegate = [(ConversationViewControllerBase *)self delegate];
        v20 = [delegate conversationViewControllerAllowsCategorizationAction:self];
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
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  [barItemsManager prewarmContent];
}

- (void)revealActionsButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = objc_opt_class();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100076CA0;
  v7[3] = &unk_10064DA78;
  v7[4] = self;
  v6 = tappedCopy;
  v8 = v6;
  [(ConversationViewController *)self _presentMailActionsViewControllerFromBarButtonItem:v6 dataSourceClass:v5 includeMessageContentRequest:1 completionHandler:v7];
}

- (void)_doDeleteSelectedMessagesAskingConfirmation:(BOOL)confirmation presentationSourceButtonItem:(id)item forceArchive:(BOOL)archive
{
  confirmationCopy = confirmation;
  itemCopy = item;
  v10 = sub_100069A50(self);
  if (v10)
  {
    if (archive || [(ConversationViewController *)self _shouldArchiveByDefault])
    {
      undoManager = [(ConversationViewController *)self undoManager];
      v12 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItemSelection:v10 undoManager:undoManager origin:3 actor:2];
      v13 = 1;
    }

    else
    {
      undoManager = [(ConversationViewController *)self undoManager];
      v12 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItemSelection:v10 undoManager:undoManager origin:3 actor:2];
      v13 = 0;
    }

    v15 = +[ConversationViewController log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"Delete";
      *buf = 134218498;
      selfCopy = self;
      if (v13)
      {
        v16 = @"Archive";
      }

      v38 = 2112;
      v39 = v16;
      v40 = 1024;
      v41 = confirmationCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "<%p> %@ selected messages. Ask for confirmation? %{BOOL}d", buf, 0x1Cu);
    }

    v26 = v13;

    selectionDataSource = [(ConversationViewController *)self selectionDataSource];
    v18 = [selectionDataSource shouldUseSelectionDataSourceForConversationViewController:self];
    if (v18)
    {
      v19 = [selectionDataSource messageTriageInteractionHelperForConversationViewController:self];
      [v12 setDelegate:v19];
    }

    else
    {
      [v12 setDelegate:self];
    }

    [v12 setShouldAskForConfirmation:confirmationCopy];
    [v12 setPresentationSource:itemCopy];
    [itemCopy setEnabled:0];
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
      messageListItems = [v10 messageListItems];
      v23 = messageListItems;
      selfCopy2 = @"selection data source";
      if (!v18)
      {
        selfCopy2 = self;
      }

      *buf = 138412546;
      selfCopy = selfCopy2;
      v38 = 2112;
      v39 = messageListItems;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Performing triage interaction with delegate from %@ and selection: %@", buf, 0x16u);
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100077608;
    v27[3] = &unk_10064DAA0;
    objc_copyWeak(&v31, &location);
    v32 = v26;
    v28 = itemCopy;
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

- (void)searchMessages:(id)messages
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

- (id)_groupedSenderActionMenuItemsWithMenuOwner:(id)owner
{
  ownerCopy = owner;
  objc_initWeak(&location, self);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100077EAC;
  v16 = &unk_10064DAF0;
  objc_copyWeak(&v18, &location);
  v5 = ownerCopy;
  v17 = v5;
  v6 = [UIDeferredMenuElement elementWithUncachedProvider:&v13];
  v21 = v6;
  v7 = [NSArray arrayWithObjects:&v21 count:1, v13, v14, v15, v16];
  v8 = [UIMenu menuWithTitle:&stru_100662A88 image:0 identifier:0 options:1 children:v7];

  _customReturnToGroupSenderList = [(ConversationViewController *)self _customReturnToGroupSenderList];
  _recategorizationMenu = [(ConversationViewController *)self _recategorizationMenu];
  v20[0] = _customReturnToGroupSenderList;
  v20[1] = v8;
  v20[2] = _recategorizationMenu;
  v11 = [NSArray arrayWithObjects:v20 count:3];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v11;
}

- (id)groupedSenderActionMenuForConversationNavigationBarItemsManager:(id)manager menuOwner:(id)owner
{
  v4 = [(ConversationViewController *)self _groupedSenderActionMenuItemsWithMenuOwner:owner];
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

- (void)_groupedSenderMessageCountForQuery:(id)query completionHandler:(id)handler
{
  queryCopy = query;
  handlerCopy = handler;
  v8 = +[EFPromise promise];
  messageRepository = [(ConversationViewController *)self messageRepository];
  completionHandlerAdapter = [v8 completionHandlerAdapter];
  [messageRepository performCountQuery:queryCopy completionHandler:completionHandlerAdapter];

  v11 = +[EFScheduler mainThreadScheduler];
  future = [v8 future];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000789B4;
  v20[3] = &unk_10064DB68;
  v13 = handlerCopy;
  v21 = v13;
  [future onScheduler:v11 addSuccessBlock:v20];

  future2 = [v8 future];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100078A28;
  v17[3] = &unk_10064DB90;
  v15 = queryCopy;
  v18 = v15;
  v16 = v13;
  v19 = v16;
  [future2 onScheduler:v11 addFailureBlock:v17];
}

- (id)_messageDeletionCompletionHandlerForMenuOwner:(id)owner
{
  ownerCopy = owner;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100078BFC;
  v9[3] = &unk_10064D1F8;
  objc_copyWeak(&v12, &location);
  v10 = ownerCopy;
  selfCopy = self;
  v5 = ownerCopy;
  v6 = objc_retainBlock(v9);
  v7 = objc_retainBlock(v6);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v7;
}

- (id)_deleteActionForMessageListItemSelection:(id)selection menuOwner:(id)owner
{
  selectionCopy = selection;
  ownerCopy = owner;
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v9 = [(ConversationViewController *)self _presentationStringForMessageListItem:referenceMessageListItem];

    delegate = [(ConversationViewControllerBase *)self delegate];
    v11 = [delegate currentlySelectedBucketForConversationViewController:self];

    messageList = [(ConversationViewController *)self messageList];
    query = [messageList query];
    undoManager = [(ConversationViewController *)self undoManager];
    v15 = [(MFGroupedSenderDestructiveTriageInteraction *)MFGroupedSenderDeleteTriageInteraction interactionWithQuery:query groupedSenderDisplayName:v9 selectedBucket:v11 undoManager:undoManager origin:3 actor:2];

    [v15 setTitleIncludesCount:0];
    view = [(ConversationViewController *)self view];
    [v15 setPresentationSource:view];

    [v15 setShouldAskForConfirmation:1];
    [v15 setType:2];
    [v15 setDelegate:self];
    v17 = [(ConversationViewController *)self _messageDeletionCompletionHandlerForMenuOwner:ownerCopy];
    v18 = [v15 menuActionWithPreparation:0 completion:v17];
  }

  else
  {
    undoManager2 = [(ConversationViewController *)self undoManager];
    v9 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItemSelection:selectionCopy undoManager:undoManager2 origin:3 actor:2];

    [v9 setDelegate:self];
    v15 = [(ConversationViewController *)self _messageDeletionCompletionHandlerForMenuOwner:ownerCopy];
    v18 = [v9 menuActionWithPreparation:0 completion:v15];
  }

  return v18;
}

- (id)_archiveActionForMessageListItemSelection:(id)selection menuOwner:(id)owner
{
  selectionCopy = selection;
  ownerCopy = owner;
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v9 = [(ConversationViewController *)self _presentationStringForMessageListItem:referenceMessageListItem];

    delegate = [(ConversationViewControllerBase *)self delegate];
    v11 = [delegate currentlySelectedBucketForConversationViewController:self];

    messageList = [(ConversationViewController *)self messageList];
    query = [messageList query];
    undoManager = [(ConversationViewController *)self undoManager];
    v15 = [(MFGroupedSenderDestructiveTriageInteraction *)MFGroupedSenderArchiveTriageInteraction interactionWithQuery:query groupedSenderDisplayName:v9 selectedBucket:v11 undoManager:undoManager origin:3 actor:2];

    [v15 setTitleIncludesCount:0];
    view = [(ConversationViewController *)self view];
    [v15 setPresentationSource:view];

    [v15 setShouldAskForConfirmation:1];
    [v15 setType:2];
    [v15 setDelegate:self];
  }

  else
  {
    undoManager2 = [(ConversationViewController *)self undoManager];
    v15 = [(MFDestructiveTriageInteraction *)MFArchiveTriageInteraction interactionWithMessageListItemSelection:selectionCopy undoManager:undoManager2 origin:3 actor:2];

    [v15 setDelegate:self];
  }

  v18 = [(ConversationViewController *)self _messageDeletionCompletionHandlerForMenuOwner:ownerCopy];
  v19 = [v15 menuActionWithPreparation:0 completion:v18];

  [v19 setAttributes:{objc_msgSend(v19, "attributes") ^ 2}];

  return v19;
}

- (id)deleteButtonMenuForConversationNavigationBarItemsManager:(id)manager menuOwner:(id)owner
{
  ownerCopy = owner;
  v6 = sub_100069A50(self);
  v7 = [(ConversationViewController *)self _deleteActionForMessageListItemSelection:v6 menuOwner:ownerCopy];
  v8 = [(ConversationViewController *)self _archiveActionForMessageListItemSelection:v6 menuOwner:ownerCopy];
  v12[0] = v8;
  v12[1] = v7;
  v9 = [NSArray arrayWithObjects:v12 count:2];
  v10 = [UIMenu menuWithTitle:&stru_100662A88 children:v9];

  return v10;
}

- (void)moveButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v6 = sub_100069A50(self);
  if (v6)
  {
    selectionDataSource = [(ConversationViewController *)self selectionDataSource];
    if ([selectionDataSource shouldUseSelectionDataSourceForConversationViewController:self])
    {
      [selectionDataSource conversationViewController:self performTriageAction:7 presentationSource:tappedCopy];
    }

    else
    {
      referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v9 = referenceMessageListItem;
      if (referenceMessageListItem && ([referenceMessageListItem displayMessage], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "result"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
      {
        predictedMailboxForConversation = [(ConversationViewController *)self predictedMailboxForConversation];
        resultIfAvailable = [predictedMailboxForConversation resultIfAvailable];

        shouldHideStickyFooterView = [(ConversationViewControllerBase *)self shouldHideStickyFooterView];
        if (resultIfAvailable)
        {
          v15 = shouldHideStickyFooterView;
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
          v25 = tappedCopy;
          [(ConversationViewController *)self _presentMailActionsViewControllerFromBarButtonItem:v25 dataSourceClass:v16 includeMessageContentRequest:0 completionHandler:v24];
        }

        else
        {
          messageListItems = [v6 messageListItems];
          undoManager = [(ConversationViewController *)self undoManager];
          v19 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:messageListItems undoManager:undoManager origin:3 actor:2 presentationSource:tappedCopy delegate:self presentingViewController:self predictedMailbox:resultIfAvailable];

          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_100079968;
          v21[3] = &unk_10064DBB8;
          v21[4] = self;
          v22 = tappedCopy;
          v23 = v19;
          v20 = v19;
          [v20 performInteractionWithCompletion:v21];
        }
      }

      else
      {
        resultIfAvailable = +[ConversationViewController log];
        if (os_log_type_enabled(resultIfAvailable, OS_LOG_TYPE_ERROR))
        {
          sub_100484E48();
        }
      }
    }
  }

  else
  {
    selectionDataSource = +[ConversationViewController log];
    if (os_log_type_enabled(selectionDataSource, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_100484DB0();
    }
  }
}

- (id)_createMailActionViewHeader
{
  displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
  [MailActionViewHeader defaultHeightWithDisplayMetrics:displayMetrics];
  v5 = v4;
  view = [(ConversationViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v13);

  v8 = [[MailActionViewHeader alloc] initWithFrame:0.0, 0.0, Width, v5];
  contactStore = [(ConversationViewControllerBase *)self contactStore];
  [(MFMessageConversationViewCell *)v8 setContactStore:contactStore];

  v10 = [MFMessageDisplayMetrics mf_actionCardMetricsFromDisplayMetrics:displayMetrics];
  [(MFConversationViewCell *)v8 setDisplayMetrics:v10];

  return v8;
}

- (void)_presentMailActionsViewControllerFromBarButtonItem:(id)item dataSourceClass:(id)class includeMessageContentRequest:(BOOL)request completionHandler:(id)handler
{
  requestCopy = request;
  itemCopy = item;
  classCopy = class;
  handlerCopy = handler;
  targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  if (targetMessageForBarButtonTriage)
  {
    [(ConversationViewController *)self setSelectedMessage:targetMessageForBarButtonTriage];
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    v15 = referenceMessageListItem;
    if (referenceMessageListItem && ([referenceMessageListItem displayMessage], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      v50 = itemCopy;
      v45 = classCopy;
      v48 = handlerCopy;
      if (requestCopy)
      {
        itemID = [targetMessageForBarButtonTriage itemID];
        v18 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:itemID];

        itemID2 = [targetMessageForBarButtonTriage itemID];
        v46 = [(ConversationViewController *)self _getCurrentlySelectedMessageContentForMessageItemID:itemID2];
      }

      else
      {
        v46 = 0;
        v18 = 0;
      }

      v47 = v18;
      _createMailActionViewHeader = [(ConversationViewController *)self _createMailActionViewHeader];
      if ([(ConversationViewController *)self _isDisplayingSingleMessage]|| requestCopy)
      {
        v21 = [ConversationCellViewModel alloc];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_10007A320;
        v59[3] = &unk_10064CFD8;
        v60 = targetMessageForBarButtonTriage;
        selfCopy = self;
        v22 = [(ConversationCellViewModel *)v21 initWithBuilder:v59];
        [_createMailActionViewHeader setViewModel:v22];
      }

      else
      {
        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
        v25 = [NSString localizedStringWithFormat:v24, [v15 count]];

        conversationSubject = [(ConversationViewControllerBase *)self conversationSubject];
        v27 = [ECSubjectFormatter subjectStringForDisplayForSubject:conversationSubject style:1];

        [_createMailActionViewHeader updateTitle:v25 subject:v27];
      }

      objc_initWeak(&location, self);
      v28 = [MailActionsViewController alloc];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10007A43C;
      v56[3] = &unk_10064C838;
      objc_copyWeak(&v57, &location);
      v29 = [(MailActionsViewController *)v28 initWithDelegate:self messageHeaderView:_createMailActionViewHeader didDismissHandler:v56];
      v30 = [[UINavigationController alloc] initWithRootViewController:v29];
      [v30 setModalPresentationStyle:7];
      presentationController = [v30 presentationController];
      [presentationController setDelegate:self];

      popoverPresentationController = [v30 popoverPresentationController];
      [popoverPresentationController setSourceItem:v50];

      v44 = v48[2](v48, v29);
      v33 = [v15 count]!= 1;
      v34 = [MFTriageInteractionTarget alloc];
      displayMessage = [v15 displayMessage];
      result = [displayMessage result];
      v37 = [(MFTriageInteractionTarget *)v34 initWithMessageListItem:v15 primaryMessage:result selectedMessageContent:v46 primaryMessageContentRequest:v47 targetPreference:v33 preferQuickCompositionalActions:0];

      delegate = [(ConversationViewControllerBase *)self delegate];
      v39 = [classCopy alloc];
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
      v42 = delegate;
      v54 = v42;
      v43 = [v39 initWithBuilderBlock:v51];
      [(MailActionsViewController *)v29 setDataSource:v43];

      [(ConversationViewControllerBase *)self presentViewController:v30 animated:1 completion:0];
      objc_destroyWeak(&v57);
      objc_destroyWeak(&location);

      itemCopy = v50;
      classCopy = v45;
      v20 = v47;
      handlerCopy = v48;
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

- (void)presentTransferUIWithMoveInteraction:(id)interaction prediction:(id)prediction fromViewController:(id)controller didDismissHandler:(id)handler
{
  interactionCopy = interaction;
  predictionCopy = prediction;
  controllerCopy = controller;
  handlerCopy = handler;
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_10007A7E0;
  v28 = &unk_10064DC08;
  v13 = interactionCopy;
  v29 = v13;
  v14 = objc_retainBlock(&v25);
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  if (referenceMessageListItem)
  {
    messageListItemSelection = [v13 messageListItemSelection];
    messageListItems = [messageListItemSelection messageListItems];
    em_messageListItemTotalCount = [messageListItems em_messageListItemTotalCount];
    v19 = em_messageListItemTotalCount == [referenceMessageListItem count];
  }

  else
  {
    v19 = 1;
  }

  messageListItemSelection2 = [v13 messageListItemSelection];
  messageListItems2 = [messageListItemSelection2 messageListItems];
  presentationSource = [v13 presentationSource];
  sub_10007A7EC(self, messageListItems2, v24, controllerCopy, presentationSource, v19, v14, handlerCopy);
}

- (id)moreTriageInteraction:(id)interaction actionsViewControllerWithInteractionTarget:(id)target didDismissHandler:(id)handler
{
  interactionCopy = interaction;
  targetCopy = target;
  handlerCopy = handler;
  messageListItem = [targetCopy messageListItem];
  itemID = [messageListItem itemID];

  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v14 = [collectionViewDataSource indexPathForItemIdentifier:itemID];

  collectionView = [(ConversationViewControllerBase *)self collectionView];
  v16 = [collectionView cellForItemAtIndexPath:v14];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = handlerCopy;
    v17 = v16;
    v24 = interactionCopy;
    primaryMessage = [targetCopy primaryMessage];
    primaryMessageContentRequest = [targetCopy primaryMessageContentRequest];
    predictedMailbox = [v17 predictedMailbox];
    presentationSource = [interactionCopy presentationSource];
    v22 = [(ConversationViewController *)self _actionsViewControllerWithMessage:primaryMessage contentRequest:primaryMessageContentRequest predictedMailbox:predictedMailbox button:presentationSource didDismissHandler:v25];

    interactionCopy = v24;
    handlerCopy = v25;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)dismissBannerForUnsubscribeAndDeleteTriageInteraction:(id)interaction
{
  displaySubjectItemID = [(ConversationViewController *)self displaySubjectItemID];
  v6 = [(ConversationViewController *)self _cellForMessageItemIDIfExpanded:displaySubjectItemID];

  messageViewController = [v6 messageViewController];
  [messageViewController clearSuggestionsBannerAnimated:1];
}

- (void)updateAvatarViewControllerForTriageInteraction:(id)interaction alertController:(id)controller
{
  controllerCopy = controller;
  avatarGenerator = [(ConversationViewControllerBase *)self avatarGenerator];
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  [controllerCopy mf_addAvatarWithAvatarGenerator:avatarGenerator messageListItem:referenceMessageListItem];
}

- (void)groupedSenderMessageCountForDestructiveTriageInteraction:(id)interaction completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[EFPromise promise];
  messageList = [(ConversationViewController *)self messageList];
  unfilteredMessageList = [messageList unfilteredMessageList];
  query = [unfilteredMessageList query];

  messageRepository = [(ConversationViewController *)self messageRepository];
  completionHandlerAdapter = [v6 completionHandlerAdapter];
  [messageRepository performCountQuery:query completionHandler:completionHandlerAdapter];

  v12 = +[EFPromise promise];
  messageRepository2 = [(ConversationViewController *)self messageRepository];
  messageList2 = [(ConversationViewController *)self messageList];
  query2 = [messageList2 query];
  completionHandlerAdapter2 = [v12 completionHandlerAdapter];
  [messageRepository2 performCountQuery:query2 completionHandler:completionHandlerAdapter2];

  v26[0] = v6;
  v26[1] = v12;
  v17 = [NSArray arrayWithObjects:v26 count:2];
  v18 = [EFFuture join:v17];

  v19 = +[EFScheduler mainThreadScheduler];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007BA60;
  v24[3] = &unk_10064D298;
  v20 = handlerCopy;
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

- (id)actionViewHeaderForCategorizationInteraction:(id)interaction messageListItem:(id)item
{
  itemCopy = item;
  _createMailActionViewHeader = [(ConversationViewController *)self _createMailActionViewHeader];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
  v9 = [NSString localizedStringWithFormat:v8, [(ConversationViewController *)self countOfMessages]];

  v10 = [ConversationCellViewModel alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007BDEC;
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

- (void)categorizationButtonTapped:(id)tapped
{
  v4 = [(ConversationViewController *)self _recategorizationTriageInteraction:tapped];
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

- (id)_recategorizationTriageInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = [MSMessageListItemSelection alloc];
  _messageListItemsForBarButtonTriage = [(ConversationViewController *)self _messageListItemsForBarButtonTriage];
  v7 = [v5 initWithMessageListItems:_messageListItemsForBarButtonTriage];

  undoManager = [(ConversationViewController *)self undoManager];
  v9 = [(MFTriageInteraction *)MFCategorizationMenuTriageInteraction interactionWithMessageListItemSelection:v7 undoManager:undoManager origin:3 actor:2];

  [v9 setDelegate:self];
  [v9 setPresentationSource:interactionCopy];

  return v9;
}

- (id)messageRepositoryForTriageInteraction:(id)interaction
{
  messageRepository = [(ConversationViewController *)self messageRepository];

  return messageRepository;
}

- (id)transferStackViewController:(id)controller displayMessageForMessageListItemWithItemID:(id)d
{
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    itemID = [referenceMessageListItem itemID];
    v9 = [itemID isEqual:dCopy];

    if ((v9 & 1) == 0)
    {
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:5402 description:{@"we're displaying something other than referenceMessageListItem for itemID:%@", dCopy}];
    }

    referenceMessageListItem2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
    displayMessage = [referenceMessageListItem2 displayMessage];
  }

  else
  {
    referenceMessageListItem2 = [(ConversationViewController *)self messageList];
    displayMessage = [referenceMessageListItem2 messageListItemForItemID:dCopy];
  }

  v12 = displayMessage;

  return v12;
}

- (void)showAllMessagesForConversationSenderHeaderView:(id)view
{
  messageList = [(ConversationViewController *)self messageList];
  filterPredicate = [messageList filterPredicate];

  if (!filterPredicate)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"ConversationViewController.m" lineNumber:5416 description:@"There needs to be a valid predicate"];
  }

  messageList2 = [(ConversationViewController *)self messageList];
  filterPredicate2 = [messageList2 filterPredicate];
  [(ConversationViewController *)self setCategoryPredicate:filterPredicate2];

  messageList3 = [(ConversationViewController *)self messageList];
  unfilteredMessageList = [messageList3 unfilteredMessageList];
  [(ConversationViewController *)self _reloadDataSourceWithMessageList:unfilteredMessageList];
}

- (void)showCategoryMessagesForConversationSenderHeaderView:(id)view
{
  messageList = [(ConversationViewController *)self messageList];
  categoryPredicate = [(ConversationViewController *)self categoryPredicate];
  v6 = [messageList filteredMessageListWithPredicate:categoryPredicate userFiltered:1];

  [(ConversationViewController *)self _reloadDataSourceWithMessageList:v6];
}

- (void)datePickerViewController:(id)controller didSelectDate:(id)date
{
  controllerCopy = controller;
  dateCopy = date;
  type = [controllerCopy type];
  if (!type)
  {
    message = [controllerCopy message];
    sub_10007C684(self, dateCopy, message);
LABEL_7:

    goto LABEL_8;
  }

  if (type == 1)
  {
    v9 = +[ConversationViewController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1004850B8();
    }

    v10 = [NSArray alloc];
    referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
    message = [v10 initWithObjects:{referenceMessageListItem, 0}];

    v13 = [[EMMessageReadLaterAction alloc] initWithMessageListItems:message origin:3 actor:2 readLaterDate:dateCopy];
    messageRepository = [(ConversationViewController *)self messageRepository];
    [messageRepository performMessageChangeAction:v13];

    goto LABEL_7;
  }

LABEL_8:
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  [(ConversationViewController *)self _reloadDataSource];
}

- (void)datePickerViewControllerDidDeleteDate:(id)date
{
  dateCopy = date;
  v5 = [NSArray alloc];
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v7 = [v5 initWithObjects:{referenceMessageListItem, 0}];

  message = [dateCopy message];
  sendLaterDate = [message sendLaterDate];

  if (sendLaterDate)
  {
    sub_10007C684(self, 0, message);
  }

  else
  {
    readLater = [message readLater];

    if (readLater)
    {
      v11 = [[EMMessageReadLaterAction alloc] initWithMessageListItems:v7 origin:3 actor:2 readLaterDate:0];
      messageRepository = [(ConversationViewController *)self messageRepository];
      [messageRepository performMessageChangeAction:v11];

      sub_10007CCA0(self, message, &stru_10064DD30);
    }

    else
    {
      v13 = +[ConversationViewController log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [message ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        sub_1004850F8();
      }
    }
  }

  [(ConversationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_headerView:(id)view displayWithBannerForViewModel:(id)model message:(id)message
{
  viewCopy = view;
  messageCopy = message;
  [viewCopy displayMessageUsingViewModel:model];
  headerBlocks = [viewCopy headerBlocks];
  v11 = [headerBlocks ef_firstObjectPassingTest:&stru_10064DDC0];

  if (v11)
  {
    viewModel = [viewCopy viewModel];
    v13 = [(ConversationViewController *)self _shouldRemoveBannerBlock:v11 forHeaderViewModel:viewModel];

    if (v13)
    {
      v14 = +[ConversationViewController log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        [v11 type];
        v15 = MFBannerViewTypeDescription();
        viewModel2 = [viewCopy viewModel];
        itemID = [viewModel2 itemID];
        v25 = 134218498;
        selfCopy2 = self;
        v27 = 2114;
        v28 = v15;
        v29 = 2114;
        v30 = itemID;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%p: Remove %{public}@ banner for message with itemID: %{public}@", &v25, 0x20u);
      }

      [viewCopy removeHeaderBlock:v11 animated:1];
    }
  }

  headerBlocks2 = [viewCopy headerBlocks];
  v19 = [headerBlocks2 ef_firstObjectPassingTest:&stru_10064DDE0];

  v20 = [(ConversationViewController *)self _bannerBlockToInsertForHeaderView:viewCopy message:messageCopy];
  if (v20)
  {
    v21 = +[ConversationViewController log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [v20 type];
      v22 = MFBannerViewTypeDescription();
      viewModel3 = [viewCopy viewModel];
      itemID2 = [viewModel3 itemID];
      v25 = 134218498;
      selfCopy2 = self;
      v27 = 2114;
      v28 = v22;
      v29 = 2114;
      v30 = itemID2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%p: Add %{public}@ banner for message with itemID: %{public}@", &v25, 0x20u);
    }

    if (v19)
    {
      [viewCopy insertHeaderBlock:v20 before:v19 animated:1];
    }

    else
    {
      [viewCopy addHeaderBlock:v20 animated:1];
    }
  }
}

- (id)presentingViewControllerForTriageInteraction:(id)interaction
{
  presentingViewController = [(ConversationViewController *)self presentingViewController];

  if (presentingViewController)
  {
    goto LABEL_2;
  }

  presentedViewController = [(ConversationViewController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(ConversationViewController *)self presentedViewController];
    isBeingDismissed = [presentedViewController2 isBeingDismissed];

    if (!isBeingDismissed)
    {
      selfCopy = [(ConversationViewController *)self presentedViewController];
      goto LABEL_3;
    }

LABEL_2:
    selfCopy = self;
LABEL_3:
    mf_rootViewController = selfCopy;
    goto LABEL_4;
  }

  scene = [(ConversationViewControllerBase *)self scene];
  mf_rootViewController = [scene mf_rootViewController];

LABEL_4:

  return mf_rootViewController;
}

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
  v6 = [displayMetrics isEqual:metricsCopy];

  v9.receiver = self;
  v9.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v9 setDisplayMetrics:metricsCopy];
  if ((v6 & 1) == 0)
  {
    presentedViewController = [(ConversationViewController *)self presentedViewController];
    v8 = [(ConversationViewController *)self _mailActionsViewControllerFromPresentedViewController:presentedViewController];

    [v8 updateHeaderDisplayMetrics:metricsCopy];
  }
}

- (void)_testReplyForSelectedMessage
{
  targetMessageForBarButtonTriage = [(ConversationViewController *)self targetMessageForBarButtonTriage];
  itemID = [targetMessageForBarButtonTriage itemID];
  v4 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:itemID];

  scene = [(ConversationViewControllerBase *)self scene];
  v6 = [(MFMessageCompositionTriageInteraction *)MFReplyTriageInteraction interactionWithContentRequest:v4 scene:scene];

  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  mailboxes = [referenceMessageListItem mailboxes];
  [v6 setMessageSourceMailboxes:mailboxes];

  [v6 setShouldPromptToLoadRestOfMessage:0];
  [v6 performInteraction];
}

- (MessageTriageInteractionHelper)messageTriageInteractionHelper
{
  v3 = *(&self->_messageTriageInteractionHelper + 4);
  if (!v3)
  {
    v4 = [MessageTriageInteractionHelper alloc];
    scene = [(ConversationViewControllerBase *)self scene];
    v6 = [(MessageTriageInteractionHelper *)v4 initWithDataSource:self triageInteractionDelegate:self scene:scene];
    v7 = *(&self->_messageTriageInteractionHelper + 4);
    *(&self->_messageTriageInteractionHelper + 4) = v6;

    v3 = *(&self->_messageTriageInteractionHelper + 4);
  }

  return v3;
}

- (id)messageContentRepresentationRequestForMessageTriageInteractionHelper:(id)helper message:(id)message
{
  itemID = [message itemID];
  v6 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:itemID];

  return v6;
}

- (id)messageTriageInteractionHelper:(id)helper senderRepositoryForMessageListItems:(id)items
{
  v4 = [(ConversationViewControllerBase *)self scene:helper];
  daemonInterface = [v4 daemonInterface];
  senderRepository = [daemonInterface senderRepository];

  return senderRepository;
}

- (void)_scrolledToEndOfSingleMessage
{
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  displayMessageItemID = [referenceMessageListItem displayMessageItemID];

  if (displayMessageItemID)
  {
    objc_initWeak(&location, self);
    v5 = [(ConversationViewController *)self _messageFutureForItemID:displayMessageItemID];
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

- (void)_updateFooterViewFrameForCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(ConversationViewControllerBase *)self shouldHideStickyFooterView])
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    v5 = [collectionView indexPathForCell:cellCopy];

    [(ConversationViewController *)self _updateFooterViewFrameForCell:cellCopy atIndexPath:v5];
  }
}

- (void)_updateFooterToShowUndoSendForCell:(id)cell
{
  cellCopy = cell;
  if (_os_feature_enabled_impl())
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    v5 = [collectionView indexPathForCell:cellCopy];

    if (v5)
    {
      messageViewController = [cellCopy messageViewController];
      messageContentView = [messageViewController messageContentView];
      showMessageFooter = [messageContentView showMessageFooter];

      if (showMessageFooter)
      {
        messageViewController2 = [cellCopy messageViewController];
        messageContentView2 = [messageViewController2 messageContentView];
        footerView = [messageContentView2 footerView];

        messageViewController3 = [cellCopy messageViewController];
        contentRequest = [messageViewController3 contentRequest];
        message = [contentRequest message];
        [footerView setUndoSendButtonHidden:{-[ConversationViewController _isMessageInOutbox:](self, "_isMessageInOutbox:", message) ^ 1}];
      }
    }
  }
}

- (void)_updateFooterViewFrameForCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  shouldHideStickyFooterView = [(ConversationViewControllerBase *)self shouldHideStickyFooterView];
  if (pathCopy)
  {
    v9 = shouldHideStickyFooterView;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    if ([cellCopy expanded])
    {
      messageViewController = [cellCopy messageViewController];
      messageContentView = [messageViewController messageContentView];
      showMessageFooter = [messageContentView showMessageFooter];

      if (showMessageFooter)
      {
        displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
        collectionView = [(ConversationViewControllerBase *)self collectionView];
        v86 = [(ConversationViewControllerBase *)self _layoutAttributesForItemAtIndexPath:pathCopy];
        messageViewController2 = [cellCopy messageViewController];
        messageContentView2 = [messageViewController2 messageContentView];

        footerView = [messageContentView2 footerView];
        [footerView frame];
        v83 = v17;
        v84 = v18;
        rect1 = v19;
        [displayMetrics estimatedFooterViewHeight];
        v82 = v20;
        [collectionView frame];
        MaxY = CGRectGetMaxY(v94);
        [displayMetrics cellHeightToStartScroll];
        v23 = v22;
        [v86 frame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        view = [(ConversationViewController *)self view];
        [collectionView convertRect:view toView:{v25, v27, v29, v31}];
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
        [cellCopy frame];
        v42 = MaxY - v82;
        v43 = fmax(Height, CGRectGetHeight(v97)) - v82;
        if (v43 >= v23)
        {
          [collectionView bounds];
          v44 = CGRectGetHeight(v98);
          superview = [collectionView superview];
          [cellCopy convertPoint:superview fromView:{0.0, v42}];
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
        [footerView frame];
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
          [footerView setFrame:{v83, v48, rect1, v84}];
        }

        [displayMetrics footerViewButtonsAnimationOffset];
        v54 = v53;
        [collectionView frame];
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

        [footerView moveOriginYByOffset:v56];
        scrollView = [messageContentView2 scrollView];
        [scrollView contentSize];
        v61 = v60;
        scrollView2 = [messageContentView2 scrollView];
        [scrollView2 contentInset];
        v64 = v63;
        v102.origin.x = v34;
        v102.origin.y = v36;
        v102.size.width = v38;
        v102.size.height = v40;
        v65 = CGRectGetMinY(v102);

        if (v43 >= v42)
        {
          collectionView2 = [(ConversationViewControllerBase *)self collectionView];
          [collectionView2 frame];
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

        backgroundView = [footerView backgroundView];
        [backgroundView alpha];
        v73 = v72;

        if (v73 != v67)
        {
          v91[0] = _NSConcreteStackBlock;
          v91[1] = 3221225472;
          v91[2] = sub_10007E47C;
          v91[3] = &unk_10064DE08;
          v92 = footerView;
          v93 = v67;
          [UIView animateWithDuration:v91 animations:0.2];
        }

        if (_os_feature_enabled_impl())
        {
          v74 = [footerView isUndoSendButtonHidden] ^ 1;
        }

        else
        {
          LOBYTE(v74) = 0;
        }

        cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
        v76 = [cellConfigurator expansionStatusForMessageAtIndexPath:pathCopy];

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
          v77 = [messageContentView2 automaticallyCollapseQuotedContent] ^ 1 | v74;
        }

        [footerView setIsSemiExpanded:v76 == 2];
        [footerView setSeeMoreButtonHidden:v77 & 1];
        v78 = 0.0;
        if (!v66)
        {
          [footerView seeMoreButtonHeight];
          if (v43 <= v42 + v79)
          {
            v78 = 1.0;
          }

          else
          {
            v78 = 0.0;
          }
        }

        if (([footerView isSeeMoreButtonHidden] & 1) == 0)
        {
          [footerView seeMoreButtonAlpha];
          if (v80 != v78)
          {
            v88[0] = _NSConcreteStackBlock;
            v88[1] = 3221225472;
            v88[2] = sub_10007E4EC;
            v88[3] = &unk_10064DE08;
            v89 = footerView;
            v90 = v78;
            [UIView animateWithDuration:v88 animations:0.2];
          }
        }

        [footerView setAllowsPointerSnapping:v66];
      }
    }
  }
}

- (void)_hideSeeMoreButtonForCell:(id)cell
{
  messageViewController = [cell messageViewController];
  messageContentView = [messageViewController messageContentView];

  footerView = [messageContentView footerView];
  [footerView setIsSemiExpanded:0];
}

- (void)_updateFooterViewFrameForVisibleCells
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  visibleCells = [collectionView visibleCells];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007E650;
  v5[3] = &unk_10064DE30;
  v5[4] = self;
  [visibleCells enumerateObjectsUsingBlock:v5];
}

- (id)captureRestorationState
{
  delegate = [(ConversationViewControllerBase *)self delegate];
  v4 = [delegate conversationViewControllerIsResultOfSearch:self];

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

- (void)restoreState:(id)state
{
  stateCopy = state;
  v5 = +[ConversationViewController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = stateCopy != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restore state? %{BOOL}d", &buf, 8u);
  }

  [(ConversationViewControllerBase *)self setRestorationFuture:stateCopy];
  objc_initWeak(&buf, self);
  v6 = +[EFScheduler mainThreadScheduler];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007EBF8;
  v10[3] = &unk_10064DE80;
  objc_copyWeak(&v11, &buf);
  [stateCopy onScheduler:v6 addSuccessBlock:v10];

  v7 = +[EFScheduler mainThreadScheduler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007F078;
  v8[3] = &unk_10064DEA8;
  objc_copyWeak(&v9, &buf);
  [stateCopy onScheduler:v7 addFailureBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&buf);
}

- (id)newBackgroundMonitor
{
  messageList = [(ConversationViewController *)self messageList];
  if (messageList)
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    visibleCells = [collectionView visibleCells];
    v6 = [visibleCells ef_compactMap:&stru_10064DEE8];

    if ([v6 count])
    {
      v7 = [MailSceneBackgroundQueryMonitor alloc];
      scene = [(ConversationViewControllerBase *)self scene];
      daemonInterface = [scene daemonInterface];
      messageRepository = [daemonInterface messageRepository];
      v11 = [(MailSceneBackgroundQueryMonitor *)v7 initWithMessageListItems:v6 messageList:messageList messageRepository:messageRepository changeTypes:8];
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

- (void)_updateStickySubjectForItemID:(id)d cell:(id)cell indexPath:(id)path
{
  dCopy = d;
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _indexPathForReferenceMessage = +[ConversationViewController log];
    if (os_log_type_enabled(_indexPathForReferenceMessage, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v42 = dCopy;
      v43 = 2114;
      v44 = pathCopy;
      _os_log_impl(&_mh_execute_header, _indexPathForReferenceMessage, OS_LOG_TYPE_DEFAULT, "Will not update sticky subject for itemID:%{public}@ at indexPath:%{public}@", buf, 0x16u);
    }

LABEL_29:

    goto LABEL_30;
  }

  if (-[ConversationViewController _isDisplayingSingleMessage](self, "_isDisplayingSingleMessage") && (-[ConversationViewControllerBase referenceMessageListItem](self, "referenceMessageListItem"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count], v12, v13 == 1))
  {
    [(ConversationViewController *)self setDisplaySubjectItemID:dCopy];
  }

  else if (!cellCopy || [cellCopy expanded])
  {
    _indexPathForReferenceMessage = [(ConversationViewController *)self _indexPathForReferenceMessage];
    displaySubjectItemID = [(ConversationViewController *)self displaySubjectItemID];
    if (displaySubjectItemID)
    {
    }

    else
    {
      referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
      displayMessageItemID = [referenceMessageListItem displayMessageItemID];
      v17 = [dCopy isEqual:displayMessageItemID];

      if (v17)
      {
        [(ConversationViewController *)self setDisplaySubjectItemID:dCopy];
        [(ConversationViewControllerBase *)self setLastExpandedCellIndexPath:_indexPathForReferenceMessage];
      }
    }

    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    displaySubjectItemID2 = [(ConversationViewController *)self displaySubjectItemID];
    v20 = [collectionViewDataSource indexPathForItemIdentifier:displaySubjectItemID2];

    if (v20)
    {
      messageViewController = [cellCopy messageViewController];
      messageContentView = [messageViewController messageContentView];
      headerViewSubjectBlock = [messageContentView headerViewSubjectBlock];

      item = [pathCopy item];
      if (item == [v20 item] || (v25 = objc_msgSend(pathCopy, "item"), -[ConversationViewControllerBase lastExpandedCellIndexPath](self, "lastExpandedCellIndexPath"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "item"), v26, v25 == v27))
      {
        v28 = [v20 copy];
        if (v28)
        {
          item2 = [pathCopy item];
          if (item2 <= [v28 item])
          {
            if ([headerViewSubjectBlock isHidden])
            {
              [(ConversationViewController *)self setDisplaySubjectItemID:dCopy];
              [headerViewSubjectBlock setHidden:0];
              v30 = pathCopy;

              v20 = v30;
            }
          }
        }

        if (([v28 isEqual:v20] & 1) == 0)
        {
          collectionView = [(ConversationViewControllerBase *)self collectionView];
          v32 = [collectionView cellForItemAtIndexPath:v28];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
            v34 = v33;
            if (v33 && [v33 expanded])
            {
              messageViewController2 = [v34 messageViewController];
              messageContentView2 = [messageViewController2 messageContentView];
              headerViewSubjectBlock2 = [messageContentView2 headerViewSubjectBlock];
              [headerViewSubjectBlock2 setHidden:1];
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

      else if (([headerViewSubjectBlock isHidden] & 1) == 0)
      {
        [headerViewSubjectBlock setHidden:1];
      }
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)_ensureSubjectViewLayoutIfNeededAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:pathCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 expanded])
  {
    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    v8 = [collectionViewDataSource itemIdentifierForIndexPath:pathCopy];
    [(ConversationViewController *)self _updateStickySubjectForItemID:v8 cell:v6 indexPath:pathCopy];
  }

  v9.receiver = self;
  v9.super_class = ConversationViewController;
  [(ConversationViewControllerBase *)&v9 _ensureSubjectViewLayoutIfNeededAtIndexPath:pathCopy];
}

- (id)_shouldRecalculateStickySubjectBeforeDeletedItemIDs:(id)ds
{
  dsCopy = ds;
  displaySubjectItemID = [(ConversationViewController *)self displaySubjectItemID];
  if (displaySubjectItemID && [dsCopy containsObject:displaySubjectItemID])
  {
    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    v7 = [collectionViewDataSource indexPathForItemIdentifier:displaySubjectItemID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_recalculateStickySubjectForDeletedIndexPath:(id)path
{
  item = [path item];
  countOfMessages = [(ConversationViewController *)self countOfMessages];
  v6 = countOfMessages;
  if (countOfMessages - 1 >= item)
  {
    v7 = item;
  }

  else
  {
    v7 = countOfMessages - 1;
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
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    v17 = [collectionView cellForItemAtIndexPath:v23[5]];

    collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
    v19 = [collectionViewDataSource itemIdentifierForIndexPath:v23[5]];
    [(ConversationViewController *)self setDisplaySubjectItemID:v19];

    [(ConversationViewControllerBase *)self setLastExpandedCellIndexPath:v23[5]];
    displaySubjectItemID = [(ConversationViewController *)self displaySubjectItemID];
    [(ConversationViewController *)self _updateStickySubjectForItemID:displaySubjectItemID cell:v17 indexPath:v23[5]];
  }

  _Block_object_dispose(&v22, 8);
}

- (double)stickySubjectViewMaxYForConversationHeaderView:(id)view
{
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  displaySubjectItemID = [(ConversationViewController *)self displaySubjectItemID];
  v6 = [collectionViewDataSource indexPathForItemIdentifier:displaySubjectItemID];

  collectionView = [(ConversationViewControllerBase *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:v6];

  v9 = 0.0;
  if (v8 && [v8 expanded])
  {
    [v8 frame];
    MinY = CGRectGetMinY(v15);
    messageViewController = [v8 messageViewController];
    messageContentView = [messageViewController messageContentView];
    headerViewSubjectBlock = [messageContentView headerViewSubjectBlock];
    [headerViewSubjectBlock frame];
    v9 = MinY + 0.0 + CGRectGetMaxY(v16);
  }

  return v9;
}

- (double)stickySubjectViewFirstBaselineForConversationHeaderView:(id)view
{
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  displaySubjectItemID = [(ConversationViewController *)self displaySubjectItemID];
  v6 = [collectionViewDataSource indexPathForItemIdentifier:displaySubjectItemID];

  collectionView = [(ConversationViewControllerBase *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:v6];

  v9 = 0.0;
  if (v8 && [v8 expanded])
  {
    [v8 frame];
    MinY = CGRectGetMinY(v20);
    messageViewController = [v8 messageViewController];
    messageContentView = [messageViewController messageContentView];
    headerViewSubjectBlock = [messageContentView headerViewSubjectBlock];
    [headerViewSubjectBlock frame];
    v14 = CGRectGetMinY(v21);
    displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
    [displayMetrics firstSeparatorToSubjectBaseline];
    v17 = v16;

    view = [(ConversationViewController *)self view];
    [view bounds];
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
    scene = [(ConversationViewControllerBase *)self scene];
    v6 = [(DraftGestureHelper *)v4 initWithConversationViewController:self scene:scene];
    v7 = *(&self->_draftGestureHelper + 4);
    *(&self->_draftGestureHelper + 4) = v6;

    v3 = *(&self->_draftGestureHelper + 4);
  }

  return v3;
}

- (void)_updateGestureForMessageListItem:(id)item
{
  itemCopy = item;
  mailboxes = [itemCopy mailboxes];
  v5 = [mailboxes ef_any:&stru_10064DF30];

  if ((v5 & 1) != 0 || *(&self->_draftGestureHelper + 4))
  {
    draftGestureHelper = [(ConversationViewController *)self draftGestureHelper];
    [draftGestureHelper enableGesture:v5];
  }
}

- (void)setDiagnosticsHelper:(id)helper
{
  helperCopy = helper;
  if (*(&self->_diagnosticsHelper + 4) != helperCopy)
  {
    diagnosticsHelperToken = [(ConversationViewController *)self diagnosticsHelperToken];
    [diagnosticsHelperToken cancel];

    objc_storeStrong((&self->_diagnosticsHelper + 4), helper);
    v6 = [helperCopy registerDiagnosticFileProvider:self];
    [(ConversationViewController *)self setDiagnosticsHelperToken:v6];
  }
}

- (id)messageListItemsForDiagnosticsHelper:(id)helper
{
  helperCopy = helper;
  if ([helperCopy source])
  {
    focusedMessage = +[ConversationViewController log];
    if (os_log_type_enabled(focusedMessage, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      source = [helperCopy source];
      _os_log_impl(&_mh_execute_header, focusedMessage, OS_LOG_TYPE_DEFAULT, "Not providing diagnostics because source is %lu", buf, 0xCu);
    }
  }

  else
  {
    focusedMessage = [(ConversationViewController *)self focusedMessage];
    v6 = +[ConversationViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [focusedMessage ef_publicDescription];
      *buf = 138543618;
      source = ef_publicDescription;
      v13 = 2112;
      v14 = helperCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Providing focusedMessage %{public}@ to %@", buf, 0x16u);
    }

    if (focusedMessage)
    {
      v10 = focusedMessage;
      v8 = [NSArray arrayWithObjects:&v10 count:1];
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)findInteraction:(id)interaction sessionForView:(id)view
{
  v4 = [[UITextSearchingFindSession alloc] initWithSearchableObject:self];

  return v4;
}

- (void)find:(id)find
{
  v3 = sub_1004852A4(self);
  [v3 presentFindNavigatorShowingReplace:0];
}

- (void)clearAllDecoratedFoundText
{
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  [cellConfigurator enumerateExpandedCellsWithBlock:&stru_10064DF50];
}

- (void)decorateFoundTextRange:(id)range inDocument:(id)document usingStyle:(int64_t)style
{
  rangeCopy = range;
  documentCopy = document;
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

  v21 = rangeCopy;
  if (style == 2)
  {
    v11 = sub_1004852D0(self);
    sub_100483458(v11, v21);
  }

  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v13 = [collectionViewDataSource indexPathForItemIdentifier:documentCopy];

  collectionView = [(ConversationViewControllerBase *)self collectionView];
  v15 = [collectionView cellForItemAtIndexPath:v13];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    messageViewController = [v15 messageViewController];
    messageContentView = [messageViewController messageContentView];

    [messageContentView didBeginTextSearch];
    v18 = sub_100483FD0(v21);
    [messageContentView showSearchResultsAtRange:v18 usingStyle:style];
  }
}

- (int64_t)compareFoundRange:(id)range toRange:(id)toRange inDocument:(id)document
{
  rangeCopy = range;
  toRangeCopy = toRange;
  documentCopy = document;
  v11 = sub_1004852D0(self);
  v12 = sub_100056248(v11, rangeCopy, toRangeCopy);

  return v12;
}

- (void)performTextSearchWithQueryString:(id)string usingOptions:(id)options resultAggregator:(id)aggregator
{
  stringCopy = string;
  optionsCopy = options;
  aggregatorCopy = aggregator;
  v11 = +[ConversationViewController log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = stringCopy;
    v15 = 2112;
    v16 = optionsCopy;
    v17 = 2112;
    v18 = aggregatorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beginning search with string %@, options: %@, aggregator: %@", &v13, 0x20u);
  }

  [(ConversationViewController *)self setSearchAggregator:aggregatorCopy];
  v12 = sub_1004852D0(self);
  sub_1000547D8(v12, stringCopy, optionsCopy, aggregatorCopy);

  sub_100080CC4(self, 1);
}

- (int64_t)compareOrderFromDocument:(id)document toDocument:(id)toDocument
{
  documentCopy = document;
  toDocumentCopy = toDocument;
  v8 = documentCopy;
  v9 = toDocumentCopy;
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v11 = [collectionViewDataSource indexPathForItemIdentifier:v8];
  v12 = [collectionViewDataSource indexPathForItemIdentifier:v9];
  v13 = [v11 compare:v12];

  return v13;
}

- (void)scrollRangeToVisible:(id)visible inDocument:(id)document
{
  visibleCopy = visible;
  documentCopy = document;
  v9 = +[ConversationViewController log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "[ConversationViewController scrollRangeToVisible:inDocument:]";
    v27 = 2112;
    v28 = visibleCopy;
    v29 = 2112;
    v30 = documentCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: range: %@, document: %@", buf, 0x20u);
  }

  v10 = documentCopy;
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

  v11 = visibleCopy;
  v12 = sub_100061BD0(self, v10);
  v13 = v12;
  if (v12)
  {
    messageViewController = [v12 messageViewController];
    messageContentView = [messageViewController messageContentView];

    v16 = sub_100483FD0(v11);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10008122C;
    v20[3] = &unk_10064DF78;
    v21 = v11;
    v22 = v10;
    selfCopy = self;
    v17 = messageContentView;
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

  searchAggregator = [(ConversationViewController *)self searchAggregator];
  [searchAggregator invalidate];

  [(ConversationViewController *)self setSearchAggregator:0];
  sub_100080CC4(self, 0);
}

- (void)_decorateFoundRanges:(id)ranges inExpandedCell:(id)cell
{
  rangesCopy = ranges;
  messageViewController = [cell messageViewController];
  messageContentView = [messageViewController messageContentView];

  v20 = messageContentView;
  [messageContentView didBeginTextSearch];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = rangesCopy;
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
    isFindNavigatorVisible = [v5 isFindNavigatorVisible];

    if (isFindNavigatorVisible)
    {
      v6 = sub_1004852A4(self);
      [v6 setSearchText:&stru_100662A88];

      v7 = sub_1004852A4(self);
      [v7 dismissFindNavigator];
    }
  }
}

- (id)conversationSearchMessageListForConversationSearchHandler:(id)handler
{
  messageList = [(ConversationViewController *)self messageList];

  return messageList;
}

- (id)conversationSearchHandler:(id)handler contentRepresentationRequestForItemID:(id)d
{
  v4 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:d];

  return v4;
}

- (BOOL)conversationSearchHandler:(id)handler shouldConsiderQuotedContentForItemID:(id)d
{
  dCopy = d;
  collectionViewDataSource = [(ConversationViewController *)self collectionViewDataSource];
  v7 = [collectionViewDataSource indexPathForItemIdentifier:dCopy];

  LOBYTE(self) = [(ConversationViewController *)self _shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:v7];
  return self ^ 1;
}

- (void)bannerViewDidSelectEditButton:(id)button itemID:(id)d
{
  buttonCopy = button;
  dCopy = d;
  v8 = [(ConversationViewController *)self _contentRequestForMessageWithItemID:dCopy];
  type = [buttonCopy type];
  if (!type)
  {
    message = [v8 message];
    v11 = [MFDatePickerViewController datePickerViewControllerWithType:0 message:message];

    [v11 setDelegate:self];
    v20 = [[UINavigationController alloc] initWithRootViewController:v11];
    [v20 setModalPresentationStyle:7];
    popoverPresentationController = [v20 popoverPresentationController];
    [popoverPresentationController setSourceItem:buttonCopy];

    [(ConversationViewControllerBase *)self presentViewController:v20 animated:1 completion:0];
    goto LABEL_7;
  }

  if (type == 1)
  {
    message2 = [v8 message];
    v27 = message2;
    v15 = [NSArray arrayWithObjects:&v27 count:1];
    undoManager = [(ConversationViewController *)self undoManager];
    v17 = [MFReadLaterTriageInteraction interactionWithMessageListItems:v15 undoManager:undoManager origin:3 actor:2];

    [v17 setDelegate:self];
    [v17 setPresentationSource:buttonCopy];
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

  else if (type == 2)
  {
    scene = [(ConversationViewControllerBase *)self scene];
    v11 = [(MFMessageCompositionTriageInteraction *)MFReplyAllTriageInteraction interactionWithContentRequest:v8 scene:scene];

    message3 = [v8 message];
    mailboxes = [message3 mailboxes];
    [v11 setMessageSourceMailboxes:mailboxes];

    [v11 setShouldPromptToLoadRestOfMessage:0];
    [v11 setDelegate:self];
    [v11 setPresentationSource:buttonCopy];
    [v11 performInteraction];
LABEL_7:
  }
}

- (void)summaryCell:(id)cell withItemID:(id)d didLayoutWithHeight:(double)height
{
  cellCopy = cell;
  dCopy = d;
  [cellCopy bounds];
  v11 = v10;
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  sizeTracker = [cellConfigurator sizeTracker];
  [sizeTracker intrinsicSizeForCellWithItemID:dCopy];
  v15 = v14;
  v17 = v16;

  if (v15 != v11 || v17 != height)
  {
    v20 = dCopy;
    v21 = v15;
    v22 = v17;
    v23 = v11;
    heightCopy = height;
    v18 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
    [v18 performBlock:&v19];
  }
}

- (void)_generativeModelsAvailabilityDidChange:(id)change
{
  [(ConversationViewController *)self _resetManualSummaryItemIDs];

  [(ConversationViewController *)self _reloadDataSource];
}

- (void)_appIntentDidSummarize:(id)summarize
{
  summarizeCopy = summarize;
  v7 = summarizeCopy;
  selfCopy = self;
  v5 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v5 performBlock:&v6];
}

- (void)_appIntentDidSetReminder:(id)reminder
{
  selfCopy = self;
  reminderCopy = reminder;
  v7 = reminderCopy;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)_appIntentDidDeleteReminder:(id)reminder
{
  selfCopy = self;
  reminderCopy = reminder;
  v7 = reminderCopy;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)_appIntentDidRemoveFollowUp:(id)up
{
  selfCopy = self;
  upCopy = up;
  v7 = upCopy;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (id)_referenceMessageListItemIDIfMatchingNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"mailMessageIDs"];

  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  displayMessageObjectID = [referenceMessageListItem displayMessageObjectID];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [displayMessageObjectID globalMessageID]);
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