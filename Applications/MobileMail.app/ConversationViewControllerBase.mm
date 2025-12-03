@interface ConversationViewControllerBase
+ (id)log;
- (BOOL)_canBrowseInDirection:(int)direction;
- (BOOL)_executeIfSplitViewIsAvailable:(id)available;
- (BOOL)_isConversationViewShortcut:(SEL)shortcut;
- (BOOL)_isItemInitiallyUnreadAtIndexPath:(id)path;
- (BOOL)_scrollViewIsScrolledToEnd:(id)end;
- (BOOL)_shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:(id)path;
- (BOOL)_shouldHideStickyFooterViewForTraitCollection:(id)collection;
- (BOOL)_shouldShowArrowsForDisplayMode:(int64_t)mode collapsed:(BOOL)collapsed withTraitCollection:(id)collection;
- (BOOL)_shouldShowConversationHeader;
- (BOOL)_shouldUseDesktopClassNavigationBarForTraitCollection:(id)collection;
- (BOOL)beingPreviewed;
- (BOOL)canHandleAction:(SEL)action withMailMenuCommand:(id)command;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)conversationSearchHandler:(id)handler shouldConsiderQuotedContentForItemID:(id)d;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isFullyVisible;
- (BOOL)isShowingGroupedSenderMessageList;
- (BOOL)isSplitViewAvailable;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (BOOL)shouldAddDoneButtonForConversationNavigationBarItemsManager:(id)manager;
- (BOOL)shouldHideStickyFooterView;
- (BOOL)shouldShowExpandableDigestHeaderView;
- (BOOL)shouldShowStaticDigestHeaderView;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGPoint)initialScrollOffset;
- (CGPoint)layoutInvalidationContentOffset;
- (CGRect)_defaultSourceRectForView:(id)view;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)defaultCellSizeForTracker:(id)tracker;
- (ComposeCapable)scene;
- (ConversationViewControllerBase)initWithScene:(id)scene contactStore:(id)store avatarGenerator:(id)generator;
- (ConversationViewControllerBaseDelegate)delegate;
- (MFArrowControlsView)arrowControlsView;
- (NSDirectionalEdgeInsets)layoutMarginsForCollectionViewFrame:(CGRect)frame;
- (UIBarButtonItem)doneButton;
- (UICollectionView)collectionView;
- (UIEdgeInsets)_calculateCollectionViewInsets;
- (_TtC10MobileMail34StaticConversationSenderHeaderView)staticSenderHeaderView;
- (_TtC10MobileMail36ConversationSenderHeaderViewAnimator)senderHeaderViewAnimator;
- (_TtC10MobileMail38ExpandableConversationSenderHeaderView)expandableSenderHeaderView;
- (_UINavigationBarTitleView)tapGestureTitleView;
- (double)_autoscrollAdjustmentWithBaseOffset:(double)offset;
- (double)_expectedCellWidth;
- (double)_itemSpacing;
- (double)_minimumItemHeight;
- (double)_navigationBarHeight;
- (double)_topSpacingToAvoidStatusBar;
- (double)defaultSemiExpandedHeightForTracker:(id)tracker;
- (double)quickReplyHeightForTracker:(id)tracker;
- (double)stickySubjectViewFirstBaselineForConversationHeaderView:(id)view;
- (double)stickySubjectViewMaxYForConversationHeaderView:(id)view;
- (double)widthForConversationViewCellsForConversationSearchHandler:(id)handler;
- (id)_currentSizeMetadataKey;
- (id)_defaultBarButtonItems;
- (id)_defaultBarButtonsWithFlexibleSpacing:(BOOL)spacing reverseOrder:(BOOL)order;
- (id)_dragItemsForItemAtIndexPath:(id)path;
- (id)_fixedSpaceBarButton;
- (id)_flexibleSpaceBarButton;
- (id)_indexPathForTopMostVisibleRow;
- (id)_indexPathOfMessageViewControllerMessage:(id)message;
- (id)_layoutAttributesForItemAtIndexPath:(id)path;
- (id)_nextIndexPathToSelectFromIndexPath:(id)path withDirection:(int)direction;
- (id)_nextMessageIndexWithDirection:(int)direction;
- (id)_oldestIndexPath;
- (id)_persistentIDForEMMessageObjectID:(id)d;
- (id)_previewActionsForTriageActions:(id)actions excludingActions:(id)excludingActions;
- (id)_recategorizationTriageInteraction:(id)interaction;
- (id)_visibleIndexPathForMessageViewController:(id)controller;
- (id)_visibleNavigationBar;
- (id)archiveButtonItem;
- (id)cellConfigurator:(id)configurator messageItemIDAtIndexPath:(id)path;
- (id)cellConfigurator:(id)configurator targetHeightForExpandingCellAtIndexPath:(id)path;
- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)contentUnavailableConfigurationState;
- (id)conversationSearchHandler:(id)handler contentRepresentationRequestForItemID:(id)d;
- (id)conversationSearchMessageListForConversationSearchHandler:(id)handler;
- (id)deleteButtonItem;
- (id)hostScrollViewForConversationHeaderView:(id)view;
- (id)indexSetForRowsFromIndexPaths:(id)paths section:(int64_t)section;
- (id)layoutInformationForConversationSenderHeaderViewAnimator:(id)animator;
- (id)leadingPreviewAction;
- (id)messageDisplayMetricsForTraitCollection:(id)collection layoutMargins:(UIEdgeInsets)margins;
- (id)messageItemIDAtIndexPath:(id)path;
- (id)messageViewController:(id)controller displayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated;
- (id)mf_preferredTitle;
- (id)moveButtonItem;
- (id)passthroughViews;
- (id)previewActionItems;
- (id)replyButtonItem;
- (id)supplementaryButtonItemForConversationNavigationBarItemsManager:(id)manager;
- (id)trailingPreviewAction;
- (id)transitionCoordinatorForKeyboardAvoidance:(id)avoidance;
- (int64_t)_dataOwnerForDragSessionAtIndexPath:(id)path;
- (int64_t)cellConfigurator:(id)configurator expansionStatusForMessageAtIndexPath:(id)path;
- (int64_t)conversationViewCellSizeTracker:(id)tracker expansionStatusForMessageWithItemID:(id)d;
- (void)_adjustForKeyboardAvoidanceOverlap:(double)overlap;
- (void)_animateWithKeyboard:(id)keyboard animations:(id)animations;
- (void)_attemptLoadMissingMessages;
- (void)_beginResizingConversationView:(CGSize)view;
- (void)_configureSenderHeaderView:(id)view expansionStatus:(int64_t)status;
- (void)_endEditingAnimated:(BOOL)animated;
- (void)_endResizingConversationView;
- (void)_enqueueMessageViewController:(id)controller;
- (void)_enumerateExpandedCellMessageContentViewsWithBlock:(id)block;
- (void)_expansionRecognizerDidRecognize:(id)recognize;
- (void)_hideRemovedSingleMessageCellIfInRemovedIndexPaths:(id)paths;
- (void)_invalidateQuickReplyFooter;
- (void)_maybeAttemptLoadMissingMessages:(id)messages;
- (void)_messageSearchBegan;
- (void)_navigateToMessageInDirection:(int)direction;
- (void)_notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:(id)interaction;
- (void)_pageDownCommandInvoked:(id)invoked;
- (void)_pageUpCommandInvoked:(id)invoked;
- (void)_reloadCellsAtIndexPaths:(id)paths animated:(BOOL)animated;
- (void)_reloadPreparedCells;
- (void)_removeNavigationBarFromSelf;
- (void)_resetBottomPaddingIfDisplayingSingleMessage;
- (void)_restorePinnedScrollPosition;
- (void)_sceneWillDeactivate:(id)deactivate;
- (void)_scrollToItemAtIndexPath:(id)path dynamicOffset:(id)offset shouldAdjustToShowPreviousMessage:(BOOL)message animated:(BOOL)animated pin:(BOOL)pin completion:(id)completion;
- (void)_selectNextMessageCommandInvoked:(id)invoked;
- (void)_selectPreviousMessageCommandInvoked:(id)invoked;
- (void)_setBottomPadding:(double)padding;
- (void)_setNavigationBarTitleViewNeedsLayout;
- (void)_showModalViewController:(id)controller fromView:(id)view sourceRect:(CGRect)rect animated:(BOOL)animated;
- (void)_showSingleMessage:(id)message animationOffset:(CGPoint)offset initialScrollOffset:(CGPoint)scrollOffset;
- (void)_shrinkBottomPaddingIfNecessary;
- (void)_shrinkMessagesToBarButton:(id)button withInteraction:(id)interaction completionHandler:(id)handler;
- (void)_shrinkMessagesToView:(id)view withInteraction:(id)interaction completionHandler:(id)handler;
- (void)_splitViewStateChanged:(id)changed;
- (void)_toggleCellGroupOpacityIfNeeded:(id)needed displaying:(BOOL)displaying;
- (void)_toggleCellsGroupOpacityDuringRotationWithCoordinator:(id)coordinator;
- (void)_updateAllowQuickReplyForMessageListItem:(id)item;
- (void)_updateBackgroundColor;
- (void)_updateBarButtonsAnimated:(BOOL)animated force:(BOOL)force isShowingTitle:(BOOL)title;
- (void)_updateBarButtonsAnimated:(BOOL)animated withDisplayMode:(int64_t)mode withTraitCollection:(id)collection collapsed:(BOOL)collapsed force:(BOOL)force isShowingTitle:(BOOL)title;
- (void)_updateBottomPadding;
- (void)_updateBottomPaddingWithLastItemHeight:(double)height;
- (void)_updateCells;
- (void)_updateCollectionViewMargins;
- (void)_updateConversationHeaderViewLayoutMarginsWithSuperviewMargins:(NSDirectionalEdgeInsets)margins;
- (void)_updateConversationSortOrder;
- (void)_updateDisplayMetrics;
- (void)_updateForceCollapsedSenderHeader;
- (void)_updateIncludeRelatedMessages;
- (void)_updateLayout;
- (void)_updateSenderHeaderLayoutTopConstrainntIfNeeded;
- (void)_updateSenderHeaderView:(id)view viewModel:(id)model expansionStatus:(int64_t)status;
- (void)_updateTitle;
- (void)cellConfigurator:(id)configurator didConfigureCell:(id)cell atIndexPath:(id)path;
- (void)cellConfigurator:(id)configurator didInvalidateConfigurationForCellsAtIndexPaths:(id)paths;
- (void)cellConfigurator:(id)configurator wantsToReloadCellAtIndexPaths:(id)paths animated:(BOOL)animated;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionViewMarginsDidChange:(NSDirectionalEdgeInsets)change;
- (void)contactCardInteractions:(id)interactions triggerSearchForDisplayName:(id)name emailAddresses:(id)addresses;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)dealloc;
- (void)done:(id)done;
- (void)forwardButtonTapped:(id)tapped;
- (void)loadView;
- (void)messageViewController:(id)controller didChangeSelectedHTML:(id)l;
- (void)messageViewController:(id)controller didFinishRenderingWithHeight:(double)height;
- (void)messageViewController:(id)controller didStartDownloadForContentItemWithProgress:(id)progress;
- (void)messageViewController:(id)controller didTapRevealActionsButton:(id)button;
- (void)messageViewController:(id)controller didTapShowMoreAtCollapsedOffset:(CGPoint)offset expandedOffset:(CGPoint)expandedOffset;
- (void)messageViewController:(id)controller didTapUndoSendButton:(id)button;
- (void)messageViewController:(id)controller webViewDidTerminateWithReason:(int64_t)reason;
- (void)messageViewControllerDidDisplayContent:(id)content success:(BOOL)success;
- (void)messageViewControllerDidFinishFirstPaint:(id)paint;
- (void)messageViewControllerDidTapAddressAtom:(id)atom contactViewController:(id)controller;
- (void)navigateToMessageInDirection:(int)direction;
- (void)presentPreviousDraftPicker;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)previewCancelled;
- (void)previewDidCommit:(BOOL)commit;
- (void)replyAllButtonTapped:(id)tapped;
- (void)replyButtonTapped:(id)tapped;
- (void)revealActionsButtonTapped:(id)tapped;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setBeingPreviewed:(BOOL)previewed;
- (void)setDidCompleteFirstPaint:(BOOL)paint;
- (void)setDisableScrollPinning:(BOOL)pinning;
- (void)setDisplayMetrics:(id)metrics;
- (void)setDoneButton:(id)button;
- (void)setPinnedItem:(id)item;
- (void)setReferenceMessageListItem:(id)item;
- (void)setResizingState:(int64_t)state;
- (void)setShouldShowNoMessageSelectedView:(BOOL)view;
- (void)showAllMessagesForConversationSenderHeaderView:(id)view;
- (void)showCategoryMessagesForConversationSenderHeaderView:(id)view;
- (void)tappedSenderHeader:(id)header;
- (void)traitCollectionDidChange:(id)change;
- (void)updateArrowControlsView;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateNavigationItemChromelessConfiguration;
- (void)updateUserActivityState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ConversationViewControllerBase

