@interface ConversationViewControllerBase
+ (id)log;
- (BOOL)_canBrowseInDirection:(int)a3;
- (BOOL)_executeIfSplitViewIsAvailable:(id)a3;
- (BOOL)_isConversationViewShortcut:(SEL)a3;
- (BOOL)_isItemInitiallyUnreadAtIndexPath:(id)a3;
- (BOOL)_scrollViewIsScrolledToEnd:(id)a3;
- (BOOL)_shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:(id)a3;
- (BOOL)_shouldHideStickyFooterViewForTraitCollection:(id)a3;
- (BOOL)_shouldShowArrowsForDisplayMode:(int64_t)a3 collapsed:(BOOL)a4 withTraitCollection:(id)a5;
- (BOOL)_shouldShowConversationHeader;
- (BOOL)_shouldUseDesktopClassNavigationBarForTraitCollection:(id)a3;
- (BOOL)beingPreviewed;
- (BOOL)canHandleAction:(SEL)a3 withMailMenuCommand:(id)a4;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)conversationSearchHandler:(id)a3 shouldConsiderQuotedContentForItemID:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isFullyVisible;
- (BOOL)isShowingGroupedSenderMessageList;
- (BOOL)isSplitViewAvailable;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (BOOL)shouldAddDoneButtonForConversationNavigationBarItemsManager:(id)a3;
- (BOOL)shouldHideStickyFooterView;
- (BOOL)shouldShowExpandableDigestHeaderView;
- (BOOL)shouldShowStaticDigestHeaderView;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (CGPoint)initialScrollOffset;
- (CGPoint)layoutInvalidationContentOffset;
- (CGRect)_defaultSourceRectForView:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)defaultCellSizeForTracker:(id)a3;
- (ComposeCapable)scene;
- (ConversationViewControllerBase)initWithScene:(id)a3 contactStore:(id)a4 avatarGenerator:(id)a5;
- (ConversationViewControllerBaseDelegate)delegate;
- (MFArrowControlsView)arrowControlsView;
- (NSDirectionalEdgeInsets)layoutMarginsForCollectionViewFrame:(CGRect)a3;
- (UIBarButtonItem)doneButton;
- (UICollectionView)collectionView;
- (UIEdgeInsets)_calculateCollectionViewInsets;
- (_TtC10MobileMail34StaticConversationSenderHeaderView)staticSenderHeaderView;
- (_TtC10MobileMail36ConversationSenderHeaderViewAnimator)senderHeaderViewAnimator;
- (_TtC10MobileMail38ExpandableConversationSenderHeaderView)expandableSenderHeaderView;
- (_UINavigationBarTitleView)tapGestureTitleView;
- (double)_autoscrollAdjustmentWithBaseOffset:(double)a3;
- (double)_expectedCellWidth;
- (double)_itemSpacing;
- (double)_minimumItemHeight;
- (double)_navigationBarHeight;
- (double)_topSpacingToAvoidStatusBar;
- (double)defaultSemiExpandedHeightForTracker:(id)a3;
- (double)quickReplyHeightForTracker:(id)a3;
- (double)stickySubjectViewFirstBaselineForConversationHeaderView:(id)a3;
- (double)stickySubjectViewMaxYForConversationHeaderView:(id)a3;
- (double)widthForConversationViewCellsForConversationSearchHandler:(id)a3;
- (id)_currentSizeMetadataKey;
- (id)_defaultBarButtonItems;
- (id)_defaultBarButtonsWithFlexibleSpacing:(BOOL)a3 reverseOrder:(BOOL)a4;
- (id)_dragItemsForItemAtIndexPath:(id)a3;
- (id)_fixedSpaceBarButton;
- (id)_flexibleSpaceBarButton;
- (id)_indexPathForTopMostVisibleRow;
- (id)_indexPathOfMessageViewControllerMessage:(id)a3;
- (id)_layoutAttributesForItemAtIndexPath:(id)a3;
- (id)_nextIndexPathToSelectFromIndexPath:(id)a3 withDirection:(int)a4;
- (id)_nextMessageIndexWithDirection:(int)a3;
- (id)_oldestIndexPath;
- (id)_persistentIDForEMMessageObjectID:(id)a3;
- (id)_previewActionsForTriageActions:(id)a3 excludingActions:(id)a4;
- (id)_recategorizationTriageInteraction:(id)a3;
- (id)_visibleIndexPathForMessageViewController:(id)a3;
- (id)_visibleNavigationBar;
- (id)archiveButtonItem;
- (id)cellConfigurator:(id)a3 messageItemIDAtIndexPath:(id)a4;
- (id)cellConfigurator:(id)a3 targetHeightForExpandingCellAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)contentUnavailableConfigurationState;
- (id)conversationSearchHandler:(id)a3 contentRepresentationRequestForItemID:(id)a4;
- (id)conversationSearchMessageListForConversationSearchHandler:(id)a3;
- (id)deleteButtonItem;
- (id)hostScrollViewForConversationHeaderView:(id)a3;
- (id)indexSetForRowsFromIndexPaths:(id)a3 section:(int64_t)a4;
- (id)layoutInformationForConversationSenderHeaderViewAnimator:(id)a3;
- (id)leadingPreviewAction;
- (id)messageDisplayMetricsForTraitCollection:(id)a3 layoutMargins:(UIEdgeInsets)a4;
- (id)messageItemIDAtIndexPath:(id)a3;
- (id)messageViewController:(id)a3 displayNameForEmailAddress:(id)a4 abbreviated:(BOOL)a5;
- (id)mf_preferredTitle;
- (id)moveButtonItem;
- (id)passthroughViews;
- (id)previewActionItems;
- (id)replyButtonItem;
- (id)supplementaryButtonItemForConversationNavigationBarItemsManager:(id)a3;
- (id)trailingPreviewAction;
- (id)transitionCoordinatorForKeyboardAvoidance:(id)a3;
- (int64_t)_dataOwnerForDragSessionAtIndexPath:(id)a3;
- (int64_t)cellConfigurator:(id)a3 expansionStatusForMessageAtIndexPath:(id)a4;
- (int64_t)conversationViewCellSizeTracker:(id)a3 expansionStatusForMessageWithItemID:(id)a4;
- (void)_adjustForKeyboardAvoidanceOverlap:(double)a3;
- (void)_animateWithKeyboard:(id)a3 animations:(id)a4;
- (void)_attemptLoadMissingMessages;
- (void)_beginResizingConversationView:(CGSize)a3;
- (void)_configureSenderHeaderView:(id)a3 expansionStatus:(int64_t)a4;
- (void)_endEditingAnimated:(BOOL)a3;
- (void)_endResizingConversationView;
- (void)_enqueueMessageViewController:(id)a3;
- (void)_enumerateExpandedCellMessageContentViewsWithBlock:(id)a3;
- (void)_expansionRecognizerDidRecognize:(id)a3;
- (void)_hideRemovedSingleMessageCellIfInRemovedIndexPaths:(id)a3;
- (void)_invalidateQuickReplyFooter;
- (void)_maybeAttemptLoadMissingMessages:(id)a3;
- (void)_messageSearchBegan;
- (void)_navigateToMessageInDirection:(int)a3;
- (void)_notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:(id)a3;
- (void)_pageDownCommandInvoked:(id)a3;
- (void)_pageUpCommandInvoked:(id)a3;
- (void)_reloadCellsAtIndexPaths:(id)a3 animated:(BOOL)a4;
- (void)_reloadPreparedCells;
- (void)_removeNavigationBarFromSelf;
- (void)_resetBottomPaddingIfDisplayingSingleMessage;
- (void)_restorePinnedScrollPosition;
- (void)_sceneWillDeactivate:(id)a3;
- (void)_scrollToItemAtIndexPath:(id)a3 dynamicOffset:(id)a4 shouldAdjustToShowPreviousMessage:(BOOL)a5 animated:(BOOL)a6 pin:(BOOL)a7 completion:(id)a8;
- (void)_selectNextMessageCommandInvoked:(id)a3;
- (void)_selectPreviousMessageCommandInvoked:(id)a3;
- (void)_setBottomPadding:(double)a3;
- (void)_setNavigationBarTitleViewNeedsLayout;
- (void)_showModalViewController:(id)a3 fromView:(id)a4 sourceRect:(CGRect)a5 animated:(BOOL)a6;
- (void)_showSingleMessage:(id)a3 animationOffset:(CGPoint)a4 initialScrollOffset:(CGPoint)a5;
- (void)_shrinkBottomPaddingIfNecessary;
- (void)_shrinkMessagesToBarButton:(id)a3 withInteraction:(id)a4 completionHandler:(id)a5;
- (void)_shrinkMessagesToView:(id)a3 withInteraction:(id)a4 completionHandler:(id)a5;
- (void)_splitViewStateChanged:(id)a3;
- (void)_toggleCellGroupOpacityIfNeeded:(id)a3 displaying:(BOOL)a4;
- (void)_toggleCellsGroupOpacityDuringRotationWithCoordinator:(id)a3;
- (void)_updateAllowQuickReplyForMessageListItem:(id)a3;
- (void)_updateBackgroundColor;
- (void)_updateBarButtonsAnimated:(BOOL)a3 force:(BOOL)a4 isShowingTitle:(BOOL)a5;
- (void)_updateBarButtonsAnimated:(BOOL)a3 withDisplayMode:(int64_t)a4 withTraitCollection:(id)a5 collapsed:(BOOL)a6 force:(BOOL)a7 isShowingTitle:(BOOL)a8;
- (void)_updateBottomPadding;
- (void)_updateBottomPaddingWithLastItemHeight:(double)a3;
- (void)_updateCells;
- (void)_updateCollectionViewMargins;
- (void)_updateConversationHeaderViewLayoutMarginsWithSuperviewMargins:(NSDirectionalEdgeInsets)a3;
- (void)_updateConversationSortOrder;
- (void)_updateDisplayMetrics;
- (void)_updateForceCollapsedSenderHeader;
- (void)_updateIncludeRelatedMessages;
- (void)_updateLayout;
- (void)_updateSenderHeaderLayoutTopConstrainntIfNeeded;
- (void)_updateSenderHeaderView:(id)a3 viewModel:(id)a4 expansionStatus:(int64_t)a5;
- (void)_updateTitle;
- (void)cellConfigurator:(id)a3 didConfigureCell:(id)a4 atIndexPath:(id)a5;
- (void)cellConfigurator:(id)a3 didInvalidateConfigurationForCellsAtIndexPaths:(id)a4;
- (void)cellConfigurator:(id)a3 wantsToReloadCellAtIndexPaths:(id)a4 animated:(BOOL)a5;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionViewMarginsDidChange:(NSDirectionalEdgeInsets)a3;
- (void)contactCardInteractions:(id)a3 triggerSearchForDisplayName:(id)a4 emailAddresses:(id)a5;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)dealloc;
- (void)done:(id)a3;
- (void)forwardButtonTapped:(id)a3;
- (void)loadView;
- (void)messageViewController:(id)a3 didChangeSelectedHTML:(id)a4;
- (void)messageViewController:(id)a3 didFinishRenderingWithHeight:(double)a4;
- (void)messageViewController:(id)a3 didStartDownloadForContentItemWithProgress:(id)a4;
- (void)messageViewController:(id)a3 didTapRevealActionsButton:(id)a4;
- (void)messageViewController:(id)a3 didTapShowMoreAtCollapsedOffset:(CGPoint)a4 expandedOffset:(CGPoint)a5;
- (void)messageViewController:(id)a3 didTapUndoSendButton:(id)a4;
- (void)messageViewController:(id)a3 webViewDidTerminateWithReason:(int64_t)a4;
- (void)messageViewControllerDidDisplayContent:(id)a3 success:(BOOL)a4;
- (void)messageViewControllerDidFinishFirstPaint:(id)a3;
- (void)messageViewControllerDidTapAddressAtom:(id)a3 contactViewController:(id)a4;
- (void)navigateToMessageInDirection:(int)a3;
- (void)presentPreviousDraftPicker;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)previewCancelled;
- (void)previewDidCommit:(BOOL)a3;
- (void)replyAllButtonTapped:(id)a3;
- (void)replyButtonTapped:(id)a3;
- (void)revealActionsButtonTapped:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setBeingPreviewed:(BOOL)a3;
- (void)setDidCompleteFirstPaint:(BOOL)a3;
- (void)setDisableScrollPinning:(BOOL)a3;
- (void)setDisplayMetrics:(id)a3;
- (void)setDoneButton:(id)a3;
- (void)setPinnedItem:(id)a3;
- (void)setReferenceMessageListItem:(id)a3;
- (void)setResizingState:(int64_t)a3;
- (void)setShouldShowNoMessageSelectedView:(BOOL)a3;
- (void)showAllMessagesForConversationSenderHeaderView:(id)a3;
- (void)showCategoryMessagesForConversationSenderHeaderView:(id)a3;
- (void)tappedSenderHeader:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateArrowControlsView;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateNavigationItemChromelessConfiguration;
- (void)updateUserActivityState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ConversationViewControllerBase