- (void)_updateForceCollapsedSenderHeader
{
  v3 = +[NSUserDefaults em_userDefaults];
  v4 = [v3 BOOLForKey:EMUserDefaultForceCollapsedSenderHeader];

  traitCollection = [(ConversationViewControllerBase *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  if (verticalSizeClass == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if (v7 != [(ConversationViewControllerBase *)self forceCollapsedSenderHeader])
  {
    [(ConversationViewControllerBase *)self setForceCollapsedSenderHeader:v7];

    [(ConversationViewControllerBase *)self _updateTitle];
  }
}

- (ConversationViewControllerBaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UICollectionView)collectionView
{
  [(ConversationViewControllerBase *)self loadViewIfNeeded];
  conversationView = self->_conversationView;

  return conversationView;
}

- (void)loadView
{
  v42.receiver = self;
  v42.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v42 loadView];
  v3 = objc_alloc_init(MFSwipableCollectionViewLayout);
  conversationLayout = self->_conversationLayout;
  self->_conversationLayout = v3;

  v5 = sub_10001F2A0(self);
  v9 = [[_MFConversationViewCollectionView alloc] initWithFrame:self->_conversationLayout collectionViewLayout:v5, v6, v7, v8];
  conversationView = self->_conversationView;
  self->_conversationView = v9;

  [(_MFConversationViewCollectionView *)self->_conversationView setAutoresizingMask:18];
  [(_MFConversationViewCollectionView *)self->_conversationView setInsetsLayoutMarginsFromSafeArea:0];
  [(_MFConversationViewCollectionView *)self->_conversationView setDelegate:self];
  [(_MFConversationViewCollectionView *)self->_conversationView setDragDelegate:self];
  [(_MFConversationViewCollectionView *)self->_conversationView setAllowsSelection:0];
  [(_MFConversationViewCollectionView *)self->_conversationView setAlwaysBounceVertical:1];
  v11 = +[UIColor mailSingletonConversationViewBackgroundColor];
  [(_MFConversationViewCollectionView *)self->_conversationView setBackgroundColor:v11];

  [(_MFConversationViewCollectionView *)self->_conversationView setPrefetchingEnabled:0];
  [(_MFConversationViewCollectionView *)self->_conversationView setOpaque:1];
  [(_MFConversationViewCollectionView *)self->_conversationView setContentInsetAdjustmentBehavior:2];
  [(_MFConversationViewCollectionView *)self->_conversationView _setIndicatorInsetAdjustmentBehavior:1];
  [(ConversationViewControllerBase *)self _calculateCollectionViewInsets];
  [(_MFConversationViewCollectionView *)self->_conversationView setContentInset:?];
  if ([(ConversationViewControllerBase *)self allowQuickReply])
  {
    [(_MFConversationViewCollectionView *)self->_conversationView setKeyboardDismissMode:2];
  }

  view = [(ConversationViewControllerBase *)self view];
  [view addSubview:self->_conversationView];

  v13 = [[MFConversationCellConfigurator alloc] initWithCollectionView:self->_conversationView];
  cellConfigurator = self->_cellConfigurator;
  self->_cellConfigurator = v13;

  [(MFConversationCellConfigurator *)self->_cellConfigurator setDelegate:self];
  contactStore = [(ConversationViewControllerBase *)self contactStore];
  [(MFConversationCellConfigurator *)self->_cellConfigurator setContactStore:contactStore];

  avatarGenerator = [(ConversationViewControllerBase *)self avatarGenerator];
  [(MFConversationCellConfigurator *)self->_cellConfigurator setAvatarGenerator:avatarGenerator];

  sizeTracker = [(MFConversationCellConfigurator *)self->_cellConfigurator sizeTracker];
  [sizeTracker setDelegate:self];

  [(ConversationViewControllerBase *)self _updateLayout];
  restorationFuture = [(ConversationViewControllerBase *)self restorationFuture];
  v19 = restorationFuture == 0;

  [(ConversationViewControllerBase *)self _doSetShouldShowNoMessageSelectedView:v19];
  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"conversation view did load"];
  navigationItem = [(ConversationViewControllerBase *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  v21 = self->_findInteraction;
  if (v21)
  {
    [(_MFConversationViewCollectionView *)self->_conversationView addInteraction:v21];
  }

  v22 = objc_alloc_init(UILayoutGuide);
  senderHeaderLayoutGuide = self->_senderHeaderLayoutGuide;
  self->_senderHeaderLayoutGuide = v22;

  view2 = [(ConversationViewControllerBase *)self view];
  [view2 addLayoutGuide:self->_senderHeaderLayoutGuide];

  topAnchor = [(UILayoutGuide *)self->_senderHeaderLayoutGuide topAnchor];
  view3 = [(ConversationViewControllerBase *)self view];
  topAnchor2 = [view3 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  senderHeaderLayoutGuideTopConstraint = self->_senderHeaderLayoutGuideTopConstraint;
  self->_senderHeaderLayoutGuideTopConstraint = v28;

  leadingAnchor = [(UILayoutGuide *)self->_senderHeaderLayoutGuide leadingAnchor];
  view4 = [(ConversationViewControllerBase *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  senderHeaderLayoutGuideLeadingConstraint = self->_senderHeaderLayoutGuideLeadingConstraint;
  self->_senderHeaderLayoutGuideLeadingConstraint = v33;

  trailingAnchor = [(UILayoutGuide *)self->_senderHeaderLayoutGuide trailingAnchor];
  view5 = [(ConversationViewControllerBase *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  senderHeaderLayoutGuideTrailingConstraint = self->_senderHeaderLayoutGuideTrailingConstraint;
  self->_senderHeaderLayoutGuideTrailingConstraint = v38;

  v40 = self->_senderHeaderLayoutGuideLeadingConstraint;
  v43[0] = self->_senderHeaderLayoutGuideTopConstraint;
  v43[1] = v40;
  v43[2] = self->_senderHeaderLayoutGuideTrailingConstraint;
  v41 = [NSArray arrayWithObjects:v43 count:3];
  [NSLayoutConstraint activateConstraints:v41];
}

- (BOOL)shouldShowStaticDigestHeaderView
{
  if (![(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    return 0;
  }

  traitCollection = [(ConversationViewControllerBase *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    v4 = +[UIDevice mf_isPadIdiom];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isShowingGroupedSenderMessageList
{
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (UIEdgeInsets)_calculateCollectionViewInsets
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView contentInset];
  v5 = v4;
  v7 = v6;

  v8 = 0.0;
  v9 = 0.0;
  if (![(ConversationViewControllerBase *)self beingPreviewed])
  {
    navigationController = [(ConversationViewControllerBase *)self navigationController];
    presentingViewController = [navigationController presentingViewController];

    if (!presentingViewController)
    {
      [(ConversationViewControllerBase *)self _topSpacingToAvoidStatusBar];
      v8 = v12;
    }

    [(ConversationViewControllerBase *)self _navigationBarHeight];
    v14 = v13;
    if ([(ConversationViewControllerBase *)self shouldShowStaticDigestHeaderView])
    {
      staticSenderHeaderView = [(ConversationViewControllerBase *)self staticSenderHeaderView];
      [staticSenderHeaderView frame];
      v17 = v16;
      [(ConversationViewControllerBase *)self _itemSpacing];
      v8 = v17 + v18 + -10.0;
    }

    else
    {
      v8 = v8 + v14;
    }

    if (!+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") || (-[ConversationViewControllerBase traitCollection](self, "traitCollection"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 horizontalSizeClass], v19, v20 == 1))
    {
      [(ConversationViewControllerBase *)self _itemSpacing];
      v8 = v8 + v21;
    }

    [(ConversationViewControllerBase *)self _itemSpacing];
    v23 = v22;
    view = [(ConversationViewControllerBase *)self view];
    [view safeAreaInsets];
    v9 = v23 + v25 + self->_adjustmentForKeyboard;
  }

  v26 = v8;
  v27 = v5;
  v28 = v9;
  v29 = v7;
  result.right = v29;
  result.bottom = v28;
  result.left = v27;
  result.top = v26;
  return result;
}

- (BOOL)beingPreviewed
{
  previewState = [(ConversationViewControllerBase *)self previewState];
  beingPreviewed = [previewState beingPreviewed];

  return beingPreviewed;
}

- (ComposeCapable)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (double)_navigationBarHeight
{
  if ([(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView])
  {
    senderHeaderViewAnimator = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
    [senderHeaderViewAnimator currentHeight];
    v5 = v4;
  }

  else
  {
    senderHeaderViewAnimator = [(ConversationViewControllerBase *)self navigationController];
    navigationBar = [senderHeaderViewAnimator navigationBar];
    [navigationBar frame];
    v5 = v7;
  }

  return v5;
}

- (BOOL)shouldShowExpandableDigestHeaderView
{
  traitCollection = [(ConversationViewControllerBase *)self traitCollection];
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    v4 = [traitCollection horizontalSizeClass] == 1 || objc_msgSend(traitCollection, "userInterfaceIdiom") == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)_itemSpacing
{
  v3 = 10.0;
  if ((+[UIDevice mf_isPadIdiom]& 1) == 0 && (_os_feature_enabled_impl() & 1) == 0 && (!_os_feature_enabled_impl() || (EMIsGreymatterAvailable() & 1) == 0))
  {
    if ([(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
    {
      return 0.0;
    }

    else
    {
      return 10.0;
    }
  }

  return v3;
}

- (void)_updateLayout
{
  viewIfLoaded = [(ConversationViewControllerBase *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    if (EMBlackPearlIsFeatureEnabled())
    {
      if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
      {
        [(ConversationViewControllerBase *)self _updateSenderHeaderLayoutTopConstrainntIfNeeded];
        [(ConversationViewControllerBase *)self horizontalPadding];
        v6 = v5;
        senderHeaderLayoutGuideLeadingConstraint = [(ConversationViewControllerBase *)self senderHeaderLayoutGuideLeadingConstraint];
        [senderHeaderLayoutGuideLeadingConstraint setConstant:v6];

        [(ConversationViewControllerBase *)self horizontalPadding];
        v9 = v8;
        senderHeaderLayoutGuideTrailingConstraint = [(ConversationViewControllerBase *)self senderHeaderLayoutGuideTrailingConstraint];
        [senderHeaderLayoutGuideTrailingConstraint setConstant:-v9];
      }

      [(ConversationViewControllerBase *)self _updateForceCollapsedSenderHeader];
    }

    [(ConversationViewControllerBase *)self _calculateCollectionViewInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    [collectionView contentInset];
    if (v23 == v14 && v20 == v12 && v22 == v18)
    {
      v24 = v21;

      if (v24 == v16)
      {
LABEL_16:
        v27 = self->_conversationLayout;
        [(ConversationViewControllerBase *)self _itemSpacing];
        v29 = v28;
        [(MFSwipableCollectionViewLayout *)v27 minimumLineSpacing];
        if (v30 != v29)
        {
          [(MFSwipableCollectionViewLayout *)v27 setMinimumLineSpacing:v29];
        }

        [(ConversationViewControllerBase *)self _updateCollectionViewMargins];
        collectionView2 = [(ConversationViewControllerBase *)self collectionView];
        [(ConversationViewControllerBase *)self _updateManualSummaryUIForScroll:collectionView2];

        [(ConversationViewControllerBase *)self _updateBackgroundColor];
        goto LABEL_19;
      }
    }

    else
    {
    }

    collectionView3 = [(ConversationViewControllerBase *)self collectionView];
    [collectionView3 setContentInset:{v12, v14, v16, v18}];

    goto LABEL_16;
  }

  v25 = +[ConversationViewController log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 134217984;
    v33 = viewIfLoaded;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Skip _updateLayout since window is nil (view:%p)", &v32, 0xCu);
  }

LABEL_19:
}

+ (id)log
{
  if (qword_1006DCE30 != -1)
  {
    sub_100485328();
  }

  v3 = qword_1006DCE28;

  return v3;
}

- (ConversationViewControllerBase)initWithScene:(id)scene contactStore:(id)store avatarGenerator:(id)generator
{
  sceneCopy = scene;
  storeCopy = store;
  generatorCopy = generator;
  if (!storeCopy)
  {
    memset(__b, 170, sizeof(__b));
    LODWORD(__b[4]) = 0;
    *v52 = 0xE00000001;
    v53 = 1;
    v54 = getpid();
    v50 = 648;
    if (!sysctl(v52, 4u, __b, &v50, 0, 0) && (__b[4] & 0x800) != 0)
    {
      __debugbreak();
    }

    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10048533C(v11);
    }
  }

  v49.receiver = self;
  v49.super_class = ConversationViewControllerBase;
  v12 = [(ConversationViewControllerBase *)&v49 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_scene, sceneCopy);
    objc_storeStrong(&v13->_contactStore, store);
    objc_storeStrong(&v13->_avatarGenerator, generator);
    v14 = [[_TtC10MobileMail37ConversationNavigationBarItemsManager alloc] initWithScene:sceneCopy delegate:v13 actionHandler:v13 arrowDelegate:v13];
    barItemsManager = v13->_barItemsManager;
    v13->_barItemsManager = v14;

    v16 = +[NSMutableDictionary dictionary];
    cellHeightCache = v13->_cellHeightCache;
    v13->_cellHeightCache = v16;

    v18 = [[MFConversationCurrentVisibleMessageStrategy alloc] initWithConversationViewController:v13];
    currentVisibleMessageStrategy = v13->_currentVisibleMessageStrategy;
    v13->_currentVisibleMessageStrategy = v18;

    v20 = [[MFConversationHandoffCoordinator alloc] initWithUserActivityProvider:v13 currentVisibleMessageStrategy:v13->_currentVisibleMessageStrategy];
    handoffCoordinator = v13->_handoffCoordinator;
    v13->_handoffCoordinator = v20;

    v22 = [MFConversationAssistantContextProvider alloc];
    v23 = v13->_currentVisibleMessageStrategy;
    contactStore = [(ConversationViewControllerBase *)v13 contactStore];
    v25 = [(MFConversationAssistantContextProvider *)v22 initWithCurrentVisibileMessageStrategy:v23 contactStore:contactStore];
    assistantContextProvider = v13->_assistantContextProvider;
    v13->_assistantContextProvider = v25;

    v13->_conversationSortOrder = [(ConversationViewControllerBase *)v13 _currentConversationSortOrderPreference];
    if (sub_10000CA34(0))
    {
      v27 = 32;
    }

    else
    {
      v27 = 0;
    }

    *&v13->_flags = *&v13->_flags & 0xDF | v27;
    v28 = [EFLocked alloc];
    v29 = +[NSNull null];
    v30 = [v28 initWithObject:v29];
    quickReplyAnimationContext = v13->_quickReplyAnimationContext;
    v13->_quickReplyAnimationContext = v30;

    v32 = +[NSNotificationCenter defaultCenter];
    [v32 addObserver:v13 selector:"_updateConversationSortOrder" name:MailApplicationDidChangeConversationOrder object:0];
    [v32 addObserver:v13 selector:"_updateIncludeRelatedMessages" name:MailApplicationDidChangeConversationViewIncludesRelatedMessages object:0];
    [v32 addObserver:v13 selector:"_fontMetricCacheDidInvalidate:" name:MFFontMetricCacheInvalidationNotification object:0];
    [v32 addObserver:v13 selector:"_splitViewStateChanged:" name:@"MailSplitViewControllerViewStateChangedNotification" object:0];
    [v32 addObserver:v13 selector:"_sceneDidActivate:" name:UISceneDidActivateNotification object:sceneCopy];
    [v32 addObserver:v13 selector:"_sceneWillDeactivate:" name:UISceneWillDeactivateNotification object:sceneCopy];
    [v32 addObserver:v13 selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
    v33 = [[MFConversationPreviewState alloc] initWithBackgroundUpdater:0];
    previewState = v13->_previewState;
    v13->_previewState = v33;

    v35 = [[MFMessageViewControllerReuseQueue alloc] initWithScene:sceneCopy];
    messageViewControllerReuseQueue = v13->_messageViewControllerReuseQueue;
    v13->_messageViewControllerReuseQueue = v35;

    *&v13->_flags &= ~0x80u;
    v37 = objc_alloc_init(BlankConversationController);
    blankConversationController = v13->_blankConversationController;
    v13->_blankConversationController = v37;

    if (_os_feature_enabled_impl())
    {
      +[_TtC10MobileMail14QuickReplyView defaultHeight];
      v13->_quickReplyHeight = v39;
    }

    daemonInterface = [sceneCopy daemonInterface];
    mailboxRepository = [daemonInterface mailboxRepository];
    mailboxRepository = v13->_mailboxRepository;
    v13->_mailboxRepository = mailboxRepository;

    if (EMBlackPearlIsFeatureEnabled())
    {
      objc_initWeak(__b, v13);
      v43 = +[NSUserDefaults em_userDefaults];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100084904;
      v47[3] = &unk_10064E0C0;
      objc_copyWeak(&v48, __b);
      v44 = [v43 ef_observeKeyPath:EMUserDefaultForceCollapsedSenderHeader options:5 autoCancelToken:1 usingBlock:v47];
      forceCollapsedSenderHeaderToken = v13->_forceCollapsedSenderHeaderToken;
      v13->_forceCollapsedSenderHeaderToken = v44;

      objc_destroyWeak(&v48);
      objc_destroyWeak(__b);
    }
  }

  return v13;
}

- (void)dealloc
{
  v3 = +[MFKeyboardAvoidance sharedController];
  [v3 unregisterKeyboardAvoidable:self];

  [(ConversationViewControllerBase *)self invalidateAutomaticMarkAsReadForAllMessages];
  v4.receiver = self;
  v4.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v4 dealloc];
}

- (void)_sceneWillDeactivate:(id)deactivate
{
  blankConversationController = [(ConversationViewControllerBase *)self blankConversationController];
  [blankConversationController reportMetrics];
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v14 viewWillAppear:appear];
  scene = [(ConversationViewControllerBase *)self scene];
  if (![(ConversationViewControllerBase *)self didNotifyExtendedLaunchTracker])
  {
    extendedLaunchTracker = [scene extendedLaunchTracker];
    [extendedLaunchTracker observeViewController:self scene:scene];
  }

  *&self->_flags |= 0x10u;
  [(ConversationViewControllerBase *)self _updateBarButtonsAnimated:0 force:1];
  [(ConversationViewControllerBase *)self _updateCollectionViewMargins];
  [(ConversationViewControllerBase *)self _updateDisplayMetrics];
  [(ConversationViewControllerBase *)self _updateTitle];
  [(ConversationViewControllerBase *)self updateNavigationItemChromelessConfiguration];
  *&self->_flags &= ~0x40u;
  if (+[UIDevice mf_isPadIdiom])
  {
    popoverManager = [scene popoverManager];
    [popoverManager addPassthroughViewProvider:self];
  }

  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  if (referenceMessageListItem)
  {

LABEL_7:
    [(ConversationViewControllerBase *)self setShouldShowNoMessageSelectedView:0];
    goto LABEL_12;
  }

  v8 = +[UIApplication sharedApplication];
  accountsProvider = [v8 accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];
  v11 = [displayedAccounts count];

  if (!v11)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained selectInitialMessageForConversationViewController:self];
  }

LABEL_12:
  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"conversation view will appear"];
  if (+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") && [UIApp launchedToTest] && !-[ConversationViewControllerBase didNotifyExtendedLaunchTracker](self, "didNotifyExtendedLaunchTracker"))
  {
    [(ConversationViewControllerBase *)self setDidNotifyExtendedLaunchTracker:1];
    extendedLaunchTracker2 = [scene extendedLaunchTracker];
    [extendedLaunchTracker2 didFinishLoadViewController:self scene:scene];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v28.receiver = self;
  v28.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v28 viewDidAppear:appear];
  sub_100084A18(self, 1);
  if ([(ConversationViewControllerBase *)self isPrimary])
  {
    if (!self->_cellExpansionRecognizer)
    {
      v4 = [[MFConversationCellExpansionGestureRecognizer alloc] initWithTarget:self action:"_expansionRecognizerDidRecognize:"];
      cellExpansionRecognizer = self->_cellExpansionRecognizer;
      self->_cellExpansionRecognizer = v4;

      [(MFConversationCellExpansionGestureRecognizer *)self->_cellExpansionRecognizer setDelegate:self];
    }

    view = [(ConversationViewControllerBase *)self view];
    cellExpansionRecognizer = [(ConversationViewControllerBase *)self cellExpansionRecognizer];
    [view addGestureRecognizer:cellExpansionRecognizer];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    interactions = [collectionView interactions];

    v10 = [interactions countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(interactions);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v13 _setLiftDelay:0.57];
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [interactions countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }
  }

  previewState = [(ConversationViewControllerBase *)self previewState];
  shouldScheduleMarkMessageAsRead = [previewState shouldScheduleMarkMessageAsRead];

  if (shouldScheduleMarkMessageAsRead)
  {
    [(ConversationViewControllerBase *)self scheduleAutomaticMarkAsReadForReferenceMessage];
  }

  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"conversation view did appear"];
  v16 = +[MFKeyboardAvoidance sharedController];
  [v16 registerKeyboardAvoidable:self];

  v17 = MFMessageSelectionLifecycleSignpostLog();
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  itemID = [referenceMessageListItem itemID];
  v20 = os_signpost_id_make_with_pointer(v17, itemID);

  v21 = MFMessageSelectionLifecycleSignpostLog();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, v20, "Message selection lifecycle", "Conversation view did appear", v23, 2u);
  }
}

- (void)_enumerateExpandedCellMessageContentViewsWithBlock:(id)block
{
  blockCopy = block;
  resizingContentViews = [(ConversationViewControllerBase *)self resizingContentViews];
  v6 = [resizingContentViews mutableCopy];

  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000853D0;
  v13[3] = &unk_10064E0E8;
  v8 = blockCopy;
  v15 = v8;
  v9 = v6;
  v14 = v9;
  [cellConfigurator enumerateExpandedCellsWithBlock:v13];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008546C;
  v11[3] = &unk_10064E110;
  v10 = v8;
  v12 = v10;
  [v9 enumerateObjectsUsingBlock:v11];
}

- (void)setResizingState:(int64_t)state
{
  if (self->_resizingState != state)
  {
    self->_resizingState = state;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000857B8;
    v21[3] = &unk_10064E130;
    v22 = state != 2;
    v5 = objc_retainBlock(v21);
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000857C4;
    v18[3] = &unk_10064D928;
    objc_copyWeak(&v19, &location);
    v6 = objc_retainBlock(v18);
    if (state > 1)
    {
      if (state == 3)
      {
        [(ConversationViewControllerBase *)self _enumerateExpandedCellMessageContentViewsWithBlock:v5];
        (v6[2])(v6, 1);
      }

      else if (state == 2)
      {
        collectionView = [(ConversationViewControllerBase *)self collectionView];
        [collectionView directionalLayoutMargins];
        [(ConversationViewControllerBase *)self _updateConversationHeaderViewLayoutMarginsWithSuperviewMargins:?];

        [(ConversationViewControllerBase *)self _enumerateExpandedCellMessageContentViewsWithBlock:v5];
      }

      goto LABEL_12;
    }

    if (state)
    {
      if (state != 1)
      {
LABEL_12:

        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);

        return;
      }

      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = sub_100085910;
      v14 = sub_100085920;
      v15 = objc_alloc_init(NSMutableArray);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100085928;
      v9[3] = &unk_10064E1A0;
      v9[4] = &v10;
      [(ConversationViewControllerBase *)self _enumerateExpandedCellMessageContentViewsWithBlock:v9];
      [(ConversationViewControllerBase *)self setResizingContentViews:v11[5]];
      _Block_object_dispose(&v10, 8);
      v7 = v15;
    }

    else
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100085900;
      v16[3] = &unk_10064E178;
      v17 = v5;
      [(ConversationViewControllerBase *)self _enumerateExpandedCellMessageContentViewsWithBlock:v16];
      [(ConversationViewControllerBase *)self setResizingContentViews:0];
      (v6[2])(v6, 0);
      v7 = v17;
    }

    goto LABEL_12;
  }
}

- (id)messageItemIDAtIndexPath:(id)path
{
  pathCopy = path;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase messageItemIDAtIndexPath:]", "ConversationViewControllerBase.m", 574, "0");
}

- (void)_showSingleMessage:(id)message animationOffset:(CGPoint)offset initialScrollOffset:(CGPoint)scrollOffset
{
  messageCopy = message;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _showSingleMessage:animationOffset:initialScrollOffset:]", "ConversationViewControllerBase.m", 591, "0");
}

- (id)_indexPathOfMessageViewControllerMessage:(id)message
{
  messageCopy = message;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _indexPathOfMessageViewControllerMessage:]", "ConversationViewControllerBase.m", 603, "0");
}

- (BOOL)_isItemInitiallyUnreadAtIndexPath:(id)path
{
  pathCopy = path;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _isItemInitiallyUnreadAtIndexPath:]", "ConversationViewControllerBase.m", 607, "0");
}

- (void)_enqueueMessageViewController:(id)controller
{
  controllerCopy = controller;
  messageViewControllerReuseQueue = [(ConversationViewControllerBase *)self messageViewControllerReuseQueue];
  [messageViewControllerReuseQueue enqueueMessageViewController:controllerCopy];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v7 viewDidLayoutSubviews];
  if ([(ConversationViewControllerBase *)self resizingState]!= 2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100085E0C;
    v6[3] = &unk_10064C7E8;
    v6[4] = self;
    v3 = objc_retainBlock(v6);
    if (![(ConversationViewControllerBase *)self isPerformingQuickReplySendAnimation])
    {
      previewState = [(ConversationViewControllerBase *)self previewState];
      shouldScrollToReferenceMessage = [previewState shouldScrollToReferenceMessage];

      if (shouldScrollToReferenceMessage)
      {
        [UIView performWithoutAnimation:v3];
        [(ConversationViewControllerBase *)self _scrollToInitialPosition];
      }

      else
      {
        (v3[2])(v3);
      }
    }
  }
}

- (void)collectionViewMarginsDidChange:(NSDirectionalEdgeInsets)change
{
  trailing = change.trailing;
  bottom = change.bottom;
  leading = change.leading;
  top = change.top;
  view = [(ConversationViewControllerBase *)self view];
  [view mf_prefersRightToLeftInterfaceLayout];
  MFEdgeInsetsFromDirectionalEdgeInsets();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v37 = bottom;

  displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
  [displayMetrics layoutMargins];
  if (v11 == v19 && v9 == v16 && v15 == v18)
  {
    v22 = v17;

    if (v13 == v22)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  [(ConversationViewControllerBase *)self _updateDisplayMetrics];
  if ([(ConversationViewControllerBase *)self resizingState]!= 3)
  {
    [(ConversationViewControllerBase *)self _restorePinnedScrollPosition];
  }

LABEL_12:
  displayMetrics2 = [(ConversationViewControllerBase *)self displayMetrics];
  [displayMetrics2 headerMinAvatarLeadingSpacing];
  v24 = v23;
  horizontalPadding = self->_horizontalPadding;
  [displayMetrics2 headerAvatarMaxOffset];
  v27 = leading - horizontalPadding - v26;
  if (v24 >= v27)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  [displayMetrics2 headerMinAvatarLeadingSpacing];
  v30 = v29;
  v31 = self->_horizontalPadding;
  [displayMetrics2 headerAvatarMaxOffset];
  v33 = v32;
  staticSenderHeaderView = [(ConversationViewControllerBase *)self staticSenderHeaderView];
  v35 = staticSenderHeaderView;
  if (v30 >= trailing - v31 - v33)
  {
    v36 = v30;
  }

  else
  {
    v36 = trailing - v31 - v33;
  }

  [staticSenderHeaderView setDirectionalLayoutMargins:{top, v28, v38, v36}];
}

- (NSDirectionalEdgeInsets)layoutMarginsForCollectionViewFrame:(CGRect)frame
{
  [(ConversationViewControllerBase *)self systemMinimumLayoutMargins];
  view = [(ConversationViewControllerBase *)self view];
  [view mf_prefersRightToLeftInterfaceLayout];
  MFEdgeInsetsFromDirectionalEdgeInsets();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view2 = [(ConversationViewControllerBase *)self view];
  [view2 safeAreaInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [MFReadableContentMarginCalculator readableContentMarginsForWidth:CGRectGetWidth(frame) minMargins:v6 safeAreaInsets:v8, v10, v12, v15, v17, v19, v21];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  view3 = [(ConversationViewControllerBase *)self view];
  mf_prefersRightToLeftInterfaceLayout = [view3 mf_prefersRightToLeftInterfaceLayout];
  if (mf_prefersRightToLeftInterfaceLayout)
  {
    v32 = v29;
  }

  else
  {
    v32 = v25;
  }

  if (mf_prefersRightToLeftInterfaceLayout)
  {
    v29 = v25;
  }

  for (i = [(ConversationViewControllerBase *)self navigationController];
  {
    navigationController = [i navigationController];

    if (!navigationController)
    {
      break;
    }

    navigationController2 = [i navigationController];
  }

  if (i)
  {
    traitCollection = [(ConversationViewControllerBase *)self traitCollection];
    [traitCollection mf_leadingEdgeToBackButtonText];
    v38 = v32 + v37;

    v29 = v38;
  }

  else
  {
    v39 = +[UIDevice mf_isPadIdiom];
    v40 = 40.0;
    if (!v39)
    {
      v40 = 22.0;
    }

    if (v32 >= v40)
    {
      v38 = v32;
    }

    else
    {
      v38 = v40;
    }

    if (v29 < v40)
    {
      v29 = v40;
    }
  }

  v41 = v23;
  v42 = v38;
  v43 = v27;
  v44 = v29;
  result.trailing = v44;
  result.bottom = v43;
  result.leading = v42;
  result.top = v41;
  return result;
}

- (void)_updateCollectionViewMargins
{
  [(_MFConversationViewCollectionView *)self->_conversationView updateLayoutMargins];

  [(ConversationViewControllerBase *)self _updateConversationHeaderViewLayoutMarginsWithSuperviewMargins:?];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v6 viewWillDisappear:?];
  [(ConversationViewControllerBase *)self _endEditingAnimated:disappearCopy];
  if ([(ConversationViewControllerBase *)self allowQuickReply])
  {
    [(ConversationViewControllerBase *)self _dismissKeyboardIfNecessary];
    if (self->_adjustmentForKeyboard > 0.0)
    {
      [(ConversationViewControllerBase *)self _adjustForKeyboardAvoidanceOverlap:0.0];
    }
  }

  v5 = +[MFKeyboardAvoidance sharedController];
  [v5 unregisterKeyboardAvoidable:self];

  [(ConversationViewControllerBase *)self setTextSelectionScrollHandler:0];
  *&self->_flags |= 0x40u;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v7 viewDidDisappear:disappear];
  *&self->_flags &= 0xAFu;
  sub_100084A18(self, 0);
  scene = [(ConversationViewControllerBase *)self scene];
  if (+[UIDevice mf_isPadIdiom])
  {
    popoverManager = [scene popoverManager];
    [popoverManager removePassthroughViewProvider:self];
  }

  view = [(MFConversationCellExpansionGestureRecognizer *)self->_cellExpansionRecognizer view];
  [view removeGestureRecognizer:self->_cellExpansionRecognizer];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v16.receiver = self;
  v16.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v16 traitCollectionDidChange:changeCopy];
  splitViewController = [(ConversationViewControllerBase *)self splitViewController];

  [(ConversationViewControllerBase *)self _updateTitle];
  traitCollection = [(ConversationViewControllerBase *)self traitCollection];
  v7 = [traitCollection mf_traitDifferenceAffectsTextLayout:changeCopy];

  if (v7)
  {
    [(ConversationViewControllerBase *)self _updateDisplayMetrics];
    [(ConversationViewControllerBase *)self _updateLayout];
  }

  else if (splitViewController)
  {
    goto LABEL_5;
  }

  [(ConversationViewControllerBase *)self _updateBarButtonsAnimated:0 force:1];
LABEL_5:
  traitCollection2 = [(ConversationViewControllerBase *)self traitCollection];
  preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];

  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  if (IsAccessibilityCategory != UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2))
  {
    [(ConversationViewControllerBase *)self _reloadPreparedCells];
  }

  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086710;
  v15[3] = &unk_10064E1C8;
  v15[4] = self;
  [cellConfigurator enumerateExpandedCellsWithBlock:v15];

  shouldHideStickyFooterView = [(ConversationViewControllerBase *)self shouldHideStickyFooterView];
  navigationController = [(ConversationViewControllerBase *)self navigationController];
  [navigationController setToolbarHidden:shouldHideStickyFooterView ^ 1];

  [(ConversationViewControllerBase *)self updateNavigationItemChromelessConfiguration];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(ConversationViewControllerBase *)self _toggleCellsGroupOpacityDuringRotationWithCoordinator:coordinatorCopy];
  view = [(ConversationViewControllerBase *)self view];
  [view bounds];
  if (width - v9 >= 0.0)
  {
    v10 = width - v9;
  }

  else
  {
    v10 = -(width - v9);
  }

  if (v10 < 2.22044605e-16)
  {
    goto LABEL_7;
  }

  collectionView = [(ConversationViewControllerBase *)self collectionView];
  window = [collectionView window];

  if (window)
  {
    [(ConversationViewControllerBase *)self _beginResizingConversationView:width, height];
    v14[4] = self;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000869C4;
    v15[3] = &unk_10064CC00;
    v15[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100086B0C;
    v14[3] = &unk_10064CC00;
    [coordinatorCopy animateAlongsideTransition:v15 completion:v14];
LABEL_7:
    v13.receiver = self;
    v13.super_class = ConversationViewControllerBase;
    [(ConversationViewControllerBase *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  }
}

- (BOOL)isFullyVisible
{
  previewState = [(ConversationViewControllerBase *)self previewState];
  isFullyVisible = [previewState isFullyVisible];

  return isFullyVisible;
}

- (void)setReferenceMessageListItem:(id)item
{
  itemCopy = item;
  delegate = [(ConversationViewControllerBase *)self delegate];
  if (!itemCopy && self->_referenceMessageListItem && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate referenceMessageNoLongerAvailableInConversationView:self];
  }

  objc_storeStrong(&self->_referenceMessageListItem, item);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100086DDC;
  v8[3] = &unk_10064C7E8;
  v8[4] = self;
  v7 = +[EFScheduler mainThreadScheduler];
  [v7 performBlock:v8];
}

- (id)previewActionItems
{
  if (!qword_1006DCE38)
  {
    v18[0] = @"SubMenuTitle";
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"MARK_ELIPSIS" value:&stru_100662A88 table:@"Main"];
    v18[1] = @"SubMenuItems";
    v19[0] = v4;
    v19[1] = &off_100674EC8;
    v5 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

    v17[0] = &off_100673E68;
    v17[1] = &off_100673E80;
    v17[2] = &off_100673E98;
    v17[3] = v5;
    v17[4] = &off_100673EB0;
    v17[5] = &off_100673EC8;
    v17[6] = &off_100673EE0;
    v6 = [NSArray arrayWithObjects:v17 count:7];
    v7 = qword_1006DCE38;
    qword_1006DCE38 = v6;
  }

  v8 = sub_10024BB48(0);
  v9 = [MFTriageActionUtilities triageActionForActionKey:v8];

  v10 = qword_1006DCE38;
  v11 = [NSNumber numberWithInteger:v9];
  v16 = v11;
  v12 = [NSArray arrayWithObjects:&v16 count:1];
  v13 = [(ConversationViewControllerBase *)self _previewActionsForTriageActions:v10 excludingActions:v12];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didOrbOnMessageInConversationViewController:self];
  }

  return v13;
}

- (id)leadingPreviewAction
{
  v3 = sub_10024BB48(0);
  v4 = [MFTriageActionUtilities triageActionForActionKey:v3];

  if (v4 == 16)
  {
    if ([(ConversationViewControllerBase *)self _shouldArchiveByDefault])
    {
      v4 = 8;
    }

    else
    {
      v4 = 9;
    }
  }

  return [(ConversationViewControllerBase *)self _previewActionForTriageAction:v4 forSwipe:1];
}

- (id)trailingPreviewAction
{
  if ([(ConversationViewControllerBase *)self _shouldArchiveByDefault])
  {
    v3 = 9;
  }

  else
  {
    v3 = 8;
  }

  return [(ConversationViewControllerBase *)self _previewActionForTriageAction:v3 forSwipe:1];
}

- (id)_previewActionsForTriageActions:(id)actions excludingActions:(id)excludingActions
{
  actionsCopy = actions;
  excludingActionsCopy = excludingActions;
  v19 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = actionsCopy;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 objectForKeyedSubscript:@"SubMenuTitle"];
          v13 = [v11 objectForKeyedSubscript:@"SubMenuItems"];
          v14 = [(ConversationViewControllerBase *)self _previewActionsForTriageActions:v13 excludingActions:excludingActionsCopy];
          v15 = [UIPreviewActionGroup actionGroupWithTitle:v12 style:0 actions:v14];
          [v19 addObject:v15];

LABEL_8:
          goto LABEL_11;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([excludingActionsCopy containsObject:v10] & 1) == 0)
        {
          v12 = -[ConversationViewControllerBase _previewActionForTriageAction:forSwipe:](self, "_previewActionForTriageAction:forSwipe:", [v10 integerValue], 0);
          if (v12)
          {
            [v19 addObject:v12];
          }

          goto LABEL_8;
        }

LABEL_11:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v16 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      v7 = v16;
    }

    while (v16);
  }

  return v19;
}

- (void)_shrinkMessagesToBarButton:(id)button withInteraction:(id)interaction completionHandler:(id)handler
{
  interactionCopy = interaction;
  handlerCopy = handler;
  view = [button view];
  [(ConversationViewControllerBase *)self _shrinkMessagesToView:view withInteraction:interactionCopy completionHandler:handlerCopy];
}

- (void)_shrinkMessagesToView:(id)view withInteraction:(id)interaction completionHandler:(id)handler
{
  viewCopy = view;
  interactionCopy = interaction;
  v44 = interactionCopy;
  handlerCopy = handler;
  v46 = viewCopy;
  launchedToTest = [UIApp launchedToTest];
  delegate = [(ConversationViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    superview = [delegate shrinkAnimationContainerViewForConversationViewController:{self, delegate}];
  }

  else
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    superview = [collectionView superview];
  }

  [superview bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  collectionView2 = [(ConversationViewControllerBase *)self collectionView];
  [collectionView2 contentInset];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [[UIView alloc] initWithFrame:{v15 + v26, v17 + v24, v19 - (v26 + v30), v21 - (v24 + v28)}];
  v32 = [UIColor colorWithWhite:0.0 alpha:0.5];
  [v31 setBackgroundColor:v32];

  [superview addSubview:v31];
  view = [(ConversationViewControllerBase *)self view];
  v34 = [view snapshotViewAfterScreenUpdates:0];

  [superview addSubview:v34];
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v36 = [referenceMessageListItem count];
  messageCount = [interactionCopy messageCount];

  if (v36 == messageCount)
  {
    [(ConversationViewControllerBase *)self _notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:interactionCopy];
  }

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000879FC;
  v52[3] = &unk_10064E1F0;
  v53 = v34;
  v38 = superview;
  v54 = v38;
  v39 = v46;
  v55 = v39;
  v58 = launchedToTest;
  v56 = v31;
  selfCopy = self;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100087B18;
  v47[3] = &unk_10064E218;
  v51 = launchedToTest;
  v47[4] = self;
  v40 = v53;
  v48 = v40;
  v41 = v56;
  v49 = v41;
  v42 = handlerCopy;
  v50 = v42;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v52 completion:v47];
}

- (void)_notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:(id)interaction
{
  interactionCopy = interaction;
  delegate = [(ConversationViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(ConversationViewControllerBase *)self _messagesForTriageInteraction:interactionCopy];
    v6 = [v5 ef_map:&stru_10064E258];

    [delegate conversationViewController:self willRemoveAllVisibleMessagesWithItemIDs:v6];
  }
}

- (void)setBeingPreviewed:(BOOL)previewed
{
  previewedCopy = previewed;
  previewState = [(ConversationViewControllerBase *)self previewState];
  [previewState setBeingPreviewed:previewedCopy];
}

- (void)previewCancelled
{
  previewState = [(ConversationViewControllerBase *)self previewState];
  [previewState previewCancelled];
}

- (void)previewDidCommit:(BOOL)commit
{
  commitCopy = commit;
  previewState = [(ConversationViewControllerBase *)self previewState];
  [previewState previewDidCommit:commitCopy];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  if ([stateCopy showNoMessageSelectedView])
  {
    v4 = +[UIContentUnavailableConfiguration emptyConfiguration];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"NO_MESSAGE_SELECTED" value:&stru_100662A88 table:@"Main"];
    [v4 setText:v6];

    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  [(ConversationViewControllerBase *)self setContentUnavailableConfiguration:v7];
}

- (id)contentUnavailableConfigurationState
{
  v8.receiver = self;
  v8.super_class = ConversationViewControllerBase;
  contentUnavailableConfigurationState = [(ConversationViewControllerBase *)&v8 contentUnavailableConfigurationState];
  shouldShowNoMessageSelectedView = [(ConversationViewControllerBase *)self shouldShowNoMessageSelectedView];
  if (shouldShowNoMessageSelectedView)
  {
    delegate = [(ConversationViewControllerBase *)self delegate];
    v6 = [delegate conversationViewControllerCanShowNoMessageSelectedView:self];
  }

  else
  {
    v6 = 0;
  }

  [contentUnavailableConfigurationState setShowNoMessageSelectedView:v6];
  if (shouldShowNoMessageSelectedView)
  {
  }

  return contentUnavailableConfigurationState;
}

- (void)setShouldShowNoMessageSelectedView:(BOOL)view
{
  if (self->_shouldShowNoMessageSelectedView != view)
  {
    [(ConversationViewControllerBase *)self _doSetShouldShowNoMessageSelectedView:?];
  }
}

- (void)_configureSenderHeaderView:(id)view expansionStatus:(int64_t)status
{
  viewCopy = view;
  delegate = [(ConversationViewControllerBase *)self delegate];
  v30 = [delegate currentlySelectedBucketForConversationViewController:self];

  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  itemID = [referenceMessageListItem itemID];
  viewModel = [viewCopy viewModel];
  itemID2 = [viewModel itemID];
  if (([itemID2 isEqual:itemID] & 1) == 0)
  {

    v13 = 0;
    goto LABEL_5;
  }

  viewModel2 = [viewCopy viewModel];
  bucket = [viewModel2 bucket];

  if (bucket == v30)
  {
    viewModel = [viewCopy viewModel];
    v13 = [viewModel copy];
LABEL_5:

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:
  contactStore = [(ConversationViewControllerBase *)self contactStore];
  v29 = [referenceMessageListItem preferredSenderDisplayNameWithContactStore:contactStore];

  referenceMessageListItem2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    unseenCount = [referenceMessageListItem unseenCount];
  }

  else
  {
    unseenCount = 0;
  }

  totalUnfilteredMessageCount = [(ConversationViewControllerBase *)self totalUnfilteredMessageCount];
  if ([(ConversationViewControllerBase *)self isMessageListUnfiltered])
  {
    countOfMessages = 0;
  }

  else
  {
    countOfMessages = [(ConversationViewControllerBase *)self countOfMessages];
  }

  senderHeaderViewAnimator = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
  [senderHeaderViewAnimator updateHeaderWithExpansionStatus:status];

  if (v13)
  {
    [(ConversationSenderHeaderViewModel *)v13 setForceCollapsed:[(ConversationViewControllerBase *)self forceCollapsedSenderHeader]];
    [(ConversationSenderHeaderViewModel *)v13 setIsBucketSelected:[(ConversationViewControllerBase *)self isBucketSelected]];
    [(ConversationSenderHeaderViewModel *)v13 updateSubtitleInformationWithBucket:v30 isBucketSelected:[(ConversationViewControllerBase *)self isBucketSelected] categoryMessageCount:countOfMessages totalMessageCount:totalUnfilteredMessageCount unreadMessageCount:0 newMessageCount:unseenCount];
  }

  else
  {
    v21 = [_TtC10MobileMail33ConversationSenderHeaderViewModel alloc];
    isBucketSelected = [(ConversationViewControllerBase *)self isBucketSelected];
    LOBYTE(v28) = [(ConversationViewControllerBase *)self forceCollapsedSenderHeader];
    v13 = [(ConversationSenderHeaderViewModel *)v21 initWithItemID:itemID avatarResult:0 title:v29 bucket:v30 isBucketSelected:isBucketSelected categoryMessageCount:countOfMessages totalMessageCount:totalUnfilteredMessageCount newMessageCount:unseenCount unreadMessageCount:0 forceCollapsed:v28];
  }

  [(ConversationViewControllerBase *)self _updateSenderHeaderView:viewCopy viewModel:v13 expansionStatus:status];
  objc_initWeak(&location, self);
  v23 = [[MUIAvatarImageContext alloc] initWithMessageListItem:referenceMessageListItem];
  avatarGenerator = [(ConversationViewControllerBase *)self avatarGenerator];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100088508;
  v32[3] = &unk_10064E280;
  objc_copyWeak(&v35, &location);
  v25 = viewCopy;
  v33 = v25;
  v26 = v13;
  v34 = v26;
  v27 = [avatarGenerator contactForContext:v23 handler:v32];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)_updateSenderHeaderView:(id)view viewModel:(id)model expansionStatus:(int64_t)status
{
  viewCopy = view;
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy updateWith:modelCopy expansionStatus:status];
  }

  else
  {
    [viewCopy updateWith:modelCopy];
  }
}

- (void)_updateTitle
{
  countOfMessages = [(ConversationViewControllerBase *)self countOfMessages];
  navigationItem = [(ConversationViewControllerBase *)self navigationItem];
  [navigationItem setTitleView:0];

  scene = [(ConversationViewControllerBase *)self scene];
  shouldShowExpandableDigestHeaderView = [(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView];
  shouldShowStaticDigestHeaderView = [(ConversationViewControllerBase *)self shouldShowStaticDigestHeaderView];
  if ((shouldShowExpandableDigestHeaderView | shouldShowStaticDigestHeaderView))
  {
    if (shouldShowExpandableDigestHeaderView)
    {
      [(ConversationViewControllerBase *)self expandableSenderHeaderView];
    }

    else
    {
      [(ConversationViewControllerBase *)self staticSenderHeaderView];
    }
    WeakRetained = ;
    superview = [WeakRetained superview];

    if (!superview)
    {
      view = [(ConversationViewControllerBase *)self view];
      [view addSubview:WeakRetained];

      senderHeaderLayoutGuide = [(ConversationViewControllerBase *)self senderHeaderLayoutGuide];
      topAnchor = [WeakRetained topAnchor];
      topAnchor2 = [senderHeaderLayoutGuide topAnchor];
      v47 = [topAnchor constraintEqualToAnchor:?];
      v60[0] = v47;
      leadingAnchor = [WeakRetained leadingAnchor];
      leadingAnchor2 = [senderHeaderLayoutGuide leadingAnchor];
      v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v60[1] = v16;
      trailingAnchor = [WeakRetained trailingAnchor];
      trailingAnchor2 = [senderHeaderLayoutGuide trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v60[2] = v19;
      v20 = [NSArray arrayWithObjects:v60 count:3];
      [NSLayoutConstraint activateConstraints:v20];

      [WeakRetained recalculateHeights];
    }

    if (shouldShowExpandableDigestHeaderView)
    {
      tapGestureTitleView = [(ConversationViewControllerBase *)self tapGestureTitleView];
      initialSenderHeaderExpansionStatus = [(ConversationViewControllerBase *)self initialSenderHeaderExpansionStatus];
      if ((initialSenderHeaderExpansionStatus - 1) <= 1)
      {
        [(ConversationViewControllerBase *)self setInitialSenderHeaderExpansionStatus:0];
      }

      if ([(ConversationViewControllerBase *)self forceCollapsedSenderHeader])
      {
        v22 = 2;
      }

      else
      {
        v22 = initialSenderHeaderExpansionStatus;
      }
    }

    else
    {
      v22 = 0;
      tapGestureTitleView = 0;
    }

    [(ConversationViewControllerBase *)self _configureSenderHeaderView:WeakRetained expansionStatus:v22];
    v11 = 0;
    goto LABEL_21;
  }

  if (countOfMessages < 1 || (-[ConversationViewControllerBase barItemsManager](self, "barItemsManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 useDesktopClassNavigationBar], v6, (v7 & 1) != 0))
  {
    WeakRetained = +[ConversationViewController log];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
      ef_publicDescription = [referenceMessageListItem ef_publicDescription];
      *buf = 138412290;
      v55 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Skip title update, message count is 0, referenceMessage=%@", buf, 0xCu);
    }

    v11 = 0;
LABEL_9:
    tapGestureTitleView = 0;
    goto LABEL_21;
  }

  if (![(ConversationViewControllerBase *)self isPrimary])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v11 = [WeakRetained titleForSingletonConversationViewController:self];
    }

    else
    {
      v11 = 0;
    }

    v44 = +[ConversationViewController log];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Get title from delegate: %@", buf, 0xCu);
    }

    conversationHeaderView = [(ConversationViewControllerBase *)self conversationHeaderView];
    [conversationHeaderView setDelegate:0];

    goto LABEL_9;
  }

  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
  WeakRetained = [NSString localizedStringWithFormat:v27, countOfMessages];

  _isDisplayingSingleMessage = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
  if (_isDisplayingSingleMessage)
  {
    v29 = 0;
  }

  else
  {
    v29 = WeakRetained;
  }

  v11 = v29;
  if ([(ConversationViewControllerBase *)self _shouldShowConversationHeader])
  {
    conversationHeaderView2 = [(ConversationViewControllerBase *)self conversationHeaderView];

    if (!conversationHeaderView2)
    {
      view2 = [(ConversationViewControllerBase *)self view];
      [view2 frame];
      Width = CGRectGetWidth(v61);

      v33 = [[ConversationHeaderView alloc] initWithFrame:0.0, 0.0, Width, 0.0];
      [(ConversationViewControllerBase *)self setConversationHeaderView:v33];
    }

    conversationHeaderView3 = [(ConversationViewControllerBase *)self conversationHeaderView];
    [conversationHeaderView3 setDelegate:self];

    conversationSubject = [(ConversationViewControllerBase *)self conversationSubject];
    conversationHeaderView8 = [ECSubjectFormatter subjectStringForDisplayForSubject:conversationSubject style:1];

    conversationHeaderView4 = [(ConversationViewControllerBase *)self conversationHeaderView];
    title = [conversationHeaderView4 title];
    v39 = [title isEqualToString:conversationHeaderView8];

    if ((v39 & 1) == 0)
    {
      conversationHeaderView5 = [(ConversationViewControllerBase *)self conversationHeaderView];
      [conversationHeaderView5 setCollapsed:0 animated:0];
    }

    v41 = +[ConversationViewController log];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v55 = countOfMessages;
      v56 = 1024;
      v57 = _isDisplayingSingleMessage;
      v58 = 1024;
      v59 = conversationHeaderView8 != 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Update conversation header view (messageCount=%ld, isDisplayingSingleMessage=%{BOOL}d, hasTrimmedSubject=%{BOOL}d)", buf, 0x18u);
    }

    conversationHeaderView6 = [(ConversationViewControllerBase *)self conversationHeaderView];
    [conversationHeaderView6 setSuperTitle:v11];

    conversationHeaderView7 = [(ConversationViewControllerBase *)self conversationHeaderView];
    [conversationHeaderView7 setTitle:conversationHeaderView8];

    tapGestureTitleView = [(ConversationViewControllerBase *)self conversationHeaderView];
  }

  else
  {
    v46 = +[ConversationViewController log];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v55 = countOfMessages;
      v56 = 1024;
      v57 = _isDisplayingSingleMessage;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Update title (messageCount=%ld, isDisplayingSingleMessage=%{BOOL}d)", buf, 0x12u);
    }

    conversationHeaderView8 = [(ConversationViewControllerBase *)self conversationHeaderView];
    tapGestureTitleView = 0;
    [conversationHeaderView8 setDelegate:0];
  }

LABEL_21:
  if ((shouldShowExpandableDigestHeaderView & 1) == 0)
  {
    expandableSenderHeaderView = [(ConversationViewControllerBase *)self expandableSenderHeaderView];
    [expandableSenderHeaderView removeFromSuperview];
  }

  if ((shouldShowStaticDigestHeaderView & 1) == 0)
  {
    staticSenderHeaderView = [(ConversationViewControllerBase *)self staticSenderHeaderView];
    [staticSenderHeaderView removeFromSuperview];
  }

  [(ConversationViewControllerBase *)self setTitle:v11];
  navigationItem2 = [(ConversationViewControllerBase *)self navigationItem];
  [navigationItem2 setTitleView:tapGestureTitleView];

  [scene mf_resetPreferredTitle];
}