- (void)_updateForceCollapsedSenderHeader
{
  v3 = +[NSUserDefaults em_userDefaults];
  v4 = [v3 BOOLForKey:EMUserDefaultForceCollapsedSenderHeader];

  v5 = [(ConversationViewControllerBase *)self traitCollection];
  v6 = [v5 verticalSizeClass];

  if (v6 == 1)
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

  v12 = [(ConversationViewControllerBase *)self view];
  [v12 addSubview:self->_conversationView];

  v13 = [[MFConversationCellConfigurator alloc] initWithCollectionView:self->_conversationView];
  cellConfigurator = self->_cellConfigurator;
  self->_cellConfigurator = v13;

  [(MFConversationCellConfigurator *)self->_cellConfigurator setDelegate:self];
  v15 = [(ConversationViewControllerBase *)self contactStore];
  [(MFConversationCellConfigurator *)self->_cellConfigurator setContactStore:v15];

  v16 = [(ConversationViewControllerBase *)self avatarGenerator];
  [(MFConversationCellConfigurator *)self->_cellConfigurator setAvatarGenerator:v16];

  v17 = [(MFConversationCellConfigurator *)self->_cellConfigurator sizeTracker];
  [v17 setDelegate:self];

  [(ConversationViewControllerBase *)self _updateLayout];
  v18 = [(ConversationViewControllerBase *)self restorationFuture];
  v19 = v18 == 0;

  [(ConversationViewControllerBase *)self _doSetShouldShowNoMessageSelectedView:v19];
  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"conversation view did load"];
  v20 = [(ConversationViewControllerBase *)self navigationItem];
  [v20 setLargeTitleDisplayMode:2];

  v21 = self->_findInteraction;
  if (v21)
  {
    [(_MFConversationViewCollectionView *)self->_conversationView addInteraction:v21];
  }

  v22 = objc_alloc_init(UILayoutGuide);
  senderHeaderLayoutGuide = self->_senderHeaderLayoutGuide;
  self->_senderHeaderLayoutGuide = v22;

  v24 = [(ConversationViewControllerBase *)self view];
  [v24 addLayoutGuide:self->_senderHeaderLayoutGuide];

  v25 = [(UILayoutGuide *)self->_senderHeaderLayoutGuide topAnchor];
  v26 = [(ConversationViewControllerBase *)self view];
  v27 = [v26 topAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  senderHeaderLayoutGuideTopConstraint = self->_senderHeaderLayoutGuideTopConstraint;
  self->_senderHeaderLayoutGuideTopConstraint = v28;

  v30 = [(UILayoutGuide *)self->_senderHeaderLayoutGuide leadingAnchor];
  v31 = [(ConversationViewControllerBase *)self view];
  v32 = [v31 leadingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  senderHeaderLayoutGuideLeadingConstraint = self->_senderHeaderLayoutGuideLeadingConstraint;
  self->_senderHeaderLayoutGuideLeadingConstraint = v33;

  v35 = [(UILayoutGuide *)self->_senderHeaderLayoutGuide trailingAnchor];
  v36 = [(ConversationViewControllerBase *)self view];
  v37 = [v36 trailingAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
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

  v3 = [(ConversationViewControllerBase *)self traitCollection];
  if ([v3 horizontalSizeClass] == 2)
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
  v2 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (UIEdgeInsets)_calculateCollectionViewInsets
{
  v3 = [(ConversationViewControllerBase *)self collectionView];
  [v3 contentInset];
  v5 = v4;
  v7 = v6;

  v8 = 0.0;
  v9 = 0.0;
  if (![(ConversationViewControllerBase *)self beingPreviewed])
  {
    v10 = [(ConversationViewControllerBase *)self navigationController];
    v11 = [v10 presentingViewController];

    if (!v11)
    {
      [(ConversationViewControllerBase *)self _topSpacingToAvoidStatusBar];
      v8 = v12;
    }

    [(ConversationViewControllerBase *)self _navigationBarHeight];
    v14 = v13;
    if ([(ConversationViewControllerBase *)self shouldShowStaticDigestHeaderView])
    {
      v15 = [(ConversationViewControllerBase *)self staticSenderHeaderView];
      [v15 frame];
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
    v24 = [(ConversationViewControllerBase *)self view];
    [v24 safeAreaInsets];
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
  v2 = [(ConversationViewControllerBase *)self previewState];
  v3 = [v2 beingPreviewed];

  return v3;
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
    v3 = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
    [v3 currentHeight];
    v5 = v4;
  }

  else
  {
    v3 = [(ConversationViewControllerBase *)self navigationController];
    v6 = [v3 navigationBar];
    [v6 frame];
    v5 = v7;
  }

  return v5;
}

- (BOOL)shouldShowExpandableDigestHeaderView
{
  v3 = [(ConversationViewControllerBase *)self traitCollection];
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
  {
    v4 = [v3 horizontalSizeClass] == 1 || objc_msgSend(v3, "userInterfaceIdiom") == 0;
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
  v3 = [(ConversationViewControllerBase *)self viewIfLoaded];
  v4 = [v3 window];

  if (v4)
  {
    if (EMBlackPearlIsFeatureEnabled())
    {
      if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
      {
        [(ConversationViewControllerBase *)self _updateSenderHeaderLayoutTopConstrainntIfNeeded];
        [(ConversationViewControllerBase *)self horizontalPadding];
        v6 = v5;
        v7 = [(ConversationViewControllerBase *)self senderHeaderLayoutGuideLeadingConstraint];
        [v7 setConstant:v6];

        [(ConversationViewControllerBase *)self horizontalPadding];
        v9 = v8;
        v10 = [(ConversationViewControllerBase *)self senderHeaderLayoutGuideTrailingConstraint];
        [v10 setConstant:-v9];
      }

      [(ConversationViewControllerBase *)self _updateForceCollapsedSenderHeader];
    }

    [(ConversationViewControllerBase *)self _calculateCollectionViewInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(ConversationViewControllerBase *)self collectionView];
    [v19 contentInset];
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
        v31 = [(ConversationViewControllerBase *)self collectionView];
        [(ConversationViewControllerBase *)self _updateManualSummaryUIForScroll:v31];

        [(ConversationViewControllerBase *)self _updateBackgroundColor];
        goto LABEL_19;
      }
    }

    else
    {
    }

    v26 = [(ConversationViewControllerBase *)self collectionView];
    [v26 setContentInset:{v12, v14, v16, v18}];

    goto LABEL_16;
  }

  v25 = +[ConversationViewController log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 134217984;
    v33 = v3;
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

- (ConversationViewControllerBase)initWithScene:(id)a3 contactStore:(id)a4 avatarGenerator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
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
    objc_storeWeak(&v12->_scene, v8);
    objc_storeStrong(&v13->_contactStore, a4);
    objc_storeStrong(&v13->_avatarGenerator, a5);
    v14 = [[_TtC10MobileMail37ConversationNavigationBarItemsManager alloc] initWithScene:v8 delegate:v13 actionHandler:v13 arrowDelegate:v13];
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
    v24 = [(ConversationViewControllerBase *)v13 contactStore];
    v25 = [(MFConversationAssistantContextProvider *)v22 initWithCurrentVisibileMessageStrategy:v23 contactStore:v24];
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
    [v32 addObserver:v13 selector:"_sceneDidActivate:" name:UISceneDidActivateNotification object:v8];
    [v32 addObserver:v13 selector:"_sceneWillDeactivate:" name:UISceneWillDeactivateNotification object:v8];
    [v32 addObserver:v13 selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
    v33 = [[MFConversationPreviewState alloc] initWithBackgroundUpdater:0];
    previewState = v13->_previewState;
    v13->_previewState = v33;

    v35 = [[MFMessageViewControllerReuseQueue alloc] initWithScene:v8];
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

    v40 = [v8 daemonInterface];
    v41 = [v40 mailboxRepository];
    mailboxRepository = v13->_mailboxRepository;
    v13->_mailboxRepository = v41;

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

- (void)_sceneWillDeactivate:(id)a3
{
  v3 = [(ConversationViewControllerBase *)self blankConversationController];
  [v3 reportMetrics];
}

- (void)viewWillAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v14 viewWillAppear:a3];
  v4 = [(ConversationViewControllerBase *)self scene];
  if (![(ConversationViewControllerBase *)self didNotifyExtendedLaunchTracker])
  {
    v5 = [v4 extendedLaunchTracker];
    [v5 observeViewController:self scene:v4];
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
    v6 = [v4 popoverManager];
    [v6 addPassthroughViewProvider:self];
  }

  v7 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  if (v7)
  {

LABEL_7:
    [(ConversationViewControllerBase *)self setShouldShowNoMessageSelectedView:0];
    goto LABEL_12;
  }

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 accountsProvider];
  v10 = [v9 displayedAccounts];
  v11 = [v10 count];

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
    v13 = [v4 extendedLaunchTracker];
    [v13 didFinishLoadViewController:self scene:v4];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v28.receiver = self;
  v28.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v28 viewDidAppear:a3];
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

    v6 = [(ConversationViewControllerBase *)self view];
    v7 = [(ConversationViewControllerBase *)self cellExpansionRecognizer];
    [v6 addGestureRecognizer:v7];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [(ConversationViewControllerBase *)self collectionView];
    v9 = [v8 interactions];

    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
            objc_enumerationMutation(v9);
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
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }
  }

  v14 = [(ConversationViewControllerBase *)self previewState];
  v15 = [v14 shouldScheduleMarkMessageAsRead];

  if (v15)
  {
    [(ConversationViewControllerBase *)self scheduleAutomaticMarkAsReadForReferenceMessage];
  }

  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"conversation view did appear"];
  v16 = +[MFKeyboardAvoidance sharedController];
  [v16 registerKeyboardAvoidable:self];

  v17 = MFMessageSelectionLifecycleSignpostLog();
  v18 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v19 = [v18 itemID];
  v20 = os_signpost_id_make_with_pointer(v17, v19);

  v21 = MFMessageSelectionLifecycleSignpostLog();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, v20, "Message selection lifecycle", "Conversation view did appear", v23, 2u);
  }
}

- (void)_enumerateExpandedCellMessageContentViewsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewControllerBase *)self resizingContentViews];
  v6 = [v5 mutableCopy];

  v7 = [(ConversationViewControllerBase *)self cellConfigurator];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000853D0;
  v13[3] = &unk_10064E0E8;
  v8 = v4;
  v15 = v8;
  v9 = v6;
  v14 = v9;
  [v7 enumerateExpandedCellsWithBlock:v13];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008546C;
  v11[3] = &unk_10064E110;
  v10 = v8;
  v12 = v10;
  [v9 enumerateObjectsUsingBlock:v11];
}

- (void)setResizingState:(int64_t)a3
{
  if (self->_resizingState != a3)
  {
    self->_resizingState = a3;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000857B8;
    v21[3] = &unk_10064E130;
    v22 = a3 != 2;
    v5 = objc_retainBlock(v21);
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000857C4;
    v18[3] = &unk_10064D928;
    objc_copyWeak(&v19, &location);
    v6 = objc_retainBlock(v18);
    if (a3 > 1)
    {
      if (a3 == 3)
      {
        [(ConversationViewControllerBase *)self _enumerateExpandedCellMessageContentViewsWithBlock:v5];
        (v6[2])(v6, 1);
      }

      else if (a3 == 2)
      {
        v8 = [(ConversationViewControllerBase *)self collectionView];
        [v8 directionalLayoutMargins];
        [(ConversationViewControllerBase *)self _updateConversationHeaderViewLayoutMarginsWithSuperviewMargins:?];

        [(ConversationViewControllerBase *)self _enumerateExpandedCellMessageContentViewsWithBlock:v5];
      }

      goto LABEL_12;
    }

    if (a3)
    {
      if (a3 != 1)
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

- (id)messageItemIDAtIndexPath:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase messageItemIDAtIndexPath:]", "ConversationViewControllerBase.m", 574, "0");
}

- (void)_showSingleMessage:(id)a3 animationOffset:(CGPoint)a4 initialScrollOffset:(CGPoint)a5
{
  v7 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _showSingleMessage:animationOffset:initialScrollOffset:]", "ConversationViewControllerBase.m", 591, "0");
}

- (id)_indexPathOfMessageViewControllerMessage:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _indexPathOfMessageViewControllerMessage:]", "ConversationViewControllerBase.m", 603, "0");
}

- (BOOL)_isItemInitiallyUnreadAtIndexPath:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _isItemInitiallyUnreadAtIndexPath:]", "ConversationViewControllerBase.m", 607, "0");
}

- (void)_enqueueMessageViewController:(id)a3
{
  v5 = a3;
  v4 = [(ConversationViewControllerBase *)self messageViewControllerReuseQueue];
  [v4 enqueueMessageViewController:v5];
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
      v4 = [(ConversationViewControllerBase *)self previewState];
      v5 = [v4 shouldScrollToReferenceMessage];

      if (v5)
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

- (void)collectionViewMarginsDidChange:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v39 = [(ConversationViewControllerBase *)self view];
  [v39 mf_prefersRightToLeftInterfaceLayout];
  MFEdgeInsetsFromDirectionalEdgeInsets();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v37 = bottom;

  v40 = [(ConversationViewControllerBase *)self displayMetrics];
  [v40 layoutMargins];
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
  v41 = [(ConversationViewControllerBase *)self displayMetrics];
  [v41 headerMinAvatarLeadingSpacing];
  v24 = v23;
  horizontalPadding = self->_horizontalPadding;
  [v41 headerAvatarMaxOffset];
  v27 = leading - horizontalPadding - v26;
  if (v24 >= v27)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  [v41 headerMinAvatarLeadingSpacing];
  v30 = v29;
  v31 = self->_horizontalPadding;
  [v41 headerAvatarMaxOffset];
  v33 = v32;
  v34 = [(ConversationViewControllerBase *)self staticSenderHeaderView];
  v35 = v34;
  if (v30 >= trailing - v31 - v33)
  {
    v36 = v30;
  }

  else
  {
    v36 = trailing - v31 - v33;
  }

  [v34 setDirectionalLayoutMargins:{top, v28, v38, v36}];
}

- (NSDirectionalEdgeInsets)layoutMarginsForCollectionViewFrame:(CGRect)a3
{
  [(ConversationViewControllerBase *)self systemMinimumLayoutMargins];
  v4 = [(ConversationViewControllerBase *)self view];
  [v4 mf_prefersRightToLeftInterfaceLayout];
  MFEdgeInsetsFromDirectionalEdgeInsets();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(ConversationViewControllerBase *)self view];
  [v13 safeAreaInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [MFReadableContentMarginCalculator readableContentMarginsForWidth:CGRectGetWidth(a3) minMargins:v6 safeAreaInsets:v8, v10, v12, v15, v17, v19, v21];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(ConversationViewControllerBase *)self view];
  v31 = [v30 mf_prefersRightToLeftInterfaceLayout];
  if (v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = v25;
  }

  if (v31)
  {
    v29 = v25;
  }

  for (i = [(ConversationViewControllerBase *)self navigationController];
  {
    v34 = [i navigationController];

    if (!v34)
    {
      break;
    }

    v35 = [i navigationController];
  }

  if (i)
  {
    v36 = [(ConversationViewControllerBase *)self traitCollection];
    [v36 mf_leadingEdgeToBackButtonText];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v6 viewWillDisappear:?];
  [(ConversationViewControllerBase *)self _endEditingAnimated:v3];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v7 viewDidDisappear:a3];
  *&self->_flags &= 0xAFu;
  sub_100084A18(self, 0);
  v4 = [(ConversationViewControllerBase *)self scene];
  if (+[UIDevice mf_isPadIdiom])
  {
    v5 = [v4 popoverManager];
    [v5 removePassthroughViewProvider:self];
  }

  v6 = [(MFConversationCellExpansionGestureRecognizer *)self->_cellExpansionRecognizer view];
  [v6 removeGestureRecognizer:self->_cellExpansionRecognizer];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ConversationViewControllerBase;
  [(ConversationViewControllerBase *)&v16 traitCollectionDidChange:v4];
  v5 = [(ConversationViewControllerBase *)self splitViewController];

  [(ConversationViewControllerBase *)self _updateTitle];
  v6 = [(ConversationViewControllerBase *)self traitCollection];
  v7 = [v6 mf_traitDifferenceAffectsTextLayout:v4];

  if (v7)
  {
    [(ConversationViewControllerBase *)self _updateDisplayMetrics];
    [(ConversationViewControllerBase *)self _updateLayout];
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  [(ConversationViewControllerBase *)self _updateBarButtonsAnimated:0 force:1];
LABEL_5:
  v8 = [(ConversationViewControllerBase *)self traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  v10 = [v4 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v9);
  if (IsAccessibilityCategory != UIContentSizeCategoryIsAccessibilityCategory(v10))
  {
    [(ConversationViewControllerBase *)self _reloadPreparedCells];
  }

  v12 = [(ConversationViewControllerBase *)self cellConfigurator];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100086710;
  v15[3] = &unk_10064E1C8;
  v15[4] = self;
  [v12 enumerateExpandedCellsWithBlock:v15];

  v13 = [(ConversationViewControllerBase *)self shouldHideStickyFooterView];
  v14 = [(ConversationViewControllerBase *)self navigationController];
  [v14 setToolbarHidden:v13 ^ 1];

  [(ConversationViewControllerBase *)self updateNavigationItemChromelessConfiguration];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(ConversationViewControllerBase *)self _toggleCellsGroupOpacityDuringRotationWithCoordinator:v7];
  v8 = [(ConversationViewControllerBase *)self view];
  [v8 bounds];
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

  v11 = [(ConversationViewControllerBase *)self collectionView];
  v12 = [v11 window];

  if (v12)
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
    [v7 animateAlongsideTransition:v15 completion:v14];
LABEL_7:
    v13.receiver = self;
    v13.super_class = ConversationViewControllerBase;
    [(ConversationViewControllerBase *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  }
}

- (BOOL)isFullyVisible
{
  v2 = [(ConversationViewControllerBase *)self previewState];
  v3 = [v2 isFullyVisible];

  return v3;
}

- (void)setReferenceMessageListItem:(id)a3
{
  v5 = a3;
  v6 = [(ConversationViewControllerBase *)self delegate];
  if (!v5 && self->_referenceMessageListItem && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 referenceMessageNoLongerAvailableInConversationView:self];
  }

  objc_storeStrong(&self->_referenceMessageListItem, a3);
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

- (id)_previewActionsForTriageActions:(id)a3 excludingActions:(id)a4
{
  v6 = a3;
  v20 = a4;
  v19 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
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
          v14 = [(ConversationViewControllerBase *)self _previewActionsForTriageActions:v13 excludingActions:v20];
          v15 = [UIPreviewActionGroup actionGroupWithTitle:v12 style:0 actions:v14];
          [v19 addObject:v15];

LABEL_8:
          goto LABEL_11;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v20 containsObject:v10] & 1) == 0)
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

- (void)_shrinkMessagesToBarButton:(id)a3 withInteraction:(id)a4 completionHandler:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = [a3 view];
  [(ConversationViewControllerBase *)self _shrinkMessagesToView:v9 withInteraction:v10 completionHandler:v8];
}

- (void)_shrinkMessagesToView:(id)a3 withInteraction:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v44 = v9;
  v45 = a5;
  v46 = v8;
  v10 = [UIApp launchedToTest];
  v11 = [(ConversationViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 shrinkAnimationContainerViewForConversationViewController:{self, v11}];
  }

  else
  {
    v13 = [(ConversationViewControllerBase *)self collectionView];
    v12 = [v13 superview];
  }

  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(ConversationViewControllerBase *)self collectionView];
  [v22 contentInset];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [[UIView alloc] initWithFrame:{v15 + v26, v17 + v24, v19 - (v26 + v30), v21 - (v24 + v28)}];
  v32 = [UIColor colorWithWhite:0.0 alpha:0.5];
  [v31 setBackgroundColor:v32];

  [v12 addSubview:v31];
  v33 = [(ConversationViewControllerBase *)self view];
  v34 = [v33 snapshotViewAfterScreenUpdates:0];

  [v12 addSubview:v34];
  v35 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v36 = [v35 count];
  v37 = [v9 messageCount];

  if (v36 == v37)
  {
    [(ConversationViewControllerBase *)self _notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:v9];
  }

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000879FC;
  v52[3] = &unk_10064E1F0;
  v53 = v34;
  v38 = v12;
  v54 = v38;
  v39 = v46;
  v55 = v39;
  v58 = v10;
  v56 = v31;
  v57 = self;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100087B18;
  v47[3] = &unk_10064E218;
  v51 = v10;
  v47[4] = self;
  v40 = v53;
  v48 = v40;
  v41 = v56;
  v49 = v41;
  v42 = v45;
  v50 = v42;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v52 completion:v47];
}

- (void)_notifyDelegateWillRemoveAllVisibleMessagesForTriageInteraction:(id)a3
{
  v7 = a3;
  v4 = [(ConversationViewControllerBase *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(ConversationViewControllerBase *)self _messagesForTriageInteraction:v7];
    v6 = [v5 ef_map:&stru_10064E258];

    [v4 conversationViewController:self willRemoveAllVisibleMessagesWithItemIDs:v6];
  }
}

- (void)setBeingPreviewed:(BOOL)a3
{
  v3 = a3;
  v4 = [(ConversationViewControllerBase *)self previewState];
  [v4 setBeingPreviewed:v3];
}

- (void)previewCancelled
{
  v2 = [(ConversationViewControllerBase *)self previewState];
  [v2 previewCancelled];
}

- (void)previewDidCommit:(BOOL)a3
{
  v3 = a3;
  v4 = [(ConversationViewControllerBase *)self previewState];
  [v4 previewDidCommit:v3];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  v8 = a3;
  if ([v8 showNoMessageSelectedView])
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
  v4 = [(ConversationViewControllerBase *)&v8 contentUnavailableConfigurationState];
  v5 = [(ConversationViewControllerBase *)self shouldShowNoMessageSelectedView];
  if (v5)
  {
    v2 = [(ConversationViewControllerBase *)self delegate];
    v6 = [v2 conversationViewControllerCanShowNoMessageSelectedView:self];
  }

  else
  {
    v6 = 0;
  }

  [v4 setShowNoMessageSelectedView:v6];
  if (v5)
  {
  }

  return v4;
}

- (void)setShouldShowNoMessageSelectedView:(BOOL)a3
{
  if (self->_shouldShowNoMessageSelectedView != a3)
  {
    [(ConversationViewControllerBase *)self _doSetShouldShowNoMessageSelectedView:?];
  }
}

- (void)_configureSenderHeaderView:(id)a3 expansionStatus:(int64_t)a4
{
  v6 = a3;
  v7 = [(ConversationViewControllerBase *)self delegate];
  v30 = [v7 currentlySelectedBucketForConversationViewController:self];

  v8 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v31 = [v8 itemID];
  v9 = [v6 viewModel];
  v10 = [v9 itemID];
  if (([v10 isEqual:v31] & 1) == 0)
  {

    v13 = 0;
    goto LABEL_5;
  }

  v11 = [v6 viewModel];
  v12 = [v11 bucket];

  if (v12 == v30)
  {
    v9 = [v6 viewModel];
    v13 = [v9 copy];
LABEL_5:

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:
  v14 = [(ConversationViewControllerBase *)self contactStore];
  v29 = [v8 preferredSenderDisplayNameWithContactStore:v14];

  v15 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = [v8 unseenCount];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(ConversationViewControllerBase *)self totalUnfilteredMessageCount];
  if ([(ConversationViewControllerBase *)self isMessageListUnfiltered])
  {
    v19 = 0;
  }

  else
  {
    v19 = [(ConversationViewControllerBase *)self countOfMessages];
  }

  v20 = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
  [v20 updateHeaderWithExpansionStatus:a4];

  if (v13)
  {
    [(ConversationSenderHeaderViewModel *)v13 setForceCollapsed:[(ConversationViewControllerBase *)self forceCollapsedSenderHeader]];
    [(ConversationSenderHeaderViewModel *)v13 setIsBucketSelected:[(ConversationViewControllerBase *)self isBucketSelected]];
    [(ConversationSenderHeaderViewModel *)v13 updateSubtitleInformationWithBucket:v30 isBucketSelected:[(ConversationViewControllerBase *)self isBucketSelected] categoryMessageCount:v19 totalMessageCount:v18 unreadMessageCount:0 newMessageCount:v17];
  }

  else
  {
    v21 = [_TtC10MobileMail33ConversationSenderHeaderViewModel alloc];
    v22 = [(ConversationViewControllerBase *)self isBucketSelected];
    LOBYTE(v28) = [(ConversationViewControllerBase *)self forceCollapsedSenderHeader];
    v13 = [(ConversationSenderHeaderViewModel *)v21 initWithItemID:v31 avatarResult:0 title:v29 bucket:v30 isBucketSelected:v22 categoryMessageCount:v19 totalMessageCount:v18 newMessageCount:v17 unreadMessageCount:0 forceCollapsed:v28];
  }

  [(ConversationViewControllerBase *)self _updateSenderHeaderView:v6 viewModel:v13 expansionStatus:a4];
  objc_initWeak(&location, self);
  v23 = [[MUIAvatarImageContext alloc] initWithMessageListItem:v8];
  v24 = [(ConversationViewControllerBase *)self avatarGenerator];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100088508;
  v32[3] = &unk_10064E280;
  objc_copyWeak(&v35, &location);
  v25 = v6;
  v33 = v25;
  v26 = v13;
  v34 = v26;
  v27 = [v24 contactForContext:v23 handler:v32];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (void)_updateSenderHeaderView:(id)a3 viewModel:(id)a4 expansionStatus:(int64_t)a5
{
  v8 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 updateWith:v7 expansionStatus:a5];
  }

  else
  {
    [v8 updateWith:v7];
  }
}

- (void)_updateTitle
{
  v3 = [(ConversationViewControllerBase *)self countOfMessages];
  v4 = [(ConversationViewControllerBase *)self navigationItem];
  [v4 setTitleView:0];

  v52 = [(ConversationViewControllerBase *)self scene];
  v5 = [(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView];
  v53 = [(ConversationViewControllerBase *)self shouldShowStaticDigestHeaderView];
  if ((v5 | v53))
  {
    if (v5)
    {
      [(ConversationViewControllerBase *)self expandableSenderHeaderView];
    }

    else
    {
      [(ConversationViewControllerBase *)self staticSenderHeaderView];
    }
    WeakRetained = ;
    v13 = [WeakRetained superview];

    if (!v13)
    {
      v14 = [(ConversationViewControllerBase *)self view];
      [v14 addSubview:WeakRetained];

      v51 = [(ConversationViewControllerBase *)self senderHeaderLayoutGuide];
      v50 = [WeakRetained topAnchor];
      v48 = [v51 topAnchor];
      v47 = [v50 constraintEqualToAnchor:?];
      v60[0] = v47;
      v49 = [WeakRetained leadingAnchor];
      v15 = [v51 leadingAnchor];
      v16 = [v49 constraintEqualToAnchor:v15];
      v60[1] = v16;
      v17 = [WeakRetained trailingAnchor];
      v18 = [v51 trailingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v60[2] = v19;
      v20 = [NSArray arrayWithObjects:v60 count:3];
      [NSLayoutConstraint activateConstraints:v20];

      [WeakRetained recalculateHeights];
    }

    if (v5)
    {
      v12 = [(ConversationViewControllerBase *)self tapGestureTitleView];
      v21 = [(ConversationViewControllerBase *)self initialSenderHeaderExpansionStatus];
      if ((v21 - 1) <= 1)
      {
        [(ConversationViewControllerBase *)self setInitialSenderHeaderExpansionStatus:0];
      }

      if ([(ConversationViewControllerBase *)self forceCollapsedSenderHeader])
      {
        v22 = 2;
      }

      else
      {
        v22 = v21;
      }
    }

    else
    {
      v22 = 0;
      v12 = 0;
    }

    [(ConversationViewControllerBase *)self _configureSenderHeaderView:WeakRetained expansionStatus:v22];
    v11 = 0;
    goto LABEL_21;
  }

  if (v3 < 1 || (-[ConversationViewControllerBase barItemsManager](self, "barItemsManager"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 useDesktopClassNavigationBar], v6, (v7 & 1) != 0))
  {
    WeakRetained = +[ConversationViewController log];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(ConversationViewControllerBase *)self referenceMessageListItem];
      v10 = [v9 ef_publicDescription];
      *buf = 138412290;
      v55 = v10;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Skip title update, message count is 0, referenceMessage=%@", buf, 0xCu);
    }

    v11 = 0;
LABEL_9:
    v12 = 0;
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

    v45 = [(ConversationViewControllerBase *)self conversationHeaderView];
    [v45 setDelegate:0];

    goto LABEL_9;
  }

  v26 = +[NSBundle mainBundle];
  v27 = [v26 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_100662A88 table:@"Main"];
  WeakRetained = [NSString localizedStringWithFormat:v27, v3];

  v28 = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
  if (v28)
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
    v30 = [(ConversationViewControllerBase *)self conversationHeaderView];

    if (!v30)
    {
      v31 = [(ConversationViewControllerBase *)self view];
      [v31 frame];
      Width = CGRectGetWidth(v61);

      v33 = [[ConversationHeaderView alloc] initWithFrame:0.0, 0.0, Width, 0.0];
      [(ConversationViewControllerBase *)self setConversationHeaderView:v33];
    }

    v34 = [(ConversationViewControllerBase *)self conversationHeaderView];
    [v34 setDelegate:self];

    v35 = [(ConversationViewControllerBase *)self conversationSubject];
    v36 = [ECSubjectFormatter subjectStringForDisplayForSubject:v35 style:1];

    v37 = [(ConversationViewControllerBase *)self conversationHeaderView];
    v38 = [v37 title];
    v39 = [v38 isEqualToString:v36];

    if ((v39 & 1) == 0)
    {
      v40 = [(ConversationViewControllerBase *)self conversationHeaderView];
      [v40 setCollapsed:0 animated:0];
    }

    v41 = +[ConversationViewController log];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v55 = v3;
      v56 = 1024;
      v57 = v28;
      v58 = 1024;
      v59 = v36 != 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Update conversation header view (messageCount=%ld, isDisplayingSingleMessage=%{BOOL}d, hasTrimmedSubject=%{BOOL}d)", buf, 0x18u);
    }

    v42 = [(ConversationViewControllerBase *)self conversationHeaderView];
    [v42 setSuperTitle:v11];

    v43 = [(ConversationViewControllerBase *)self conversationHeaderView];
    [v43 setTitle:v36];

    v12 = [(ConversationViewControllerBase *)self conversationHeaderView];
  }

  else
  {
    v46 = +[ConversationViewController log];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v55 = v3;
      v56 = 1024;
      v57 = v28;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Update title (messageCount=%ld, isDisplayingSingleMessage=%{BOOL}d)", buf, 0x12u);
    }

    v36 = [(ConversationViewControllerBase *)self conversationHeaderView];
    v12 = 0;
    [v36 setDelegate:0];
  }

LABEL_21:
  if ((v5 & 1) == 0)
  {
    v23 = [(ConversationViewControllerBase *)self expandableSenderHeaderView];
    [v23 removeFromSuperview];
  }

  if ((v53 & 1) == 0)
  {
    v24 = [(ConversationViewControllerBase *)self staticSenderHeaderView];
    [v24 removeFromSuperview];
  }

  [(ConversationViewControllerBase *)self setTitle:v11];
  v25 = [(ConversationViewControllerBase *)self navigationItem];
  [v25 setTitleView:v12];

  [v52 mf_resetPreferredTitle];
}