- (void)_updateBackgroundColor
{
  if (MUISolariumFeatureEnabled())
  {
    if ([(ConversationViewControllerBase *)self countOfMessages]&& ![(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
    {
      if (+[UIDevice mf_isPadIdiom])
      {
        traitCollection = [(ConversationViewControllerBase *)self traitCollection];
        v3 = +[UIColor mf_mailThreadedConversationViewBackgroundForHorizontalSizeClass:](UIColor, "mf_mailThreadedConversationViewBackgroundForHorizontalSizeClass:", [traitCollection horizontalSizeClass]);
        [(_MFConversationViewCollectionView *)self->_conversationView setBackgroundColor:v3];
      }

      else
      {
        traitCollection = +[UIColor mailThreadedConversationViewBackgroundColor];
        [(_MFConversationViewCollectionView *)self->_conversationView setBackgroundColor:?];
      }
    }

    else
    {
      traitCollection = +[UIColor mailSingletonConversationViewBackgroundColor];
      [(_MFConversationViewCollectionView *)self->_conversationView setBackgroundColor:?];
    }
  }
}

- (_TtC10MobileMail34StaticConversationSenderHeaderView)staticSenderHeaderView
{
  if (!self->_staticSenderHeaderView && [(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList]&& [(ConversationViewControllerBase *)self shouldShowStaticDigestHeaderView])
  {
    v3 = [[_TtC10MobileMail34StaticConversationSenderHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    staticSenderHeaderView = self->_staticSenderHeaderView;
    self->_staticSenderHeaderView = v3;

    [(StaticConversationSenderHeaderView *)self->_staticSenderHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ConversationSenderHeaderView *)self->_staticSenderHeaderView setDelegate:self];
  }

  v5 = self->_staticSenderHeaderView;

  return v5;
}

- (_TtC10MobileMail38ExpandableConversationSenderHeaderView)expandableSenderHeaderView
{
  if (!self->_expandableSenderHeaderView && [(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList]&& [(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView])
  {
    v3 = [[_TtC10MobileMail38ExpandableConversationSenderHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    expandableSenderHeaderView = self->_expandableSenderHeaderView;
    self->_expandableSenderHeaderView = v3;

    [(ExpandableConversationSenderHeaderView *)self->_expandableSenderHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ConversationSenderHeaderView *)self->_expandableSenderHeaderView setDelegate:self];
  }

  v5 = self->_expandableSenderHeaderView;

  return v5;
}

- (_TtC10MobileMail36ConversationSenderHeaderViewAnimator)senderHeaderViewAnimator
{
  if ([(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView])
  {
    senderHeaderViewAnimator = self->_senderHeaderViewAnimator;
    if (!senderHeaderViewAnimator)
    {
      v4 = [_TtC10MobileMail36ConversationSenderHeaderViewAnimator alloc];
      expandableSenderHeaderView = [(ConversationViewControllerBase *)self expandableSenderHeaderView];
      v6 = [(ConversationSenderHeaderViewAnimator *)v4 initWithHeaderView:expandableSenderHeaderView];
      v7 = self->_senderHeaderViewAnimator;
      self->_senderHeaderViewAnimator = v6;

      [(ConversationSenderHeaderViewAnimator *)self->_senderHeaderViewAnimator setDelegate:self];
      senderHeaderViewAnimator = self->_senderHeaderViewAnimator;
    }

    v8 = senderHeaderViewAnimator;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_UINavigationBarTitleView)tapGestureTitleView
{
  tapGestureTitleView = self->_tapGestureTitleView;
  if (!tapGestureTitleView)
  {
    v4 = [[_UINavigationBarTitleView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_tapGestureTitleView;
    self->_tapGestureTitleView = v4;

    v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tappedSenderHeader:"];
    [(_UINavigationBarTitleView *)self->_tapGestureTitleView addGestureRecognizer:v6];

    tapGestureTitleView = self->_tapGestureTitleView;
  }

  return tapGestureTitleView;
}

- (void)tappedSenderHeader:(id)header
{
  senderHeaderViewAnimator = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
  [senderHeaderViewAnimator updateHeaderWithExpansionStatus:1];
}

- (id)mf_preferredTitle
{
  conversationSubject = [(ConversationViewControllerBase *)self conversationSubject];
  v3 = [ECSubjectFormatter subjectStringForDisplayForSubject:conversationSubject style:0];

  return v3;
}

- (BOOL)_shouldShowConversationHeader
{
  isPrimary = [(ConversationViewControllerBase *)self isPrimary];
  conversationSubject = [(ConversationViewControllerBase *)self conversationSubject];
  subjectWithoutPrefix = [conversationSubject subjectWithoutPrefix];
  v6 = [subjectWithoutPrefix length];

  return v6 && isPrimary;
}

- (id)_visibleNavigationBar
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100085910;
  v11 = sub_100085920;
  navigationController = [(ConversationViewControllerBase *)self navigationController];
  navigationBar = [navigationController navigationBar];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000896FC;
  v6[3] = &unk_10064E2A8;
  v6[4] = &v7;
  [(ConversationViewControllerBase *)self _executeIfSplitViewIsAvailable:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_updateConversationHeaderViewLayoutMarginsWithSuperviewMargins:(NSDirectionalEdgeInsets)margins
{
  [(ConversationHeaderView *)self->_conversationHeaderView directionalLayoutMargins:margins.top];
  conversationHeaderView = self->_conversationHeaderView;

  [(ConversationHeaderView *)conversationHeaderView setDirectionalLayoutMargins:?];
}

- (void)updateNavigationItemChromelessConfiguration
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100089BDC;
  v23[3] = &unk_10064C7E8;
  v23[4] = self;
  v3 = objc_retainBlock(v23);
  if (_os_feature_enabled_impl())
  {
    v4 = EMIsGreymatterAvailable();
  }

  else
  {
    v4 = 0;
  }

  if ([(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView]|| [(ConversationViewControllerBase *)self shouldShowStaticDigestHeaderView])
  {
    navigationController3 = objc_opt_new();
    [navigationController3 configureWithTransparentBackground];
    navigationItem = [(ConversationViewControllerBase *)self navigationItem];
    [navigationItem setStandardAppearance:navigationController3];
    [navigationItem setScrollEdgeAppearance:navigationController3];
    [navigationItem setCompactAppearance:navigationController3];
    [navigationItem setCompactScrollEdgeAppearance:navigationController3];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    (v3[2])(v3);
    navigationController3 = objc_opt_new();
    navigationItem = [(ConversationViewControllerBase *)self navigationItem];
    [navigationItem setScrollEdgeAppearance:navigationController3];
    goto LABEL_7;
  }

  if (!+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") || (-[ConversationViewControllerBase traitCollection](self, "traitCollection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 horizontalSizeClass], v7, v8 != 2))
  {
    (v3[2])(v3);
    navigationController = [(ConversationViewControllerBase *)self navigationController];
    navigationBar = [navigationController navigationBar];
    standardAppearance = [navigationBar standardAppearance];
    navigationController2 = [(ConversationViewControllerBase *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 setScrollEdgeAppearance:standardAppearance];

    navigationItem2 = [(ConversationViewControllerBase *)self navigationItem];
    [navigationItem2 _setManualScrollEdgeAppearanceEnabled:0];

    if (![(ConversationViewControllerBase *)self allowQuickReply])
    {
      goto LABEL_9;
    }

    navigationController3 = [(ConversationViewControllerBase *)self navigationController];
    navigationItem = [navigationController3 toolbar];
    standardAppearance2 = [navigationItem standardAppearance];
    navigationController4 = [(ConversationViewControllerBase *)self navigationController];
    toolbar = [navigationController4 toolbar];
    [toolbar setScrollEdgeAppearance:standardAppearance2];

    goto LABEL_7;
  }

  (v3[2])(v3);
  navigationController5 = [(ConversationViewControllerBase *)self navigationController];
  navigationBar3 = [navigationController5 navigationBar];
  [navigationBar3 setScrollEdgeAppearance:0];

  navigationItem3 = [(ConversationViewControllerBase *)self navigationItem];
  LOBYTE(navigationBar3) = [navigationItem3 _isManualScrollEdgeAppearanceEnabled];

  if (navigationBar3)
  {
    goto LABEL_9;
  }

  navigationItem4 = [(ConversationViewControllerBase *)self navigationItem];
  [navigationItem4 _setAutoScrollEdgeTransitionDistance:1.0];

  navigationItem5 = [(ConversationViewControllerBase *)self navigationItem];
  [navigationItem5 _setManualScrollEdgeAppearanceProgress:1.0];

  navigationController3 = [(ConversationViewControllerBase *)self navigationItem];
  [navigationController3 _setManualScrollEdgeAppearanceEnabled:1];
LABEL_8:

LABEL_9:
}

- (double)_topSpacingToAvoidStatusBar
{
  scene = [(ConversationViewControllerBase *)self scene];
  statusBarManager = [scene statusBarManager];
  [statusBarManager statusBarFrame];
  Height = CGRectGetHeight(v15);

  if (MUISolariumFeatureEnabled())
  {
    view = [(ConversationViewControllerBase *)self view];
    window = [view window];
    screen = [window screen];
    coordinateSpace = [screen coordinateSpace];

    view2 = [(ConversationViewControllerBase *)self view];
    view3 = [(ConversationViewControllerBase *)self view];
    [view3 bounds];
    [view2 convertRect:coordinateSpace toCoordinateSpace:?];
    v13 = v12;

    Height = fmax(Height - v13, 10.0);
  }

  return Height;
}

- (void)_updateSenderHeaderLayoutTopConstrainntIfNeeded
{
  if (EMBlackPearlIsFeatureEnabled() && [(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    [(ConversationViewControllerBase *)self _topSpacingToAvoidStatusBar];
    v4 = v3;
    if ([(ConversationViewControllerBase *)self shouldShowStaticDigestHeaderView])
    {
      [(ConversationViewControllerBase *)self _navigationBarHeight];
      v4 = v4 + v5;
    }

    senderHeaderLayoutGuideTopConstraint = [(ConversationViewControllerBase *)self senderHeaderLayoutGuideTopConstraint];
    [senderHeaderLayoutGuideTopConstraint constant];
    if (v6 != v4)
    {
      [senderHeaderLayoutGuideTopConstraint setConstant:v4];
    }
  }
}

- (void)_reloadPreparedCells
{
  v3 = +[NSMutableSet set];
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100089FB0;
  v10 = &unk_10064E2D0;
  selfCopy = self;
  v5 = v3;
  v12 = v5;
  [cellConfigurator enumeratePreparedCellsWithBlock:&v7];

  allObjects = [v5 allObjects];
  [(ConversationViewControllerBase *)self _reloadCellsAtIndexPaths:allObjects animated:1];
}

- (void)_updateCells
{
  _isDisplayingSingleMessage = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
  v4 = +[NSMutableSet set];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10008A418;
  v23 = &unk_10064E2F8;
  v26 = &v28;
  v7 = collectionView;
  v24 = v7;
  v27 = _isDisplayingSingleMessage;
  v8 = v4;
  v25 = v8;
  [cellConfigurator enumerateExpandedCellsWithBlock:&v20];

  v9 = [ConversationViewController log:v20];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v8 count];
    v18 = v29[3];
    countOfMessages = [(ConversationViewControllerBase *)self countOfMessages];
    *buf = 134218496;
    v33 = v17;
    v34 = 2048;
    v35 = v18;
    v36 = 2048;
    v37 = countOfMessages;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "_updateCells reloadIndexPath.count:%lu expandedCellCount:%lu countOfMessages:%li", buf, 0x20u);
  }

  if ([v8 count])
  {
    allObjects = [v8 allObjects];
    [(ConversationViewControllerBase *)self _reloadCellsAtIndexPaths:allObjects animated:1];
LABEL_5:

    goto LABEL_7;
  }

  if (!v29[3] && [(ConversationViewControllerBase *)self countOfMessages]>= 1)
  {
    allObjects = [(ConversationViewControllerBase *)self _indexPathForReferenceMessage];
    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100485380(allObjects, v11);
    }

    if (allObjects)
    {
      v12 = [(ConversationViewControllerBase *)self messageItemIDAtIndexPath:allObjects];
      cellConfigurator2 = [(ConversationViewControllerBase *)self cellConfigurator];
      expansionTracker = [cellConfigurator2 expansionTracker];
      v15 = [expansionTracker expansionStatusForCellWithItemID:v12];

      if (v15 == 3)
      {
        cellConfigurator3 = [(ConversationViewControllerBase *)self cellConfigurator];
        [cellConfigurator3 expandCellAtIndexPath:allObjects animated:0 highlightFirst:0];
      }
    }

    goto LABEL_5;
  }

LABEL_7:

  _Block_object_dispose(&v28, 8);
}

- (void)_reloadCellsAtIndexPaths:(id)paths animated:(BOOL)animated
{
  pathsCopy = paths;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _reloadCellsAtIndexPaths:animated:]", "ConversationViewControllerBase.m", 1581, "0");
}

- (void)_invalidateQuickReplyFooter
{
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    v3 = objc_alloc_init(UICollectionViewFlowLayoutInvalidationContext);
    v4 = [NSIndexPath indexPathForItem:0 inSection:0];
    v11 = v4;
    v5 = [NSArray arrayWithObjects:&v11 count:1];
    [v3 invalidateSupplementaryElementsOfKind:UICollectionElementKindSectionFooter atIndexPaths:v5];

    [(ConversationViewControllerBase *)self collectionView];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10008A6DC;
    v9 = v8[3] = &unk_10064C660;
    v6 = v3;
    v10 = v6;
    v7 = v9;
    [v7 performBatchUpdates:v8 completion:0];
  }
}

- (void)updateUserActivityState:(id)state
{
  handoffCoordinator = [(ConversationViewControllerBase *)self handoffCoordinator];
  [handoffCoordinator updateUserActivityState];
}

- (id)_indexPathForTopMostVisibleRow
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  collectionView2 = [(ConversationViewControllerBase *)self collectionView];
  [collectionView2 contentOffset];
  v8 = v7;
  collectionView3 = [(ConversationViewControllerBase *)self collectionView];
  [collectionView3 contentInset];
  v11 = v8 + v10;

  collectionView4 = [(ConversationViewControllerBase *)self collectionView];
  v13 = [collectionView4 indexPathForItemAtPoint:{v5 * 0.5, v11}];

  return v13;
}

- (void)setPinnedItem:(id)item
{
  itemCopy = item;
  if ([(ConversationViewControllerBase *)self disableScrollPinning])
  {
    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pinning is disabled. This is for testing purposes only.", &v10, 2u);
    }

    itemCopy = 0;
  }

  if (![(PinnedConversationItem *)self->_pinnedItem isEqual:itemCopy])
  {
    if (self->_pinnedItem)
    {
      v6 = +[ConversationViewController log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription = [(PinnedConversationItem *)self->_pinnedItem ef_publicDescription];
        v10 = 138412290;
        v11 = ef_publicDescription;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unpinning %@", &v10, 0xCu);
      }
    }

    if (itemCopy)
    {
      v8 = +[ConversationViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription2 = [itemCopy ef_publicDescription];
        v10 = 138412290;
        v11 = ef_publicDescription2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pinning to %@", &v10, 0xCu);
      }
    }

    objc_storeStrong(&self->_pinnedItem, itemCopy);
  }
}

- (void)_restorePinnedScrollPosition
{
  pinnedItem = [(ConversationViewControllerBase *)self pinnedItem];
  indexPath = [pinnedItem indexPath];
  if (pinnedItem)
  {
    if (indexPath)
    {
      dynamicOffset = [pinnedItem dynamicOffset];

      if (dynamicOffset)
      {
        dynamicOffset2 = [pinnedItem dynamicOffset];
        [(ConversationViewControllerBase *)self _scrollToItemAtIndexPath:indexPath dynamicOffset:dynamicOffset2 shouldAdjustToShowPreviousMessage:1 animated:0 pin:0 completion:0];
      }
    }
  }
}

- (void)_maybeAttemptLoadMissingMessages:(id)messages
{
  messagesCopy = messages;
  conversationSortOrder = [(ConversationViewControllerBase *)self conversationSortOrder];
  if ([messagesCopy isTracking])
  {
    isDecelerating = 1;
  }

  else
  {
    isDecelerating = [messagesCopy isDecelerating];
  }

  [messagesCopy _verticalVelocity];
  v7 = v6;
  +[NSDate timeIntervalSinceReferenceDate];
  v9 = -v7;
  if (conversationSortOrder == 1)
  {
    v9 = v7;
  }

  if (isDecelerating)
  {
    if (v9 > 0.0 && v8 >= self->_nextAvailableLoadMoreInterval)
    {
      [(ConversationViewControllerBase *)self _attemptLoadMissingMessages];
    }
  }
}

- (void)_attemptLoadMissingMessages
{
  _oldestIndexPath = [(ConversationViewControllerBase *)self _oldestIndexPath];
  if (_oldestIndexPath)
  {
    [(ConversationViewControllerBase *)self _loadMoreMessagesWithMaxVisibleIndexPath:_oldestIndexPath];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  self->_nextAvailableLoadMoreInterval = v3 + 0.5;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  viewIfLoaded = [(ConversationViewControllerBase *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (!window)
  {
    goto LABEL_11;
  }

  expandableSenderHeaderView = [(ConversationViewControllerBase *)self expandableSenderHeaderView];
  superview = [expandableSenderHeaderView superview];

  if (superview)
  {
    senderHeaderViewAnimator = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
    [senderHeaderViewAnimator scrollViewDidScroll:scrollCopy];
  }

  else
  {
    staticSenderHeaderView = [(ConversationViewControllerBase *)self staticSenderHeaderView];
    superview2 = [staticSenderHeaderView superview];

    if (!superview2)
    {
      goto LABEL_7;
    }

    [scrollCopy contentOffset];
    v13 = v12;
    senderHeaderViewAnimator = [(ConversationViewControllerBase *)self staticSenderHeaderView];
    [senderHeaderViewAnimator frame];
    Height = CGRectGetHeight(v19);
    staticSenderHeaderView2 = [(ConversationViewControllerBase *)self staticSenderHeaderView];
    [staticSenderHeaderView2 setAppearance:v13 >= -(Height + -10.0)];
  }

LABEL_7:
  if ([(ConversationViewControllerBase *)self resizingState]!= 3)
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    visibleCells = [collectionView visibleCells];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008AF30;
    v18[3] = &unk_10064DE30;
    v18[4] = self;
    [visibleCells enumerateObjectsUsingBlock:v18];

    [(MFConversationCellExpansionGestureRecognizer *)self->_cellExpansionRecognizer cancel];
    if ([(ConversationViewControllerBase *)self allowQuickReply])
    {
      [(ConversationViewControllerBase *)self _updateQuickReplySendButtonOffset:scrollCopy];
    }

    [(ConversationViewControllerBase *)self _updateManualSummaryUIForScroll:scrollCopy];
  }

LABEL_11:
}

- (void)scrollViewDidScrollToTop:(id)top
{
  [(ConversationViewControllerBase *)self setPinnedItem:0];
  v4 = [NSIndexPath indexPathForRow:0 inSection:0];
  [(ConversationViewControllerBase *)self _updateHandoffWithMessageAtIndexPath:v4];

  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"scrolled to top"];
  if (![(ConversationViewControllerBase *)self conversationSortOrder])
  {

    [(ConversationViewControllerBase *)self _attemptLoadMissingMessages];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"begin Dragging"];
  [(ConversationViewControllerBase *)self setPinnedItem:0];
  if ([(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView]&& ![(ConversationViewControllerBase *)self forceCollapsedSenderHeader])
  {
    [(ConversationViewControllerBase *)self setResizingState:3];
    senderHeaderViewAnimator = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
    [senderHeaderViewAnimator scrollViewWillBeginDragging:draggingCopy];
  }

  conversationHeaderView = [(ConversationViewControllerBase *)self conversationHeaderView];
  [conversationHeaderView hostScrollViewWillBeginDragging:draggingCopy];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  v9 = -y;
  if (y >= 0.0)
  {
    v9 = y;
  }

  if (v9 < 0.00000011920929)
  {
    [(ConversationViewControllerBase *)self pinCurrentItem];
    handoffCoordinator = [(ConversationViewControllerBase *)self handoffCoordinator];
    [handoffCoordinator updateHandoffMessageBasedOnMessageVisibility];

    [(ConversationViewControllerBase *)self updateArrowControlsView];
  }

  if ([(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView]&& ![(ConversationViewControllerBase *)self forceCollapsedSenderHeader])
  {
    [(ConversationViewControllerBase *)self setResizingState:0];
    senderHeaderViewAnimator = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
    [senderHeaderViewAnimator scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }

  else
  {
    senderHeaderViewAnimator = [(ConversationViewControllerBase *)self conversationHeaderView];
    [senderHeaderViewAnimator hostScrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [(ConversationViewControllerBase *)self pinCurrentItem];
  [(ConversationViewControllerBase *)self _shrinkBottomPaddingIfNecessary];
  handoffCoordinator = [(ConversationViewControllerBase *)self handoffCoordinator];
  [handoffCoordinator updateHandoffMessageBasedOnMessageVisibility];

  [(ConversationViewControllerBase *)self updateArrowControlsView];
  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"ended decelerating"];
  if ([(ConversationViewControllerBase *)self _scrollViewIsScrolledToEnd:deceleratingCopy]&& [(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
  {
    [(ConversationViewControllerBase *)self _scrolledToEndOfSingleMessage];
  }

  conversationHeaderView = [(ConversationViewControllerBase *)self conversationHeaderView];
  [conversationHeaderView hostScrollViewDidEndDecelerating:deceleratingCopy];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  if (!decelerate)
  {
    [(ConversationViewControllerBase *)self _shrinkBottomPaddingIfNecessary];
  }

  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"ended dragging"];
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  expandableSenderHeaderView = [(ConversationViewControllerBase *)self expandableSenderHeaderView];
  superview = [expandableSenderHeaderView superview];
  if (!superview)
  {
    goto LABEL_4;
  }

  forceCollapsedSenderHeader = [(ConversationViewControllerBase *)self forceCollapsedSenderHeader];

  if ((forceCollapsedSenderHeader & 1) == 0)
  {
    expandableSenderHeaderView = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
    [expandableSenderHeaderView updateHeaderWithExpansionStatus:1];
LABEL_4:
  }

  return 1;
}

- (void)_shrinkBottomPaddingIfNecessary
{
  if (![(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    [collectionView _contentScrollInset];
    v4 = v3;
    if (v3 > 0.00000011920929)
    {
      [collectionView visibleBounds];
      MaxY = CGRectGetMaxY(v12);
      [collectionView contentInset];
      v7 = v6;
      [collectionView contentSize];
      v9 = MaxY - v7 - v8;
      if (v9 < 0.0)
      {
        v9 = 0.0;
      }

      if (v4 - v9 > 0.00000011920929)
      {
        *&self->_flags |= 8u;
        [(ConversationViewControllerBase *)self _setBottomPadding:?];
      }
    }
  }
}

- (void)_scrollToItemAtIndexPath:(id)path dynamicOffset:(id)offset shouldAdjustToShowPreviousMessage:(BOOL)message animated:(BOOL)animated pin:(BOOL)pin completion:(id)completion
{
  pinCopy = pin;
  animatedCopy = animated;
  messageCopy = message;
  pathCopy = path;
  offsetCopy = offset;
  completionCopy = completion;
  v16 = +[ConversationViewController log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    section = [pathCopy section];
    item = [pathCopy item];
    ef_publicDescription = [offsetCopy ef_publicDescription];
    *buf = 134219010;
    v34 = section;
    v35 = 2048;
    v36 = item;
    v37 = 2112;
    v38 = ef_publicDescription;
    v39 = 1024;
    v40 = animatedCopy;
    v41 = 1024;
    v42 = pinCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scroll to item at index path {%ld, %ld}, dynamicOffset: %@, animated: %{BOOL}d, pin:%{BOOL}d", buf, 0x2Cu);
  }

  [(ConversationViewControllerBase *)self _ensureSubjectViewLayoutIfNeededAtIndexPath:pathCopy];
  if (pinCopy && ![(ConversationViewControllerBase *)self disableScrollPinning])
  {
    [(ConversationViewControllerBase *)self pinItemAtIndexPath:pathCopy dynamicOffset:offsetCopy];
    if ([pathCopy item] >= 1)
    {
      *&self->_flags &= ~8u;
      [(ConversationViewControllerBase *)self _updateBottomPadding];
    }
  }

  [(ConversationViewControllerBase *)self _updateHandoffWithMessageAtIndexPath:pathCopy];
  [(ConversationViewControllerBase *)self updateArrowControlsView];
  if (!self->_pagingAnimator)
  {
    v20 = [MFCollectionViewPagingAnimator alloc];
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    v22 = [(MFCollectionViewPagingAnimator *)v20 initWithCollectionView:collectionView];
    pagingAnimator = self->_pagingAnimator;
    self->_pagingAnimator = v22;
  }

  traitCollection = [(ConversationViewControllerBase *)self traitCollection];
  if ([traitCollection mf_hasCompactDimension])
  {
    v25 = -8.0;
  }

  else
  {
    v25 = 5.0;
  }

  [(ConversationViewControllerBase *)self _autoscrollAdjustmentWithBaseOffset:10.0];
  [(MFCollectionViewPagingAnimator *)self->_pagingAnimator setAutoScrollOffsetAdjustment:?];
  [(ConversationViewControllerBase *)self _autoscrollAdjustmentWithBaseOffset:v25];
  [(MFCollectionViewPagingAnimator *)self->_pagingAnimator setAutoScrollOffsetAdjustmentWithoutPreviousMessage:?];
  v26 = self->_pagingAnimator;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10008B968;
  v30[3] = &unk_10064E320;
  v30[4] = self;
  v27 = pathCopy;
  v31 = v27;
  v28 = completionCopy;
  v32 = v28;
  [(MFCollectionViewPagingAnimator *)v26 scrollToItemAtIndexPath:v27 dynamicOffset:offsetCopy shouldAdjustToShowPreviousMessage:messageCopy animated:animatedCopy completion:v30];
}

- (id)_layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(ConversationViewControllerBase *)self _ensureSubjectViewLayoutIfNeededAtIndexPath:pathCopy];
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  v6 = [collectionView layoutAttributesForItemAtIndexPath:pathCopy];

  return v6;
}

- (void)_resetBottomPaddingIfDisplayingSingleMessage
{
  if ([(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
  {

    [(ConversationViewControllerBase *)self _setBottomPadding:0.0];
  }
}

- (void)_updateBottomPadding
{
  if ((*&self->_flags & 8) == 0)
  {
    countOfMessages = [(ConversationViewControllerBase *)self countOfMessages];
    if (countOfMessages >= 1)
    {
      v7 = [NSIndexPath indexPathForItem:countOfMessages - 1 inSection:0];
      cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
      [cellConfigurator sizeForItemAtIndexPath:v7];
      v6 = v5;

      [(ConversationViewControllerBase *)self _updateBottomPaddingWithLastItemHeight:v6];
    }
  }
}

- (void)_updateBottomPaddingWithLastItemHeight:(double)height
{
  _isDisplayingSingleMessage = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
  v6 = 0.0;
  if ((_isDisplayingSingleMessage & 1) == 0)
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    [collectionView mf_visibleHeight];
    v9 = v8;

    [(ConversationViewControllerBase *)self _autoscrollAdjustmentWithBaseOffset:10.0];
    v6 = v9 - (fmax(height, 276.0) + v10);
  }

  [(ConversationViewControllerBase *)self _setBottomPadding:v6];
}

- (void)_setBottomPadding:(double)padding
{
  if (!_os_feature_enabled_impl() || ![(ConversationViewControllerBase *)self isPerformingQuickReplySendAnimation])
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    [collectionView _contentScrollInset];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    collectionView2 = [(ConversationViewControllerBase *)self collectionView];
    UIRoundToViewScale();
    v11 = v10;

    collectionView3 = [(ConversationViewControllerBase *)self collectionView];
    [collectionView3 _setContentScrollInset:{v5, v7, fmax(v11, 0.0), v9}];
  }
}

- (void)cellConfigurator:(id)configurator didConfigureCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v9 = +[ConversationViewController log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543874;
    v25 = objc_opt_class();
    v26 = 2048;
    selfCopy = cellCopy;
    v28 = 2114;
    v29 = pathCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Configuring class:%{public}@ cell:%p indexPath:%{public}@", &v24, 0x20u);
  }

  _isDisplayingSingleMessage = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
  if (([(ConversationViewControllerBase *)self allowQuickReply]& _isDisplayingSingleMessage) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ConversationViewControllerBase *)cellCopy setRoundedCorners:3];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(ConversationViewControllerBase *)self _shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:pathCopy];
    v12 = cellCopy;
    viewModel = [v12 viewModel];
    [(ConversationViewControllerBase *)self _configureExpandedCell:v12 atIndexPath:pathCopy viewModel:viewModel collapseQuotedContent:v11];

    messageViewController = [v12 messageViewController];
    [(ConversationViewControllerBase *)self addChildViewController:messageViewController];
    [messageViewController didMoveToParentViewController:self];
    resizingState = [(ConversationViewControllerBase *)self resizingState];
    messageContentView = [messageViewController messageContentView];
    [messageContentView setContentPaddingFollowsLayoutMargins:resizingState != 2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = cellCopy;
      viewModel2 = [v12 viewModel];
      [(ConversationViewControllerBase *)self _configureCollapsedCell:v12 atIndexPath:pathCopy viewModel:viewModel2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = cellCopy;
        viewModel3 = [v12 viewModel];
        [(ConversationViewControllerBase *)self _configureGeneratedSummaryCell:v12 atIndexPath:pathCopy viewModel:viewModel3];
      }

      else
      {
        v12 = +[ConversationViewController log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          viewModel4 = [(ConversationViewControllerBase *)cellCopy viewModel];
          messageContentRequest = [viewModel4 messageContentRequest];
          itemID = [messageContentRequest itemID];
          v24 = 138413314;
          v25 = v19;
          v26 = 2048;
          selfCopy = self;
          v28 = 2112;
          v29 = v20;
          v30 = 2112;
          v31 = pathCopy;
          v32 = 2114;
          v33 = itemID;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<%@: %p> Cannot configure an unknown cell type %@ at indexPath %@ for itemID: %{public}@", &v24, 0x34u);
        }
      }
    }
  }
}

- (int64_t)cellConfigurator:(id)configurator expansionStatusForMessageAtIndexPath:(id)path
{
  pathCopy = path;
  _indexPathForReferenceMessage = [(ConversationViewControllerBase *)self _indexPathForReferenceMessage];
  if (([pathCopy isEqual:_indexPathForReferenceMessage] & 1) != 0 || -[ConversationViewControllerBase _isQuickReplyMessageAtIndexPath:](self, "_isQuickReplyMessageAtIndexPath:", pathCopy) || -[ConversationViewControllerBase _isUndoSendMessageAtIndexPath:](self, "_isUndoSendMessageAtIndexPath:", pathCopy))
  {
  }

  else
  {
    v8 = [(ConversationViewControllerBase *)self _isItemInitiallyUnreadAtIndexPath:pathCopy];

    if ((v8 & 1) == 0)
    {
      v7 = 1;
      goto LABEL_11;
    }
  }

  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList]&& ![(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

LABEL_11:

  return v7;
}

- (void)cellConfigurator:(id)configurator didInvalidateConfigurationForCellsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  pinnedItem = [(ConversationViewControllerBase *)self pinnedItem];
  indexPath = [pinnedItem indexPath];
  if (![(ConversationViewControllerBase *)self _isDisplayingSingleMessage]&& pinnedItem && indexPath)
  {
    [(ConversationViewControllerBase *)self setPinnedItem:0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10008C458;
    v8[3] = &unk_10064E348;
    v9 = pathsCopy;
    selfCopy = self;
    v11 = indexPath;
    v12 = pinnedItem;
    [UIView performWithoutAnimation:v8];
  }
}

- (id)cellConfigurator:(id)configurator targetHeightForExpandingCellAtIndexPath:(id)path
{
  v5 = [(ConversationViewControllerBase *)self messageItemIDAtIndexPath:path];
  _currentSizeMetadataKey = [(ConversationViewControllerBase *)self _currentSizeMetadataKey];
  v7 = [NSString stringWithFormat:@"%@_%@", v5, _currentSizeMetadataKey];

  cellHeightCache = [(ConversationViewControllerBase *)self cellHeightCache];
  v9 = [cellHeightCache objectForKey:v7];

  return v9;
}

- (id)cellConfigurator:(id)configurator messageItemIDAtIndexPath:(id)path
{
  configuratorCopy = configurator;
  pathCopy = path;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase cellConfigurator:messageItemIDAtIndexPath:]", "ConversationViewControllerBase.m", 2017, "0");
}

- (void)cellConfigurator:(id)configurator wantsToReloadCellAtIndexPaths:(id)paths animated:(BOOL)animated
{
  configuratorCopy = configurator;
  pathsCopy = paths;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase cellConfigurator:wantsToReloadCellAtIndexPaths:animated:]", "ConversationViewControllerBase.m", 2021, "0");
}

- (id)_currentSizeMetadataKey
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView mf_visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  Width = CGRectGetWidth(v19);
  v13 = MFModernUIApplicationPreferredContentSizeCode();
  _isDisplayingSingleMessage = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
  v15 = @"conversation";
  if (_isDisplayingSingleMessage)
  {
    v15 = @"single";
  }

  v16 = [NSString stringWithFormat:@"v%@-w%.1f-s%@-%@", @"1.0", *&Width, v13, v15];

  return v16;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  if ([(ConversationViewControllerBase *)self allowQuickReply:view]&& [(ConversationViewControllerBase *)self didCompleteFirstPaint]&& [(ConversationViewControllerBase *)self conversationSortOrder]== 1)
  {
    [(ConversationViewControllerBase *)self quickReplyHeight];
    v7 = v6;
    [(ConversationViewControllerBase *)self _itemSpacing];
    height = v7 + v8;
    width = 0.0;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  if ([(ConversationViewControllerBase *)self allowQuickReply:view]&& [(ConversationViewControllerBase *)self didCompleteFirstPaint]&& ![(ConversationViewControllerBase *)self conversationSortOrder])
  {
    [(ConversationViewControllerBase *)self quickReplyHeight];
    v9 = v8;
    [(ConversationViewControllerBase *)self _itemSpacing];
    height = v9 + v10;
    width = 0.0;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(MFConversationCellConfigurator *)self->_cellConfigurator sizeForItemAtIndexPath:pathCopy];
  v8 = v7;
  v10 = v9;
  if (v9 < 0.0)
  {
    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004853F8();
    }

    v10 = 0.0;
  }

  if (v8 < 0.0)
  {
    v12 = +[ConversationViewController log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10048546C();
    }

    v8 = 0.0;
  }

  v13 = v8;
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (double)_minimumItemHeight
{
  displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
  [MFCollapsedMessageCell defaultHeightWithDisplayMetrics:displayMetrics];
  v4 = v3 + 180.0;

  return v4;
}

- (double)_autoscrollAdjustmentWithBaseOffset:(double)offset
{
  [(ConversationViewControllerBase *)self _itemSpacing];
  v6 = v5;
  previewState = [(ConversationViewControllerBase *)self previewState];
  v8 = v6 + offset;
  if ([previewState shouldScheduleMarkMessageAsRead])
  {
    _shouldShowConversationHeader = [(ConversationViewControllerBase *)self _shouldShowConversationHeader];

    if (_shouldShowConversationHeader)
    {
      [(ConversationHeaderView *)self->_conversationHeaderView frame];
      r2 = v10;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      _visibleNavigationBar = [(ConversationViewControllerBase *)self _visibleNavigationBar];
      [_visibleNavigationBar bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v34.origin.x = v19;
      v34.origin.y = v21;
      v34.size.width = v23;
      v34.size.height = v25;
      v37.origin.x = r2;
      v37.origin.y = v12;
      v37.size.width = v14;
      v37.size.height = v16;
      v35 = CGRectIntersection(v34, v37);
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      [(ConversationHeaderView *)self->_conversationHeaderView contentHeight];
      v31 = v30;
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      return v8 + v31 - CGRectGetHeight(v36);
    }
  }

  else
  {
  }

  return v8;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  [(ConversationViewControllerBase *)self _toggleCellGroupOpacityIfNeeded:cellCopy displaying:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    expandingIndexPath = [(MFSwipableCollectionViewLayout *)self->_conversationLayout expandingIndexPath];
    v9 = [pathCopy compare:expandingIndexPath];

    if (!v9)
    {
      layer = [cellCopy layer];
      [layer setAllowsGroupOpacity:0];
    }
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = cellCopy;
    viewModel = [v11 viewModel];
    messageContentRequest = [viewModel messageContentRequest];
    itemID = [messageContentRequest itemID];
    v15 = [(ConversationViewControllerBase *)self messageItemIDAtIndexPath:pathCopy];
    v16 = [itemID isEqual:v15];

    if (!v16 || ([viewCopy indexPathsForVisibleItems], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", pathCopy), v17, (v18 & 1) == 0))
    {
      viewModel2 = [v11 viewModel];
      [(ConversationViewControllerBase *)self cancelAutomaticMarkAsReadForCellViewModel:viewModel2];
    }

    messageViewController = [v11 messageViewController];
    [messageViewController willMoveToParentViewController:0];
    [messageViewController removeFromParentViewController];
    v21 = [viewCopy valueForKeyPath:@"firstResponderViewType"];
    v22 = [viewCopy valueForKeyPath:@"firstResponderView"];
    v23 = [viewCopy valueForKeyPath:@"firstResponderIndexPath"];
    if (v22 && [v21 integerValue] == 1 && v23)
    {
      v24 = [(ConversationViewControllerBase *)self _layoutAttributesForItemAtIndexPath:v23];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10008D014;
      v27[3] = &unk_10064C660;
      v28 = v22;
      v29 = v24;
      v25 = v24;
      [UIView performWithoutAnimation:v27];
    }

    [(ConversationViewControllerBase *)self _enqueueMessageViewController:messageViewController];
    [messageViewController setDelegate:0];
    [v11 setMessageViewController:0];
    layer = [v11 layer];
    [layer setAllowsGroupOpacity:1];
  }

  [(ConversationViewControllerBase *)self _toggleCellGroupOpacityIfNeeded:cellCopy displaying:0];
}

- (id)collectionView:(id)view dragPreviewParametersForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  cellExpansionRecognizer = [(ConversationViewControllerBase *)self cellExpansionRecognizer];
  [cellExpansionRecognizer cancel];

  v9 = [viewCopy cellForItemAtIndexPath:pathCopy];
  v10 = objc_alloc_init(UIDragPreviewParameters);
  roundedCorners = [v9 roundedCorners];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (roundedCorners != 0)) == 1)
  {
    [v9 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    +[MFMessageConversationViewCell defaultCornerRadius];
    [UIBezierPath bezierPathWithRoundedRect:v13 cornerRadius:v15, v17, v19, v20];
  }

  else
  {
    [v9 bounds];
    [UIBezierPath bezierPathWithRect:?];
  }
  v21 = ;
  [v10 setVisiblePath:v21];

  return v10;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  sessionCopy = session;
  pathCopy = path;
  v10 = [view cellForItemAtIndexPath:pathCopy];
  [sessionCopy locationInView:v10];
  if ([v10 canBeginDragWithTouchAtPoint:?])
  {
    v11 = [(ConversationViewControllerBase *)self _dragItemsForItemAtIndexPath:pathCopy];
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &__NSArray0__struct;
  }

  v13 = v12;

  return v12;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  pathCopy = path;
  v12 = [viewCopy cellForItemAtIndexPath:pathCopy];
  [viewCopy convertPoint:v12 toView:{x, y}];
  if ([v12 canBeginDragWithTouchAtPoint:?])
  {
    v13 = [(ConversationViewControllerBase *)self _dragItemsForItemAtIndexPath:pathCopy];
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  v15 = v14;

  return v14;
}

- (int64_t)_dataOwnerForDragSessionAtIndexPath:(id)path
{
  pathCopy = path;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _dataOwnerForDragSessionAtIndexPath:]", "ConversationViewControllerBase.m", 2226, "0");
}

- (id)_dragItemsForItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _dragItemsForItemAtIndexPath:]", "ConversationViewControllerBase.m", 2230, "0");
}

- (void)messageViewController:(id)controller didFinishRenderingWithHeight:(double)height
{
  controllerCopy = controller;
  parentViewController = [controllerCopy parentViewController];

  v7 = [(ConversationViewControllerBase *)self _indexPathOfMessageViewControllerMessage:controllerCopy];
  if (v7 && parentViewController == self)
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    [collectionView mui_sortedIndexPathsForVisibleItems];
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_10008E14C;
    v106[3] = &unk_10064E370;
    rect_16 = v106[4] = self;
    rect_8 = [rect_16 ef_map:v106];
    rect_24 = [collectionView cellForItemAtIndexPath:v7];
    cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
    v9 = [cellConfigurator updateSemiExpandedToFullyExpandedIfNecessaryAtIndexPath:v7 renderedHeight:height];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ConversationViewControllerBase *)self _hideSeeMoreButtonForCell:rect_24];
      }
    }

    v93 = [(ConversationViewControllerBase *)self messageItemIDAtIndexPath:v7];
    [collectionView mf_visibleBounds];
    rect = v10;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    cellConfigurator2 = [(ConversationViewControllerBase *)self cellConfigurator];
    [cellConfigurator2 sizeForItemAtIndexPath:v7];
    v19 = v18;

    [(ConversationViewControllerBase *)self _minimumItemHeight];
    v21 = v20;
    v22 = ceil(height);
    if (v21 >= v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    cellConfigurator3 = [(ConversationViewControllerBase *)self cellConfigurator];
    sizeTracker = [cellConfigurator3 sizeTracker];
    collectionView2 = [(ConversationViewControllerBase *)self collectionView];
    [collectionView2 frame];
    [sizeTracker setIntrinsicSize:v93 forCellWithItemID:{v27, v23}];

    cellConfigurator4 = [(ConversationViewControllerBase *)self cellConfigurator];
    sizeTracker2 = [cellConfigurator4 sizeTracker];
    [sizeTracker2 displaySizeForCellWithItemID:v93];
    v31 = v30;

    v32 = v23 - v31;
    if (v23 - v31 < 0.0)
    {
      v32 = -(v23 - v31);
    }

    if (v32 < 2.22044605e-16)
    {
      v31 = v23;
    }

    else
    {
      v33 = +[ConversationViewController log];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        v109 = v23;
        v110 = 2048;
        heightCopy = height;
        v112 = 2048;
        v113 = v21;
        v114 = 2048;
        v115 = v31;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Height does not match value from size tracker: %.2f (renderedHeight: %.2f, minimumHeight: %.2f) <-> %.2f", buf, 0x2Au);
      }
    }

    v34 = -(v31 - v19);
    if (v31 - v19 >= 0.0)
    {
      v34 = v31 - v19;
    }

    if (v34 < 2.22044605e-16)
    {
      pinnedItemOnHeightChange = [(ConversationViewControllerBase *)self pinnedItemOnHeightChange];
      if (!pinnedItemOnHeightChange)
      {
LABEL_63:

        v87 = [collectionView cellForItemAtIndexPath:v7];
        [(ConversationViewControllerBase *)self _updateFooterViewFrameForCell:v87];

        goto LABEL_64;
      }

      v88 = pinnedItemOnHeightChange;
      [(ConversationViewControllerBase *)self setPinnedItem:pinnedItemOnHeightChange];
      [(ConversationViewControllerBase *)self setPinnedItemOnHeightChange:0];
      v52 = +[ConversationViewController log];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        pinnedItem = [(ConversationViewControllerBase *)self pinnedItem];
        *buf = 138543362;
        v109 = *&pinnedItem;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Rendered Height is now equal. Restore pinnedItem:%{public}@", buf, 0xCu);
      }
    }

    else
    {
      resizingState = [(ConversationViewControllerBase *)self resizingState];
      if (resizingState != 3)
      {
        _currentSizeMetadataKey = [(ConversationViewControllerBase *)self _currentSizeMetadataKey];
        v37 = [NSString stringWithFormat:@"%@_%@", v93, _currentSizeMetadataKey];

        v38 = [NSNumber numberWithDouble:v31];
        cellHeightCache = [(ConversationViewControllerBase *)self cellHeightCache];
        [cellHeightCache setObject:v38 forKeyedSubscript:v37];
      }

      v40 = [rect_16 containsObject:v7];
      v41 = @"off-screen";
      if (v40)
      {
        v41 = @"visible";
      }

      v88 = v41;
      v42 = +[ConversationViewController log];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = COERCE_DOUBLE([v7 section]);
        v44 = COERCE_DOUBLE([v7 row]);
        contentRequest = [controllerCopy contentRequest];
        messageFuture = [contentRequest messageFuture];
        resultIfAvailable = [messageFuture resultIfAvailable];
        ef_publicDescription = [resultIfAvailable ef_publicDescription];
        *buf = 138414338;
        v109 = *&v88;
        v110 = 2048;
        heightCopy = v43;
        v112 = 2048;
        v113 = v44;
        v114 = 2048;
        v115 = v19;
        v116 = 2048;
        v117 = v31;
        v118 = 2048;
        v119 = v31 - v19;
        v120 = 2048;
        heightCopy2 = height;
        v122 = 2048;
        v123 = v21;
        v124 = 2112;
        v125 = ef_publicDescription;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Height changed for %@ cell at {%ld, %ld} (%g->%g, delta=%g, renderedHeight=%g, minimumHeight=%g) for message: %@", buf, 0x5Cu);
      }

      if (resizingState == 3)
      {
        v49 = 0;
        v50 = v31 - v19;
      }

      else
      {
        [(ConversationViewControllerBase *)self pinnedItem];
        v54 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        dynamicOffset = [*&v54 dynamicOffset];

        if (dynamicOffset)
        {
          dynamicOffset2 = [*&v54 dynamicOffset];
          [collectionView mf_cellOffsetByApplyingDynamicOffset:dynamicOffset2 cellHeight:v19];
          v58 = v57;

          dynamicOffset3 = [*&v54 dynamicOffset];
          [collectionView mf_cellOffsetByApplyingDynamicOffset:dynamicOffset3 cellHeight:v31];
          v61 = v60;

          v62 = +[ConversationViewController log];
          v50 = v61 - v58;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v109 = v50;
            v110 = 2114;
            heightCopy = v54;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Cell being resized is the pinned cell. Will adjust content offset by %0.1f. Temporarily clear pinnedItem:%{public}@.", buf, 0x16u);
          }

          [(ConversationViewControllerBase *)self setPinnedItemOnHeightChange:*&v54];
          [(ConversationViewControllerBase *)self setPinnedItem:0];
          v49 = 1;
        }

        else
        {
          if ([(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
          {
            v49 = 0;
          }

          else
          {
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v63 = rect_8;
            v64 = [v63 countByEnumeratingWithState:&v102 objects:v107 count:16];
            if (v64)
            {
              v65 = *v103;
LABEL_38:
              v66 = 0;
              while (1)
              {
                if (*v103 != v65)
                {
                  objc_enumerationMutation(v63);
                }

                v67 = *(*(&v102 + 1) + 8 * v66);
                second = [v67 second];
                [second frame];
                MinY = CGRectGetMinY(v126);
                v127.origin.x = rect;
                v127.origin.y = v12;
                v127.size.width = v14;
                v127.size.height = v16;
                if (MinY >= CGRectGetMinY(v127))
                {
                  break;
                }

                if (v64 == ++v66)
                {
                  v64 = [v63 countByEnumeratingWithState:&v102 objects:v107 count:16];
                  if (v64)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_44;
                }
              }

              first = [v67 first];

              if (first)
              {
                goto LABEL_47;
              }
            }

            else
            {
LABEL_44:
            }

            firstObject = [v63 firstObject];
            first = [firstObject first];

LABEL_47:
            v72 = [v7 compare:first];
            v49 = v72 == -1;
            v73 = @"Will NOT adjust";
            if (v72 == -1)
            {
              v73 = @"Will adjust";
            }

            v74 = v73;
            v75 = +[ConversationViewController log];
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              v76 = COERCE_DOUBLE([v7 section]);
              v77 = COERCE_DOUBLE([v7 row]);
              v78 = COERCE_DOUBLE([first section]);
              v79 = COERCE_DOUBLE([first row]);
              *buf = 138413570;
              v109 = *&v74;
              v110 = 2048;
              heightCopy = v31 - v19;
              v112 = 2048;
              v113 = v76;
              v114 = 2048;
              v115 = v77;
              v116 = 2048;
              v117 = v78;
              v118 = 2048;
              v119 = v79;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%@ content offset (adjustment=%.2f, resizedPath={%ld, %ld}, topPath={%ld, %ld})", buf, 0x3Eu);
            }
          }

          v50 = v31 - v19;
        }
      }

      v80 = objc_alloc_init(UICollectionViewFlowLayoutInvalidationContext);
      [v80 setContentSizeAdjustment:{0.0, v31 - v19}];
      if (v49)
      {
        [v80 setContentOffsetAdjustment:{0.0, v50}];
      }

      [(ConversationViewControllerBase *)self layoutInvalidationContentOffset];
      y = CGPointZero.y;
      if (v83 != CGPointZero.x || v81 != y)
      {
        [(ConversationViewControllerBase *)self layoutInvalidationContentOffset];
        [v80 setContentOffsetAdjustment:0.0];
        [(ConversationViewControllerBase *)self setLayoutInvalidationContentOffset:CGPointZero.x, y];
      }

      v96[0] = _NSConcreteStackBlock;
      v96[1] = 3221225472;
      v96[2] = sub_10008E1E8;
      v96[3] = &unk_10064E398;
      v96[4] = self;
      v97 = v7;
      v100 = v31 - v19;
      v101 = v31;
      v52 = v80;
      v98 = v52;
      v99 = collectionView;
      v84 = objc_retainBlock(v96);
      cellConfigurator5 = [(ConversationViewControllerBase *)self cellConfigurator];
      animatePendingHeightChangesIfNecessary = [cellConfigurator5 animatePendingHeightChangesIfNecessary];

      if ((animatePendingHeightChangesIfNecessary & 1) == 0)
      {
        (v84[2])(v84);
      }
    }

    pinnedItemOnHeightChange = v88;
    goto LABEL_63;
  }

LABEL_64:
}

- (void)messageViewControllerDidFinishFirstPaint:(id)paint
{
  if (![(ConversationViewControllerBase *)self didCompleteFirstPaint])
  {
    [(ConversationViewControllerBase *)self setDidCompleteFirstPaint:1];
  }

  collectionView = [(ConversationViewControllerBase *)self collectionView];
  if ([(ConversationViewControllerBase *)self _scrollViewIsScrolledToEnd:?])
  {
    _isDisplayingSingleMessage = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];

    if (_isDisplayingSingleMessage)
    {
      [(ConversationViewControllerBase *)self _scrolledToEndOfSingleMessage];
    }
  }

  else
  {
  }

  v7 = +[UIApplication sharedApplication];
  isTesting = [v7 isTesting];

  if (isTesting)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"MFMailConversationViewDidShow" object:self];
  }
}