- (void)_updateBackgroundColor
{
  if (MUISolariumFeatureEnabled())
  {
    if ([(ConversationViewControllerBase *)self countOfMessages]&& ![(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
    {
      if (+[UIDevice mf_isPadIdiom])
      {
        v4 = [(ConversationViewControllerBase *)self traitCollection];
        v3 = +[UIColor mf_mailThreadedConversationViewBackgroundForHorizontalSizeClass:](UIColor, "mf_mailThreadedConversationViewBackgroundForHorizontalSizeClass:", [v4 horizontalSizeClass]);
        [(_MFConversationViewCollectionView *)self->_conversationView setBackgroundColor:v3];
      }

      else
      {
        v4 = +[UIColor mailThreadedConversationViewBackgroundColor];
        [(_MFConversationViewCollectionView *)self->_conversationView setBackgroundColor:?];
      }
    }

    else
    {
      v4 = +[UIColor mailSingletonConversationViewBackgroundColor];
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
      v5 = [(ConversationViewControllerBase *)self expandableSenderHeaderView];
      v6 = [(ConversationSenderHeaderViewAnimator *)v4 initWithHeaderView:v5];
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

- (void)tappedSenderHeader:(id)a3
{
  v3 = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
  [v3 updateHeaderWithExpansionStatus:1];
}

- (id)mf_preferredTitle
{
  v2 = [(ConversationViewControllerBase *)self conversationSubject];
  v3 = [ECSubjectFormatter subjectStringForDisplayForSubject:v2 style:0];

  return v3;
}

- (BOOL)_shouldShowConversationHeader
{
  v3 = [(ConversationViewControllerBase *)self isPrimary];
  v4 = [(ConversationViewControllerBase *)self conversationSubject];
  v5 = [v4 subjectWithoutPrefix];
  v6 = [v5 length];

  return v6 && v3;
}

- (id)_visibleNavigationBar
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100085910;
  v11 = sub_100085920;
  v3 = [(ConversationViewControllerBase *)self navigationController];
  v12 = [v3 navigationBar];

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

- (void)_updateConversationHeaderViewLayoutMarginsWithSuperviewMargins:(NSDirectionalEdgeInsets)a3
{
  [(ConversationHeaderView *)self->_conversationHeaderView directionalLayoutMargins:a3.top];
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
    v5 = objc_opt_new();
    [v5 configureWithTransparentBackground];
    v6 = [(ConversationViewControllerBase *)self navigationItem];
    [v6 setStandardAppearance:v5];
    [v6 setScrollEdgeAppearance:v5];
    [v6 setCompactAppearance:v5];
    [v6 setCompactScrollEdgeAppearance:v5];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    (v3[2])(v3);
    v5 = objc_opt_new();
    v6 = [(ConversationViewControllerBase *)self navigationItem];
    [v6 setScrollEdgeAppearance:v5];
    goto LABEL_7;
  }

  if (!+[UIDevice mf_isPadIdiom](UIDevice, "mf_isPadIdiom") || (-[ConversationViewControllerBase traitCollection](self, "traitCollection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 horizontalSizeClass], v7, v8 != 2))
  {
    (v3[2])(v3);
    v14 = [(ConversationViewControllerBase *)self navigationController];
    v15 = [v14 navigationBar];
    v16 = [v15 standardAppearance];
    v17 = [(ConversationViewControllerBase *)self navigationController];
    v18 = [v17 navigationBar];
    [v18 setScrollEdgeAppearance:v16];

    v19 = [(ConversationViewControllerBase *)self navigationItem];
    [v19 _setManualScrollEdgeAppearanceEnabled:0];

    if (![(ConversationViewControllerBase *)self allowQuickReply])
    {
      goto LABEL_9;
    }

    v5 = [(ConversationViewControllerBase *)self navigationController];
    v6 = [v5 toolbar];
    v20 = [v6 standardAppearance];
    v21 = [(ConversationViewControllerBase *)self navigationController];
    v22 = [v21 toolbar];
    [v22 setScrollEdgeAppearance:v20];

    goto LABEL_7;
  }

  (v3[2])(v3);
  v9 = [(ConversationViewControllerBase *)self navigationController];
  v10 = [v9 navigationBar];
  [v10 setScrollEdgeAppearance:0];

  v11 = [(ConversationViewControllerBase *)self navigationItem];
  LOBYTE(v10) = [v11 _isManualScrollEdgeAppearanceEnabled];

  if (v10)
  {
    goto LABEL_9;
  }

  v12 = [(ConversationViewControllerBase *)self navigationItem];
  [v12 _setAutoScrollEdgeTransitionDistance:1.0];

  v13 = [(ConversationViewControllerBase *)self navigationItem];
  [v13 _setManualScrollEdgeAppearanceProgress:1.0];

  v5 = [(ConversationViewControllerBase *)self navigationItem];
  [v5 _setManualScrollEdgeAppearanceEnabled:1];
LABEL_8:

LABEL_9:
}

- (double)_topSpacingToAvoidStatusBar
{
  v3 = [(ConversationViewControllerBase *)self scene];
  v4 = [v3 statusBarManager];
  [v4 statusBarFrame];
  Height = CGRectGetHeight(v15);

  if (MUISolariumFeatureEnabled())
  {
    v6 = [(ConversationViewControllerBase *)self view];
    v7 = [v6 window];
    v8 = [v7 screen];
    v9 = [v8 coordinateSpace];

    v10 = [(ConversationViewControllerBase *)self view];
    v11 = [(ConversationViewControllerBase *)self view];
    [v11 bounds];
    [v10 convertRect:v9 toCoordinateSpace:?];
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

    v7 = [(ConversationViewControllerBase *)self senderHeaderLayoutGuideTopConstraint];
    [v7 constant];
    if (v6 != v4)
    {
      [v7 setConstant:v4];
    }
  }
}

- (void)_reloadPreparedCells
{
  v3 = +[NSMutableSet set];
  v4 = [(ConversationViewControllerBase *)self cellConfigurator];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100089FB0;
  v10 = &unk_10064E2D0;
  v11 = self;
  v5 = v3;
  v12 = v5;
  [v4 enumeratePreparedCellsWithBlock:&v7];

  v6 = [v5 allObjects];
  [(ConversationViewControllerBase *)self _reloadCellsAtIndexPaths:v6 animated:1];
}

- (void)_updateCells
{
  v3 = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
  v4 = +[NSMutableSet set];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v5 = [(ConversationViewControllerBase *)self collectionView];
  v6 = [(ConversationViewControllerBase *)self cellConfigurator];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10008A418;
  v23 = &unk_10064E2F8;
  v26 = &v28;
  v7 = v5;
  v24 = v7;
  v27 = v3;
  v8 = v4;
  v25 = v8;
  [v6 enumerateExpandedCellsWithBlock:&v20];

  v9 = [ConversationViewController log:v20];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v8 count];
    v18 = v29[3];
    v19 = [(ConversationViewControllerBase *)self countOfMessages];
    *buf = 134218496;
    v33 = v17;
    v34 = 2048;
    v35 = v18;
    v36 = 2048;
    v37 = v19;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "_updateCells reloadIndexPath.count:%lu expandedCellCount:%lu countOfMessages:%li", buf, 0x20u);
  }

  if ([v8 count])
  {
    v10 = [v8 allObjects];
    [(ConversationViewControllerBase *)self _reloadCellsAtIndexPaths:v10 animated:1];
LABEL_5:

    goto LABEL_7;
  }

  if (!v29[3] && [(ConversationViewControllerBase *)self countOfMessages]>= 1)
  {
    v10 = [(ConversationViewControllerBase *)self _indexPathForReferenceMessage];
    v11 = +[ConversationViewController log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100485380(v10, v11);
    }

    if (v10)
    {
      v12 = [(ConversationViewControllerBase *)self messageItemIDAtIndexPath:v10];
      v13 = [(ConversationViewControllerBase *)self cellConfigurator];
      v14 = [v13 expansionTracker];
      v15 = [v14 expansionStatusForCellWithItemID:v12];

      if (v15 == 3)
      {
        v16 = [(ConversationViewControllerBase *)self cellConfigurator];
        [v16 expandCellAtIndexPath:v10 animated:0 highlightFirst:0];
      }
    }

    goto LABEL_5;
  }

LABEL_7:

  _Block_object_dispose(&v28, 8);
}

- (void)_reloadCellsAtIndexPaths:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
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

- (void)updateUserActivityState:(id)a3
{
  v3 = [(ConversationViewControllerBase *)self handoffCoordinator];
  [v3 updateUserActivityState];
}

- (id)_indexPathForTopMostVisibleRow
{
  v3 = [(ConversationViewControllerBase *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v6 = [(ConversationViewControllerBase *)self collectionView];
  [v6 contentOffset];
  v8 = v7;
  v9 = [(ConversationViewControllerBase *)self collectionView];
  [v9 contentInset];
  v11 = v8 + v10;

  v12 = [(ConversationViewControllerBase *)self collectionView];
  v13 = [v12 indexPathForItemAtPoint:{v5 * 0.5, v11}];

  return v13;
}

- (void)setPinnedItem:(id)a3
{
  v4 = a3;
  if ([(ConversationViewControllerBase *)self disableScrollPinning])
  {
    v5 = +[ConversationViewController log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pinning is disabled. This is for testing purposes only.", &v10, 2u);
    }

    v4 = 0;
  }

  if (![(PinnedConversationItem *)self->_pinnedItem isEqual:v4])
  {
    if (self->_pinnedItem)
    {
      v6 = +[ConversationViewController log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(PinnedConversationItem *)self->_pinnedItem ef_publicDescription];
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unpinning %@", &v10, 0xCu);
      }
    }

    if (v4)
    {
      v8 = +[ConversationViewController log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v4 ef_publicDescription];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pinning to %@", &v10, 0xCu);
      }
    }

    objc_storeStrong(&self->_pinnedItem, v4);
  }
}

- (void)_restorePinnedScrollPosition
{
  v6 = [(ConversationViewControllerBase *)self pinnedItem];
  v3 = [v6 indexPath];
  if (v6)
  {
    if (v3)
    {
      v4 = [v6 dynamicOffset];

      if (v4)
      {
        v5 = [v6 dynamicOffset];
        [(ConversationViewControllerBase *)self _scrollToItemAtIndexPath:v3 dynamicOffset:v5 shouldAdjustToShowPreviousMessage:1 animated:0 pin:0 completion:0];
      }
    }
  }
}

- (void)_maybeAttemptLoadMissingMessages:(id)a3
{
  v11 = a3;
  v4 = [(ConversationViewControllerBase *)self conversationSortOrder];
  if ([v11 isTracking])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v11 isDecelerating];
  }

  [v11 _verticalVelocity];
  v7 = v6;
  +[NSDate timeIntervalSinceReferenceDate];
  v9 = -v7;
  if (v4 == 1)
  {
    v9 = v7;
  }

  if (v5)
  {
    if (v9 > 0.0 && v8 >= self->_nextAvailableLoadMoreInterval)
    {
      [(ConversationViewControllerBase *)self _attemptLoadMissingMessages];
    }
  }
}

- (void)_attemptLoadMissingMessages
{
  v4 = [(ConversationViewControllerBase *)self _oldestIndexPath];
  if (v4)
  {
    [(ConversationViewControllerBase *)self _loadMoreMessagesWithMaxVisibleIndexPath:v4];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  self->_nextAvailableLoadMoreInterval = v3 + 0.5;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewControllerBase *)self viewIfLoaded];
  v6 = [v5 window];

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [(ConversationViewControllerBase *)self expandableSenderHeaderView];
  v8 = [v7 superview];

  if (v8)
  {
    v9 = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
    [v9 scrollViewDidScroll:v4];
  }

  else
  {
    v10 = [(ConversationViewControllerBase *)self staticSenderHeaderView];
    v11 = [v10 superview];

    if (!v11)
    {
      goto LABEL_7;
    }

    [v4 contentOffset];
    v13 = v12;
    v9 = [(ConversationViewControllerBase *)self staticSenderHeaderView];
    [v9 frame];
    Height = CGRectGetHeight(v19);
    v15 = [(ConversationViewControllerBase *)self staticSenderHeaderView];
    [v15 setAppearance:v13 >= -(Height + -10.0)];
  }

LABEL_7:
  if ([(ConversationViewControllerBase *)self resizingState]!= 3)
  {
    v16 = [(ConversationViewControllerBase *)self collectionView];
    v17 = [v16 visibleCells];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008AF30;
    v18[3] = &unk_10064DE30;
    v18[4] = self;
    [v17 enumerateObjectsUsingBlock:v18];

    [(MFConversationCellExpansionGestureRecognizer *)self->_cellExpansionRecognizer cancel];
    if ([(ConversationViewControllerBase *)self allowQuickReply])
    {
      [(ConversationViewControllerBase *)self _updateQuickReplySendButtonOffset:v4];
    }

    [(ConversationViewControllerBase *)self _updateManualSummaryUIForScroll:v4];
  }

LABEL_11:
}

- (void)scrollViewDidScrollToTop:(id)a3
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

- (void)scrollViewWillBeginDragging:(id)a3
{
  v6 = a3;
  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"begin Dragging"];
  [(ConversationViewControllerBase *)self setPinnedItem:0];
  if ([(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView]&& ![(ConversationViewControllerBase *)self forceCollapsedSenderHeader])
  {
    [(ConversationViewControllerBase *)self setResizingState:3];
    v4 = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
    [v4 scrollViewWillBeginDragging:v6];
  }

  v5 = [(ConversationViewControllerBase *)self conversationHeaderView];
  [v5 hostScrollViewWillBeginDragging:v6];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v9 = -y;
  if (y >= 0.0)
  {
    v9 = y;
  }

  if (v9 < 0.00000011920929)
  {
    [(ConversationViewControllerBase *)self pinCurrentItem];
    v10 = [(ConversationViewControllerBase *)self handoffCoordinator];
    [v10 updateHandoffMessageBasedOnMessageVisibility];

    [(ConversationViewControllerBase *)self updateArrowControlsView];
  }

  if ([(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView]&& ![(ConversationViewControllerBase *)self forceCollapsedSenderHeader])
  {
    [(ConversationViewControllerBase *)self setResizingState:0];
    v11 = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
    [v11 scrollViewWillEndDragging:v12 withVelocity:a5 targetContentOffset:{x, y}];
  }

  else
  {
    v11 = [(ConversationViewControllerBase *)self conversationHeaderView];
    [v11 hostScrollViewWillEndDragging:v12 withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v6 = a3;
  [(ConversationViewControllerBase *)self pinCurrentItem];
  [(ConversationViewControllerBase *)self _shrinkBottomPaddingIfNecessary];
  v4 = [(ConversationViewControllerBase *)self handoffCoordinator];
  [v4 updateHandoffMessageBasedOnMessageVisibility];

  [(ConversationViewControllerBase *)self updateArrowControlsView];
  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"ended decelerating"];
  if ([(ConversationViewControllerBase *)self _scrollViewIsScrolledToEnd:v6]&& [(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
  {
    [(ConversationViewControllerBase *)self _scrolledToEndOfSingleMessage];
  }

  v5 = [(ConversationViewControllerBase *)self conversationHeaderView];
  [v5 hostScrollViewDidEndDecelerating:v6];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  if (!a4)
  {
    [(ConversationViewControllerBase *)self _shrinkBottomPaddingIfNecessary];
  }

  [(ConversationViewControllerBase *)self mf_updateAlertSuppressionContextsForReason:@"ended dragging"];
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = [(ConversationViewControllerBase *)self expandableSenderHeaderView];
  v5 = [v4 superview];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [(ConversationViewControllerBase *)self forceCollapsedSenderHeader];

  if ((v6 & 1) == 0)
  {
    v4 = [(ConversationViewControllerBase *)self senderHeaderViewAnimator];
    [v4 updateHeaderWithExpansionStatus:1];
LABEL_4:
  }

  return 1;
}

- (void)_shrinkBottomPaddingIfNecessary
{
  if (![(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
  {
    v10 = [(ConversationViewControllerBase *)self collectionView];
    [v10 _contentScrollInset];
    v4 = v3;
    if (v3 > 0.00000011920929)
    {
      [v10 visibleBounds];
      MaxY = CGRectGetMaxY(v12);
      [v10 contentInset];
      v7 = v6;
      [v10 contentSize];
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

- (void)_scrollToItemAtIndexPath:(id)a3 dynamicOffset:(id)a4 shouldAdjustToShowPreviousMessage:(BOOL)a5 animated:(BOOL)a6 pin:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v10 = a6;
  v29 = a5;
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = +[ConversationViewController log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v13 section];
    v18 = [v13 item];
    v19 = [v14 ef_publicDescription];
    *buf = 134219010;
    v34 = v17;
    v35 = 2048;
    v36 = v18;
    v37 = 2112;
    v38 = v19;
    v39 = 1024;
    v40 = v10;
    v41 = 1024;
    v42 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scroll to item at index path {%ld, %ld}, dynamicOffset: %@, animated: %{BOOL}d, pin:%{BOOL}d", buf, 0x2Cu);
  }

  [(ConversationViewControllerBase *)self _ensureSubjectViewLayoutIfNeededAtIndexPath:v13];
  if (v9 && ![(ConversationViewControllerBase *)self disableScrollPinning])
  {
    [(ConversationViewControllerBase *)self pinItemAtIndexPath:v13 dynamicOffset:v14];
    if ([v13 item] >= 1)
    {
      *&self->_flags &= ~8u;
      [(ConversationViewControllerBase *)self _updateBottomPadding];
    }
  }

  [(ConversationViewControllerBase *)self _updateHandoffWithMessageAtIndexPath:v13];
  [(ConversationViewControllerBase *)self updateArrowControlsView];
  if (!self->_pagingAnimator)
  {
    v20 = [MFCollectionViewPagingAnimator alloc];
    v21 = [(ConversationViewControllerBase *)self collectionView];
    v22 = [(MFCollectionViewPagingAnimator *)v20 initWithCollectionView:v21];
    pagingAnimator = self->_pagingAnimator;
    self->_pagingAnimator = v22;
  }

  v24 = [(ConversationViewControllerBase *)self traitCollection];
  if ([v24 mf_hasCompactDimension])
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
  v27 = v13;
  v31 = v27;
  v28 = v15;
  v32 = v28;
  [(MFCollectionViewPagingAnimator *)v26 scrollToItemAtIndexPath:v27 dynamicOffset:v14 shouldAdjustToShowPreviousMessage:v29 animated:v10 completion:v30];
}

- (id)_layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  [(ConversationViewControllerBase *)self _ensureSubjectViewLayoutIfNeededAtIndexPath:v4];
  v5 = [(ConversationViewControllerBase *)self collectionView];
  v6 = [v5 layoutAttributesForItemAtIndexPath:v4];

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
    v3 = [(ConversationViewControllerBase *)self countOfMessages];
    if (v3 >= 1)
    {
      v7 = [NSIndexPath indexPathForItem:v3 - 1 inSection:0];
      v4 = [(ConversationViewControllerBase *)self cellConfigurator];
      [v4 sizeForItemAtIndexPath:v7];
      v6 = v5;

      [(ConversationViewControllerBase *)self _updateBottomPaddingWithLastItemHeight:v6];
    }
  }
}

- (void)_updateBottomPaddingWithLastItemHeight:(double)a3
{
  v5 = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
  v6 = 0.0;
  if ((v5 & 1) == 0)
  {
    v7 = [(ConversationViewControllerBase *)self collectionView];
    [v7 mf_visibleHeight];
    v9 = v8;

    [(ConversationViewControllerBase *)self _autoscrollAdjustmentWithBaseOffset:10.0];
    v6 = v9 - (fmax(a3, 276.0) + v10);
  }

  [(ConversationViewControllerBase *)self _setBottomPadding:v6];
}

- (void)_setBottomPadding:(double)a3
{
  if (!_os_feature_enabled_impl() || ![(ConversationViewControllerBase *)self isPerformingQuickReplySendAnimation])
  {
    v12 = [(ConversationViewControllerBase *)self collectionView];
    [v12 _contentScrollInset];
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v13 = [(ConversationViewControllerBase *)self collectionView];
    UIRoundToViewScale();
    v11 = v10;

    v14 = [(ConversationViewControllerBase *)self collectionView];
    [v14 _setContentScrollInset:{v5, v7, fmax(v11, 0.0), v9}];
  }
}

- (void)cellConfigurator:(id)a3 didConfigureCell:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[ConversationViewController log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543874;
    v25 = objc_opt_class();
    v26 = 2048;
    v27 = v7;
    v28 = 2114;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Configuring class:%{public}@ cell:%p indexPath:%{public}@", &v24, 0x20u);
  }

  v10 = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
  if (([(ConversationViewControllerBase *)self allowQuickReply]& v10) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ConversationViewControllerBase *)v7 setRoundedCorners:3];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(ConversationViewControllerBase *)self _shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:v8];
    v12 = v7;
    v13 = [v12 viewModel];
    [(ConversationViewControllerBase *)self _configureExpandedCell:v12 atIndexPath:v8 viewModel:v13 collapseQuotedContent:v11];

    v14 = [v12 messageViewController];
    [(ConversationViewControllerBase *)self addChildViewController:v14];
    [v14 didMoveToParentViewController:self];
    v15 = [(ConversationViewControllerBase *)self resizingState];
    v16 = [v14 messageContentView];
    [v16 setContentPaddingFollowsLayoutMargins:v15 != 2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v7;
      v17 = [v12 viewModel];
      [(ConversationViewControllerBase *)self _configureCollapsedCell:v12 atIndexPath:v8 viewModel:v17];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v7;
        v18 = [v12 viewModel];
        [(ConversationViewControllerBase *)self _configureGeneratedSummaryCell:v12 atIndexPath:v8 viewModel:v18];
      }

      else
      {
        v12 = +[ConversationViewController log];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          v21 = [(ConversationViewControllerBase *)v7 viewModel];
          v22 = [v21 messageContentRequest];
          v23 = [v22 itemID];
          v24 = 138413314;
          v25 = v19;
          v26 = 2048;
          v27 = self;
          v28 = 2112;
          v29 = v20;
          v30 = 2112;
          v31 = v8;
          v32 = 2114;
          v33 = v23;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<%@: %p> Cannot configure an unknown cell type %@ at indexPath %@ for itemID: %{public}@", &v24, 0x34u);
        }
      }
    }
  }
}

- (int64_t)cellConfigurator:(id)a3 expansionStatusForMessageAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ConversationViewControllerBase *)self _indexPathForReferenceMessage];
  if (([v5 isEqual:v6] & 1) != 0 || -[ConversationViewControllerBase _isQuickReplyMessageAtIndexPath:](self, "_isQuickReplyMessageAtIndexPath:", v5) || -[ConversationViewControllerBase _isUndoSendMessageAtIndexPath:](self, "_isUndoSendMessageAtIndexPath:", v5))
  {
  }

  else
  {
    v8 = [(ConversationViewControllerBase *)self _isItemInitiallyUnreadAtIndexPath:v5];

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

- (void)cellConfigurator:(id)a3 didInvalidateConfigurationForCellsAtIndexPaths:(id)a4
{
  v5 = a4;
  v6 = [(ConversationViewControllerBase *)self pinnedItem];
  v7 = [v6 indexPath];
  if (![(ConversationViewControllerBase *)self _isDisplayingSingleMessage]&& v6 && v7)
  {
    [(ConversationViewControllerBase *)self setPinnedItem:0];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10008C458;
    v8[3] = &unk_10064E348;
    v9 = v5;
    v10 = self;
    v11 = v7;
    v12 = v6;
    [UIView performWithoutAnimation:v8];
  }
}

- (id)cellConfigurator:(id)a3 targetHeightForExpandingCellAtIndexPath:(id)a4
{
  v5 = [(ConversationViewControllerBase *)self messageItemIDAtIndexPath:a4];
  v6 = [(ConversationViewControllerBase *)self _currentSizeMetadataKey];
  v7 = [NSString stringWithFormat:@"%@_%@", v5, v6];

  v8 = [(ConversationViewControllerBase *)self cellHeightCache];
  v9 = [v8 objectForKey:v7];

  return v9;
}

- (id)cellConfigurator:(id)a3 messageItemIDAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase cellConfigurator:messageItemIDAtIndexPath:]", "ConversationViewControllerBase.m", 2017, "0");
}

- (void)cellConfigurator:(id)a3 wantsToReloadCellAtIndexPaths:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase cellConfigurator:wantsToReloadCellAtIndexPaths:animated:]", "ConversationViewControllerBase.m", 2021, "0");
}

- (id)_currentSizeMetadataKey
{
  v3 = [(ConversationViewControllerBase *)self collectionView];
  [v3 mf_visibleBounds];
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
  v14 = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
  v15 = @"conversation";
  if (v14)
  {
    v15 = @"single";
  }

  v16 = [NSString stringWithFormat:@"v%@-w%.1f-s%@-%@", @"1.0", *&Width, v13, v15];

  return v16;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  if ([(ConversationViewControllerBase *)self allowQuickReply:a3]&& [(ConversationViewControllerBase *)self didCompleteFirstPaint]&& [(ConversationViewControllerBase *)self conversationSortOrder]== 1)
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  if ([(ConversationViewControllerBase *)self allowQuickReply:a3]&& [(ConversationViewControllerBase *)self didCompleteFirstPaint]&& ![(ConversationViewControllerBase *)self conversationSortOrder])
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  [(MFConversationCellConfigurator *)self->_cellConfigurator sizeForItemAtIndexPath:v6];
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
  v2 = [(ConversationViewControllerBase *)self displayMetrics];
  [MFCollapsedMessageCell defaultHeightWithDisplayMetrics:v2];
  v4 = v3 + 180.0;

  return v4;
}

- (double)_autoscrollAdjustmentWithBaseOffset:(double)a3
{
  [(ConversationViewControllerBase *)self _itemSpacing];
  v6 = v5;
  v7 = [(ConversationViewControllerBase *)self previewState];
  v8 = v6 + a3;
  if ([v7 shouldScheduleMarkMessageAsRead])
  {
    v9 = [(ConversationViewControllerBase *)self _shouldShowConversationHeader];

    if (v9)
    {
      [(ConversationHeaderView *)self->_conversationHeaderView frame];
      r2 = v10;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [(ConversationViewControllerBase *)self _visibleNavigationBar];
      [v17 bounds];
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

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v11 = a4;
  v7 = a5;
  [(ConversationViewControllerBase *)self _toggleCellGroupOpacityIfNeeded:v11 displaying:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(MFSwipableCollectionViewLayout *)self->_conversationLayout expandingIndexPath];
    v9 = [v7 compare:v8];

    if (!v9)
    {
      v10 = [v11 layer];
      [v10 setAllowsGroupOpacity:0];
    }
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
    v12 = [v11 viewModel];
    v13 = [v12 messageContentRequest];
    v14 = [v13 itemID];
    v15 = [(ConversationViewControllerBase *)self messageItemIDAtIndexPath:v10];
    v16 = [v14 isEqual:v15];

    if (!v16 || ([v8 indexPathsForVisibleItems], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", v10), v17, (v18 & 1) == 0))
    {
      v19 = [v11 viewModel];
      [(ConversationViewControllerBase *)self cancelAutomaticMarkAsReadForCellViewModel:v19];
    }

    v20 = [v11 messageViewController];
    [v20 willMoveToParentViewController:0];
    [v20 removeFromParentViewController];
    v21 = [v8 valueForKeyPath:@"firstResponderViewType"];
    v22 = [v8 valueForKeyPath:@"firstResponderView"];
    v23 = [v8 valueForKeyPath:@"firstResponderIndexPath"];
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

    [(ConversationViewControllerBase *)self _enqueueMessageViewController:v20];
    [v20 setDelegate:0];
    [v11 setMessageViewController:0];
    v26 = [v11 layer];
    [v26 setAllowsGroupOpacity:1];
  }

  [(ConversationViewControllerBase *)self _toggleCellGroupOpacityIfNeeded:v9 displaying:0];
}

- (id)collectionView:(id)a3 dragPreviewParametersForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ConversationViewControllerBase *)self cellExpansionRecognizer];
  [v8 cancel];

  v9 = [v6 cellForItemAtIndexPath:v7];
  v10 = objc_alloc_init(UIDragPreviewParameters);
  v11 = [v9 roundedCorners];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (v11 != 0)) == 1)
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

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 cellForItemAtIndexPath:v9];
  [v8 locationInView:v10];
  if ([v10 canBeginDragWithTouchAtPoint:?])
  {
    v11 = [(ConversationViewControllerBase *)self _dragItemsForItemAtIndexPath:v9];
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

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v10 = a3;
  v11 = a5;
  v12 = [v10 cellForItemAtIndexPath:v11];
  [v10 convertPoint:v12 toView:{x, y}];
  if ([v12 canBeginDragWithTouchAtPoint:?])
  {
    v13 = [(ConversationViewControllerBase *)self _dragItemsForItemAtIndexPath:v11];
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

- (int64_t)_dataOwnerForDragSessionAtIndexPath:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _dataOwnerForDragSessionAtIndexPath:]", "ConversationViewControllerBase.m", 2226, "0");
}

- (id)_dragItemsForItemAtIndexPath:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _dragItemsForItemAtIndexPath:]", "ConversationViewControllerBase.m", 2230, "0");
}

- (void)messageViewController:(id)a3 didFinishRenderingWithHeight:(double)a4
{
  v94 = a3;
  v6 = [v94 parentViewController];

  v7 = [(ConversationViewControllerBase *)self _indexPathOfMessageViewControllerMessage:v94];
  if (v7 && v6 == self)
  {
    v95 = [(ConversationViewControllerBase *)self collectionView];
    [v95 mui_sortedIndexPathsForVisibleItems];
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_10008E14C;
    v106[3] = &unk_10064E370;
    rect_16 = v106[4] = self;
    rect_8 = [rect_16 ef_map:v106];
    rect_24 = [v95 cellForItemAtIndexPath:v7];
    v8 = [(ConversationViewControllerBase *)self cellConfigurator];
    v9 = [v8 updateSemiExpandedToFullyExpandedIfNecessaryAtIndexPath:v7 renderedHeight:a4];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ConversationViewControllerBase *)self _hideSeeMoreButtonForCell:rect_24];
      }
    }

    v93 = [(ConversationViewControllerBase *)self messageItemIDAtIndexPath:v7];
    [v95 mf_visibleBounds];
    rect = v10;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(ConversationViewControllerBase *)self cellConfigurator];
    [v17 sizeForItemAtIndexPath:v7];
    v19 = v18;

    [(ConversationViewControllerBase *)self _minimumItemHeight];
    v21 = v20;
    v22 = ceil(a4);
    if (v21 >= v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }

    v24 = [(ConversationViewControllerBase *)self cellConfigurator];
    v25 = [v24 sizeTracker];
    v26 = [(ConversationViewControllerBase *)self collectionView];
    [v26 frame];
    [v25 setIntrinsicSize:v93 forCellWithItemID:{v27, v23}];

    v28 = [(ConversationViewControllerBase *)self cellConfigurator];
    v29 = [v28 sizeTracker];
    [v29 displaySizeForCellWithItemID:v93];
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
        v111 = a4;
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
      v51 = [(ConversationViewControllerBase *)self pinnedItemOnHeightChange];
      if (!v51)
      {
LABEL_63:

        v87 = [v95 cellForItemAtIndexPath:v7];
        [(ConversationViewControllerBase *)self _updateFooterViewFrameForCell:v87];

        goto LABEL_64;
      }

      v88 = v51;
      [(ConversationViewControllerBase *)self setPinnedItem:v51];
      [(ConversationViewControllerBase *)self setPinnedItemOnHeightChange:0];
      v52 = +[ConversationViewController log];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = [(ConversationViewControllerBase *)self pinnedItem];
        *buf = 138543362;
        v109 = *&v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Rendered Height is now equal. Restore pinnedItem:%{public}@", buf, 0xCu);
      }
    }

    else
    {
      v35 = [(ConversationViewControllerBase *)self resizingState];
      if (v35 != 3)
      {
        v36 = [(ConversationViewControllerBase *)self _currentSizeMetadataKey];
        v37 = [NSString stringWithFormat:@"%@_%@", v93, v36];

        v38 = [NSNumber numberWithDouble:v31];
        v39 = [(ConversationViewControllerBase *)self cellHeightCache];
        [v39 setObject:v38 forKeyedSubscript:v37];
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
        v45 = [v94 contentRequest];
        v46 = [v45 messageFuture];
        v47 = [v46 resultIfAvailable];
        v48 = [v47 ef_publicDescription];
        *buf = 138414338;
        v109 = *&v88;
        v110 = 2048;
        v111 = v43;
        v112 = 2048;
        v113 = v44;
        v114 = 2048;
        v115 = v19;
        v116 = 2048;
        v117 = v31;
        v118 = 2048;
        v119 = v31 - v19;
        v120 = 2048;
        v121 = a4;
        v122 = 2048;
        v123 = v21;
        v124 = 2112;
        v125 = v48;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Height changed for %@ cell at {%ld, %ld} (%g->%g, delta=%g, renderedHeight=%g, minimumHeight=%g) for message: %@", buf, 0x5Cu);
      }

      if (v35 == 3)
      {
        v49 = 0;
        v50 = v31 - v19;
      }

      else
      {
        [(ConversationViewControllerBase *)self pinnedItem];
        v54 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v55 = [*&v54 dynamicOffset];

        if (v55)
        {
          v56 = [*&v54 dynamicOffset];
          [v95 mf_cellOffsetByApplyingDynamicOffset:v56 cellHeight:v19];
          v58 = v57;

          v59 = [*&v54 dynamicOffset];
          [v95 mf_cellOffsetByApplyingDynamicOffset:v59 cellHeight:v31];
          v61 = v60;

          v62 = +[ConversationViewController log];
          v50 = v61 - v58;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v109 = v50;
            v110 = 2114;
            v111 = v54;
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
                v68 = [v67 second];
                [v68 frame];
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

              v70 = [v67 first];

              if (v70)
              {
                goto LABEL_47;
              }
            }

            else
            {
LABEL_44:
            }

            v71 = [v63 firstObject];
            v70 = [v71 first];

LABEL_47:
            v72 = [v7 compare:v70];
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
              v78 = COERCE_DOUBLE([v70 section]);
              v79 = COERCE_DOUBLE([v70 row]);
              *buf = 138413570;
              v109 = *&v74;
              v110 = 2048;
              v111 = v31 - v19;
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
      v99 = v95;
      v84 = objc_retainBlock(v96);
      v85 = [(ConversationViewControllerBase *)self cellConfigurator];
      v86 = [v85 animatePendingHeightChangesIfNecessary];

      if ((v86 & 1) == 0)
      {
        (v84[2])(v84);
      }
    }

    v51 = v88;
    goto LABEL_63;
  }

LABEL_64:
}

- (void)messageViewControllerDidFinishFirstPaint:(id)a3
{
  if (![(ConversationViewControllerBase *)self didCompleteFirstPaint])
  {
    [(ConversationViewControllerBase *)self setDidCompleteFirstPaint:1];
  }

  v6 = [(ConversationViewControllerBase *)self collectionView];
  if ([(ConversationViewControllerBase *)self _scrollViewIsScrolledToEnd:?])
  {
    v4 = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];

    if (v4)
    {
      [(ConversationViewControllerBase *)self _scrolledToEndOfSingleMessage];
    }
  }

  else
  {
  }

  v7 = +[UIApplication sharedApplication];
  v5 = [v7 isTesting];

  if (v5)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"MFMailConversationViewDidShow" object:self];
  }
}