- (void)messageViewControllerDidDisplayContent:(id)content success:(BOOL)success
{
  successCopy = success;
  contentCopy = content;
  contentRequest = [contentCopy contentRequest];
  message = [contentRequest message];

  [(ConversationViewControllerBase *)self scheduleAutomaticMarkAsReadForMessage:message];
  mailboxRepository = [(ConversationViewControllerBase *)self mailboxRepository];
  [mailboxRepository recordFrecencyEventWithMailboxesOfMessage:message];

  if ([UIApp launchedToTest])
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"MFMailConversationViewChildMessageViewDidDisplayContent" object:contentCopy];
  }

  if (successCopy)
  {
    blankConversationController = [(ConversationViewControllerBase *)self blankConversationController];
    [blankConversationController conversationViewWebViewDidLoadMessage];
  }

  [(ConversationViewControllerBase *)self _updateFooterViewFrameForVisibleCells];
  [(ConversationViewControllerBase *)self _messageViewControllerDidDisplayContent:contentCopy];
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];
  itemID = [referenceMessageListItem itemID];

  v14 = MFMessageSelectionLifecycleSignpostLog();
  v15 = os_signpost_id_make_with_pointer(v14, itemID);

  v16 = MFMessageSelectionLifecycleSignpostLog();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = @"failed to display";
    if (successCopy)
    {
      v18 = @"successfully displayed";
    }

    v19 = 138412546;
    v20 = v18;
    v21 = 2112;
    v22 = itemID;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v15, "Message selection lifecycle", "Message view controller %@ message with itemID: %@", &v19, 0x16u);
  }
}

- (void)messageViewController:(id)controller didStartDownloadForContentItemWithProgress:(id)progress
{
  controllerCopy = controller;
  progressCopy = progress;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase messageViewController:didStartDownloadForContentItemWithProgress:]", "ConversationViewControllerBase.m", 2418, "0");
}

- (void)messageViewController:(id)controller didTapShowMoreAtCollapsedOffset:(CGPoint)offset expandedOffset:(CGPoint)expandedOffset
{
  y = expandedOffset.y;
  x = expandedOffset.x;
  v7 = offset.y;
  v8 = offset.x;
  controllerCopy = controller;
  [(ConversationViewControllerBase *)self setPinnedItem:0];
  [(ConversationViewControllerBase *)self _showSingleMessage:controllerCopy animationOffset:v8 initialScrollOffset:v7, x, y];
}

- (void)messageViewController:(id)controller didTapRevealActionsButton:(id)button
{
  controllerCopy = controller;
  buttonCopy = button;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase messageViewController:didTapRevealActionsButton:]", "ConversationViewControllerBase.m", 2427, "0");
}

- (void)messageViewController:(id)controller didTapUndoSendButton:(id)button
{
  controllerCopy = controller;
  buttonCopy = button;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase messageViewController:didTapUndoSendButton:]", "ConversationViewControllerBase.m", 2431, "0");
}

- (id)_visibleIndexPathForMessageViewController:(id)controller
{
  controllerCopy = controller;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _visibleIndexPathForMessageViewController:]", "ConversationViewControllerBase.m", 2439, "0");
}

- (void)messageViewControllerDidTapAddressAtom:(id)atom contactViewController:(id)controller
{
  atomCopy = atom;
  controllerCopy = controller;
  [controllerCopy setDelegate:self];
  [atomCopy bounds];
  [(ConversationViewControllerBase *)self _showModalViewController:controllerCopy fromView:atomCopy sourceRect:1 animated:?];
}

- (void)messageViewController:(id)controller didChangeSelectedHTML:(id)l
{
  controllerCopy = controller;
  lCopy = l;
  textSelectionScrollHandler = self->_textSelectionScrollHandler;
  if (!textSelectionScrollHandler)
  {
    v8 = [MFTextSelectionScrollHandler alloc];
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    v10 = [(MFTextSelectionScrollHandler *)v8 initWithScrollView:collectionView];
    v11 = self->_textSelectionScrollHandler;
    self->_textSelectionScrollHandler = v10;

    textSelectionScrollHandler = self->_textSelectionScrollHandler;
  }

  [(MFTextSelectionScrollHandler *)textSelectionScrollHandler handleTextSelectionChanged:lCopy];
}

- (id)messageViewController:(id)controller displayNameForEmailAddress:(id)address abbreviated:(BOOL)abbreviated
{
  abbreviatedCopy = abbreviated;
  addressCopy = address;
  contactStore = [(ConversationViewControllerBase *)self contactStore];
  v9 = [contactStore displayNameForEmailAddress:addressCopy abbreviated:abbreviatedCopy];

  return v9;
}

- (void)contactCardInteractions:(id)interactions triggerSearchForDisplayName:(id)name emailAddresses:(id)addresses
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008ECB8;
  v6[3] = &unk_10064C660;
  selfCopy = self;
  addressesCopy = addresses;
  v5 = addressesCopy;
  [(ConversationViewControllerBase *)selfCopy dismissViewControllerAnimated:1 completion:v6];
}

- (void)messageViewController:(id)controller webViewDidTerminateWithReason:(int64_t)reason
{
  scene = [(ConversationViewControllerBase *)self scene];
  activationState = [scene activationState];

  blankConversationController = [(ConversationViewControllerBase *)self blankConversationController];
  [blankConversationController conversationViewWebViewCrashedWithReason:reason isBackgrounded:activationState == 2];
}

- (id)hostScrollViewForConversationHeaderView:(id)view
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];

  return collectionView;
}

- (double)stickySubjectViewMaxYForConversationHeaderView:(id)view
{
  viewCopy = view;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase stickySubjectViewMaxYForConversationHeaderView:]", "ConversationViewControllerBase.m", 2509, "0");
}

- (double)stickySubjectViewFirstBaselineForConversationHeaderView:(id)view
{
  viewCopy = view;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase stickySubjectViewFirstBaselineForConversationHeaderView:]", "ConversationViewControllerBase.m", 2513, "0");
}

- (BOOL)_scrollViewIsScrolledToEnd:(id)end
{
  endCopy = end;
  [endCopy contentSize];
  if (v4 <= 1.0)
  {
    v10 = 0;
  }

  else
  {
    [endCopy contentOffset];
    v6 = v5;
    [endCopy bounds];
    v8 = v7;
    [endCopy contentSize];
    v10 = (v6 + v8) / v9 >= 0.85;
  }

  return v10;
}

- (id)indexSetForRowsFromIndexPaths:(id)paths section:(int64_t)section
{
  pathsCopy = paths;
  v6 = +[NSMutableIndexSet indexSet];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = pathsCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 section] == section)
        {
          [v6 addIndex:{objc_msgSend(v11, "row")}];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v6;
}

- (BOOL)_shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:(id)path
{
  pathCopy = path;
  if ((+[MUIManagedDeviceRestrictions isManualSummaryRestricted]& 1) != 0 || !_os_feature_enabled_impl())
  {
    v5 = 0;
  }

  else
  {
    v5 = EMIsGreymatterAvailable();
  }

  if ([(ConversationViewControllerBase *)self conversationSortOrder])
  {
    if (v5)
    {
      countOfMessages = [(ConversationViewControllerBase *)self countOfMessages];
      countOfMessages2 = [(ConversationViewControllerBase *)self countOfSummaries]+ countOfMessages;
    }

    else
    {
      countOfMessages2 = [(ConversationViewControllerBase *)self countOfMessages];
    }

    v8 = countOfMessages2 - 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = [pathCopy row] != v8;

  return v9;
}

- (id)_nextMessageIndexWithDirection:(int)direction
{
  v3 = *&direction;
  _currentlyVisibleIndexPath = [(ConversationViewControllerBase *)self _currentlyVisibleIndexPath];
  v6 = [(ConversationViewControllerBase *)self _nextIndexPathToSelectFromIndexPath:_currentlyVisibleIndexPath withDirection:v3];

  return v6;
}

- (id)_nextIndexPathToSelectFromIndexPath:(id)path withDirection:(int)direction
{
  v6 = [path row];
  if (direction == -1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v6 + v7;
  if (v6 + v7 >= 1)
  {
    do
    {
      if (v8 >= [(ConversationViewControllerBase *)self countOfMessages])
      {
        break;
      }

      v9 = [NSIndexPath indexPathForRow:v8 inSection:0];
      v10 = [(ConversationViewControllerBase *)self messageItemIDAtIndexPath:v9];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_9;
      }

      v8 += v7;
    }

    while (v8 > 0);
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_oldestIndexPath
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  if ([(ConversationViewControllerBase *)self conversationSortOrder]== 1)
  {
    [indexPathsForVisibleItems lastObject];
  }

  else
  {
    [indexPathsForVisibleItems firstObject];
  }
  v5 = ;

  return v5;
}

- (void)_hideRemovedSingleMessageCellIfInRemovedIndexPaths:(id)paths
{
  pathsCopy = paths;
  removedSingleMessageIndexPath = [(ConversationViewControllerBase *)self removedSingleMessageIndexPath];
  if (removedSingleMessageIndexPath)
  {
    removedSingleMessageIndexPath2 = [(ConversationViewControllerBase *)self removedSingleMessageIndexPath];
    v6 = [pathsCopy containsObject:removedSingleMessageIndexPath2];

    if (v6)
    {
      collectionView = [(ConversationViewControllerBase *)self collectionView];
      indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
      removedSingleMessageIndexPath3 = [(ConversationViewControllerBase *)self removedSingleMessageIndexPath];
      v10 = [indexPathsForVisibleItems containsObject:removedSingleMessageIndexPath3];

      if (v10)
      {
        collectionView2 = [(ConversationViewControllerBase *)self collectionView];
        removedSingleMessageIndexPath4 = [(ConversationViewControllerBase *)self removedSingleMessageIndexPath];
        v13 = [collectionView2 cellForItemAtIndexPath:removedSingleMessageIndexPath4];

        [v13 setAlpha:0.0];
      }

      [(ConversationViewControllerBase *)self setRemovedSingleMessageIndexPath:0];
    }
  }
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  pinnedItem = [(ConversationViewControllerBase *)self pinnedItem];
  indexPath = [pinnedItem indexPath];

  pinnedItem2 = [(ConversationViewControllerBase *)self pinnedItem];
  dynamicOffset = [pinnedItem2 dynamicOffset];

  if (indexPath && dynamicOffset)
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    [collectionView mf_contentOffsetApplyingDynamicOffset:dynamicOffset indexPath:indexPath];
    v13 = v12;

    if (v13 == y)
    {
      x = 0.0;
      goto LABEL_10;
    }

    v14 = +[ConversationViewController log];
    x = 0.0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = v13;
      v19 = 2048;
      v20 = y;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Conversation view has pinned item. Using calculated offset of %.02f instead of proposed %.02f", &v17, 0x16u);
    }
  }

  else
  {
    v14 = +[ConversationViewController log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1004854E0(v14, y);
    }

    v13 = y;
  }

LABEL_10:
  v15 = x;
  v16 = v13;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)transitionCoordinatorForKeyboardAvoidance:(id)avoidance
{
  transitionCoordinator = [(ConversationViewControllerBase *)self transitionCoordinator];

  return transitionCoordinator;
}

- (void)_adjustForKeyboardAvoidanceOverlap:(double)overlap
{
  if (_os_feature_enabled_impl() && [(ConversationViewControllerBase *)self isPerformingQuickReplySendAnimation])
  {
    if (self->_adjustmentForKeyboard != overlap)
    {
      self->_adjustmentForKeyboard = overlap;
    }

    return;
  }

  traitCollection = [(ConversationViewControllerBase *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  navigationController = [(ConversationViewControllerBase *)self navigationController];
  toolbar = [navigationController toolbar];
  [toolbar frame];
  v8 = v7;

  allowQuickReply = [(ConversationViewControllerBase *)self allowQuickReply];
  if (overlap > 0.0)
  {
    v10 = allowQuickReply;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 & (horizontalSizeClass == 1)) != 0)
  {
    overlapCopy = overlap - v8;
  }

  else
  {
    overlapCopy = overlap;
  }

  v75 = overlapCopy;
  if (overlapCopy != self->_adjustmentForKeyboard)
  {
    v72 = v8;
    v78 = self->_conversationView;
    [(_MFConversationViewCollectionView *)v78 contentInset];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(_MFConversationViewCollectionView *)v78 scrollIndicatorInsets];
    v74 = v20;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = v75 - self->_adjustmentForKeyboard;
    [(_MFConversationViewCollectionView *)v78 setContentInset:v13, v15, v17 + v27, v19];
    [(_MFConversationViewCollectionView *)v78 setScrollIndicatorInsets:v74, v22, v24 + v27, v26];
    self->_adjustmentForKeyboard = v75;
    if ([(ConversationViewControllerBase *)self allowQuickReply])
    {
      [(ConversationViewControllerBase *)self _shrinkBottomPaddingIfNecessary];
    }

    [(ConversationViewControllerBase *)self _updateBottomPadding];
    if (![(ConversationViewControllerBase *)self allowQuickReply])
    {
      goto LABEL_29;
    }

    collectionView = [(ConversationViewControllerBase *)self collectionView];
    [collectionView frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    if (horizontalSizeClass != 1 || v75 <= 0.0)
    {
      v37 = v29 - v75;
    }

    else
    {
      v37 = v29 - v75 - v73;
    }

    _quickReplyView = [(ConversationViewControllerBase *)self _quickReplyView];
    v39 = _quickReplyView;
    if (_quickReplyView)
    {
      [_quickReplyView frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      view = [(ConversationViewControllerBase *)self view];
      [view convertRect:collectionView fromView:{v41, v43, v45, v47}];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      [(ConversationViewControllerBase *)self _itemSpacing];
      v88.size.height = v56 + v57;
      v88.origin.x = v50;
      v88.origin.y = v52;
      v88.size.width = v54;
      MaxY = CGRectGetMaxY(v88);
      v89.origin.x = v31;
      v89.origin.y = v33;
      v89.size.width = v35;
      v89.size.height = v37;
      v59 = MaxY - CGRectGetMaxY(v89);
      if (v59 > 0.0)
      {
        [collectionView contentOffset];
        v61 = v60;
        v63 = v62;
        [collectionView contentSize];
        v65 = v64;
        [collectionView bounds];
        v67 = v66;
        [collectionView contentInset];
        v69 = v65 - v67 + v68;
        if (v59 + v63 < v69)
        {
          v69 = v59 + v63;
        }

        [collectionView setContentOffset:{v61, v69}];
        v70 = +[ConversationViewController log];
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v80 = objc_opt_class();
          v81 = 2048;
          selfCopy = self;
          v83 = 2048;
          v84 = v59;
          v85 = 2048;
          v86 = v75;
          v71 = v80;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "<%@: %p> [Quick Reply] Did scroll up by amount=%f to adjust for keyboard overlap=%f", buf, 0x2Au);
        }
      }

LABEL_29:
      return;
    }
  }
}

- (void)_animateWithKeyboard:(id)keyboard animations:(id)animations
{
  keyboardCopy = keyboard;
  animationsCopy = animations;
  userInfo = [keyboardCopy userInfo];
  v9 = [userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v9 doubleValue];
  v11 = v10;

  userInfo2 = [keyboardCopy userInfo];
  v13 = [userInfo2 objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  integerValue = [v13 integerValue];

  userInfo3 = [keyboardCopy userInfo];
  v16 = [userInfo3 objectForKey:UIKeyboardFrameEndUserInfoKey];
  [v16 CGRectValue];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100090008;
  v27[3] = &unk_10064E3E8;
  v25 = animationsCopy;
  v29 = v18;
  v30 = v20;
  v31 = v22;
  v32 = v24;
  v27[4] = self;
  v28 = v25;
  v26 = [UIViewPropertyAnimator runningPropertyAnimatorWithDuration:integerValue << 16 delay:v27 options:0 animations:v11 completion:0.0];
}

- (BOOL)canHandleAction:(SEL)action withMailMenuCommand:(id)command
{
  command = [(ConversationViewControllerBase *)self _isConversationViewShortcut:action, command];
  if (command)
  {

    LOBYTE(command) = sub_100090084(self, action);
  }

  return command;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100090440;
  v9[3] = &unk_10064E410;
  v11 = &v13;
  actionCopy = action;
  senderCopy = sender;
  v10 = senderCopy;
  if ([(ConversationViewControllerBase *)self _executeIfSplitViewIsAvailable:v9])
  {
    v7 = *(v14 + 24);
  }

  else
  {
    v7 = [(ConversationViewControllerBase *)self canHandleAction:action withMailMenuCommand:senderCopy];
    *(v14 + 24) = v7;
  }

  _Block_object_dispose(&v13, 8);
  return v7 & 1;
}

- (BOOL)_isConversationViewShortcut:(SEL)shortcut
{
  if (sub_10012F5F0(MailSplitViewController, shortcut))
  {
    return 1;
  }

  return sub_10012F238(MailSplitViewController, shortcut);
}

- (void)_pageUpCommandInvoked:(id)invoked
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView mf_pageUp];
}

- (void)_pageDownCommandInvoked:(id)invoked
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView mf_pageDown];
}

- (void)_selectNextMessageCommandInvoked:(id)invoked
{
  delegate = [(ConversationViewControllerBase *)self delegate];
  if ([delegate conversationViewController:self canAdvanceToNextConversationWithDirection:0xFFFFFFFFLL])
  {
    [delegate conversationViewController:self advanceToNextConversationWithDirection:0xFFFFFFFFLL];
  }
}

- (void)_selectPreviousMessageCommandInvoked:(id)invoked
{
  delegate = [(ConversationViewControllerBase *)self delegate];
  if ([delegate conversationViewController:self canAdvanceToNextConversationWithDirection:1])
  {
    [delegate conversationViewController:self advanceToNextConversationWithDirection:1];
  }
}