- (void)messageViewControllerDidDisplayContent:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 contentRequest];
  v8 = [v7 message];

  [(ConversationViewControllerBase *)self scheduleAutomaticMarkAsReadForMessage:v8];
  v9 = [(ConversationViewControllerBase *)self mailboxRepository];
  [v9 recordFrecencyEventWithMailboxesOfMessage:v8];

  if ([UIApp launchedToTest])
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"MFMailConversationViewChildMessageViewDidDisplayContent" object:v6];
  }

  if (v4)
  {
    v11 = [(ConversationViewControllerBase *)self blankConversationController];
    [v11 conversationViewWebViewDidLoadMessage];
  }

  [(ConversationViewControllerBase *)self _updateFooterViewFrameForVisibleCells];
  [(ConversationViewControllerBase *)self _messageViewControllerDidDisplayContent:v6];
  v12 = [(ConversationViewControllerBase *)self referenceMessageListItem];
  v13 = [v12 itemID];

  v14 = MFMessageSelectionLifecycleSignpostLog();
  v15 = os_signpost_id_make_with_pointer(v14, v13);

  v16 = MFMessageSelectionLifecycleSignpostLog();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = @"failed to display";
    if (v4)
    {
      v18 = @"successfully displayed";
    }

    v19 = 138412546;
    v20 = v18;
    v21 = 2112;
    v22 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v15, "Message selection lifecycle", "Message view controller %@ message with itemID: %@", &v19, 0x16u);
  }
}

- (void)messageViewController:(id)a3 didStartDownloadForContentItemWithProgress:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase messageViewController:didStartDownloadForContentItemWithProgress:]", "ConversationViewControllerBase.m", 2418, "0");
}

- (void)messageViewController:(id)a3 didTapShowMoreAtCollapsedOffset:(CGPoint)a4 expandedOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v10 = a3;
  [(ConversationViewControllerBase *)self setPinnedItem:0];
  [(ConversationViewControllerBase *)self _showSingleMessage:v10 animationOffset:v8 initialScrollOffset:v7, x, y];
}

- (void)messageViewController:(id)a3 didTapRevealActionsButton:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase messageViewController:didTapRevealActionsButton:]", "ConversationViewControllerBase.m", 2427, "0");
}

- (void)messageViewController:(id)a3 didTapUndoSendButton:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase messageViewController:didTapUndoSendButton:]", "ConversationViewControllerBase.m", 2431, "0");
}

- (id)_visibleIndexPathForMessageViewController:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _visibleIndexPathForMessageViewController:]", "ConversationViewControllerBase.m", 2439, "0");
}

- (void)messageViewControllerDidTapAddressAtom:(id)a3 contactViewController:(id)a4
{
  v7 = a3;
  v6 = a4;
  [v6 setDelegate:self];
  [v7 bounds];
  [(ConversationViewControllerBase *)self _showModalViewController:v6 fromView:v7 sourceRect:1 animated:?];
}

- (void)messageViewController:(id)a3 didChangeSelectedHTML:(id)a4
{
  v12 = a3;
  v6 = a4;
  textSelectionScrollHandler = self->_textSelectionScrollHandler;
  if (!textSelectionScrollHandler)
  {
    v8 = [MFTextSelectionScrollHandler alloc];
    v9 = [(ConversationViewControllerBase *)self collectionView];
    v10 = [(MFTextSelectionScrollHandler *)v8 initWithScrollView:v9];
    v11 = self->_textSelectionScrollHandler;
    self->_textSelectionScrollHandler = v10;

    textSelectionScrollHandler = self->_textSelectionScrollHandler;
  }

  [(MFTextSelectionScrollHandler *)textSelectionScrollHandler handleTextSelectionChanged:v6];
}

- (id)messageViewController:(id)a3 displayNameForEmailAddress:(id)a4 abbreviated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(ConversationViewControllerBase *)self contactStore];
  v9 = [v8 displayNameForEmailAddress:v7 abbreviated:v5];

  return v9;
}

- (void)contactCardInteractions:(id)a3 triggerSearchForDisplayName:(id)a4 emailAddresses:(id)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008ECB8;
  v6[3] = &unk_10064C660;
  v7 = self;
  v8 = a5;
  v5 = v8;
  [(ConversationViewControllerBase *)v7 dismissViewControllerAnimated:1 completion:v6];
}

- (void)messageViewController:(id)a3 webViewDidTerminateWithReason:(int64_t)a4
{
  v7 = [(ConversationViewControllerBase *)self scene];
  v6 = [v7 activationState];

  v8 = [(ConversationViewControllerBase *)self blankConversationController];
  [v8 conversationViewWebViewCrashedWithReason:a4 isBackgrounded:v6 == 2];
}

- (id)hostScrollViewForConversationHeaderView:(id)a3
{
  v3 = [(ConversationViewControllerBase *)self collectionView];

  return v3;
}

- (double)stickySubjectViewMaxYForConversationHeaderView:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase stickySubjectViewMaxYForConversationHeaderView:]", "ConversationViewControllerBase.m", 2509, "0");
}

- (double)stickySubjectViewFirstBaselineForConversationHeaderView:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase stickySubjectViewFirstBaselineForConversationHeaderView:]", "ConversationViewControllerBase.m", 2513, "0");
}

- (BOOL)_scrollViewIsScrolledToEnd:(id)a3
{
  v3 = a3;
  [v3 contentSize];
  if (v4 <= 1.0)
  {
    v10 = 0;
  }

  else
  {
    [v3 contentOffset];
    v6 = v5;
    [v3 bounds];
    v8 = v7;
    [v3 contentSize];
    v10 = (v6 + v8) / v9 >= 0.85;
  }

  return v10;
}

- (id)indexSetForRowsFromIndexPaths:(id)a3 section:(int64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableIndexSet indexSet];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5;
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
        if ([v11 section] == a4)
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

- (BOOL)_shouldAutomaticallyCollapseQuotedContentForCellAtIndexPath:(id)a3
{
  v4 = a3;
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
      v6 = [(ConversationViewControllerBase *)self countOfMessages];
      v7 = [(ConversationViewControllerBase *)self countOfSummaries]+ v6;
    }

    else
    {
      v7 = [(ConversationViewControllerBase *)self countOfMessages];
    }

    v8 = v7 - 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = [v4 row] != v8;

  return v9;
}

- (id)_nextMessageIndexWithDirection:(int)a3
{
  v3 = *&a3;
  v5 = [(ConversationViewControllerBase *)self _currentlyVisibleIndexPath];
  v6 = [(ConversationViewControllerBase *)self _nextIndexPathToSelectFromIndexPath:v5 withDirection:v3];

  return v6;
}