- (BOOL)_shouldShowArrowsForDisplayMode:(int64_t)mode collapsed:(BOOL)collapsed withTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList]|| [(ConversationViewControllerBase *)self isStandalone]&& [(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
  {
LABEL_2:
    LOBYTE(v9) = 0;
    goto LABEL_8;
  }

  if (collectionCopy)
  {
    if (collapsed)
    {
LABEL_7:
      LOBYTE(v9) = 1;
      goto LABEL_8;
    }
  }

  else
  {
    collectionCopy = [(ConversationViewControllerBase *)self traitCollection];
    if (collapsed)
    {
      goto LABEL_7;
    }
  }

  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  LOBYTE(v9) = 1;
  if ((mode & 0xFFFFFFFFFFFFFFFDLL) != 1 && horizontalSizeClass != 1)
  {
    if (mode == 5)
    {
      v9 = MUISolariumFeatureEnabled() ^ 1;
      goto LABEL_8;
    }

    goto LABEL_2;
  }

LABEL_8:

  return v9;
}

- (void)_updateBarButtonsAnimated:(BOOL)animated force:(BOOL)force isShowingTitle:(BOOL)title
{
  titleCopy = title;
  forceCopy = force;
  animatedCopy = animated;
  splitViewController = [(ConversationViewControllerBase *)self splitViewController];
  v12 = splitViewController;
  if (splitViewController)
  {
    displayMode = [splitViewController displayMode];
    isCollapsed = [v12 isCollapsed];
  }

  else
  {
    isCollapsed = 1;
    displayMode = 1;
  }

  [(ConversationViewControllerBase *)self _updateBarButtonsAnimated:animatedCopy withDisplayMode:displayMode withTraitCollection:0 collapsed:isCollapsed force:forceCopy isShowingTitle:titleCopy];
}

- (void)_removeNavigationBarFromSelf
{
  navigationItem = [(ConversationViewControllerBase *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  navigationItem2 = [(ConversationViewControllerBase *)self navigationItem];
  [navigationItem2 setCenterItemGroups:&__NSArray0__struct];

  navigationItem3 = [(ConversationViewControllerBase *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:0];
}

- (BOOL)_shouldUseDesktopClassNavigationBarForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = [UINavigationBar mf_shouldUseDesktopClassNavigationBarForTraitCollection:collectionCopy];
  if (*(v9 + 24) == 1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100090B64;
    v7[3] = &unk_10064E2A8;
    v7[4] = &v8;
    [(ConversationViewControllerBase *)self _executeIfSplitViewIsAvailable:v7];
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v5 & 1;
}

- (void)_updateBarButtonsAnimated:(BOOL)animated withDisplayMode:(int64_t)mode withTraitCollection:(id)collection collapsed:(BOOL)collapsed force:(BOOL)force isShowingTitle:(BOOL)title
{
  titleCopy = title;
  animatedCopy = animated;
  forceCopy = force;
  collapsedCopy = collapsed;
  collectionCopy = collection;
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  _shouldArchiveByDefault = [(ConversationViewControllerBase *)self _shouldArchiveByDefault];
  if (_shouldArchiveByDefault != [barItemsManager useArchiveButton])
  {
    [barItemsManager setUseArchiveButton:_shouldArchiveByDefault];
    forceCopy = 1;
  }

  v15 = [(ConversationViewControllerBase *)self _shouldShowArrowsForDisplayMode:mode collapsed:collapsedCopy withTraitCollection:collectionCopy];
  if (v15 != [barItemsManager showNavigationArrows])
  {
    [barItemsManager setShowNavigationArrows:v15];
    forceCopy = 1;
  }

  v16 = sub_100090924(self);
  v17 = v16;
  if (!collectionCopy)
  {
    collectionCopy = [(ConversationViewControllerBase *)v16 traitCollection];
  }

  if (v17 != self)
  {
    [(ConversationViewControllerBase *)self _removeNavigationBarFromSelf];
  }

  v18 = [(ConversationViewControllerBase *)self _shouldUseDesktopClassNavigationBarForTraitCollection:collectionCopy];
  v19 = forceCopy | v18 ^ [barItemsManager useDesktopClassNavigationBar];
  if (v19 != 1 || ([barItemsManager setUseDesktopClassNavigationBar:v18], -[ConversationViewControllerBase navigationController](v17, "navigationController"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "navigationBar"), v21 = objc_claimAutoreleasedReturnValue(), -[ConversationViewControllerBase navigationItem](v17, "navigationItem"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(barItemsManager, "configureNavigationBar:navigationItem:", v21, v22), v22, v21, v20, !v18))
  {
    mf_hasCompactDimension = [collectionCopy mf_hasCompactDimension];
    if (((self->_defaultBarButtons != 0) & ~v19) == 0)
    {
      _defaultBarButtonItems = [(ConversationViewControllerBase *)self _defaultBarButtonItems];
      defaultBarButtons = self->_defaultBarButtons;
      self->_defaultBarButtons = _defaultBarButtonItems;
    }

    flags = self->_flags;
    if ((mf_hasCompactDimension & *&flags) == 1)
    {
      toolbarItems = [(ConversationViewControllerBase *)self toolbarItems];
      v30 = toolbarItems == 0;
    }

    else
    {
      v30 = mf_hasCompactDimension ^ *&flags;
    }

    navigationController = [(ConversationViewControllerBase *)v17 navigationController];
    [navigationController setNavigationBarHidden:0 animated:animatedCopy];

    navigationItem = [(ConversationViewControllerBase *)v17 navigationItem];
    if (((v19 | v30) & 1) == 0)
    {
      goto LABEL_48;
    }

    *&self->_flags = *&self->_flags & 0xFE | mf_hasCompactDimension;
    v33 = objc_opt_new();
    if ((*&self->_flags & 1) == 0)
    {
      [(ConversationViewControllerBase *)v17 setToolbarItems:0 animated:animatedCopy];
      if ([(ConversationViewControllerBase *)self isPrimary])
      {
        if ([v33 count])
        {
          leftSpaceItem = [barItemsManager leftSpaceItem];
          [v33 addObject:leftSpaceItem];
        }

        if (v15)
        {
          if (MUISolariumFeatureEnabled())
          {
            arrowControlsButtonItems = [barItemsManager arrowControlsButtonItems];
            [v33 addObjectsFromArray:arrowControlsButtonItems];
          }

          else
          {
            arrowControlsButtonItems = [barItemsManager arrowControlsButtonItem];
            [v33 addObject:arrowControlsButtonItems];
          }
        }
      }

      v40 = [(ConversationViewControllerBase *)self _defaultBarButtonsWithFlexibleSpacing:0 reverseOrder:1];
      v41 = [v40 mutableCopy];

      [navigationItem setRightBarButtonItems:v41 animated:animatedCopy];
      goto LABEL_37;
    }

    if (v15)
    {
      if (MUISolariumFeatureEnabled())
      {
        arrowControlsButtonItems2 = [barItemsManager arrowControlsButtonItems];
LABEL_33:
        [navigationItem setRightBarButtonItems:arrowControlsButtonItems2 animated:animatedCopy];
        v39 = [(ConversationViewControllerBase *)self _defaultBarButtonsWithFlexibleSpacing:1 reverseOrder:0];
        [(ConversationViewControllerBase *)v17 setToolbarItems:v39 animated:animatedCopy];

LABEL_37:
        if ([v33 count])
        {
          leftBarButtonItems = [navigationItem leftBarButtonItems];
          v43 = [v33 isEqual:leftBarButtonItems];

          if ((v43 & 1) == 0)
          {
            [navigationItem setLeftBarButtonItems:v33 animated:animatedCopy];
          }

          [navigationItem setLeftItemsSupplementBackButton:1];
        }

        else
        {
          [navigationItem setLeftBarButtonItems:0 animated:animatedCopy];
        }

        if ([(ConversationViewControllerBase *)self shouldAddDoneButtonForConversationNavigationBarItemsManager:barItemsManager])
        {
          doneButtonItem = [barItemsManager doneButtonItem];
          v48 = doneButtonItem;
          v45 = [NSArray arrayWithObjects:&v48 count:1];

          if (*&self->_flags)
          {
            [navigationItem setRightBarButtonItems:v45 animated:animatedCopy];
            [navigationItem setHidesBackButton:1 animated:animatedCopy];
          }

          else
          {
            [navigationItem setLeftBarButtonItems:v45 animated:animatedCopy];
            [navigationItem setLeftItemsSupplementBackButton:0];
          }
        }

LABEL_48:
        [(ConversationViewControllerBase *)self _updateBarButtonsEnabled];

        goto LABEL_49;
      }

      arrowControlsButtonItem = [barItemsManager arrowControlsButtonItem];
      v50 = arrowControlsButtonItem;
      v38 = [NSArray arrayWithObjects:&v50 count:1];
    }

    else
    {
      if (![(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
      {
        arrowControlsButtonItems2 = 0;
        goto LABEL_33;
      }

      arrowControlsButtonItem = [barItemsManager groupedSenderActionsButtonItem];
      v49 = arrowControlsButtonItem;
      v38 = [NSArray arrayWithObjects:&v49 count:1];
    }

    arrowControlsButtonItems2 = v38;

    goto LABEL_33;
  }

  [(ConversationViewControllerBase *)v17 setToolbarItems:0 animated:animatedCopy];
  navigationController2 = [(ConversationViewControllerBase *)v17 navigationController];
  [navigationController2 setNavigationBarHidden:0 animated:animatedCopy];

  navigationItem2 = [(ConversationViewControllerBase *)v17 navigationItem];
  [barItemsManager configureDesktopClassButtonsFor:navigationItem2 isPrimary:-[ConversationViewControllerBase isPrimary](self isShowingTitle:"isPrimary") animated:{titleCopy, animatedCopy}];

  [(ConversationViewControllerBase *)self _updateBarButtonsEnabled];
LABEL_49:
}

- (id)_defaultBarButtonItems
{
  selfCopy = self;
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  v4 = objc_alloc_init(NSMutableArray);
  destructiveButtonItem = [barItemsManager destructiveButtonItem];
  v14[0] = destructiveButtonItem;
  moveButtonItem = [barItemsManager moveButtonItem];
  v14[1] = moveButtonItem;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  [v4 addObjectsFromArray:v7];

  traitCollection = [(ConversationViewControllerBase *)selfCopy traitCollection];
  LODWORD(selfCopy) = [traitCollection mf_hasCompactDimension];

  if (selfCopy)
  {
    revealActionsButtonItem = [barItemsManager revealActionsButtonItem];
    [v4 addObject:revealActionsButtonItem];
  }

  composeButtonItem = [barItemsManager composeButtonItem];

  if (composeButtonItem)
  {
    composeButtonItem2 = [barItemsManager composeButtonItem];
    [v4 addObject:composeButtonItem2];
  }

  v12 = [v4 copy];

  return v12;
}

- (void)setDoneButton:(id)button
{
  buttonCopy = button;
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  [barItemsManager setDoneButton:buttonCopy];
}

- (UIBarButtonItem)doneButton
{
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  doneButton = [barItemsManager doneButton];

  return doneButton;
}

- (void)done:(id)done
{
  delegate = [(ConversationViewControllerBase *)self delegate];
  navigationController = [(ConversationViewControllerBase *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];

  if (firstObject == self)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate conversationViewControllerWantsDismissal:self];
    }
  }

  else
  {
    navigationController2 = [(ConversationViewControllerBase *)self navigationController];
    v8 = [navigationController2 popViewControllerAnimated:1];
  }
}

- (id)_flexibleSpaceBarButton
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];

  return v2;
}

- (id)_fixedSpaceBarButton
{
  v2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
  [v2 setWidth:10.0];

  return v2;
}

- (id)_defaultBarButtonsWithFlexibleSpacing:(BOOL)spacing reverseOrder:(BOOL)order
{
  orderCopy = order;
  spacingCopy = spacing;
  v7 = +[NSMutableArray array];
  if (spacingCopy)
  {
    [(ConversationViewControllerBase *)self _flexibleSpaceBarButton];
  }

  else
  {
    [(ConversationViewControllerBase *)self _fixedSpaceBarButton];
  }
  v8 = ;
  if (orderCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  composeButtonItem = [barItemsManager composeButtonItem];

  v12 = MUISolariumFeatureEnabled();
  if (composeButtonItem)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    v14 = [(NSArray *)self->_defaultBarButtons indexOfObject:composeButtonItem];
    v15 = v14 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  defaultBarButtons = self->_defaultBarButtons;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000919AC;
  v23[3] = &unk_10064E438;
  v28 = v15;
  v29 = orderCopy;
  v27 = v14;
  v17 = v7;
  v24 = v17;
  v18 = v8;
  v25 = v18;
  selfCopy = self;
  [(NSArray *)defaultBarButtons enumerateObjectsWithOptions:v9 usingBlock:v23];
  if (spacingCopy && [(ConversationViewControllerBase *)self shouldHideStickyFooterView])
  {
    v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
    [v19 setWidth:8.0];
    [v17 insertObject:v19 atIndex:0];
    v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
    [v20 setWidth:8.0];
    [v17 addObject:v20];
  }

  v21 = v17;

  return v17;
}

- (void)revealActionsButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase revealActionsButtonTapped:]", "ConversationViewControllerBase.m", 3145, "0");
}

- (void)replyButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase replyButtonTapped:]", "ConversationViewControllerBase.m", 3149, "0");
}

- (void)replyAllButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase replyAllButtonTapped:]", "ConversationViewControllerBase.m", 3153, "0");
}

- (void)forwardButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase forwardButtonTapped:]", "ConversationViewControllerBase.m", 3157, "0");
}

- (id)supplementaryButtonItemForConversationNavigationBarItemsManager:(id)manager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100085910;
  v10 = sub_100085920;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100091D74;
  v5[3] = &unk_10064E2A8;
  v5[4] = &v6;
  [(ConversationViewControllerBase *)self _executeIfSplitViewIsAvailable:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)shouldAddDoneButtonForConversationNavigationBarItemsManager:(id)manager
{
  if (+[UIDevice mf_isPadIdiom]&& ![(ConversationViewControllerBase *)self isPrimary]&& ![(ConversationViewControllerBase *)self shownAsConversation])
  {
    return 1;
  }

  doneButton = [(ConversationViewControllerBase *)self doneButton];
  v5 = doneButton != 0;

  return v5;
}

- (void)navigateToMessageInDirection:(int)direction
{
  v3 = *&direction;
  if ([(ConversationViewControllerBase *)self _canBrowseInDirection:?])
  {

    [(ConversationViewControllerBase *)self _navigateToMessageInDirection:v3];
  }
}

- (void)_navigateToMessageInDirection:(int)direction
{
  v3 = *&direction;
  v5 = [(ConversationViewControllerBase *)self _nextMessageIndexWithDirection:?];
  v10 = v5;
  if (v5)
  {
    *&self->_flags &= ~2u;
    [(ConversationViewControllerBase *)self _scrollToItemAtIndexPath:v5 dynamicOffset:0 shouldAdjustToShowPreviousMessage:1 animated:1 pin:1 completion:0];
  }

  else
  {
    _isDisplayingSingleMessage = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
    flags = self->_flags;
    if ((_isDisplayingSingleMessage | ((flags & 2) >> 1)) == 1)
    {
      *&self->_flags = flags & 0xFD;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained conversationViewController:self advanceToNextConversationWithDirection:v3];
    }

    else
    {
      *&self->_flags = flags | 2;
      if (v3 == -1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 4;
      }

      [(MFCollectionViewPagingAnimator *)self->_pagingAnimator bounceAlongEdge:v9];
    }
  }
}

- (BOOL)_canBrowseInDirection:(int)direction
{
  v3 = *&direction;
  referenceMessageListItem = [(ConversationViewControllerBase *)self referenceMessageListItem];

  if (!referenceMessageListItem)
  {
    return 0;
  }

  v6 = [(ConversationViewControllerBase *)self _nextMessageIndexWithDirection:v3];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained conversationViewController:self canAdvanceToNextConversationWithDirection:v3];
  }

  return v7;
}

- (void)updateArrowControlsView
{
  if (MUISolariumFeatureEnabled())
  {
    v3 = [(ConversationViewControllerBase *)self _canBrowseInDirection:0xFFFFFFFFLL];
    barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
    upArrowBarButtonItem = [barItemsManager upArrowBarButtonItem];
    [upArrowBarButtonItem setEnabled:v3];

    v5 = [(ConversationViewControllerBase *)self _canBrowseInDirection:1];
    barItemsManager2 = [(ConversationViewControllerBase *)self barItemsManager];
    [barItemsManager2 downArrowBarButtonItem];
  }

  else
  {
    barItemsManager3 = [(ConversationViewControllerBase *)self barItemsManager];
    barItemsManager2 = [barItemsManager3 arrowControlsView];

    v8 = [(ConversationViewControllerBase *)self _canBrowseInDirection:0xFFFFFFFFLL];
    upButton = [barItemsManager2 upButton];
    [upButton setEnabled:v8];

    v5 = [(ConversationViewControllerBase *)self _canBrowseInDirection:1];
    [barItemsManager2 downButton];
  }
  v6 = ;
  [v6 setEnabled:v5];
}

- (void)_setNavigationBarTitleViewNeedsLayout
{
  conversationHeaderView = [(ConversationViewControllerBase *)self conversationHeaderView];
  [conversationHeaderView setNeedsLayout];
}

- (id)replyButtonItem
{
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  replyButtonItem = [barItemsManager replyButtonItem];

  return replyButtonItem;
}

- (id)deleteButtonItem
{
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  deleteButtonItem = [barItemsManager deleteButtonItem];

  return deleteButtonItem;
}

- (id)archiveButtonItem
{
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  archiveButtonItem = [barItemsManager archiveButtonItem];

  return archiveButtonItem;
}

- (id)moveButtonItem
{
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  moveButtonItem = [barItemsManager moveButtonItem];

  return moveButtonItem;
}

- (MFArrowControlsView)arrowControlsView
{
  arrowControlsView = self->_arrowControlsView;
  if (!arrowControlsView)
  {
    barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
    arrowControlsView = [barItemsManager arrowControlsView];
    v6 = self->_arrowControlsView;
    self->_arrowControlsView = arrowControlsView;

    arrowControlsView = self->_arrowControlsView;
  }

  return arrowControlsView;
}

- (void)_showModalViewController:(id)controller fromView:(id)view sourceRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  v22 = controllerCopy;
  objc_opt_class();
  v15 = v22;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [[UINavigationController alloc] initWithRootViewController:?];

    v15 = v16;
  }

  [v15 setModalPresentationStyle:7];
  popoverPresentationController = [v15 popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:3];
  [popoverPresentationController setSourceView:viewCopy];
  [popoverPresentationController setDelegate:self];
  v25.origin.x = CGRectZero.origin.x;
  v25.origin.y = CGRectZero.origin.y;
  v25.size.width = CGRectZero.size.width;
  v25.size.height = CGRectZero.size.height;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  if (CGRectEqualToRect(v24, v25))
  {
    [(ConversationViewControllerBase *)self _defaultSourceRectForView:viewCopy];
    x = v18;
    y = v19;
    width = v20;
    height = v21;
  }

  [popoverPresentationController setSourceRect:{x, y, width, height}];
  [(ConversationViewControllerBase *)self presentViewController:v15 animated:animatedCopy completion:0];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000927A0;
  v18 = &unk_10064E460;
  v10 = controllerCopy;
  v19 = v10;
  animatedCopy = animated;
  v11 = completionCopy;
  selfCopy = self;
  v21 = v11;
  v12 = objc_retainBlock(&v15);
  v13 = [(ConversationViewControllerBase *)self presentedViewController:v15];
  v14 = v13;
  if (v13 && [v13 modalPresentationStyle] == 7)
  {
    [(ConversationViewControllerBase *)self dismissViewControllerAnimated:0 completion:v12];
  }

  else
  {
    (v12[2])(v12);
  }
}

- (CGRect)_defaultSourceRectForView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  MidY = CGRectGetMidY(v12);

  v8 = x;
  v9 = y;
  v10 = width;
  v11 = MidY;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_endEditingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  conversationLayout = [(ConversationViewControllerBase *)self conversationLayout];
  [conversationLayout setSwipedIndexPath:0 animated:animatedCopy completion:0];
}

- (void)presentPreviousDraftPicker
{
  scene = [(ConversationViewControllerBase *)self scene];
  if (objc_opt_respondsToSelector())
  {
    barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
    composeButtonItem = [barItemsManager composeButtonItem];
    [scene performSelector:"composeButtonLongPressed:" withObject:composeButtonItem];
  }
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  if (![(ConversationViewControllerBase *)self desiredContextualControllerPresentationStyle])
  {
    barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
    contactLeftDoneButtonItem = [barItemsManager contactLeftDoneButtonItem];
    navigationItem = [controllerCopy navigationItem];
    [navigationItem setLeftBarButtonItem:contactLeftDoneButtonItem];
  }
}

- (id)passthroughViews
{
  v3 = [NSMutableArray arrayWithCapacity:3];
  barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
  replyButtonItem = [barItemsManager replyButtonItem];
  view = [replyButtonItem view];

  if (view)
  {
    [v3 addObject:view];
  }

  v7 = +[NSUserDefaults em_userDefaults];
  if ([v7 BOOLForKey:ShowMessageDeleteConfirmationKey])
  {
    barItemsManager2 = [(ConversationViewControllerBase *)self barItemsManager];
    deleteButtonItem = [barItemsManager2 deleteButtonItem];
    view2 = [deleteButtonItem view];

    if (view2)
    {
      [v3 addObject:view2];
    }
  }

  else
  {

    view2 = view;
  }

  return v3;
}

- (void)_updateConversationSortOrder
{
  _currentConversationSortOrderPreference = [(ConversationViewControllerBase *)self _currentConversationSortOrderPreference];

  [(ConversationViewControllerBase *)self setConversationSortOrder:_currentConversationSortOrderPreference];
}

- (void)_updateIncludeRelatedMessages
{
  if (sub_10000CA34(0))
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xDF | v3;

  [(ConversationViewControllerBase *)self _reloadDataSource];
}

- (void)_splitViewStateChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];
  splitViewController = [(ConversationViewControllerBase *)self splitViewController];

  if (object == splitViewController)
  {
    userInfo = [changedCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:@"MailSplitViewControllerNewDisplayModeKey"];
    v10 = [userInfo objectForKeyedSubscript:@"MailSplitViewControllerNewTraitCollectionKey"];
    v11 = [userInfo objectForKeyedSubscript:@"MailSplitViewControllerIsCollapsedKey"];
    v12 = v11;
    if (!v9 || !v11)
    {
      v16 = +[NSAssertionHandler currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"ConversationViewControllerBase.m" lineNumber:3446 description:{@"Notification is missing information:%@, %@", v9, v12}];
    }

    integerValue = [v9 integerValue];
    bOOLValue = [v12 BOOLValue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100092EA4;
    v17[3] = &unk_10064E488;
    v17[4] = self;
    v19 = integerValue;
    v15 = v10;
    v18 = v15;
    v20 = bOOLValue;
    [UIView performWithoutAnimation:v17];
  }
}

- (CGSize)defaultCellSizeForTracker:(id)tracker
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView mf_visibleHeight];
  v6 = v5;

  if ([(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
  {
    if (![(ConversationViewControllerBase *)self shouldHideStickyFooterView]|| (v7 = 0.0, MUISolariumFeatureEnabled()))
    {
      collectionView2 = [(ConversationViewControllerBase *)self collectionView];
      [collectionView2 contentInset];
      v7 = v9;
    }

    v10 = v6 + v7;
    if (+[UIDevice mf_isPadIdiom]&& (MUISolariumFeatureEnabled() & 1) == 0)
    {
      displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
      [displayMetrics estimatedFooterViewHeight];
      v10 = v10 + v12 * -0.5;
    }
  }

  else
  {
    v10 = 276.0;
  }

  [(ConversationViewControllerBase *)self _expectedCellWidth];
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (double)_expectedCellWidth
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView mui_safeVisibleBounds];
  v4 = CGRectGetWidth(v6) + self->_horizontalPadding * -2.0;

  return v4;
}

- (double)quickReplyHeightForTracker:(id)tracker
{
  [(ConversationViewControllerBase *)self quickReplyHeight];
  v5 = v4;
  [(ConversationViewControllerBase *)self _itemSpacing];
  return v5 + v6;
}

- (int64_t)conversationViewCellSizeTracker:(id)tracker expansionStatusForMessageWithItemID:(id)d
{
  dCopy = d;
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  expansionTracker = [cellConfigurator expansionTracker];
  v8 = [expansionTracker expansionStatusForCellWithItemID:dCopy];

  return v8;
}

- (double)defaultSemiExpandedHeightForTracker:(id)tracker
{
  displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
  [MFExpandedMessageCell defaultSemiExpandedHeightWithDisplayMetrics:displayMetrics];
  v5 = v4;

  return v5;
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  presentedViewController = [controller presentedViewController];
  childViewControllers = [presentedViewController childViewControllers];

  if ([childViewControllers count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    navigationItem = childViewControllers;
    v10 = [navigationItem countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(navigationItem);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [navigationItem countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }
      }

      v10 = v13;

      if (!v10)
      {
        goto LABEL_21;
      }

      contentViewController = [v10 contentViewController];
      isEditing = [contentViewController isEditing];

      if (isEditing)
      {
        goto LABEL_21;
      }

      if (style == -1)
      {
        navigationItem = [v10 navigationItem];
        [navigationItem setLeftBarButtonItem:0];
      }

      else
      {
        navigationItem = [v10 contact];
        if ([navigationItem isUnknown])
        {
          barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
          contactLeftDoneButtonItem = [barItemsManager contactLeftDoneButtonItem];
          navigationItem2 = [v10 navigationItem];
          [navigationItem2 setRightBarButtonItem:contactLeftDoneButtonItem];
        }

        else
        {
          barItemsManager = [(ConversationViewControllerBase *)self barItemsManager];
          contactLeftDoneButtonItem = [barItemsManager contactLeftDoneButtonItem];
          navigationItem2 = [v10 navigationItem];
          [navigationItem2 setLeftBarButtonItem:contactLeftDoneButtonItem];
        }
      }
    }

LABEL_20:
  }

  else
  {
    v10 = 0;
  }

LABEL_21:
}

- (void)_toggleCellsGroupOpacityDuringRotationWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000935B0;
  v9[3] = &unk_10064C570;
  v9[4] = self;
  v5 = objc_retainBlock(v9);
  (v5[2])(v5, 1);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100093730;
  v7[3] = &unk_10064E4B0;
  v6 = v5;
  v8 = v6;
  [coordinatorCopy animateAlongsideTransition:0 completion:v7];
}

- (void)_toggleCellGroupOpacityIfNeeded:(id)needed displaying:(BOOL)displaying
{
  displayingCopy = displaying;
  neededCopy = needed;
  if ((*&self->_flags & 0x80000000) != 0)
  {
    v8 = neededCopy;
    layer = [neededCopy layer];
    [layer setAllowsGroupOpacity:!displayingCopy];

    neededCopy = v8;
  }
}

- (void)_beginResizingConversationView:(CGSize)view
{
  height = view.height;
  width = view.width;
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  if ([collectionView numberOfSections])
  {
    v6 = [collectionView numberOfItemsInSection:0] == 0;
  }

  else
  {
    v6 = 1;
  }

  splitViewController = [(ConversationViewControllerBase *)self splitViewController];
  displayMode = [splitViewController displayMode];

  v10 = displayMode != 2 && displayMode != 4;
  if (!v10 && !v6)
  {
    [(ConversationViewControllerBase *)self prepareForResizing];
    [collectionView frame];
    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = 0.0;
    if (height == 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = width / height;
    }

    if (CGRectGetHeight(*&v11) != 0.0)
    {
      v28.origin.x = v15;
      v28.origin.y = v16;
      v28.size.width = v17;
      v28.size.height = v18;
      v21 = CGRectGetWidth(v28);
      v29.origin.x = v15;
      v29.origin.y = v16;
      v29.size.width = v17;
      v29.size.height = v18;
      v19 = v21 / CGRectGetHeight(v29);
    }

    if (v19 == v20 || v19 < 1.0 && v20 < 1.0 || v19 > 1.0 && v20 > 1.0)
    {
      [collectionView center];
      UIRectCenteredAboutPoint();
      v15 = v22;
      v16 = v23;
      width = v24;
      height = v25;
      [collectionView setAutoresizingMask:5];
    }

    else
    {
      [collectionView setAutoresizingMask:0];
    }

    [collectionView setFrame:{v15, v16, width, height}];
    [(ConversationViewControllerBase *)self layoutMarginsForCollectionViewFrame:v15, v16, width, height];
    [collectionView setDirectionalLayoutMargins:?];
    [(ConversationViewControllerBase *)self beginResizing];
  }
}

- (void)_endResizingConversationView
{
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView setAutoresizingMask:18];

  v4 = sub_10001F2A0(self);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  collectionView2 = [(ConversationViewControllerBase *)self collectionView];
  [collectionView2 setFrame:{v4, v6, v8, v10}];

  [(ConversationViewControllerBase *)self endResizing];
}

- (void)viewSafeAreaInsetsDidChange
{
  v55.receiver = self;
  v55.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v55 viewSafeAreaInsetsDidChange];
  [(ConversationViewControllerBase *)self _updateSenderHeaderLayoutTopConstrainntIfNeeded];
  if ([(ConversationViewControllerBase *)self shouldShowStaticDigestHeaderView])
  {
    v3 = sub_10001F2A0(self);
    v5 = v4;
    v7 = v6;
    v9 = v8;
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    [collectionView setFrame:{v3, v5, v7, v9}];
  }

  conversationLayout = [(ConversationViewControllerBase *)self conversationLayout];
  swipedIndexPath = [conversationLayout swipedIndexPath];

  if (!swipedIndexPath)
  {
    view = [(ConversationViewControllerBase *)self view];
    [view safeAreaInsets];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
    [displayMetrics safeAreaInsets];
    if (v17 == v26 && v15 == v23 && v21 == v25)
    {
      v27 = v24;

      if (v19 == v27)
      {
        v28 = 1;
LABEL_21:
        [(ConversationViewControllerBase *)self _calculateCollectionViewInsets];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        collectionView2 = [(ConversationViewControllerBase *)self collectionView];
        [collectionView2 contentInset];
        if (v52 == v43 && v49 == v41 && v51 == v47)
        {
          v53 = v50;

          if (v53 == v45)
          {
            if (v28)
            {
              return;
            }

            goto LABEL_26;
          }
        }

        else
        {
        }

        collectionView3 = [(ConversationViewControllerBase *)self collectionView];
        [collectionView3 setContentInset:{v41, v43, v45, v47}];

        if (v28)
        {
          return;
        }

LABEL_26:
        [(ConversationViewControllerBase *)self _restorePinnedScrollPosition];
        return;
      }
    }

    else
    {
    }

    view2 = [(ConversationViewControllerBase *)self view];
    [view2 safeAreaInsets];
    v31 = v30;
    v33 = v32;
    displayMetrics2 = [(ConversationViewControllerBase *)self displayMetrics];
    [displayMetrics2 safeAreaInsets];
    v37 = v31 - v36;
    v38 = -(v31 - v36);
    if (v37 < 0.0)
    {
      v37 = v38;
    }

    if (v37 >= 2.22044605e-16)
    {

      [(ConversationViewControllerBase *)self _updateDisplayMetrics];
    }

    else
    {
      if (v33 - v35 >= 0.0)
      {
        v39 = v33 - v35;
      }

      else
      {
        v39 = -(v33 - v35);
      }

      [(ConversationViewControllerBase *)self _updateDisplayMetrics];
      if (v39 < 2.22044605e-16)
      {
        goto LABEL_20;
      }
    }

    [(ConversationViewControllerBase *)self _updateCollectionViewMargins];
LABEL_20:
    v28 = 0;
    goto LABEL_21;
  }
}

- (void)_updateDisplayMetrics
{
  traitCollection = [(ConversationViewControllerBase *)self traitCollection];
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [collectionView layoutMargins];
  v5 = [(ConversationViewControllerBase *)self messageDisplayMetricsForTraitCollection:traitCollection layoutMargins:?];
  [(ConversationViewControllerBase *)self setDisplayMetrics:v5];

  if (MUISolariumFeatureEnabled())
  {
    v6 = 6.0;
  }

  else
  {
    v6 = 24.0;
  }

  traitCollection2 = [(ConversationViewControllerBase *)self traitCollection];
  horizontalSizeClass = [traitCollection2 horizontalSizeClass];
  v9 = 0.0;
  if (horizontalSizeClass == 2)
  {
    v10 = +[UIDevice mf_isPadIdiom];
    v9 = 0.0;
    if (v10)
    {
      v9 = v6;
    }
  }

  self->_horizontalPadding = v9;

  horizontalPadding = self->_horizontalPadding;

  [(ConversationViewControllerBase *)self _didChangeHorizontalPadding:horizontalPadding];
}

- (id)messageDisplayMetricsForTraitCollection:(id)collection layoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  collectionCopy = collection;
  view = [(ConversationViewControllerBase *)self view];
  [view safeAreaInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  scene = [(ConversationViewControllerBase *)self scene];
  v20 = +[MFMessageDisplayMetrics displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:](MFMessageDisplayMetrics, "displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:", collectionCopy, [scene interfaceOrientation], top, left, bottom, right, v12, v14, v16, v18);

  if (v20)
  {
    displayMetrics = v20;
  }

  else
  {
    displayMetrics = [(ConversationViewControllerBase *)self displayMetrics];
  }

  v22 = displayMetrics;

  return v22;
}

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (([(MFMessageDisplayMetrics *)self->_displayMetrics isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayMetrics, metrics);
    cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
    [cellConfigurator setDisplayMetrics:metricsCopy];

    conversationLayout = [(ConversationViewControllerBase *)self conversationLayout];
    [conversationLayout setDisplayMetrics:metricsCopy];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  cellExpansionRecognizer = [(ConversationViewControllerBase *)self cellExpansionRecognizer];

  if (cellExpansionRecognizer == beginCopy)
  {
    collectionView = [(ConversationViewControllerBase *)self collectionView];
    if ([collectionView hasActiveDrag])
    {
LABEL_4:
      v6 = 0;
LABEL_8:

      goto LABEL_9;
    }

    collectionView2 = [(ConversationViewControllerBase *)self collectionView];
    if ([collectionView2 isDragging])
    {
      goto LABEL_6;
    }

    conversationLayout = [(ConversationViewControllerBase *)self conversationLayout];
    swipedIndexPath = [conversationLayout swipedIndexPath];

    if (swipedIndexPath)
    {
      v6 = 0;
      goto LABEL_9;
    }

    collectionView3 = [(ConversationViewControllerBase *)self collectionView];
    [beginCopy locationInView:collectionView3];
    v14 = v13;
    v16 = v15;

    collectionView4 = [(ConversationViewControllerBase *)self collectionView];
    collectionView = [collectionView4 indexPathForItemAtPoint:{v14, v16}];

    if (!collectionView)
    {
      goto LABEL_4;
    }

    if (![(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView]&& ![(ConversationViewControllerBase *)self shouldShowStaticDigestHeaderView])
    {
      goto LABEL_19;
    }

    view = [(ConversationViewControllerBase *)self view];
    [beginCopy locationInView:view];
    v20 = v19;

    collectionView5 = [(ConversationViewControllerBase *)self collectionView];
    [collectionView5 frame];
    MinY = CGRectGetMinY(v58);
    collectionView6 = [(ConversationViewControllerBase *)self collectionView];
    [collectionView6 contentInset];
    v25 = MinY + v24;

    if (v25 > v20)
    {
      goto LABEL_4;
    }

    cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
    v27 = [cellConfigurator expansionStatusForMessageAtIndexPath:collectionView];

    if (v27 == 2)
    {
      collectionView7 = [(ConversationViewControllerBase *)self collectionView];
      collectionView2 = [collectionView7 cellForItemAtIndexPath:collectionView];

      [beginCopy locationInView:collectionView2];
      v54 = v30;
      v55 = v29;
      messageViewController = [collectionView2 messageViewController];
      messageContentView = [messageViewController messageContentView];
      headerView = [messageContentView headerView];
      [headerView frame];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      messageViewController2 = [collectionView2 messageViewController];
      messageContentView2 = [messageViewController2 messageContentView];
      footerView = [messageContentView2 footerView];
      [footerView frame];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v59.origin.x = v35;
      v59.origin.y = v37;
      v59.size.width = v39;
      v59.size.height = v41;
      v56.y = v54;
      v56.x = v55;
      if (CGRectContainsPoint(v59, v56))
      {
LABEL_6:
        v6 = 0;
LABEL_7:

        goto LABEL_8;
      }

      v60.origin.x = v46;
      v60.origin.y = v48;
      v60.size.width = v50;
      v60.size.height = v52;
      v57.y = v54;
      v57.x = v55;
      v53 = CGRectContainsPoint(v60, v57);
    }

    else
    {
LABEL_19:
      collectionView2 = [(ConversationViewControllerBase *)self cellConfigurator];
      v53 = [collectionView2 messageAtIndexPathIsExpanded:collectionView];
    }

    v6 = v53 ^ 1;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  cellExpansionRecognizer = [(ConversationViewControllerBase *)self cellExpansionRecognizer];
  LOBYTE(self) = cellExpansionRecognizer == recognizerCopy;

  return self;
}

- (void)_expansionRecognizerDidRecognize:(id)recognize
{
  recognizeCopy = recognize;
  collectionView = [(ConversationViewControllerBase *)self collectionView];
  [recognizeCopy locationInView:collectionView];
  v8 = v6;
  v9 = v7;
  if (!qword_1006DCE40)
  {
    v10 = [collectionView indexPathForItemAtPoint:{v6, v7}];
    v11 = qword_1006DCE40;
    qword_1006DCE40 = v10;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100094734;
  v18[3] = &unk_10064C570;
  v18[4] = self;
  v12 = objc_retainBlock(v18);
  v13 = [collectionView indexPathForItemAtPoint:{v8, v9}];
  if ([recognizeCopy state] == 1)
  {
    objc_storeStrong(&qword_1006DCE40, v13);
    v14 = 1;
LABEL_13:
    (v12[2])(v12, v14);
    goto LABEL_14;
  }

  if ([recognizeCopy state] == 2)
  {
    v14 = [v13 isEqual:qword_1006DCE40];
    goto LABEL_13;
  }

  if ([recognizeCopy state] != 3)
  {
    if ([recognizeCopy state] != 4)
    {
      goto LABEL_14;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  if (![v13 isEqual:qword_1006DCE40])
  {
    goto LABEL_12;
  }

  collectionView2 = [(ConversationViewControllerBase *)self collectionView];
  isDragging = [collectionView2 isDragging];

  if (isDragging)
  {
    goto LABEL_12;
  }

  [(ConversationViewControllerBase *)self setLastExpandedCellIndexPath:v13];
  [(ConversationViewControllerBase *)self setPinnedItem:0];
  cellConfigurator = [(ConversationViewControllerBase *)self cellConfigurator];
  [cellConfigurator expandCellAtIndexPath:v13 animated:1 highlightFirst:1 expansionStatus:3];

LABEL_14:
}

- (BOOL)_executeIfSplitViewIsAvailable:(id)available
{
  availableCopy = available;
  scene = [(ConversationViewControllerBase *)self scene];
  isSplitViewAvailable = [(ConversationViewControllerBase *)self isSplitViewAvailable];
  if (isSplitViewAvailable)
  {
    splitViewController = [scene splitViewController];
    availableCopy[2](availableCopy, splitViewController);
  }

  return isSplitViewAvailable;
}

- (BOOL)isSplitViewAvailable
{
  scene = [(ConversationViewControllerBase *)self scene];
  v3 = [scene conformsToProtocol:&OBJC_PROTOCOL___SplitLayoutCapable];

  return v3;
}

- (void)setDisableScrollPinning:(BOOL)pinning
{
  self->_disableScrollPinning = pinning;
  if (pinning)
  {
    [(ConversationViewControllerBase *)self setPinnedItem:0];
  }
}

- (BOOL)shouldHideStickyFooterView
{
  selfCopy = self;
  traitCollection = [(ConversationViewControllerBase *)self traitCollection];
  LOBYTE(selfCopy) = [(ConversationViewControllerBase *)selfCopy _shouldHideStickyFooterViewForTraitCollection:traitCollection];

  return selfCopy;
}

- (BOOL)_shouldHideStickyFooterViewForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy mf_hasCompactDimension])
  {
    v4 = 1;
  }

  else
  {
    v4 = MUISolariumFeatureEnabled();
  }

  return v4;
}

- (void)_messageSearchBegan
{
  if (!self->_conversationSearchHandler)
  {
    v3 = objc_opt_new();
    conversationSearchHandler = self->_conversationSearchHandler;
    self->_conversationSearchHandler = v3;

    v5 = self->_conversationSearchHandler;

    sub_100483C38(&v5->super.isa, self);
  }
}

- (id)conversationSearchMessageListForConversationSearchHandler:(id)handler
{
  handlerCopy = handler;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase conversationSearchMessageListForConversationSearchHandler:]", "ConversationViewControllerBase.m", 3856, "0");
}

- (id)conversationSearchHandler:(id)handler contentRepresentationRequestForItemID:(id)d
{
  handlerCopy = handler;
  dCopy = d;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase conversationSearchHandler:contentRepresentationRequestForItemID:]", "ConversationViewControllerBase.m", 3860, "0");
}

- (BOOL)conversationSearchHandler:(id)handler shouldConsiderQuotedContentForItemID:(id)d
{
  handlerCopy = handler;
  dCopy = d;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase conversationSearchHandler:shouldConsiderQuotedContentForItemID:]", "ConversationViewControllerBase.m", 3864, "0");
}

- (double)widthForConversationViewCellsForConversationSearchHandler:(id)handler
{
  handlerCopy = handler;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase widthForConversationViewCellsForConversationSearchHandler:]", "ConversationViewControllerBase.m", 3868, "0");
}

- (id)_persistentIDForEMMessageObjectID:(id)d
{
  dCopy = d;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _persistentIDForEMMessageObjectID:]", "ConversationViewControllerBase.m", 3872, "0");
}

- (void)_updateAllowQuickReplyForMessageListItem:(id)item
{
  itemCopy = item;
  v4 = _os_feature_enabled_impl() ^ 1;
  if (!itemCopy)
  {
    LOBYTE(v4) = 1;
  }

  if ((v4 & 1) != 0 || [(ConversationViewControllerBase *)self beingPreviewed])
  {
    goto LABEL_8;
  }

  sendLaterDate = [itemCopy sendLaterDate];
  if (sendLaterDate)
  {

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if ([itemCopy isEditable])
  {
    goto LABEL_8;
  }

  [(ConversationViewControllerBase *)self _setupQuickReplySupplementaryViewProvider];
  v6 = 1;
LABEL_9:
  [(ConversationViewControllerBase *)self setAllowQuickReply:v6];
}

- (void)setDidCompleteFirstPaint:(BOOL)paint
{
  if (self->_didCompleteFirstPaint != paint)
  {
    self->_didCompleteFirstPaint = paint;
    if (paint)
    {
      [(ConversationViewControllerBase *)self _invalidateQuickReplyFooter];
    }
  }
}

- (void)showAllMessagesForConversationSenderHeaderView:(id)view
{
  viewCopy = view;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase showAllMessagesForConversationSenderHeaderView:]", "ConversationViewControllerBase.m", 3951, "0");
}

- (void)showCategoryMessagesForConversationSenderHeaderView:(id)view
{
  viewCopy = view;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase showCategoryMessagesForConversationSenderHeaderView:]", "ConversationViewControllerBase.m", 3955, "0");
}

- (id)layoutInformationForConversationSenderHeaderViewAnimator:(id)animator
{
  v4 = [_TtC10MobileMail45ConversationSenderHeaderViewLayoutInformation alloc];
  scene = [(ConversationViewControllerBase *)self scene];
  statusBarManager = [scene statusBarManager];
  [statusBarManager statusBarFrame];
  v8 = v7;
  [(ConversationViewControllerBase *)self _itemSpacing];
  v10 = [(ConversationSenderHeaderViewLayoutInformation *)v4 initWithStatusBarHeight:v8 contentInset:v9];

  return v10;
}

- (id)_recategorizationTriageInteraction:(id)interaction
{
  interactionCopy = interaction;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _recategorizationTriageInteraction:]", "ConversationViewControllerBase.m", 3971, "0");
}

- (CGPoint)initialScrollOffset
{
  x = self->_initialScrollOffset.x;
  y = self->_initialScrollOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)layoutInvalidationContentOffset
{
  x = self->_layoutInvalidationContentOffset.x;
  y = self->_layoutInvalidationContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end