- (id)_nextIndexPathToSelectFromIndexPath:(id)a3 withDirection:(int)a4
{
  v6 = [a3 row];
  if (a4 == -1)
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
  v3 = [(ConversationViewControllerBase *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  if ([(ConversationViewControllerBase *)self conversationSortOrder]== 1)
  {
    [v4 lastObject];
  }

  else
  {
    [v4 firstObject];
  }
  v5 = ;

  return v5;
}

- (void)_hideRemovedSingleMessageCellIfInRemovedIndexPaths:(id)a3
{
  v14 = a3;
  v4 = [(ConversationViewControllerBase *)self removedSingleMessageIndexPath];
  if (v4)
  {
    v5 = [(ConversationViewControllerBase *)self removedSingleMessageIndexPath];
    v6 = [v14 containsObject:v5];

    if (v6)
    {
      v7 = [(ConversationViewControllerBase *)self collectionView];
      v8 = [v7 indexPathsForVisibleItems];
      v9 = [(ConversationViewControllerBase *)self removedSingleMessageIndexPath];
      v10 = [v8 containsObject:v9];

      if (v10)
      {
        v11 = [(ConversationViewControllerBase *)self collectionView];
        v12 = [(ConversationViewControllerBase *)self removedSingleMessageIndexPath];
        v13 = [v11 cellForItemAtIndexPath:v12];

        [v13 setAlpha:0.0];
      }

      [(ConversationViewControllerBase *)self setRemovedSingleMessageIndexPath:0];
    }
  }
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(ConversationViewControllerBase *)self pinnedItem];
  v8 = [v7 indexPath];

  v9 = [(ConversationViewControllerBase *)self pinnedItem];
  v10 = [v9 dynamicOffset];

  if (v8 && v10)
  {
    v11 = [(ConversationViewControllerBase *)self collectionView];
    [v11 mf_contentOffsetApplyingDynamicOffset:v10 indexPath:v8];
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

- (id)transitionCoordinatorForKeyboardAvoidance:(id)a3
{
  v3 = [(ConversationViewControllerBase *)self transitionCoordinator];

  return v3;
}

- (void)_adjustForKeyboardAvoidanceOverlap:(double)a3
{
  if (_os_feature_enabled_impl() && [(ConversationViewControllerBase *)self isPerformingQuickReplySendAnimation])
  {
    if (self->_adjustmentForKeyboard != a3)
    {
      self->_adjustmentForKeyboard = a3;
    }

    return;
  }

  v76 = [(ConversationViewControllerBase *)self traitCollection];
  v5 = [v76 horizontalSizeClass];

  v77 = [(ConversationViewControllerBase *)self navigationController];
  v6 = [v77 toolbar];
  [v6 frame];
  v8 = v7;

  v9 = [(ConversationViewControllerBase *)self allowQuickReply];
  if (a3 > 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 & (v5 == 1)) != 0)
  {
    v11 = a3 - v8;
  }

  else
  {
    v11 = a3;
  }

  v75 = v11;
  if (v11 != self->_adjustmentForKeyboard)
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

    v28 = [(ConversationViewControllerBase *)self collectionView];
    [v28 frame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    if (v5 != 1 || v75 <= 0.0)
    {
      v37 = v29 - v75;
    }

    else
    {
      v37 = v29 - v75 - v73;
    }

    v38 = [(ConversationViewControllerBase *)self _quickReplyView];
    v39 = v38;
    if (v38)
    {
      [v38 frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v48 = [(ConversationViewControllerBase *)self view];
      [v48 convertRect:v28 fromView:{v41, v43, v45, v47}];
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
        [v28 contentOffset];
        v61 = v60;
        v63 = v62;
        [v28 contentSize];
        v65 = v64;
        [v28 bounds];
        v67 = v66;
        [v28 contentInset];
        v69 = v65 - v67 + v68;
        if (v59 + v63 < v69)
        {
          v69 = v59 + v63;
        }

        [v28 setContentOffset:{v61, v69}];
        v70 = +[ConversationViewController log];
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v80 = objc_opt_class();
          v81 = 2048;
          v82 = self;
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

- (void)_animateWithKeyboard:(id)a3 animations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v8 objectForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v6 userInfo];
  v13 = [v12 objectForKey:UIKeyboardAnimationCurveUserInfoKey];
  v14 = [v13 integerValue];

  v15 = [v6 userInfo];
  v16 = [v15 objectForKey:UIKeyboardFrameEndUserInfoKey];
  [v16 CGRectValue];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100090008;
  v27[3] = &unk_10064E3E8;
  v25 = v7;
  v29 = v18;
  v30 = v20;
  v31 = v22;
  v32 = v24;
  v27[4] = self;
  v28 = v25;
  v26 = [UIViewPropertyAnimator runningPropertyAnimatorWithDuration:v14 << 16 delay:v27 options:0 animations:v11 completion:0.0];
}

- (BOOL)canHandleAction:(SEL)a3 withMailMenuCommand:(id)a4
{
  v6 = [(ConversationViewControllerBase *)self _isConversationViewShortcut:a3, a4];
  if (v6)
  {

    LOBYTE(v6) = sub_100090084(self, a3);
  }

  return v6;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
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
  v12 = a3;
  v6 = a4;
  v10 = v6;
  if ([(ConversationViewControllerBase *)self _executeIfSplitViewIsAvailable:v9])
  {
    v7 = *(v14 + 24);
  }

  else
  {
    v7 = [(ConversationViewControllerBase *)self canHandleAction:a3 withMailMenuCommand:v6];
    *(v14 + 24) = v7;
  }

  _Block_object_dispose(&v13, 8);
  return v7 & 1;
}

- (BOOL)_isConversationViewShortcut:(SEL)a3
{
  if (sub_10012F5F0(MailSplitViewController, a3))
  {
    return 1;
  }

  return sub_10012F238(MailSplitViewController, a3);
}

- (void)_pageUpCommandInvoked:(id)a3
{
  v3 = [(ConversationViewControllerBase *)self collectionView];
  [v3 mf_pageUp];
}

- (void)_pageDownCommandInvoked:(id)a3
{
  v3 = [(ConversationViewControllerBase *)self collectionView];
  [v3 mf_pageDown];
}

- (void)_selectNextMessageCommandInvoked:(id)a3
{
  v4 = [(ConversationViewControllerBase *)self delegate];
  if ([v4 conversationViewController:self canAdvanceToNextConversationWithDirection:0xFFFFFFFFLL])
  {
    [v4 conversationViewController:self advanceToNextConversationWithDirection:0xFFFFFFFFLL];
  }
}

- (void)_selectPreviousMessageCommandInvoked:(id)a3
{
  v4 = [(ConversationViewControllerBase *)self delegate];
  if ([v4 conversationViewController:self canAdvanceToNextConversationWithDirection:1])
  {
    [v4 conversationViewController:self advanceToNextConversationWithDirection:1];
  }
}

- (BOOL)_shouldShowArrowsForDisplayMode:(int64_t)a3 collapsed:(BOOL)a4 withTraitCollection:(id)a5
{
  v8 = a5;
  if ([(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList]|| [(ConversationViewControllerBase *)self isStandalone]&& [(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
  {
LABEL_2:
    LOBYTE(v9) = 0;
    goto LABEL_8;
  }

  if (v8)
  {
    if (a4)
    {
LABEL_7:
      LOBYTE(v9) = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [(ConversationViewControllerBase *)self traitCollection];
    if (a4)
    {
      goto LABEL_7;
    }
  }

  v11 = [v8 horizontalSizeClass];
  LOBYTE(v9) = 1;
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 1 && v11 != 1)
  {
    if (a3 == 5)
    {
      v9 = MUISolariumFeatureEnabled() ^ 1;
      goto LABEL_8;
    }

    goto LABEL_2;
  }

LABEL_8:

  return v9;
}

- (void)_updateBarButtonsAnimated:(BOOL)a3 force:(BOOL)a4 isShowingTitle:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v9 = [(ConversationViewControllerBase *)self splitViewController];
  v12 = v9;
  if (v9)
  {
    v10 = [v9 displayMode];
    v11 = [v12 isCollapsed];
  }

  else
  {
    v11 = 1;
    v10 = 1;
  }

  [(ConversationViewControllerBase *)self _updateBarButtonsAnimated:v7 withDisplayMode:v10 withTraitCollection:0 collapsed:v11 force:v6 isShowingTitle:v5];
}

- (void)_removeNavigationBarFromSelf
{
  v3 = [(ConversationViewControllerBase *)self navigationItem];
  [v3 setLeftBarButtonItem:0];

  v4 = [(ConversationViewControllerBase *)self navigationItem];
  [v4 setCenterItemGroups:&__NSArray0__struct];

  v5 = [(ConversationViewControllerBase *)self navigationItem];
  [v5 setRightBarButtonItem:0];
}

- (BOOL)_shouldUseDesktopClassNavigationBarForTraitCollection:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = [UINavigationBar mf_shouldUseDesktopClassNavigationBarForTraitCollection:v4];
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

- (void)_updateBarButtonsAnimated:(BOOL)a3 withDisplayMode:(int64_t)a4 withTraitCollection:(id)a5 collapsed:(BOOL)a6 force:(BOOL)a7 isShowingTitle:(BOOL)a8
{
  v46 = a8;
  v47 = a3;
  v8 = a7;
  v9 = a6;
  v12 = a5;
  v13 = [(ConversationViewControllerBase *)self barItemsManager];
  v14 = [(ConversationViewControllerBase *)self _shouldArchiveByDefault];
  if (v14 != [v13 useArchiveButton])
  {
    [v13 setUseArchiveButton:v14];
    v8 = 1;
  }

  v15 = [(ConversationViewControllerBase *)self _shouldShowArrowsForDisplayMode:a4 collapsed:v9 withTraitCollection:v12];
  if (v15 != [v13 showNavigationArrows])
  {
    [v13 setShowNavigationArrows:v15];
    v8 = 1;
  }

  v16 = sub_100090924(self);
  v17 = v16;
  if (!v12)
  {
    v12 = [(ConversationViewControllerBase *)v16 traitCollection];
  }

  if (v17 != self)
  {
    [(ConversationViewControllerBase *)self _removeNavigationBarFromSelf];
  }

  v18 = [(ConversationViewControllerBase *)self _shouldUseDesktopClassNavigationBarForTraitCollection:v12];
  v19 = v8 | v18 ^ [v13 useDesktopClassNavigationBar];
  if (v19 != 1 || ([v13 setUseDesktopClassNavigationBar:v18], -[ConversationViewControllerBase navigationController](v17, "navigationController"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "navigationBar"), v21 = objc_claimAutoreleasedReturnValue(), -[ConversationViewControllerBase navigationItem](v17, "navigationItem"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "configureNavigationBar:navigationItem:", v21, v22), v22, v21, v20, !v18))
  {
    v25 = [v12 mf_hasCompactDimension];
    if (((self->_defaultBarButtons != 0) & ~v19) == 0)
    {
      v26 = [(ConversationViewControllerBase *)self _defaultBarButtonItems];
      defaultBarButtons = self->_defaultBarButtons;
      self->_defaultBarButtons = v26;
    }

    flags = self->_flags;
    if ((v25 & *&flags) == 1)
    {
      v29 = [(ConversationViewControllerBase *)self toolbarItems];
      v30 = v29 == 0;
    }

    else
    {
      v30 = v25 ^ *&flags;
    }

    v31 = [(ConversationViewControllerBase *)v17 navigationController];
    [v31 setNavigationBarHidden:0 animated:v47];

    v32 = [(ConversationViewControllerBase *)v17 navigationItem];
    if (((v19 | v30) & 1) == 0)
    {
      goto LABEL_48;
    }

    *&self->_flags = *&self->_flags & 0xFE | v25;
    v33 = objc_opt_new();
    if ((*&self->_flags & 1) == 0)
    {
      [(ConversationViewControllerBase *)v17 setToolbarItems:0 animated:v47];
      if ([(ConversationViewControllerBase *)self isPrimary])
      {
        if ([v33 count])
        {
          v34 = [v13 leftSpaceItem];
          [v33 addObject:v34];
        }

        if (v15)
        {
          if (MUISolariumFeatureEnabled())
          {
            v35 = [v13 arrowControlsButtonItems];
            [v33 addObjectsFromArray:v35];
          }

          else
          {
            v35 = [v13 arrowControlsButtonItem];
            [v33 addObject:v35];
          }
        }
      }

      v40 = [(ConversationViewControllerBase *)self _defaultBarButtonsWithFlexibleSpacing:0 reverseOrder:1];
      v41 = [v40 mutableCopy];

      [v32 setRightBarButtonItems:v41 animated:v47];
      goto LABEL_37;
    }

    if (v15)
    {
      if (MUISolariumFeatureEnabled())
      {
        v36 = [v13 arrowControlsButtonItems];
LABEL_33:
        [v32 setRightBarButtonItems:v36 animated:v47];
        v39 = [(ConversationViewControllerBase *)self _defaultBarButtonsWithFlexibleSpacing:1 reverseOrder:0];
        [(ConversationViewControllerBase *)v17 setToolbarItems:v39 animated:v47];

LABEL_37:
        if ([v33 count])
        {
          v42 = [v32 leftBarButtonItems];
          v43 = [v33 isEqual:v42];

          if ((v43 & 1) == 0)
          {
            [v32 setLeftBarButtonItems:v33 animated:v47];
          }

          [v32 setLeftItemsSupplementBackButton:1];
        }

        else
        {
          [v32 setLeftBarButtonItems:0 animated:v47];
        }

        if ([(ConversationViewControllerBase *)self shouldAddDoneButtonForConversationNavigationBarItemsManager:v13])
        {
          v44 = [v13 doneButtonItem];
          v48 = v44;
          v45 = [NSArray arrayWithObjects:&v48 count:1];

          if (*&self->_flags)
          {
            [v32 setRightBarButtonItems:v45 animated:v47];
            [v32 setHidesBackButton:1 animated:v47];
          }

          else
          {
            [v32 setLeftBarButtonItems:v45 animated:v47];
            [v32 setLeftItemsSupplementBackButton:0];
          }
        }

LABEL_48:
        [(ConversationViewControllerBase *)self _updateBarButtonsEnabled];

        goto LABEL_49;
      }

      v37 = [v13 arrowControlsButtonItem];
      v50 = v37;
      v38 = [NSArray arrayWithObjects:&v50 count:1];
    }

    else
    {
      if (![(ConversationViewControllerBase *)self isShowingGroupedSenderMessageList])
      {
        v36 = 0;
        goto LABEL_33;
      }

      v37 = [v13 groupedSenderActionsButtonItem];
      v49 = v37;
      v38 = [NSArray arrayWithObjects:&v49 count:1];
    }

    v36 = v38;

    goto LABEL_33;
  }

  [(ConversationViewControllerBase *)v17 setToolbarItems:0 animated:v47];
  v23 = [(ConversationViewControllerBase *)v17 navigationController];
  [v23 setNavigationBarHidden:0 animated:v47];

  v24 = [(ConversationViewControllerBase *)v17 navigationItem];
  [v13 configureDesktopClassButtonsFor:v24 isPrimary:-[ConversationViewControllerBase isPrimary](self isShowingTitle:"isPrimary") animated:{v46, v47}];

  [(ConversationViewControllerBase *)self _updateBarButtonsEnabled];
LABEL_49:
}

- (id)_defaultBarButtonItems
{
  v2 = self;
  v3 = [(ConversationViewControllerBase *)self barItemsManager];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [v3 destructiveButtonItem];
  v14[0] = v5;
  v6 = [v3 moveButtonItem];
  v14[1] = v6;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  [v4 addObjectsFromArray:v7];

  v8 = [(ConversationViewControllerBase *)v2 traitCollection];
  LODWORD(v2) = [v8 mf_hasCompactDimension];

  if (v2)
  {
    v9 = [v3 revealActionsButtonItem];
    [v4 addObject:v9];
  }

  v10 = [v3 composeButtonItem];

  if (v10)
  {
    v11 = [v3 composeButtonItem];
    [v4 addObject:v11];
  }

  v12 = [v4 copy];

  return v12;
}

- (void)setDoneButton:(id)a3
{
  v5 = a3;
  v4 = [(ConversationViewControllerBase *)self barItemsManager];
  [v4 setDoneButton:v5];
}

- (UIBarButtonItem)doneButton
{
  v2 = [(ConversationViewControllerBase *)self barItemsManager];
  v3 = [v2 doneButton];

  return v3;
}

- (void)done:(id)a3
{
  v9 = [(ConversationViewControllerBase *)self delegate];
  v4 = [(ConversationViewControllerBase *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 firstObject];

  if (v6 == self)
  {
    if (objc_opt_respondsToSelector())
    {
      [v9 conversationViewControllerWantsDismissal:self];
    }
  }

  else
  {
    v7 = [(ConversationViewControllerBase *)self navigationController];
    v8 = [v7 popViewControllerAnimated:1];
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

- (id)_defaultBarButtonsWithFlexibleSpacing:(BOOL)a3 reverseOrder:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = +[NSMutableArray array];
  if (v5)
  {
    [(ConversationViewControllerBase *)self _flexibleSpaceBarButton];
  }

  else
  {
    [(ConversationViewControllerBase *)self _fixedSpaceBarButton];
  }
  v8 = ;
  if (v4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(ConversationViewControllerBase *)self barItemsManager];
  v11 = [v10 composeButtonItem];

  v12 = MUISolariumFeatureEnabled();
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    v14 = [(NSArray *)self->_defaultBarButtons indexOfObject:v11];
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
  v29 = v4;
  v27 = v14;
  v17 = v7;
  v24 = v17;
  v18 = v8;
  v25 = v18;
  v26 = self;
  [(NSArray *)defaultBarButtons enumerateObjectsWithOptions:v9 usingBlock:v23];
  if (v5 && [(ConversationViewControllerBase *)self shouldHideStickyFooterView])
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

- (void)revealActionsButtonTapped:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase revealActionsButtonTapped:]", "ConversationViewControllerBase.m", 3145, "0");
}

- (void)replyButtonTapped:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase replyButtonTapped:]", "ConversationViewControllerBase.m", 3149, "0");
}

- (void)replyAllButtonTapped:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase replyAllButtonTapped:]", "ConversationViewControllerBase.m", 3153, "0");
}

- (void)forwardButtonTapped:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase forwardButtonTapped:]", "ConversationViewControllerBase.m", 3157, "0");
}

- (id)supplementaryButtonItemForConversationNavigationBarItemsManager:(id)a3
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

- (BOOL)shouldAddDoneButtonForConversationNavigationBarItemsManager:(id)a3
{
  if (+[UIDevice mf_isPadIdiom]&& ![(ConversationViewControllerBase *)self isPrimary]&& ![(ConversationViewControllerBase *)self shownAsConversation])
  {
    return 1;
  }

  v4 = [(ConversationViewControllerBase *)self doneButton];
  v5 = v4 != 0;

  return v5;
}

- (void)navigateToMessageInDirection:(int)a3
{
  v3 = *&a3;
  if ([(ConversationViewControllerBase *)self _canBrowseInDirection:?])
  {

    [(ConversationViewControllerBase *)self _navigateToMessageInDirection:v3];
  }
}

- (void)_navigateToMessageInDirection:(int)a3
{
  v3 = *&a3;
  v5 = [(ConversationViewControllerBase *)self _nextMessageIndexWithDirection:?];
  v10 = v5;
  if (v5)
  {
    *&self->_flags &= ~2u;
    [(ConversationViewControllerBase *)self _scrollToItemAtIndexPath:v5 dynamicOffset:0 shouldAdjustToShowPreviousMessage:1 animated:1 pin:1 completion:0];
  }

  else
  {
    v6 = [(ConversationViewControllerBase *)self _isDisplayingSingleMessage];
    flags = self->_flags;
    if ((v6 | ((flags & 2) >> 1)) == 1)
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

- (BOOL)_canBrowseInDirection:(int)a3
{
  v3 = *&a3;
  v5 = [(ConversationViewControllerBase *)self referenceMessageListItem];

  if (!v5)
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
    v10 = [(ConversationViewControllerBase *)self barItemsManager];
    v4 = [v10 upArrowBarButtonItem];
    [v4 setEnabled:v3];

    v5 = [(ConversationViewControllerBase *)self _canBrowseInDirection:1];
    v11 = [(ConversationViewControllerBase *)self barItemsManager];
    [v11 downArrowBarButtonItem];
  }

  else
  {
    v7 = [(ConversationViewControllerBase *)self barItemsManager];
    v11 = [v7 arrowControlsView];

    v8 = [(ConversationViewControllerBase *)self _canBrowseInDirection:0xFFFFFFFFLL];
    v9 = [v11 upButton];
    [v9 setEnabled:v8];

    v5 = [(ConversationViewControllerBase *)self _canBrowseInDirection:1];
    [v11 downButton];
  }
  v6 = ;
  [v6 setEnabled:v5];
}

- (void)_setNavigationBarTitleViewNeedsLayout
{
  v2 = [(ConversationViewControllerBase *)self conversationHeaderView];
  [v2 setNeedsLayout];
}

- (id)replyButtonItem
{
  v2 = [(ConversationViewControllerBase *)self barItemsManager];
  v3 = [v2 replyButtonItem];

  return v3;
}

- (id)deleteButtonItem
{
  v2 = [(ConversationViewControllerBase *)self barItemsManager];
  v3 = [v2 deleteButtonItem];

  return v3;
}

- (id)archiveButtonItem
{
  v2 = [(ConversationViewControllerBase *)self barItemsManager];
  v3 = [v2 archiveButtonItem];

  return v3;
}

- (id)moveButtonItem
{
  v2 = [(ConversationViewControllerBase *)self barItemsManager];
  v3 = [v2 moveButtonItem];

  return v3;
}

- (MFArrowControlsView)arrowControlsView
{
  arrowControlsView = self->_arrowControlsView;
  if (!arrowControlsView)
  {
    v4 = [(ConversationViewControllerBase *)self barItemsManager];
    v5 = [v4 arrowControlsView];
    v6 = self->_arrowControlsView;
    self->_arrowControlsView = v5;

    arrowControlsView = self->_arrowControlsView;
  }

  return arrowControlsView;
}

- (void)_showModalViewController:(id)a3 fromView:(id)a4 sourceRect:(CGRect)a5 animated:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v14 = a4;
  v22 = v13;
  objc_opt_class();
  v15 = v22;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [[UINavigationController alloc] initWithRootViewController:?];

    v15 = v16;
  }

  [v15 setModalPresentationStyle:7];
  v17 = [v15 popoverPresentationController];
  [v17 setPermittedArrowDirections:3];
  [v17 setSourceView:v14];
  [v17 setDelegate:self];
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
    [(ConversationViewControllerBase *)self _defaultSourceRectForView:v14];
    x = v18;
    y = v19;
    width = v20;
    height = v21;
  }

  [v17 setSourceRect:{x, y, width, height}];
  [(ConversationViewControllerBase *)self presentViewController:v15 animated:v6 completion:0];
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000927A0;
  v18 = &unk_10064E460;
  v10 = v8;
  v19 = v10;
  v22 = a4;
  v11 = v9;
  v20 = self;
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

- (CGRect)_defaultSourceRectForView:(id)a3
{
  v3 = a3;
  [v3 bounds];
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

- (void)_endEditingAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(ConversationViewControllerBase *)self conversationLayout];
  [v4 setSwipedIndexPath:0 animated:v3 completion:0];
}

- (void)presentPreviousDraftPicker
{
  v5 = [(ConversationViewControllerBase *)self scene];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(ConversationViewControllerBase *)self barItemsManager];
    v4 = [v3 composeButtonItem];
    [v5 performSelector:"composeButtonLongPressed:" withObject:v4];
  }
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v8 = a3;
  if (![(ConversationViewControllerBase *)self desiredContextualControllerPresentationStyle])
  {
    v5 = [(ConversationViewControllerBase *)self barItemsManager];
    v6 = [v5 contactLeftDoneButtonItem];
    v7 = [v8 navigationItem];
    [v7 setLeftBarButtonItem:v6];
  }
}

- (id)passthroughViews
{
  v3 = [NSMutableArray arrayWithCapacity:3];
  v4 = [(ConversationViewControllerBase *)self barItemsManager];
  v5 = [v4 replyButtonItem];
  v6 = [v5 view];

  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = +[NSUserDefaults em_userDefaults];
  if ([v7 BOOLForKey:ShowMessageDeleteConfirmationKey])
  {
    v8 = [(ConversationViewControllerBase *)self barItemsManager];
    v9 = [v8 deleteButtonItem];
    v10 = [v9 view];

    if (v10)
    {
      [v3 addObject:v10];
    }
  }

  else
  {

    v10 = v6;
  }

  return v3;
}

- (void)_updateConversationSortOrder
{
  v3 = [(ConversationViewControllerBase *)self _currentConversationSortOrderPreference];

  [(ConversationViewControllerBase *)self setConversationSortOrder:v3];
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

- (void)_splitViewStateChanged:(id)a3
{
  v5 = a3;
  v6 = [v5 object];
  v7 = [(ConversationViewControllerBase *)self splitViewController];

  if (v6 == v7)
  {
    v8 = [v5 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"MailSplitViewControllerNewDisplayModeKey"];
    v10 = [v8 objectForKeyedSubscript:@"MailSplitViewControllerNewTraitCollectionKey"];
    v11 = [v8 objectForKeyedSubscript:@"MailSplitViewControllerIsCollapsedKey"];
    v12 = v11;
    if (!v9 || !v11)
    {
      v16 = +[NSAssertionHandler currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"ConversationViewControllerBase.m" lineNumber:3446 description:{@"Notification is missing information:%@, %@", v9, v12}];
    }

    v13 = [v9 integerValue];
    v14 = [v12 BOOLValue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100092EA4;
    v17[3] = &unk_10064E488;
    v17[4] = self;
    v19 = v13;
    v15 = v10;
    v18 = v15;
    v20 = v14;
    [UIView performWithoutAnimation:v17];
  }
}

- (CGSize)defaultCellSizeForTracker:(id)a3
{
  v4 = [(ConversationViewControllerBase *)self collectionView];
  [v4 mf_visibleHeight];
  v6 = v5;

  if ([(ConversationViewControllerBase *)self _isDisplayingSingleMessage])
  {
    if (![(ConversationViewControllerBase *)self shouldHideStickyFooterView]|| (v7 = 0.0, MUISolariumFeatureEnabled()))
    {
      v8 = [(ConversationViewControllerBase *)self collectionView];
      [v8 contentInset];
      v7 = v9;
    }

    v10 = v6 + v7;
    if (+[UIDevice mf_isPadIdiom]&& (MUISolariumFeatureEnabled() & 1) == 0)
    {
      v11 = [(ConversationViewControllerBase *)self displayMetrics];
      [v11 estimatedFooterViewHeight];
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
  v3 = [(ConversationViewControllerBase *)self collectionView];
  [v3 mui_safeVisibleBounds];
  v4 = CGRectGetWidth(v6) + self->_horizontalPadding * -2.0;

  return v4;
}

- (double)quickReplyHeightForTracker:(id)a3
{
  [(ConversationViewControllerBase *)self quickReplyHeight];
  v5 = v4;
  [(ConversationViewControllerBase *)self _itemSpacing];
  return v5 + v6;
}

- (int64_t)conversationViewCellSizeTracker:(id)a3 expansionStatusForMessageWithItemID:(id)a4
{
  v5 = a4;
  v6 = [(ConversationViewControllerBase *)self cellConfigurator];
  v7 = [v6 expansionTracker];
  v8 = [v7 expansionStatusForCellWithItemID:v5];

  return v8;
}

- (double)defaultSemiExpandedHeightForTracker:(id)a3
{
  v3 = [(ConversationViewControllerBase *)self displayMetrics];
  [MFExpandedMessageCell defaultSemiExpandedHeightWithDisplayMetrics:v3];
  v5 = v4;

  return v5;
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v7 = [a3 presentedViewController];
  v8 = [v7 childViewControllers];

  if ([v8 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

      v14 = [v10 contentViewController];
      v15 = [v14 isEditing];

      if (v15)
      {
        goto LABEL_21;
      }

      if (a4 == -1)
      {
        v9 = [v10 navigationItem];
        [v9 setLeftBarButtonItem:0];
      }

      else
      {
        v9 = [v10 contact];
        if ([v9 isUnknown])
        {
          v16 = [(ConversationViewControllerBase *)self barItemsManager];
          v17 = [v16 contactLeftDoneButtonItem];
          v18 = [v10 navigationItem];
          [v18 setRightBarButtonItem:v17];
        }

        else
        {
          v16 = [(ConversationViewControllerBase *)self barItemsManager];
          v17 = [v16 contactLeftDoneButtonItem];
          v18 = [v10 navigationItem];
          [v18 setLeftBarButtonItem:v17];
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

- (void)_toggleCellsGroupOpacityDuringRotationWithCoordinator:(id)a3
{
  v4 = a3;
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
  [v4 animateAlongsideTransition:0 completion:v7];
}

- (void)_toggleCellGroupOpacityIfNeeded:(id)a3 displaying:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ((*&self->_flags & 0x80000000) != 0)
  {
    v8 = v6;
    v7 = [v6 layer];
    [v7 setAllowsGroupOpacity:!v4];

    v6 = v8;
  }
}

- (void)_beginResizingConversationView:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v26 = [(ConversationViewControllerBase *)self collectionView];
  if ([v26 numberOfSections])
  {
    v6 = [v26 numberOfItemsInSection:0] == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(ConversationViewControllerBase *)self splitViewController];
  v8 = [v7 displayMode];

  v10 = v8 != 2 && v8 != 4;
  if (!v10 && !v6)
  {
    [(ConversationViewControllerBase *)self prepareForResizing];
    [v26 frame];
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
      [v26 center];
      UIRectCenteredAboutPoint();
      v15 = v22;
      v16 = v23;
      width = v24;
      height = v25;
      [v26 setAutoresizingMask:5];
    }

    else
    {
      [v26 setAutoresizingMask:0];
    }

    [v26 setFrame:{v15, v16, width, height}];
    [(ConversationViewControllerBase *)self layoutMarginsForCollectionViewFrame:v15, v16, width, height];
    [v26 setDirectionalLayoutMargins:?];
    [(ConversationViewControllerBase *)self beginResizing];
  }
}

- (void)_endResizingConversationView
{
  v3 = [(ConversationViewControllerBase *)self collectionView];
  [v3 setAutoresizingMask:18];

  v4 = sub_10001F2A0(self);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(ConversationViewControllerBase *)self collectionView];
  [v11 setFrame:{v4, v6, v8, v10}];

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
    v10 = [(ConversationViewControllerBase *)self collectionView];
    [v10 setFrame:{v3, v5, v7, v9}];
  }

  v11 = [(ConversationViewControllerBase *)self conversationLayout];
  v12 = [v11 swipedIndexPath];

  if (!v12)
  {
    v13 = [(ConversationViewControllerBase *)self view];
    [v13 safeAreaInsets];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(ConversationViewControllerBase *)self displayMetrics];
    [v22 safeAreaInsets];
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
        v48 = [(ConversationViewControllerBase *)self collectionView];
        [v48 contentInset];
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

        v54 = [(ConversationViewControllerBase *)self collectionView];
        [v54 setContentInset:{v41, v43, v45, v47}];

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

    v29 = [(ConversationViewControllerBase *)self view];
    [v29 safeAreaInsets];
    v31 = v30;
    v33 = v32;
    v34 = [(ConversationViewControllerBase *)self displayMetrics];
    [v34 safeAreaInsets];
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
  v3 = [(ConversationViewControllerBase *)self traitCollection];
  v4 = [(ConversationViewControllerBase *)self collectionView];
  [v4 layoutMargins];
  v5 = [(ConversationViewControllerBase *)self messageDisplayMetricsForTraitCollection:v3 layoutMargins:?];
  [(ConversationViewControllerBase *)self setDisplayMetrics:v5];

  if (MUISolariumFeatureEnabled())
  {
    v6 = 6.0;
  }

  else
  {
    v6 = 24.0;
  }

  v7 = [(ConversationViewControllerBase *)self traitCollection];
  v8 = [v7 horizontalSizeClass];
  v9 = 0.0;
  if (v8 == 2)
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

- (id)messageDisplayMetricsForTraitCollection:(id)a3 layoutMargins:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v9 = a3;
  v10 = [(ConversationViewControllerBase *)self view];
  [v10 safeAreaInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(ConversationViewControllerBase *)self scene];
  v20 = +[MFMessageDisplayMetrics displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:](MFMessageDisplayMetrics, "displayMetricsWithTraitCollection:layoutMargins:safeAreaInsets:interfaceOrientation:", v9, [v19 interfaceOrientation], top, left, bottom, right, v12, v14, v16, v18);

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = [(ConversationViewControllerBase *)self displayMetrics];
  }

  v22 = v21;

  return v22;
}

- (void)setDisplayMetrics:(id)a3
{
  v7 = a3;
  if (([(MFMessageDisplayMetrics *)self->_displayMetrics isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayMetrics, a3);
    v5 = [(ConversationViewControllerBase *)self cellConfigurator];
    [v5 setDisplayMetrics:v7];

    v6 = [(ConversationViewControllerBase *)self conversationLayout];
    [v6 setDisplayMetrics:v7];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewControllerBase *)self cellExpansionRecognizer];

  if (v5 == v4)
  {
    v7 = [(ConversationViewControllerBase *)self collectionView];
    if ([v7 hasActiveDrag])
    {
LABEL_4:
      v6 = 0;
LABEL_8:

      goto LABEL_9;
    }

    v8 = [(ConversationViewControllerBase *)self collectionView];
    if ([v8 isDragging])
    {
      goto LABEL_6;
    }

    v10 = [(ConversationViewControllerBase *)self conversationLayout];
    v11 = [v10 swipedIndexPath];

    if (v11)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v12 = [(ConversationViewControllerBase *)self collectionView];
    [v4 locationInView:v12];
    v14 = v13;
    v16 = v15;

    v17 = [(ConversationViewControllerBase *)self collectionView];
    v7 = [v17 indexPathForItemAtPoint:{v14, v16}];

    if (!v7)
    {
      goto LABEL_4;
    }

    if (![(ConversationViewControllerBase *)self shouldShowExpandableDigestHeaderView]&& ![(ConversationViewControllerBase *)self shouldShowStaticDigestHeaderView])
    {
      goto LABEL_19;
    }

    v18 = [(ConversationViewControllerBase *)self view];
    [v4 locationInView:v18];
    v20 = v19;

    v21 = [(ConversationViewControllerBase *)self collectionView];
    [v21 frame];
    MinY = CGRectGetMinY(v58);
    v23 = [(ConversationViewControllerBase *)self collectionView];
    [v23 contentInset];
    v25 = MinY + v24;

    if (v25 > v20)
    {
      goto LABEL_4;
    }

    v26 = [(ConversationViewControllerBase *)self cellConfigurator];
    v27 = [v26 expansionStatusForMessageAtIndexPath:v7];

    if (v27 == 2)
    {
      v28 = [(ConversationViewControllerBase *)self collectionView];
      v8 = [v28 cellForItemAtIndexPath:v7];

      [v4 locationInView:v8];
      v54 = v30;
      v55 = v29;
      v31 = [v8 messageViewController];
      v32 = [v31 messageContentView];
      v33 = [v32 headerView];
      [v33 frame];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v42 = [v8 messageViewController];
      v43 = [v42 messageContentView];
      v44 = [v43 footerView];
      [v44 frame];
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
      v8 = [(ConversationViewControllerBase *)self cellConfigurator];
      v53 = [v8 messageAtIndexPathIsExpanded:v7];
    }

    v6 = v53 ^ 1;
    goto LABEL_7;
  }

  v6 = 1;
LABEL_9:

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = [(ConversationViewControllerBase *)self cellExpansionRecognizer];
  LOBYTE(self) = v6 == v5;

  return self;
}

- (void)_expansionRecognizerDidRecognize:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewControllerBase *)self collectionView];
  [v4 locationInView:v5];
  v8 = v6;
  v9 = v7;
  if (!qword_1006DCE40)
  {
    v10 = [v5 indexPathForItemAtPoint:{v6, v7}];
    v11 = qword_1006DCE40;
    qword_1006DCE40 = v10;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100094734;
  v18[3] = &unk_10064C570;
  v18[4] = self;
  v12 = objc_retainBlock(v18);
  v13 = [v5 indexPathForItemAtPoint:{v8, v9}];
  if ([v4 state] == 1)
  {
    objc_storeStrong(&qword_1006DCE40, v13);
    v14 = 1;
LABEL_13:
    (v12[2])(v12, v14);
    goto LABEL_14;
  }

  if ([v4 state] == 2)
  {
    v14 = [v13 isEqual:qword_1006DCE40];
    goto LABEL_13;
  }

  if ([v4 state] != 3)
  {
    if ([v4 state] != 4)
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

  v15 = [(ConversationViewControllerBase *)self collectionView];
  v16 = [v15 isDragging];

  if (v16)
  {
    goto LABEL_12;
  }

  [(ConversationViewControllerBase *)self setLastExpandedCellIndexPath:v13];
  [(ConversationViewControllerBase *)self setPinnedItem:0];
  v17 = [(ConversationViewControllerBase *)self cellConfigurator];
  [v17 expandCellAtIndexPath:v13 animated:1 highlightFirst:1 expansionStatus:3];

LABEL_14:
}

- (BOOL)_executeIfSplitViewIsAvailable:(id)a3
{
  v4 = a3;
  v5 = [(ConversationViewControllerBase *)self scene];
  v6 = [(ConversationViewControllerBase *)self isSplitViewAvailable];
  if (v6)
  {
    v7 = [v5 splitViewController];
    v4[2](v4, v7);
  }

  return v6;
}

- (BOOL)isSplitViewAvailable
{
  v2 = [(ConversationViewControllerBase *)self scene];
  v3 = [v2 conformsToProtocol:&OBJC_PROTOCOL___SplitLayoutCapable];

  return v3;
}

- (void)setDisableScrollPinning:(BOOL)a3
{
  self->_disableScrollPinning = a3;
  if (a3)
  {
    [(ConversationViewControllerBase *)self setPinnedItem:0];
  }
}

- (BOOL)shouldHideStickyFooterView
{
  v2 = self;
  v3 = [(ConversationViewControllerBase *)self traitCollection];
  LOBYTE(v2) = [(ConversationViewControllerBase *)v2 _shouldHideStickyFooterViewForTraitCollection:v3];

  return v2;
}

- (BOOL)_shouldHideStickyFooterViewForTraitCollection:(id)a3
{
  v3 = a3;
  if ([v3 mf_hasCompactDimension])
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

- (id)conversationSearchMessageListForConversationSearchHandler:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase conversationSearchMessageListForConversationSearchHandler:]", "ConversationViewControllerBase.m", 3856, "0");
}

- (id)conversationSearchHandler:(id)a3 contentRepresentationRequestForItemID:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase conversationSearchHandler:contentRepresentationRequestForItemID:]", "ConversationViewControllerBase.m", 3860, "0");
}

- (BOOL)conversationSearchHandler:(id)a3 shouldConsiderQuotedContentForItemID:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase conversationSearchHandler:shouldConsiderQuotedContentForItemID:]", "ConversationViewControllerBase.m", 3864, "0");
}

- (double)widthForConversationViewCellsForConversationSearchHandler:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase widthForConversationViewCellsForConversationSearchHandler:]", "ConversationViewControllerBase.m", 3868, "0");
}

- (id)_persistentIDForEMMessageObjectID:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase _persistentIDForEMMessageObjectID:]", "ConversationViewControllerBase.m", 3872, "0");
}

- (void)_updateAllowQuickReplyForMessageListItem:(id)a3
{
  v7 = a3;
  v4 = _os_feature_enabled_impl() ^ 1;
  if (!v7)
  {
    LOBYTE(v4) = 1;
  }

  if ((v4 & 1) != 0 || [(ConversationViewControllerBase *)self beingPreviewed])
  {
    goto LABEL_8;
  }

  v5 = [v7 sendLaterDate];
  if (v5)
  {

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if ([v7 isEditable])
  {
    goto LABEL_8;
  }

  [(ConversationViewControllerBase *)self _setupQuickReplySupplementaryViewProvider];
  v6 = 1;
LABEL_9:
  [(ConversationViewControllerBase *)self setAllowQuickReply:v6];
}

- (void)setDidCompleteFirstPaint:(BOOL)a3
{
  if (self->_didCompleteFirstPaint != a3)
  {
    self->_didCompleteFirstPaint = a3;
    if (a3)
    {
      [(ConversationViewControllerBase *)self _invalidateQuickReplyFooter];
    }
  }
}

- (void)showAllMessagesForConversationSenderHeaderView:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase showAllMessagesForConversationSenderHeaderView:]", "ConversationViewControllerBase.m", 3951, "0");
}

- (void)showCategoryMessagesForConversationSenderHeaderView:(id)a3
{
  v5 = a3;
  [(ConversationViewControllerBase *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[ConversationViewControllerBase showCategoryMessagesForConversationSenderHeaderView:]", "ConversationViewControllerBase.m", 3955, "0");
}

- (id)layoutInformationForConversationSenderHeaderViewAnimator:(id)a3
{
  v4 = [_TtC10MobileMail45ConversationSenderHeaderViewLayoutInformation alloc];
  v5 = [(ConversationViewControllerBase *)self scene];
  v6 = [v5 statusBarManager];
  [v6 statusBarFrame];
  v8 = v7;
  [(ConversationViewControllerBase *)self _itemSpacing];
  v10 = [(ConversationSenderHeaderViewLayoutInformation *)v4 initWithStatusBarHeight:v8 contentInset:v9];

  return v10;
}

- (id)_recategorizationTriageInteraction:(id)a3
{
  v5 = a3;
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