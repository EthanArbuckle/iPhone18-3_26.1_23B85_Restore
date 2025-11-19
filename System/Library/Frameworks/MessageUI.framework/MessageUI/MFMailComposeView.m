@interface MFMailComposeView
+ (OS_os_log)log;
- (BOOL)_presentsSearchResultsTableAsPopover;
- (BOOL)_shouldShowCorecipientsTableView;
- (BOOL)_userInterfaceConfigurationSupportsCorecipientsTableView;
- (BOOL)endEditing:(BOOL)a3;
- (BOOL)isBccFieldVisible;
- (BOOL)isKeyboardVisible;
- (BOOL)isSearchResultsPopoverVisible;
- (BOOL)presentSearchResults;
- (BOOL)presentSearchResults:(id)a3;
- (BOOL)shouldScrollLastChangedRecipientViewToTop;
- (CGPoint)_headerViewOriginWithScrollViewOffsetCalculation;
- (CGRect)_headerFrame;
- (CNAutocompleteResultsTableViewController)searchViewController;
- (ComposeViewNavigationBarDelegate)navigationBarDelegate;
- (MFComposeImageSizeView)imageSizeField;
- (MFMailComposeCoordinator)composeCoordinator;
- (MFMailComposeRecipientTextView)bccField;
- (MFMailComposeRecipientTextView)ccField;
- (MFMailComposeRecipientTextViewDelegate)composeRecipientDelegate;
- (MFMailComposeToFieldDelegate)toFieldDelegate;
- (MFMailComposeView)initWithFrame:(CGRect)a3 options:(unint64_t)a4 isQuickReply:(BOOL)a5;
- (MFMailComposeViewDelegate)composeViewDelegate;
- (UITableView)searchTableView;
- (UIViewController)popoverOwner;
- (double)_heightForBottomView;
- (double)_verticalPadding;
- (id)_focusedRecipientView;
- (id)dragSource:(id)a3 draggableItemsAtPoint:(CGPoint)a4;
- (id)dragSource:(id)a3 suggestedNameForDraggableItem:(id)a4;
- (id)dragSource:(id)a3 targetedPreviewForDraggableItem:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)sendingAccountProxyForComposeContactsSearchController:(id)a3;
- (id)sendingAddressForDropTarget:(id)a3 withTargetView:(id)a4;
- (int64_t)addressableGroupResultStyleForComposeContactsSearchController:(id)a3;
- (void)_adjustHeaderFieldsPreferredContentSize;
- (void)_adjustScrollerContentSize;
- (void)_adjustScrollerForBottomView;
- (void)_cancelAnimations;
- (void)_cancelDelayedPopover;
- (void)_collectKeyViews:(id)a3;
- (void)_createCCAndBCCFieldIfNeededAndCompleteSetup:(BOOL)a3;
- (void)_createImageSizeFieldIfNeededAndAddSubview:(BOOL)a3;
- (void)_displayMetricsDidChange;
- (void)_dropItems:(id)a3 recipientTextView:(id)a4;
- (void)_finishUpRotationToInterfaceOrientation:(int64_t)a3;
- (void)_layoutComposeHeaderViewsWithChangingHeader:(id)a3 toSize:(CGSize)a4 withPinFrame:(CGRect *)a5;
- (void)_layoutFindPanelHostView;
- (void)_layoutLoadingView;
- (void)_layoutSubviews:(BOOL)a3 changingView:(id)a4 toSize:(CGSize)a5 searchResultsWereDismissed:(BOOL)a6;
- (void)_layoutSubviewsWithActiveRecipientView:(BOOL)a3 changingView:(id)a4 toSize:(CGSize)a5;
- (void)_multiFieldClicked;
- (void)_performBlockWithStrongComposeCoordinator:(id)a3;
- (void)_presentDelayedPopover;
- (void)_setCorecipientsTableViewVisible:(BOOL)a3 withFieldFrame:(CGRect)a4;
- (void)_setDragging:(BOOL)a3;
- (void)_setHeaderFrame:(CGRect)a3;
- (void)_setShadowViewVisible:(BOOL)a3 frame:(CGRect)a4;
- (void)_setUpContentView;
- (void)_setupBodyFieldWithHeaderFrame:(CGFloat)a3 enclosingFrame:(CGFloat)a4 changingView:(CGFloat)a5 frameToPin:(uint64_t)a6 wasSearching:(void *)a7;
- (void)_setupField:(id)a3 withLabel:(id)a4 navTitle:(id)a5;
- (void)_updateFromField;
- (void)_updateKeyboardIntersection:(CGRect)a3;
- (void)_updateMultiField;
- (void)_updateOptionalHeaderVisibilityForceVisible:(BOOL)a3;
- (void)autocompleteResultsController:(id)a3 didAskToRemoveRecipient:(id)a4;
- (void)autocompleteResultsController:(id)a3 didRequestInfoAboutRecipient:(id)a4;
- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5;
- (void)automaticKeyboardFinishedAppearing:(id)a3;
- (void)automaticKeyboardFinishedDisappearing:(id)a3;
- (void)beginSearchForText:(id)a3 recipientView:(id)a4;
- (void)clearSearchForActiveRecipientView;
- (void)clearSearchForRecipientView:(id)a3 reflow:(BOOL)a4 clear:(BOOL)a5;
- (void)composeContactsSearchController:(id)a3 didFindCorecipients:(id)a4;
- (void)composeContactsSearchController:(id)a3 finishedWithResults:(BOOL)a4;
- (void)composeFromView:(id)a3 didSelectAddress:(id)a4;
- (void)composeHeaderViewClicked:(id)a3;
- (void)composeWebView:(id)a3 composeBodyIsEmpty:(BOOL)a4;
- (void)composeWebView:(id)a3 didChangeHeight:(double)a4;
- (void)composeWebView:(id)a3 hasActiveWritingToolsSession:(BOOL)a4;
- (void)composeWebViewTextChanged:(id)a3;
- (void)dealloc;
- (void)didAppear;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)disambiguateRecipient:(id)a3 recipientView:(id)a4;
- (void)dismissSearchResults;
- (void)dismissSearchResultsIfDisambiguating;
- (void)displayQuickReplyView:(BOOL)a3;
- (void)dropTarget:(id)a3 didDropDragItems:(id)a4 atPoint:(CGPoint)a5;
- (void)dropTarget:(id)a3 dragDidMoveToPoint:(CGPoint)a4;
- (void)dropTarget:(id)a3 dragEnteredAtPoint:(CGPoint)a4;
- (void)dropTargetDragExited:(id)a3;
- (void)findCorecipientsWithRecipientView:(id)a3;
- (void)focusFirstResponderAfterRecipientView:(id)a3;
- (void)focusFirstResponderBeforeRecipientView:(id)a3;
- (void)invalidateSearchResultRecipient:(id)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)menuDidHide;
- (void)parentDidClose;
- (void)parentWillClose;
- (void)removeFromSuperview;
- (void)resetContentSize;
- (void)restoreFirstResponder;
- (void)restoreFirstResponderWithKeyboardPinning:(BOOL)a3;
- (void)saveFirstResponderWithKeyboardPinning:(BOOL)a3;
- (void)scrollToRecipientTextView:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)searchResultsPopoverWasDismissed;
- (void)setAnimationDisabled:(BOOL)a3;
- (void)setAutoresizingMask:(unint64_t)a3;
- (void)setComposeRecipientDelegate:(id)a3;
- (void)setComposeViewDelegate:(id)a3;
- (void)setDisplayMetrics:(id)a3;
- (void)setIsForEditing:(BOOL)a3;
- (void)setKeyboardVisible:(BOOL)a3 animate:(BOOL)a4;
- (void)setLoading:(BOOL)a3;
- (void)setLoadingFromAddress:(BOOL)a3;
- (void)setQuickReply:(BOOL)a3;
- (void)setRecipientFieldsEditable:(BOOL)a3 animated:(BOOL)a4;
- (void)setReplyToHME:(BOOL)a3;
- (void)setSending:(BOOL)a3;
- (void)setShowingPeoplePicker:(BOOL)a3;
- (void)setToFieldDelegate:(id)a3;
- (void)toggleImageSizeFieldIfNecessary;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidBecomeFirstResponder:(id)a3;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation MFMailComposeView

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__MFMailComposeView_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_4 != -1)
  {
    dispatch_once(&log_onceToken_4, block);
  }

  v2 = log_log_4;

  return v2;
}

void __24__MFMailComposeView_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_4;
  log_log_4 = v1;
}

- (MFMailComposeView)initWithFrame:(CGRect)a3 options:(unint64_t)a4 isQuickReply:(BOOL)a5
{
  v5 = a5;
  width = a3.size.width;
  v37.receiver = self;
  v37.super_class = MFMailComposeView;
  v8 = [(UITransitionView *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v9 = v8;
  if (v8)
  {
    v8->_options = a4;
    if (v5)
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *(v8 + 777) = *(v8 + 777) & 0xBF | v10;
    [(UITransitionView *)v8 setDelegate:v8];
    [(MFMailComposeView *)v9 setAutoresizingMask:18];
    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    headerView = v9->_headerView;
    v9->_headerView = v11;

    [(UIView *)v9->_headerView setAutoresizingMask:2];
    [(UIView *)v9->_headerView setAutoresizesSubviews:0];
    v13 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIView *)v9->_headerView setBackgroundColor:v13];

    [(UIView *)v9->_headerView setInsetsLayoutMarginsFromSafeArea:0];
    [(UIView *)v9->_headerView setClipsToBounds:1];
    [objc_opt_class() preferredHeaderHeight];
    v15 = v14;
    v16 = [(CNComposeRecipientTextView *)[MFMailComposeToField alloc] initWithFrame:v9 dragDropDelegate:0.0, 0.0, width, v14];
    toField = v9->_toField;
    v9->_toField = v16;

    WeakRetained = objc_loadWeakRetained(&v9->_toFieldDelegate);
    [(MFMailComposeToField *)v9->_toField setToFieldDelegate:WeakRetained];

    v19 = v9->_toField;
    v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"TO" value:&stru_1F3CF3758 table:@"Main"];
    v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"To:" value:&stru_1F3CF3758 table:@"Main"];
    [(MFMailComposeView *)v9 _setupField:v19 withLabel:v21 navTitle:v23];

    [(MFMailComposeToField *)v9->_toField setAccessibilityIdentifier:*MEMORY[0x1E69ADBB8]];
    v24 = [[MFComposeFromView alloc] initWithFrame:0.0, 0.0, width, v15];
    fromField = v9->_fromField;
    v9->_fromField = v24;

    [(MFComposeFromView *)v9->_fromField setAutoresizingMask:2];
    [(MFComposeFromView *)v9->_fromField setDelegate:v9];
    [(MFMailComposeView *)v9 _addHoverEffectToField:v9->_fromField];
    v26 = [[MFComposeSubjectView alloc] initWithFrame:0.0, 0.0, width, v15];
    subjectField = v9->_subjectField;
    v9->_subjectField = v26;

    [(MFComposeSubjectView *)v9->_subjectField setAutoresizingMask:2];
    [(MFMailComposeView *)v9 _addHoverEffectToField:v9->_subjectField];
    v28 = [[MFComposeWebContentVariationView alloc] initWithFrame:0.0, 0.0, width, v15];
    webContentVariationField = v9->_webContentVariationField;
    v9->_webContentVariationField = v28;

    v30 = [[MFComposeMultiView alloc] initWithFrame:0.0, 0.0, width, v15];
    multiField = v9->_multiField;
    v9->_multiField = v30;

    [(MFComposeMultiView *)v9->_multiField setAutoresizingMask:2];
    [(MFComposeMultiView *)v9->_multiField setDelegate:v9];
    [(MFMailComposeView *)v9 _addHoverEffectToField:v9->_multiField];
    [(MFMailComposeView *)v9 _setUpContentView];
    [(MFMailComposeView *)v9 displayQuickReplyView:v5];
    [(UIScrollView *)v9->_bodyScroller setKeyboardDismissMode:2];
    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    [v32 addObserver:v9 selector:sel_menuDidHide name:*MEMORY[0x1E69DE0E0] object:0];

    v33 = [MEMORY[0x1E696AD88] defaultCenter];
    [v33 addObserver:v9 selector:sel_automaticKeyboardFinishedAppearing_ name:*MEMORY[0x1E69DDF78] object:0];

    v34 = [MEMORY[0x1E696AD88] defaultCenter];
    [v34 addObserver:v9 selector:sel_automaticKeyboardFinishedDisappearing_ name:*MEMORY[0x1E69DDF70] object:0];

    v35 = [MEMORY[0x1E696AD88] defaultCenter];
    [v35 addObserver:v9 selector:sel__adjustHeaderFieldsPreferredContentSize name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v9;
}

- (void)displayQuickReplyView:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(self + 777) = *(self + 777) & 0xBF | v3;
  if (!a3)
  {
    [(UIScrollView *)self->_bodyScroller addSubview:self->_headerView];
    [(UIView *)self->_headerView addSubview:self->_fromField];
    [(UIView *)self->_headerView addSubview:self->_subjectField];
    [(MFComposeSubjectView *)self->_subjectField setAccessibilityIdentifier:*MEMORY[0x1E69ADB98]];
    [(UIView *)self->_headerView addSubview:self->_webContentVariationField];
    [(UIView *)self->_headerView addSubview:self->_multiField];
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x1E69DCF80]);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __43__MFMailComposeView_displayQuickReplyView___block_invoke;
    v10 = &unk_1E806F828;
    objc_copyWeak(&v11, &location);
    v6 = [v5 initWithActivationHandler:&v7];
    [(MFComposeMultiView *)self->_multiField addInteraction:v6, v7, v8, v9, v10];
    [(MFComposeMultiView *)self->_multiField setScribbleDelegate:self];
    [(MFComposeMultiView *)self->_multiField setAccessibilityIdentifier:*MEMORY[0x1E69ADB20]];
    [(MFMailComposeView *)self _layoutSubviews:1];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __43__MFMailComposeView_displayQuickReplyView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _multiFieldClicked];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(MFMailComposeContactsSearchController *)self->_searchController cancelSearch];
  [(MFMailComposeContactsSearchController *)self->_searchController setDelegate:0];
  WeakRetained = objc_loadWeakRetained(&self->_pinningResponder);
  [WeakRetained _endPinningInputViews];

  [(MFComposeMultiView *)self->_multiField setDelegate:0];
  [(MFComposeWebView *)self->_webView _close];
  v5.receiver = self;
  v5.super_class = MFMailComposeView;
  [(MFMailComposeView *)&v5 dealloc];
}

- (void)_setUpContentView
{
  v19 = [(MFMailComposeView *)self _mainContainerView];
  v3 = [MFComposeWebView alloc];
  [(MFMailComposeView *)self _frameForMainContainerView];
  v8 = [(MFComposeWebView *)v3 initWithFrame:[(MFMailComposeView *)self isQuickReply] isQuickReply:v4, v5, v6, v7];
  webView = self->_webView;
  self->_webView = v8;

  objc_storeStrong(&self->_contentView, self->_webView);
  [(UIView *)self->_contentView setAutoresizingMask:18];
  if ([(MFMailComposeView *)self isQuickReply])
  {
    [MEMORY[0x1E69DC888] mailQuickComposeBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] mailGeneralBackgroundColor];
  }
  v10 = ;
  [(UIView *)self->_contentView setBackgroundColor:v10];

  [v19 addSubview:self->_contentView];
  [(MFComposeWebView *)self->_webView setComposeWebViewDelegate:self];
  [(MFComposeWebView *)self->_webView _setEditable:1];
  v11 = objc_alloc(MEMORY[0x1E69DD250]);
  v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  findPanelHostView = self->_findPanelHostView;
  self->_findPanelHostView = v12;

  v14 = self->_findPanelHostView;
  v15 = [(MFComposeWebView *)self->_webView findInteraction];
  [v15 _setHostView:v14];

  v16 = [(MFComposeWebView *)self->_webView scrollView];
  [v16 addSubview:self->_findPanelHostView];

  v17 = [(MFComposeWebView *)self->_webView scrollView];
  bodyScroller = self->_bodyScroller;
  self->_bodyScroller = v17;

  [(UIScrollView *)self->_bodyScroller setAutoresizingMask:18];
  [(UIScrollView *)self->_bodyScroller setDelegate:self];
  [(UIScrollView *)self->_bodyScroller setAlwaysBounceVertical:[(MFMailComposeView *)self isQuickReply]^ 1];
  [(UIScrollView *)self->_bodyScroller _setFirstResponderKeyboardAvoidanceEnabled:0];
  if ([(MFMailComposeView *)self isQuickReply])
  {
    [(UIScrollView *)self->_bodyScroller setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)self->_bodyScroller setScrollEnabled:0];
    [(UIScrollView *)self->_bodyScroller setBounces:0];
  }

  [(MFMailComposeView *)self _adjustContentViewStyle];
}

- (CGRect)_headerFrame
{
  [(UIView *)self->_headerView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self->_bodyScroller contentInset];
  v12 = v6 + v11;
  v13 = v4;
  v14 = v8;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (void)_setHeaderFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIScrollView *)self->_bodyScroller contentInset];
  [(UIScrollView *)self->_bodyScroller contentOffset];
  v9 = v8;
  v11 = v10;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v12 = CGRectGetHeight(v19);
  [(UIView *)self->_headerView frame];
  v13 = v12 - CGRectGetHeight(v20);
  findPanelHeight = self->_findPanelHeight;
  v15 = v11 - v13;
  if ([(MFMailComposeView *)self isQuickReply])
  {
    v15 = 0.0;
  }

  [(UIScrollView *)self->_bodyScroller setContentInset:?];
  [(UIScrollView *)self->_bodyScroller setContentOffset:v9, v15];
  [(UIScrollView *)self->_bodyScroller setContentOffset:v9, v15];
  headerView = self->_headerView;

  [(UIView *)headerView setFrame:x, -(height + findPanelHeight), width, height];
}

- (void)setComposeViewDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_mailComposeViewDelegate, obj);
    [(MFComposeWebView *)self->_webView setMailComposeViewDelegate:obj];
  }
}

- (void)setComposeRecipientDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_composeRecipientViewDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_composeRecipientViewDelegate, obj);
    [(MFMailComposeToField *)self->_toField setDelegate:obj];
    [(MFMailComposeRecipientTextView *)self->_ccField setDelegate:obj];
    [(MFMailComposeRecipientTextView *)self->_bccField setDelegate:obj];
  }
}

- (void)setToFieldDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_toFieldDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_toFieldDelegate, obj);
    [(MFMailComposeToField *)self->_toField setToFieldDelegate:obj];
  }
}

- (BOOL)_presentsSearchResultsTableAsPopover
{
  v2 = [(MFMailComposeView *)self traitCollection];
  v3 = [v2 mf_supportsPopoverPresentation];

  return v3;
}

- (CNAutocompleteResultsTableViewController)searchViewController
{
  searchViewController = self->_searchViewController;
  if (!searchViewController)
  {
    v4 = [objc_alloc(MEMORY[0x1E69963B8]) initWithStyle:1];
    v5 = self->_searchViewController;
    self->_searchViewController = v4;

    [(CNAutocompleteResultsTableViewController *)self->_searchViewController setDelegate:self];
    searchViewController = self->_searchViewController;
  }

  return searchViewController;
}

- (void)setDisplayMetrics:(id)a3
{
  v5 = a3;
  if (self->_displayMetrics != v5)
  {
    objc_storeStrong(&self->_displayMetrics, a3);
    [(MFMailComposeView *)self _displayMetricsDidChange];
  }
}

- (MFComposeImageSizeView)imageSizeField
{
  imageSizeField = self->_imageSizeField;
  if (!imageSizeField)
  {
    [(MFMailComposeView *)self _createImageSizeFieldIfNeededAndAddSubview:0];
    imageSizeField = self->_imageSizeField;
  }

  return imageSizeField;
}

- (MFMailComposeRecipientTextView)ccField
{
  ccField = self->_ccField;
  if (!ccField)
  {
    [(MFMailComposeView *)self _createCCAndBCCFieldIfNeededAndCompleteSetup:0];
    ccField = self->_ccField;
  }

  return ccField;
}

- (BOOL)isBccFieldVisible
{
  v2 = self->_bccField;
  [(MFMailComposeRecipientTextView *)v2 alpha];
  if (v3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(MFMailComposeRecipientTextView *)v2 superview];
    v5 = v4 != 0;
  }

  return v5;
}

- (MFMailComposeRecipientTextView)bccField
{
  bccField = self->_bccField;
  if (!bccField)
  {
    [(MFMailComposeView *)self _createCCAndBCCFieldIfNeededAndCompleteSetup:0];
    bccField = self->_bccField;
  }

  return bccField;
}

- (void)_cancelAnimations
{
  v3 = [MEMORY[0x1E69DC660] sharedAnimator];
  [v3 removeAnimationsForTarget:self->_toField];
  [v3 removeAnimationsForTarget:self->_ccField];
  [v3 removeAnimationsForTarget:self->_subjectField];
  [v3 removeAnimationsForTarget:self->_headerView];
  [v3 removeAnimationsForTarget:self->_bodyScroller];
}

- (void)resetContentSize
{
  [(MFMailComposeView *)self bounds];
  [(UIView *)self->_contentView setFrame:?];
  [(UIScrollView *)self->_bodyScroller setContentSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 24);
  [(MFMailComposeView *)self bounds];
  Width = CGRectGetWidth(v8);

  [(MFMailComposeView *)self _setHeaderFrame:v3, v4, Width, v5];
}

- (void)removeFromSuperview
{
  [(MFMailComposeView *)self _cancelAnimations];
  v3.receiver = self;
  v3.super_class = MFMailComposeView;
  [(MFMailComposeView *)&v3 removeFromSuperview];
}

- (void)_collectKeyViews:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFMailComposeView;
  [(MFMailComposeView *)&v9 _collectKeyViews:v4];
  if ([v4 count])
  {
    v5 = [(CNComposeRecipientTextView *)self->_toField textView];
    if (-[MFMailComposeView _presentsSearchResultsTableAsPopover](self, "_presentsSearchResultsTableAsPopover") && [v5 isFirstResponder])
    {
      v6 = self->_ccField;
      [(MFMailComposeRecipientTextView *)v6 alpha];
      if (v7 == 0.0)
      {

        goto LABEL_8;
      }

      v8 = [(MFMailComposeRecipientTextView *)v6 superview];

      if (!v8)
      {
LABEL_8:
        if ((*MEMORY[0x1E6996388] & 1) == 0)
        {
          [v4 insertObject:self->_ccField atIndex:{objc_msgSend(v4, "indexOfObject:", v5) + 1}];
        }
      }
    }
  }
}

- (void)composeHeaderViewClicked:(id)a3
{
  if (self->_multiField == a3)
  {
    [(MFMailComposeView *)self _multiFieldClicked];
  }
}

- (double)_verticalPadding
{
  [(MFMailComposeView *)self bounds];
  v4 = v3;
  v5 = [(MFMailComposeView *)self traitCollection];
  v6 = [v5 verticalSizeClass];

  v7 = v4 <= 768.0 || v6 == 1;
  result = 44.0;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

- (void)_setShadowViewVisible:(BOOL)a3 frame:(CGRect)a4
{
  shadowView = self->_shadowView;
  if (a3)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    if (shadowView)
    {
      [(UIView *)shadowView setAlpha:1.0];
      [(UIView *)self->_shadowView setFrame:x, y, width, height];
    }

    else
    {
      v10 = [[MFSearchShadowView alloc] initWithFrame:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
      v11 = self->_shadowView;
      self->_shadowView = &v10->super.super;

      [(UIView *)self->_shadowView setAutoresizingMask:2];
      [(UIView *)self->_shadowView setOpaque:0];
    }

    v12 = [(UIView *)self->_shadowView superview];

    bodyScroller = self->_bodyScroller;
    v14 = self->_shadowView;
    if (v12)
    {

      [(UIScrollView *)bodyScroller bringSubviewToFront:v14];
    }

    else
    {

      [(UIScrollView *)bodyScroller addSubview:v14];
    }
  }

  else
  {

    [(UIView *)shadowView removeFromSuperview:a4.origin.x];
  }
}

- (void)_layoutFindPanelHostView
{
  [(UIView *)self->_headerView frame];
  v4 = v3 + self->_findPanelHeight;
  [(UIScrollView *)self->_bodyScroller bounds];
  v6 = v5;
  [(UIScrollView *)self->_bodyScroller safeAreaInsets];
  v8 = v6 + v7;
  [(UIScrollView *)self->_bodyScroller contentInset];
  v10 = v9 - v4;
  if (v8 < v10)
  {
    v8 = v10;
  }

  [(MFMailComposeView *)self bounds];
  findPanelHostView = self->_findPanelHostView;

  [(UIView *)findPanelHostView setFrame:0.0, v8];
}

- (void)_setupBodyFieldWithHeaderFrame:(CGFloat)a3 enclosingFrame:(CGFloat)a4 changingView:(CGFloat)a5 frameToPin:(uint64_t)a6 wasSearching:(void *)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v22 = a7;
  [a1 _updateTextViewHeightWithHeaderFrame:{a2, a3, a4, a5}];
  [a1 _adjustScrollerContentSize];
  [a1 _layoutFindPanelHostView];
  v23 = +[MFMailComposeView log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 504) frame];
    v24 = NSStringFromCGRect(v41);
    [a1 bounds];
    v25 = NSStringFromCGRect(v42);
    v35 = 138543618;
    v36 = v24;
    v37 = 2114;
    v38 = v25;
    _os_log_impl(&dword_1BE819000, v23, OS_LOG_TYPE_DEFAULT, "Setting body scroller frame from: %{public}@ to: %{public}@", &v35, 0x16u);
  }

  [a1 bounds];
  [*(a1 + 504) setFrame:?];
  [*(a1 + 504) setScrollEnabled:1];
  if (v22)
  {
    v43.size.width = a15;
    v43.size.height = a16;
    v43.origin.x = a13;
    v43.origin.y = a14;
    MaxY = CGRectGetMaxY(v43);
    [*(a1 + 504) contentOffset];
    v29 = v28;
    if (a8)
    {
      v30 = *(a1 + 712);
      [*(a1 + 504) frame];
      if (v30 < MaxY - v31)
      {
        v30 = MaxY - v31;
      }
    }

    else
    {
      v30 = v27;
    }

    v32 = +[MFMailComposeView log];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v44.origin.x = a2;
      v44.origin.y = a3;
      v44.size.width = a4;
      v44.size.height = a5;
      v33 = NSStringFromCGRect(v44);
      v40.x = v29;
      v40.y = v30;
      v34 = NSStringFromCGPoint(v40);
      v35 = 138543618;
      v36 = v33;
      v37 = 2114;
      v38 = v34;
      _os_log_impl(&dword_1BE819000, v32, OS_LOG_TYPE_DEFAULT, "Setting up body field with header frame: %{public}@ and setting offset: %{public}@", &v35, 0x16u);
    }

    [*(a1 + 504) setContentOffset:{v29, v30}];
  }

  [a1 _revealSelectionIfNeededWithChangingView:v22];
}

- (void)_layoutSubviewsWithActiveRecipientView:(BOOL)a3 changingView:(id)a4 toSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v140[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  [(MFMailComposeView *)self _cancelAnimations];
  [(UIScrollView *)self->_bodyScroller setScrollEnabled:0];
  v9 = *(MEMORY[0x1E695F058] + 16);
  v139[0] = *MEMORY[0x1E695F058];
  v139[1] = v9;
  [(MFMailComposeView *)self _layoutComposeHeaderViewsWithChangingHeader:v8 toSize:v139 withPinFrame:width, height];
  [(MFMailComposeView *)self _heightForBottomView];
  v11 = v10;
  [(MFMailComposeRecipientTextView *)self->_activeRecipientView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(MFMailComposeView *)self frame];
  v21 = v20;
  v23 = v22;
  bodyScroller = self->_bodyScroller;
  v25 = [(MFMailComposeRecipientTextView *)self->_activeRecipientView superview];
  [(UIScrollView *)bodyScroller convertRect:v25 fromView:v13, v15, v17, v19];
  v129 = v26;
  v130 = v27;
  v127 = v29;
  v128 = v28;

  v30 = [(MFMailComposeRecipientTextView *)self->_activeRecipientView superview];
  [(MFMailComposeView *)self convertRect:v30 fromView:v13, v15, v17, v19];
  v32 = v31;
  v34 = v33;

  [(MFMailComposeView *)self bounds];
  v36 = v35;
  [(MFMailComposeView *)self _headerFrame];
  v131 = v37;
  v133 = v38;
  v40 = v39;
  [(MFComposeSubjectView *)self->_subjectField frame];
  MaxY = CGRectGetMaxY(v141);
  v42 = v21 + v23 - (v32 + v34) - v11;
  v43 = v36 - v11;
  if ([(MFMailComposeView *)self _presentsSearchResultsTableAsPopover])
  {
    [(MFMailComposeView *)self _setHeaderFrame:v131, v40, v133, MaxY];
    v44 = 0.0;
    if ((*(self + 776) & 0x40) == 0)
    {
      +[(CNComposeHeaderView *)MFMailComposeRecipientTextView];
      v46 = ((v42 + -20.0) / v45);
      if (v46 <= 3)
      {
        +[(CNComposeHeaderView *)MFMailComposeRecipientTextView];
        [(CNComposeRecipientTextView *)self->_activeRecipientView textFieldOffsetForNumberOfRowsToScroll:4 - v46 numberOfRowsAboveField:((v130 - v130) / v47)];
        v44 = v48;
      }
    }
  }

  else
  {
    +[(CNComposeHeaderView *)MFMailComposeRecipientTextView];
    v50 = (v42 / v49);
    if (v50 > 3)
    {
      [(CNComposeRecipientTextView *)self->_activeRecipientView offsetForRowWithTextField];
      v44 = v130 + v57 - v40;
    }

    else
    {
      [(MFMailComposeView *)self safeAreaInsets];
      v52 = v51;
      [(CNComposeRecipientTextView *)self->_activeRecipientView offsetForRowWithTextField];
      v54 = v53;
      +[(CNComposeHeaderView *)MFMailComposeRecipientTextView];
      [(CNComposeRecipientTextView *)self->_activeRecipientView textFieldOffsetForNumberOfRowsToScroll:4 - v50 numberOfRowsAboveField:((v32 - v52 + v54) / v55)];
      v44 = v56;
    }

    [MEMORY[0x1E69963F8] separatorHeight];
    if (v44 <= ceil(v58))
    {
      v44 = 0.0;
    }

    [(UIView *)self->_headerView frame];
    v60 = v59;
    if (MaxY < v43 + v44)
    {
      MaxY = v43 + v44;
    }

    [(MFMailComposeView *)self _setHeaderFrame:v131, v40, v133, MaxY];
    [(UIView *)self->_headerView frame];
    v130 = v130 + v61 - v60;
  }

  [(MFMailComposeView *)self _updateTextViewOriginWithHeaderFrame:v131, v40, v133, MaxY];
  [(MFMailComposeView *)self _adjustScrollerContentSize];
  v62 = [(MFMailComposeView *)self isSearchResultsPopoverVisible];
  [(UIScrollView *)self->_bodyScroller _effectiveContentInset];
  v64 = v63;
  v65 = v44 - v63;
  v66 = 0.0;
  if (![(MFMailComposeView *)self shouldScrollLastChangedRecipientViewToTop])
  {
    [(UIScrollView *)self->_bodyScroller contentOffset];
    if (v65 != v67 && !v62)
    {
      v68 = [objc_alloc(MEMORY[0x1E69DCED0]) initWithTarget:self->_bodyScroller];
      [(UIScrollView *)self->_bodyScroller contentOffset];
      [v68 setStartPoint:?];
      [v68 setEndPoint:{0.0, v44 - v64}];
      v69 = [MEMORY[0x1E69DC660] sharedAnimator];
      [v69 addAnimation:v68 withDuration:1 start:0.349999994];

      [(UIScrollView *)self->_bodyScroller contentOffset];
      v71 = v70;

      v66 = v65 - v71;
    }
  }

  v72 = [(MFMailComposeView *)self _searchResultsTable];
  [v72 frame];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  if ([(MFMailComposeView *)self _presentsSearchResultsTableAsPopover])
  {
    v131 = v74;
    v133 = v78;
  }

  else
  {
    v142.origin.x = v129;
    v142.origin.y = v130;
    v142.size.height = v127;
    v142.size.width = v128;
    CGRectGetMaxY(v142);
    +[(CNComposeHeaderView *)MFMailComposeRecipientTextView];
    UIRoundToViewScale();
    v76 = v79;
    v80 = [(MFMailComposeView *)self shouldScrollLastChangedRecipientViewToTop];
    v81 = MaxY + v130;
    if (!v80)
    {
      v81 = 0.0;
    }

    if (v43 >= MaxY)
    {
      v82 = MaxY;
    }

    else
    {
      v82 = v43;
    }

    [v72 setFrame:{v131, v76, v133, v82 - (v76 - v65) + v81}];
    +[MFSearchShadowView defaultHeight];
    [(UIView *)self->_shadowView setFrame:v131, v76, v133, v83];
  }

  if (![(MFMailComposeView *)self _presentsSearchResultsTableAsPopover])
  {
    v86 = [v72 superview];
    v87 = v86 == 0;

    if (!v87)
    {
      goto LABEL_43;
    }

    goto LABEL_31;
  }

  if (*(self + 776) < 0)
  {
    goto LABEL_43;
  }

  v84 = [(MFMailComposeView *)self toField];
  if (([v84 isFirstResponder] & 1) == 0)
  {
    v85 = [(MFMailComposeView *)self ccField];
    if (![v85 isFirstResponder])
    {
      v125 = [(MFMailComposeView *)self bccField];
      v126 = [v125 isFirstResponder];

      if ((v126 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }
  }

LABEL_31:
  v88 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  if ([(MFMailComposeView *)self _presentsSearchResultsTableAsPopover])
  {
    v89 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];

    v88 = v89;
  }

  v90 = [(MFMailComposeView *)self searchViewController];
  v91 = [v90 view];
  [v91 setBackgroundColor:v88];

  WeakRetained = objc_loadWeakRetained(&self->_popoverOwner);
  if ([(MFMailComposeView *)self _presentsSearchResultsTableAsPopover])
  {
    if (WeakRetained != 0 && !v62)
    {
      v93 = [(MFMailComposeView *)self searchViewController];
      v94 = [(MFMailComposeRecipientTextView *)self->_activeRecipientView navTitle];
      [v93 setTitle:v94];

      v140[0] = self->_activeRecipientView;
      v95 = [MEMORY[0x1E69DCBB8] activeKeyboard];
      v140[1] = v95;
      v132 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:2];

      v96 = objc_alloc(MEMORY[0x1E69DCCD8]);
      v97 = [(MFMailComposeView *)self searchViewController];
      v98 = [v96 initWithRootViewController:v97];

      v134 = [(CNComposeRecipientTextView *)self->_activeRecipientView textView];
      v99 = [v134 selectedTextRange];
      v100 = [v99 end];
      [v134 caretRectForPosition:v100];
      v102 = v101;
      v104 = v103;
      v106 = v105;
      v108 = v107;

      [(MFMailComposeView *)self convertRect:v134 fromView:v102, v104, v106, v108];
      v110 = v109;
      v112 = v111;
      v114 = v113;
      v116 = v115;
      [v98 setModalPresentationStyle:7];
      obj = 0;
      [v98 setModalPresentationStyle:7];
      v117 = [v98 popoverPresentationController];
      [v117 setSourceView:self];
      [v117 setSourceRect:{v110, v112 + v116 - v66, v114, v116}];
      [v117 setPermittedArrowDirections:1];
      [v117 setDelegate:self];
      [v117 _setShouldDisableInteractionDuringTransitions:0];
      v118 = [WeakRetained pep_getInvocation:&obj];
      v135[0] = MEMORY[0x1E69E9820];
      v135[1] = 3221225472;
      v135[2] = __80__MFMailComposeView__layoutSubviewsWithActiveRecipientView_changingView_toSize___block_invoke;
      v135[3] = &unk_1E806C520;
      v119 = v117;
      v136 = v119;
      v120 = v132;
      v137 = v120;
      [v118 presentViewController:v98 animated:1 completion:v135];

      [(MFMailComposeView *)self _cancelDelayedPopover];
      if (v66 == 0.0)
      {
        [obj invoke];
      }

      else
      {
        [obj retainArguments];
        objc_storeStrong(&self->_delayedPopoverInvocation, obj);
        UIAnimationDragCoefficient();
        [(MFMailComposeView *)self performSelector:sel__presentDelayedPopover withObject:0 afterDelay:(v121 * 0.35)];
      }
    }
  }

  else
  {
    v122 = self->_bodyScroller;
    v123 = [(MFMailComposeView *)self _searchResultsTable];
    [(UIScrollView *)v122 addSubview:v123];

    +[MFSearchShadowView defaultHeight];
    [(MFMailComposeView *)self _setShadowViewVisible:1 frame:v131, v76, v133, v124];
  }

LABEL_43:
}

- (BOOL)isSearchResultsPopoverVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverOwner);
  v4 = [(MFMailComposeView *)self _presentsSearchResultsTableAsPopover];
  if (WeakRetained)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [WeakRetained presentedViewController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 isBeingDismissed] & 1) == 0)
    {
      v8 = [v6 viewControllers];
      if ([v8 count])
      {
        v9 = [v8 objectAtIndex:0];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_userInterfaceConfigurationSupportsCorecipientsTableView
{
  [(MFMailComposeView *)self bounds];
  v4 = v3;
  [(MFMailComposeView *)self _heightForBottomView];
  v6 = v5;
  v7 = [(MFMailComposeView *)self traitCollection];
  v8 = [v7 horizontalSizeClass];

  return v4 - v6 > 300.0 && v8 == 1;
}

- (BOOL)_shouldShowCorecipientsTableView
{
  if (![(MFMailComposeView *)self _userInterfaceConfigurationSupportsCorecipientsTableView]|| ![(CNComposeRecipientTextView *)self->_toField isFirstResponder])
  {
    return 0;
  }

  v3 = [(CNAutocompleteResultsTableViewController *)self->_corecipientsSearchViewController recipients];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)_setCorecipientsTableViewVisible:(BOOL)a3 withFieldFrame:(CGRect)a4
{
  if (a3)
  {
    width = a4.size.width;
    y = a4.origin.y;
    v7 = [(MFMailComposeView *)self _corecipientResultsTable:a4.origin.x];
    [v7 setHidden:0];
    v8 = [(MFMailComposeView *)self _corecipientResultsTable];
    v9 = [v8 superview];

    if (!v9)
    {
      [(UIView *)self->_headerView insertSubview:v7 belowSubview:self->_ccField];
    }

    +[(CNComposeHeaderView *)MFMailComposeRecipientTextView];
    v11 = v10;
    [v7 frame];
    v13 = v12;
    [(MFMailComposeView *)self bounds];
    v15 = v14;
    +[MFSearchShadowView defaultHeight];
    v16 = y + v11 * -3.0;
    [(MFMailComposeView *)self _setShadowViewVisible:1 frame:0.0, v16, width, v17];
    [v7 frame];
    if (CGRectIsEmpty(v37))
    {
      v18 = MEMORY[0x1E69DD250];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __69__MFMailComposeView__setCorecipientsTableViewVisible_withFieldFrame___block_invoke;
      v31[3] = &unk_1E806F7D0;
      v32 = v7;
      v33 = 0;
      v34 = v16;
      v35 = v15;
      v36 = v13;
      [v18 performWithoutAnimation:v31];
    }

    [v7 contentSize];
    v20 = v19 + -2.0;
    [v7 setFrame:{0.0, v16, v15, v19 + -2.0}];
    [v7 setScrollEnabled:0];
    v38.origin.x = 0.0;
    v38.origin.y = v16;
    v38.size.width = v15;
    v38.size.height = v20;
    MaxY = CGRectGetMaxY(v38);
    if (!self->_corecipientsSearchTableViewSeparator)
    {
      v22 = objc_alloc(MEMORY[0x1E69DD250]);
      v23 = [v22 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      corecipientsSearchTableViewSeparator = self->_corecipientsSearchTableViewSeparator;
      self->_corecipientsSearchTableViewSeparator = v23;

      v25 = self->_corecipientsSearchTableViewSeparator;
      v26 = [MEMORY[0x1E69963F8] defaultSeparatorColor];
      [(UIView *)v25 setBackgroundColor:v26];
    }

    [MEMORY[0x1E69963F8] separatorHeight];
    [(UIView *)self->_corecipientsSearchTableViewSeparator setFrame:0.0, MaxY, width, v27];
    [(UIView *)self->_headerView addSubview:self->_corecipientsSearchTableViewSeparator];

    v28 = 32;
  }

  else
  {
    if ((*(self + 777) & 0x20) != 0)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __69__MFMailComposeView__setCorecipientsTableViewVisible_withFieldFrame___block_invoke_2;
      v30[3] = &unk_1E806C570;
      v30[4] = self;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __69__MFMailComposeView__setCorecipientsTableViewVisible_withFieldFrame___block_invoke_3;
      v29[3] = &unk_1E806D6F0;
      v29[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v30 animations:v29 completion:{0.8, a4.origin.y, a4.size.width, a4.size.height}];
    }

    v28 = 0;
  }

  *(self + 777) = *(self + 777) & 0xDF | v28;
}

uint64_t __69__MFMailComposeView__setCorecipientsTableViewVisible_withFieldFrame___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 704) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 528);

  return [v2 setAlpha:0.0];
}

void __69__MFMailComposeView__setCorecipientsTableViewVisible_withFieldFrame___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _setShadowViewVisible:0 frame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
    v3 = [*(a1 + 32) _corecipientResultsTable];
    [v3 setHidden:1];

    [*(*(a1 + 32) + 704) removeFromSuperview];
    v4 = *(a1 + 32);
    v5 = *(v4 + 704);
    *(v4 + 704) = 0;
  }
}

- (void)_layoutComposeHeaderViewsWithChangingHeader:(id)a3 toSize:(CGSize)a4 withPinFrame:(CGRect *)a5
{
  height = a4.height;
  width = a4.width;
  v19 = a3;
  [(MFMailComposeView *)self bounds];
  v10 = v9;
  [MEMORY[0x1E69963F8] separatorHeight];
  v20.x = 0.0;
  v20.y = ceil(v11);
  v21.width = v10;
  [objc_opt_class() preferredHeaderHeight];
  v21.height = v12;
  _layoutField(self->_toField, v19, &v20.x, width, height);
  if (self->_toField == v19)
  {
    v13 = v21;
    a5->origin = v20;
    a5->size = v13;
  }

  v14 = [(MFMailComposeView *)self _shouldShowCorecipientsTableView];
  [(MFMailComposeView *)self _setCorecipientsTableViewVisible:v14 withFieldFrame:v20, v21];
  if (v14)
  {
    v15 = [(MFMailComposeView *)self _corecipientResultsTable];
    [v15 frame];
    v20.y = CGRectGetMaxY(v23);
  }

  _layoutField(self->_ccField, v19, &v20.x, width, height);
  _layoutField(self->_bccField, v19, &v20.x, width, height);
  [(MFMailComposeView *)self _updateFromField];
  _layoutField(self->_fromField, v19, &v20.x, width, height);
  v16 = [(MFMailComposeView *)self traitCollection];
  v17 = [v16 horizontalSizeClass];

  if (v17 == 2)
  {
    _layoutField(self->_imageSizeField, v19, &v20.x, width, height);
  }

  [(MFMailComposeView *)self _updateMultiField];
  _layoutField(self->_multiField, v19, &v20.x, width, height);
  if (self->_toField != v19)
  {
    v18 = v21;
    a5->origin = v20;
    a5->size = v18;
  }

  _layoutField(self->_subjectField, v19, &v20.x, width, height);
  _layoutField(self->_webContentVariationField, v19, &v20.x, width, height);
}

- (void)_layoutSubviews:(BOOL)a3 changingView:(id)a4 toSize:(CGSize)a5 searchResultsWereDismissed:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v11 = a4;
  v12 = a3 & (*(self + 777) >> 4);
  if (!self->_activeRecipientView || [(MFMailComposeView *)self _presentsSearchResultsTableAsPopover]&& v6)
  {
    [(MFMailComposeView *)self _frameForContentView];
    [(UIView *)self->_contentView setFrame:?];
    if ([(MFMailComposeView *)self _presentsSearchResultsTableAsPopover])
    {
      if (!v6)
      {
        [(MFMailComposeView *)self _cancelDelayedPopover];
        if ([(MFMailComposeView *)self isSearchResultsPopoverVisible])
        {
          v13 = [(UIScrollView *)self->_bodyScroller mf_needsToAdjustContentOffset];
          WeakRetained = objc_loadWeakRetained(&self->_popoverOwner);
          [WeakRetained dismissViewControllerAnimated:!v13 completion:0];
        }
      }
    }

    else
    {
      v15 = [(MFMailComposeView *)self _searchResultsTable];
      v16 = [v15 superview];

      if (v16)
      {
        v17 = [(MFMailComposeView *)self _searchResultsTable];
        [v17 removeFromSuperview];

        [(MFMailComposeView *)self _setShadowViewVisible:0 frame:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
        v18 = 1;
LABEL_10:
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __84__MFMailComposeView__layoutSubviews_changingView_toSize_searchResultsWereDismissed___block_invoke_2;
        aBlock[3] = &unk_1E806F8A0;
        aBlock[4] = self;
        v29[0] = v11;
        *&v29[1] = width;
        *&v29[2] = height;
        v30 = v18;
        v19 = _Block_copy(aBlock);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __84__MFMailComposeView__layoutSubviews_changingView_toSize_searchResultsWereDismissed___block_invoke_4;
        v27[3] = &unk_1E806D6F0;
        v27[4] = self;
        v20 = _Block_copy(v27);
        v21 = MEMORY[0x1E69DD250];
        if (v12)
        {
          [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v19 options:v20 animations:0.2 completion:0.0];
        }

        else
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __84__MFMailComposeView__layoutSubviews_changingView_toSize_searchResultsWereDismissed___block_invoke_5;
          v24[3] = &unk_1E806F8C8;
          v25 = v19;
          v26 = v20;
          [v21 performWithoutAnimation:v24];
        }

        v22 = v29;

        goto LABEL_14;
      }
    }

    v18 = 0;
    goto LABEL_10;
  }

  if (![(MFMailComposeView *)self shouldScrollLastChangedRecipientViewToTop])
  {
    [(MFMailComposeView *)self _layoutSubviewsWithActiveRecipientView:v12 changingView:v11 toSize:width, height];
    goto LABEL_15;
  }

  lastChangedRecipientView = self->_lastChangedRecipientView;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __84__MFMailComposeView__layoutSubviews_changingView_toSize_searchResultsWereDismissed___block_invoke;
  v31[3] = &unk_1E806F850;
  v31[4] = self;
  v33 = v12;
  v32[0] = v11;
  *&v32[1] = width;
  *&v32[2] = height;
  [(MFMailComposeView *)self scrollToRecipientTextView:lastChangedRecipientView animated:1 completion:v31];
  v22 = v32;
LABEL_14:

LABEL_15:
}

void __84__MFMailComposeView__layoutSubviews_changingView_toSize_searchResultsWereDismissed___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cancelAnimations];
  [objc_opt_class() preferredHeaderHeight];
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(*(a1 + 32) + 536) labelView];
  [v10 frame];
  v12 = v11;
  v13 = [*(*(a1 + 32) + 536) labelView];
  [v13 baselinePoint];
  v15 = v14;
  v16 = [*(*(a1 + 32) + 536) baseFont];
  v38 = v9;
  v17 = v5;
  v18 = v3;
  [v16 capHeight];
  v20 = v19;

  [*(a1 + 32) _verticalPadding];
  v22 = v21;
  [*(a1 + 32) _headerViewOriginWithScrollViewOffsetCalculation];
  v24 = v23;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 784));
  v26 = [WeakRetained canShowImageSizeField];
  v27 = *(a1 + 32);
  if ((*(v27 + 777) & 8) != 0)
  {
    v28 = v26;
    v29 = [WeakRetained canShowFromField];
    [*(*(a1 + 32) + 600) setAlpha:0.0];
    [*(*(a1 + 32) + 544) setAlpha:1.0];
    [*(*(a1 + 32) + 552) setAlpha:1.0];
    if (v29)
    {
      [*(*(a1 + 32) + 592) setAlpha:1.0];
    }

    v30 = *(a1 + 32);
    v31 = 0.0;
    if (v28)
    {
      [v30 _createImageSizeFieldIfNeededAndAddSubview:{1, 0.0}];
      v30 = *(a1 + 32);
      v31 = 1.0;
    }

    [v30[76] setAlpha:v31];
  }

  else
  {
    [*(v27 + 600) setAlpha:1.0];
    [*(*(a1 + 32) + 544) setAlpha:0.0];
    [*(*(a1 + 32) + 552) setAlpha:0.0];
    [*(*(a1 + 32) + 592) setAlpha:0.0];
    [*(*(a1 + 32) + 608) setAlpha:0.0];
  }

  v32 = 584;
  [*(*(a1 + 32) + 584) setAllowsNotifyOption:1];
  if ([WeakRetained canShowContentVariationPicker] && _os_feature_enabled_impl())
  {
    v32 = 616;
    [*(*(a1 + 32) + 616) setAlpha:1.0];
  }

  else
  {
    [*(*(a1 + 32) + 616) setAlpha:0.0];
  }

  v33 = *(*(a1 + 32) + v32);
  v34 = *(MEMORY[0x1E695F058] + 16);
  v52 = *MEMORY[0x1E695F058];
  v53 = v34;
  [*(a1 + 32) _layoutComposeHeaderViewsWithChangingHeader:*(a1 + 40) toSize:&v52 withPinFrame:{*(a1 + 48), *(a1 + 56)}];
  [v33 frame];
  MaxY = CGRectGetMaxY(v54);
  v36 = MEMORY[0x1E69DD250];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __84__MFMailComposeView__layoutSubviews_changingView_toSize_searchResultsWereDismissed___block_invoke_3;
  v39[3] = &unk_1E806F878;
  v37 = *(a1 + 40);
  v39[4] = *(a1 + 32);
  v41 = v24;
  v42 = fmax(round(v22 - (v12 + v15 - v20)), 0.0);
  v43 = v7;
  v44 = MaxY;
  v45 = v18;
  v46 = v17;
  v47 = v7;
  v48 = v38;
  v40 = v37;
  v49 = v52;
  v50 = v53;
  v51 = *(a1 + 64);
  [v36 performWithoutAnimation:v39];
}

void __84__MFMailComposeView__layoutSubviews_changingView_toSize_searchResultsWereDismissed___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) composeWebView];
  v3 = [v2 isFirstResponder];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 _revealSelection];
  }
}

uint64_t __84__MFMailComposeView__layoutSubviews_changingView_toSize_searchResultsWereDismissed___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)toggleImageSizeFieldIfNecessary
{
  v3 = [(MFMailComposeView *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    [(MFMailComposeView *)self _beginBlockingBodyScroll];
    [(MFMailComposeView *)self _layoutSubviews:1];

    [(MFMailComposeView *)self _endBlockingBodyScroll];
  }
}

- (void)setAutoresizingMask:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MFMailComposeView;
  [(MFMailComposeView *)&v5 setAutoresizingMask:?];
  [(UIView *)self->_contentView setAutoresizingMask:a3];
}

- (BOOL)endEditing:(BOOL)a3
{
  v3 = a3;
  v4 = [(MFMailComposeView *)self subjectField];
  LOBYTE(v3) = [v4 endEditing:v3];

  return v3;
}

- (void)setRecipientFieldsEditable:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [CNComposeRecipientTextView setEditable:"setEditable:animated:" animated:?];
  [(CNComposeRecipientTextView *)self->_ccField setEditable:v5 animated:v4];
  bccField = self->_bccField;

  [(CNComposeRecipientTextView *)bccField setEditable:v5 animated:v4];
}

- (void)setLoading:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(self + 776) = *(self + 776) & 0xFD | v5;
  loadingView = self->_loadingView;
  if (a3)
  {
    if (!loadingView)
    {
      v7 = [MFMessageContentLoadingView alloc];
      v8 = [(MFMessageContentLoadingView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v9 = self->_loadingView;
      self->_loadingView = v8;
    }

    v10 = [(MFMailComposeView *)self bodyScroller];
    [v10 resignFirstResponder];

    v11 = [(MFMailComposeView *)self bodyScroller];
    [v11 addSubview:self->_loadingView];

    [(MFMailComposeView *)self _layoutLoadingView];
    [(MFMessageContentLoadingView *)self->_loadingView setLoadingIndicatorVisible:1 animated:1];
  }

  else
  {
    v12 = [(MFMessageContentLoadingView *)loadingView superview];

    if (v12)
    {
      [(MFMessageContentLoadingView *)self->_loadingView removeFromSuperview];
    }
  }

  webView = self->_webView;

  [(MFComposeWebView *)webView _setEditable:!v3];
}

- (void)setSending:(BOOL)a3
{
  v3 = *(self + 776);
  if (((((v3 & 4) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 776) = v3 & 0xFB | v4;
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = MFMailComposeView;
  v5 = [(UITransitionView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if ((*(self + 776) & 2) != 0 && v5 == self->_bodyScroller)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)searchResultsPopoverWasDismissed
{
  [(MFMailComposeView *)self _layoutSubviews:1 changingView:0 toSize:1 searchResultsWereDismissed:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  activeRecipientView = self->_activeRecipientView;
  if (activeRecipientView)
  {
    if ([(CNComposeRecipientTextView *)activeRecipientView didIgnoreFirstResponderResign])
    {
      [(MFMailComposeRecipientTextView *)self->_activeRecipientView becomeFirstResponder];
    }

    v4 = self->_activeRecipientView;

    [(MFMailComposeView *)self clearSearchForRecipientView:v4 reflow:0 clear:0];
  }
}

- (void)setIsForEditing:(BOOL)a3
{
  v3 = *(self + 777);
  if (a3)
  {
    *(self + 777) = v3 | 1;
    v4 = *(self + 777) & 0xFD;
  }

  else
  {
    *(self + 777) = v3 & 0xFE;
    v4 = *(self + 777) | 2;
  }

  *(self + 777) = v4;
  [(MFMailComposeView *)self _adjustScrollerContentSize];
}

- (void)setAnimationDisabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 777) = *(self + 777) & 0xFD | v3;
}

- (void)setShowingPeoplePicker:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 776) = *(self + 776) & 0xF7 | v3;
}

- (void)setLoadingFromAddress:(BOOL)a3
{
  v3 = *(self + 776);
  if (((((v3 & 0x10) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    if (a3)
    {
      v6 = 16;
    }

    else
    {
      v6 = 0;
    }

    *(self + 776) = v3 & 0xEF | v6;
    if (a3)
    {
      [(CNComposeRecipientTextView *)self->_toField setEnabled:0];
      [(CNComposeRecipientTextView *)self->_ccField setEnabled:0];
      v7 = 0;
    }

    else
    {
      [(CNComposeRecipientTextView *)self->_toField setEnabled:(*(self + 776) & 0x20) == 0];
      [(CNComposeRecipientTextView *)self->_ccField setEnabled:(*(self + 776) & 0x20) == 0];
      v7 = (*(self + 776) & 0x20) == 0;
    }

    [(CNComposeRecipientTextView *)self->_bccField setEnabled:v7];
    v8 = [(MFMailComposeView *)self fromField];
    [v8 showLoadingState:v4];

    v9 = [(MFMailComposeView *)self multiField];
    [v9 showLoadingState:v4];
  }
}

- (void)setReplyToHME:(BOOL)a3
{
  v3 = *(self + 776);
  if (((((v3 & 0x20) == 0) ^ a3) & 1) == 0)
  {
    v4 = a3;
    if (a3)
    {
      v6 = 32;
    }

    else
    {
      v6 = 0;
    }

    *(self + 776) = v3 & 0xDF | v6;
    [(CNComposeRecipientTextView *)self->_toField setEnabled:!a3];
    [(CNComposeRecipientTextView *)self->_ccField setEnabled:!v4];
    [(CNComposeRecipientTextView *)self->_bccField setEnabled:!v4];
    [(MFComposeFromView *)self->_fromField setUserInteractionEnabled:!v4];
    v7 = (*(self + 776) & 0x20) == 0;
    multiField = self->_multiField;

    [(MFComposeMultiView *)multiField setUserInteractionEnabled:v7];
  }
}

- (void)setQuickReply:(BOOL)a3
{
  v7 = *(self + 777);
  if (((((v7 & 0x40) == 0) ^ a3) & 1) == 0)
  {
    v12 = v4;
    v13 = v3;
    v8 = a3;
    if (a3)
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    *(self + 777) = v7 & 0xBF | v10;
    [(MFMailComposeToField *)self->_toField setHidden:v12, v13, v5];
    [(MFMailComposeRecipientTextView *)self->_ccField setHidden:v8];
    [(MFMailComposeRecipientTextView *)self->_bccField setHidden:v8];
    [(MFComposeFromView *)self->_fromField setHidden:v8];
    [(MFComposeMultiView *)self->_multiField setHidden:v8];
    webView = self->_webView;

    [(MFComposeWebView *)webView setIsQuickReply:v8];
  }
}

- (void)_createCCAndBCCFieldIfNeededAndCompleteSetup:(BOOL)a3
{
  v3 = a3;
  if (self->_ccField)
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_composeRecipientViewDelegate);
    [(MFMailComposeView *)self frame];
    v6 = v5;
    [objc_opt_class() preferredHeaderHeight];
    v8 = v7;
    v9 = [(CNComposeRecipientTextView *)[MFMailComposeRecipientTextView alloc] initWithFrame:self dragDropDelegate:0.0, 0.0, v6, v7];
    ccField = self->_ccField;
    self->_ccField = v9;

    [(MFMailComposeRecipientTextView *)self->_ccField setAccessibilityIdentifier:*MEMORY[0x1E69ADB28]];
    [(MFMailComposeRecipientTextView *)self->_ccField setDelegate:WeakRetained];
    v11 = [(CNComposeRecipientTextView *)[MFMailComposeRecipientTextView alloc] initWithFrame:self dragDropDelegate:0.0, 0.0, v6, v8];
    bccField = self->_bccField;
    self->_bccField = v11;

    [(MFMailComposeRecipientTextView *)self->_bccField setAccessibilityIdentifier:*MEMORY[0x1E69ADB18]];
    [(MFMailComposeRecipientTextView *)self->_bccField setDelegate:WeakRetained];

    if (!v3)
    {
      return;
    }
  }

  if (!self->_completedCCAndBCCFieldSetup)
  {
    self->_completedCCAndBCCFieldSetup = 1;
    v13 = self->_ccField;
    v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v22 localizedStringForKey:@"CC" value:&stru_1F3CF3758 table:@"Main"];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"Cc:" value:&stru_1F3CF3758 table:@"Main"];
    [(MFMailComposeView *)self _setupField:v13 withLabel:v14 navTitle:v16];

    v17 = self->_bccField;
    v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v23 localizedStringForKey:@"BCC" value:&stru_1F3CF3758 table:@"Main"];
    v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"Bcc:" value:&stru_1F3CF3758 table:@"Main"];
    [(MFMailComposeView *)self _setupField:v17 withLabel:v18 navTitle:v20];
  }
}

- (void)_createImageSizeFieldIfNeededAndAddSubview:(BOOL)a3
{
  v3 = a3;
  if (self->_imageSizeField)
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    [(MFMailComposeView *)self frame];
    v6 = v5;
    [objc_opt_class() preferredHeaderHeight];
    v8 = [[MFComposeImageSizeView alloc] initWithFrame:0.0, 0.0, v6, v7];
    imageSizeField = self->_imageSizeField;
    self->_imageSizeField = v8;

    [(MFComposeImageSizeView *)self->_imageSizeField setAutoresizingMask:2];
    [(MFComposeImageSizeView *)self->_imageSizeField setAccessibilityIdentifier:*MEMORY[0x1E69ADB50]];
    if (!v3)
    {
      return;
    }
  }

  v10 = [(MFComposeImageSizeView *)self->_imageSizeField superview];

  if (!v10)
  {
    headerView = self->_headerView;
    v12 = self->_imageSizeField;

    [(UIView *)headerView addSubview:v12];
  }
}

- (void)_multiFieldClicked
{
  [(MFMailComposeView *)self _createCCAndBCCFieldIfNeededAndCompleteSetup:1];
  ccField = self->_ccField;

  [(MFMailComposeRecipientTextView *)ccField becomeFirstResponder];
}

- (void)_setupField:(id)a3 withLabel:(id)a4 navTitle:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  [v14 setAutoresizingMask:2];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E695DF58] ef_directionalMarkForCurrentLocale];
  v12 = [v10 stringWithFormat:@"%@%@", v11, v8];
  [v14 setLabel:v12];

  [v14 setNavTitle:v9];
  WeakRetained = objc_loadWeakRetained(&self->_composeRecipientViewDelegate);
  [v14 setDelegate:WeakRetained];

  [v14 setIndicatesUnsafeRecipientsWhenCollapsed:1];
  [(MFMailComposeView *)self _addHoverEffectToField:v14];
  [(UIView *)self->_headerView addSubview:v14];
}

- (void)_updateFromField
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  if ([WeakRetained canShowFromField] && (*(self + 776) & 4) == 0)
  {
    v3 = [WeakRetained sendingEmailAddressIfExists];
    if (v3 && [WeakRetained isAddressHideMyEmail:v3])
    {
      [(MFComposeFromView *)self->_fromField setSelectedAddressToHME:v3];
    }

    else
    {
      v4 = v3;
      v5 = [v4 emailAddressValue];
      v6 = [v5 simpleAddress];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = [v4 stringValue];
      }

      v9 = v8;

      [(MFComposeFromView *)self->_fromField setSelectedAddress:v9];
    }
  }
}

- (void)_updateMultiField
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v4 = [WeakRetained canShowFromField];
  v5 = self->_ccField;
  [(MFMailComposeRecipientTextView *)v5 alpha];
  if (v6 == 0.0)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(MFMailComposeRecipientTextView *)v5 superview];
    v8 = v7 != 0;
  }

  v9 = self->_bccField;
  [(MFMailComposeRecipientTextView *)v9 alpha];
  if (v10 == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v11 = [(MFMailComposeRecipientTextView *)v9 superview];
    v12 = v11 != 0;
  }

  v13 = self->_fromField;
  [(MFComposeFromView *)v13 alpha];
  if (v14 == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v15 = [(MFComposeFromView *)v13 superview];
    v16 = v15 != 0;
  }

  v17 = v4 ^ 1;
  if (v8 || v12 || v16 || (v17 & 1) != 0)
  {
    if (!v8 && !v12)
    {
      v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v31 = [v24 localizedStringForKey:@"CC/BCC" value:&stru_1F3CF3758 table:@"Main"];

      if (v4)
      {
        v25 = 0;
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (((v16 || v12) | v17))
    {
      if (((v16 || v8) | v17))
      {
        v31 = 0;
        if (v4)
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }

      v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v31 = [v18 localizedStringForKey:@"CC/FROM" value:&stru_1F3CF3758 table:@"Main"];
    }

    else
    {
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v31 = [v18 localizedStringForKey:@"BCC/FROM" value:&stru_1F3CF3758 table:@"Main"];
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v31 = [v18 localizedStringForKey:@"CC/BCC/FROM" value:&stru_1F3CF3758 table:@"Main"];
  }

  if (v4)
  {
LABEL_15:
    v19 = [WeakRetained sendingEmailAddressIfExists];
    v20 = [v19 emailAddressValue];
    v21 = [v20 simpleAddress];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [v19 stringValue];
    }

    v25 = v23;
    v26 = v19;
LABEL_33:

    goto LABEL_34;
  }

LABEL_24:
  v26 = [(CNComposeRecipientTextView *)self->_bccField addresses];
  if ([v26 count] == 1)
  {
    v20 = [v26 objectAtIndex:0];
    v22 = [v20 emailAddressValue];
    v27 = [v22 displayName];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [v20 stringValue];
    }

    v25 = v29;

    v19 = v20;
    goto LABEL_33;
  }

  v25 = 0;
LABEL_34:

LABEL_35:
  [(MFComposeMultiView *)self->_multiField setLabel:v31];
  if ((*(self + 776) & 4) == 0)
  {
    [(MFComposeMultiView *)self->_multiField setAccountDescription:v25];
  }

  if ([WeakRetained canShowImageSizeField])
  {
    if ([WeakRetained canShowImageSizeField])
    {
      v30 = [WeakRetained currentScaleImageSize];
    }

    else
    {
      v30 = 0;
    }

    [(MFComposeMultiView *)self->_multiField setImageSizeDescription:v30];
    [(MFComposeMultiView *)self->_multiField setShowsImageSize:1];
  }

  else
  {
    [(MFComposeMultiView *)self->_multiField setShowsImageSize:0];
  }

  [(MFComposeMultiView *)self->_multiField setNeedsLayout];
}

- (void)_adjustHeaderFieldsPreferredContentSize
{
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69963A0] sharedFontMetricCache];
  [v3 ensureCacheIsValid];

  [(MFMailComposeView *)self bounds];
  v5 = v4;
  [objc_opt_class() preferredHeaderHeight];
  v7 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((*(self + 777) & 0x40) == 0)
  {
    fromField = self->_fromField;
    v22[0] = self->_toField;
    v22[1] = fromField;
    subjectField = self->_subjectField;
    v22[2] = self->_multiField;
    v22[3] = subjectField;
    v22[4] = self->_webContentVariationField;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
    [v8 addObjectsFromArray:v11];

    [v8 ef_addOptionalObject:self->_ccField];
    [v8 ef_addOptionalObject:self->_bccField];
    [v8 ef_addOptionalObject:self->_imageSizeField];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        [(MFMailComposeView *)self _layoutSubviews:0 changingView:v16 toSize:v5, v7, v17];
        [v16 refreshPreferredContentSize];
      }

      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)_presentDelayedPopover
{
  [(NSInvocation *)self->_delayedPopoverInvocation invoke];
  delayedPopoverInvocation = self->_delayedPopoverInvocation;
  self->_delayedPopoverInvocation = 0;
}

- (void)_cancelDelayedPopover
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__presentDelayedPopover object:0];
  delayedPopoverInvocation = self->_delayedPopoverInvocation;
  self->_delayedPopoverInvocation = 0;
}

- (id)dragSource:(id)a3 draggableItemsAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 sourceView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v7 sourceView];
    [(MFMailComposeView *)self _setDragging:1];
    v11 = [v10 hitTest:0 withEvent:{x, y}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      [v12 setSelected:1];
      v13 = [MEMORY[0x1E695DF70] array];
      if (v12)
      {
        v14 = [v12 recipient];
        [v13 addObject:v14];
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = [v10 selectedAtoms];
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        v17 = *v23;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v22 + 1) + 8 * i);
            if (v19 != v12)
            {
              v20 = [v19 recipient];
              [v13 addObject:v20];
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }
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

  return v13;
}

- (id)dragSource:(id)a3 targetedPreviewForDraggableItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 sourceView], v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v8, (isKindOfClass))
  {
    v10 = [v6 sourceView];
    v11 = [v10 dragPreviewForDraggedItem:v7 withContainer:self->_bodyScroller];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)dragSource:(id)a3 suggestedNameForDraggableItem:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 displayString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setDragging:(BOOL)a3
{
  if (self->_isDragging != a3)
  {
    self->_isDragging = a3;
    if (a3)
    {
      [(MFMailComposeView *)self _updateOptionalHeaderVisibilityForceVisible:1];

      [(MFMailComposeView *)self setRecipientFieldsEditable:1 animated:1];
    }
  }
}

- (void)dropTarget:(id)a3 dragEnteredAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v7 = [v10 targetView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(MFMailComposeView *)self _setDragging:1];
    v9 = [v10 targetView];
    [v9 dragEnteredAtPoint:{x, y}];
  }
}

- (void)dropTarget:(id)a3 dragDidMoveToPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v7 = [v10 targetView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(MFMailComposeView *)self _setDragging:1];
    v9 = [v10 targetView];
    [v9 dragMovedToPoint:{x, y}];
  }
}

- (void)dropTargetDragExited:(id)a3
{
  v7 = a3;
  v4 = [v7 targetView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(MFMailComposeView *)self _setDragging:0];
    v6 = [v7 targetView];
    [v6 dragExited];
  }
}

- (void)dropTarget:(id)a3 didDropDragItems:(id)a4 atPoint:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 targetView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v7 targetView];
    v12 = [MEMORY[0x1E695DF70] array];
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke;
    aBlock[3] = &unk_1E806F8F0;
    v29 = v30;
    v13 = v8;
    v25 = v13;
    v26 = self;
    v14 = v12;
    v27 = v14;
    v15 = v11;
    v28 = v15;
    v16 = _Block_copy(aBlock);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_2;
    v20[3] = &unk_1E806F9E0;
    v20[4] = self;
    v17 = v15;
    v21 = v17;
    v22 = v14;
    v23 = v16;
    v18 = v16;
    v19 = v14;
    [v13 enumerateObjectsUsingBlock:v20];

    _Block_object_dispose(v30, 8);
  }
}

uint64_t __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke(uint64_t a1)
{
  v2 = ++*(*(*(a1 + 64) + 8) + 24);
  result = [*(a1 + 32) count];
  if (v2 == result)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v4 _dropItems:v5 recipientTextView:v6];
  }

  return result;
}

void __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 localObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 localObject];
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__6;
    v41 = __Block_byref_object_dispose__6;
    v42 = 0;
    v7 = [MEMORY[0x1E695DF70] arrayWithObjects:{*(*(a1 + 32) + 536), *(*(a1 + 32) + 544), *(*(a1 + 32) + 552), 0}];
    [v7 removeObject:*(a1 + 40)];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_141;
    v34[3] = &unk_1E806F940;
    v8 = v6;
    v35 = v8;
    v36 = &v37;
    [v7 enumerateObjectsUsingBlock:v34];
    v9 = v38[5];
    if (v9)
    {
      [v9 removeRecipient:v8];
    }

    [*(a1 + 48) addObject:v8];
    (*(*(a1 + 56) + 16))();

    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v10 = [v3 itemProvider];
    v11 = [v10 canLoadObjectOfClass:objc_opt_class()];

    if (v11)
    {
      v12 = [v3 itemProvider];
      v13 = objc_opt_class();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_3;
      v31[3] = &unk_1E806F968;
      v32 = *(a1 + 48);
      v33 = *(a1 + 56);
      v14 = [v12 loadObjectOfClass:v13 completionHandler:v31];

      v8 = v32;
    }

    else
    {
      v15 = [v3 itemProvider];
      v16 = [v15 canLoadObjectOfClass:objc_opt_class()];

      if (v16)
      {
        v17 = [v3 itemProvider];
        v18 = objc_opt_class();
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_4;
        v28[3] = &unk_1E806F968;
        v29 = *(a1 + 48);
        v30 = *(a1 + 56);
        v19 = [v17 loadObjectOfClass:v18 completionHandler:v28];

        v8 = v29;
      }

      else
      {
        v20 = [v3 itemProvider];
        v21 = [v20 canLoadObjectOfClass:objc_opt_class()];

        if (!v21)
        {
          (*(*(a1 + 56) + 16))();
          goto LABEL_12;
        }

        v22 = [v3 itemProvider];
        v23 = objc_opt_class();
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_6;
        v25[3] = &unk_1E806F9B8;
        v26 = *(a1 + 48);
        v27 = *(a1 + 56);
        v24 = [v22 loadObjectOfClass:v23 completionHandler:v25];

        v8 = v26;
      }
    }
  }

LABEL_12:
}

void __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_141(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = a2;
  v7 = [v6 recipients];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_2_142;
  v11[3] = &unk_1E806F918;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v8;
  v14 = v9;
  v10 = v6;
  v13 = v10;
  [v7 enumerateObjectsUsingBlock:v11];

  *a4 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

void __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_2_142(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 32) == a2)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
    *a4 = 1;
  }
}

void __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v6];
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 draggingContacts];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_5;
      v8[3] = &unk_1E806F990;
      v9 = *(a1 + 32);
      [v7 enumerateObjectsUsingBlock:v8];

      (*(*(a1 + 40) + 16))();
    }
  }
}

void __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_5(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [MEMORY[0x1E695D108] descriptorForRequiredKeys];
  v4 = [v9 fetchContactWithKeys:v3];

  v5 = [v4 emailAddresses];
  v6 = [v5 firstObject];
  v7 = [v6 value];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E6996400]) initWithContact:v4 address:v7 kind:0];
    [*(a1 + 32) addObject:v8];
  }
}

void __57__MFMailComposeView_dropTarget_didDropDragItems_atPoint___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = *(a1 + 32);
    v7 = [v8 recipients];
    [v6 addObjectsFromArray:v7];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_dropItems:(id)a3 recipientTextView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__MFMailComposeView__dropItems_recipientTextView___block_invoke;
  v16[3] = &unk_1E806C6D8;
  v9 = v8;
  v17 = v9;
  [v6 enumerateObjectsUsingBlock:v16];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__MFMailComposeView__dropItems_recipientTextView___block_invoke_2;
  v12[3] = &unk_1E806CC80;
  v13 = v9;
  v14 = v7;
  v15 = self;
  v10 = v7;
  v11 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __50__MFMailComposeView__dropItems_recipientTextView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __50__MFMailComposeView__dropItems_recipientTextView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 dropItems:*(a1 + 32)];
  }

  else
  {
    [v3 dragExited];
  }

  v4 = *(a1 + 48);

  return [v4 _setDragging:0];
}

- (id)sendingAddressForDropTarget:(id)a3 withTargetView:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v5 = [WeakRetained sendingEmailAddressIfExists];

  return v5;
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  *(self + 776) |= 0x40u;
  if ([(UIScrollView *)self->_bodyScroller isDecelerating:a3])
  {
    [(UIScrollView *)self->_bodyScroller contentOffset];
    [(UIScrollView *)self->_bodyScroller setContentOffset:0 animated:?];
  }

  if ([(MFMailComposeView *)self _presentsSearchResultsTableAsPopover])
  {

    [(MFMailComposeView *)self _cancelDelayedPopover];
  }
}

- (id)_focusedRecipientView
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  ccField = self->_ccField;
  v19[0] = self->_toField;
  v19[1] = ccField;
  v19[2] = self->_bccField;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{3, 0}];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 textView];
        if ([v9 isFirstResponder])
        {

LABEL_13:
          v13 = v8;
          goto LABEL_14;
        }

        v10 = [v8 textView];
        WeakRetained = objc_loadWeakRetained(&self->_pinningResponder);
        v12 = v10 == WeakRetained;

        if (v12)
        {
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
      v13 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_14:

  return v13;
}

- (void)_finishUpRotationToInterfaceOrientation:(int64_t)a3
{
  [(MFMailComposeView *)self _layoutSubviews:0];

  [(MFMailComposeView *)self _adjustScrollerForBottomView];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  *(self + 776) &= ~0x40u;
  v4 = [(MFMailComposeView *)self composeWebView];
  [v4 didRotateFromInterfaceOrientation:a3];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MFMailComposeView;
  [(UITransitionView *)&v4 layoutSubviews];
  [(MFMailComposeView *)self _adjustScrollerContentSize];
  [(MFMailComposeView *)self _layoutSubviews:0];
  v3 = [(MFMailComposeView *)self _focusedRecipientView];
  [v3 reflow];

  [(MFMailComposeView *)self _layoutLoadingView];
}

- (void)_layoutLoadingView
{
  v7 = [(MFMailComposeView *)self bodyScroller];
  [v7 adjustedContentInset];
  v4 = v3;
  [v7 bounds];
  [(MFMessageContentLoadingView *)self->_loadingView setFrame:v5 + 0.0, v4 + v6];
}

- (void)_adjustScrollerContentSize
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [(MFMailComposeView *)self composeViewDelegate];
  [v3 additionalContentInsetForComposeWebView:self->_webView];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ((*(self + 777) & 0x40) != 0)
  {
    v15 = 0;
  }

  else
  {
    [(MFMailComposeView *)self safeAreaInsets];
    v13 = v12;
    [(MFMailComposeView *)self _heightForBottomView];
    v15 = v9 + v13 <= v14;
    if (v9 + v13 > v14)
    {
      v16 = v9 + v13;
    }

    else
    {
      v16 = v14;
    }

    v17 = [(MFComposeWebView *)self->_webView scrollView];
    [v17 adjustedContentInset];
    v19 = v18;
    v20 = [(MFComposeWebView *)self->_webView scrollView];
    [v20 _contentScrollInset];
    v9 = v16 - (v19 - v21);
  }

  v22 = [(MFComposeWebView *)self->_webView scrollView];
  [v22 _contentScrollInset];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = +[MFMailComposeView log];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v51.top = v24;
    v51.left = v26;
    v51.bottom = v28;
    v51.right = v30;
    v32 = NSStringFromUIEdgeInsets(v51);
    v52.top = v5;
    v52.left = v7;
    v52.bottom = v9;
    v52.right = v11;
    v33 = NSStringFromUIEdgeInsets(v52);
    v46 = 138543618;
    v47 = v32;
    v48 = 2114;
    v49 = v33;
    _os_log_impl(&dword_1BE819000, v31, OS_LOG_TYPE_DEFAULT, "previous web view scroll inset: %{public}@, current web view scroll inset%{public}@", &v46, 0x16u);
  }

  v34 = v9;
  if (v15)
  {
    [(MFComposeWebView *)self->_webView inputAccessoryViewHeight];
    v34 = v9 - v35;
  }

  v36 = [(MFComposeWebView *)self->_webView scrollView];
  [v36 _setContentScrollInset:{v5, v7, v9, v11}];

  v37 = [(MFComposeWebView *)self->_webView scrollView];
  [v37 setHorizontalScrollIndicatorInsets:{v5, v7, v34, v11}];

  v38 = [(MFComposeWebView *)self->_webView scrollView];
  [v38 setVerticalScrollIndicatorInsets:{v5, v7, v9, v11}];

  v39 = [(MFComposeWebView *)self->_webView scrollView];
  [v39 adjustedContentInset];
  v41 = v40;
  v43 = v42;

  [(MFComposeWebView *)self->_webView frame];
  [(MFComposeWebView *)self->_webView _overrideLayoutParametersWithMinimumLayoutSize:v44 - v7 - v11 maximumUnobscuredSizeOverride:fmax(v45 - v41 - v43, 0.0), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
}

- (void)_adjustScrollerForBottomView
{
  [(UIScrollView *)self->_bodyScroller contentOffset];
  v4 = v3;
  v6 = v5;
  [(MFMailComposeView *)self _normalizeBodyFieldFrame];
  [(MFMailComposeView *)self _adjustScrollerContentSize];
  [(UIScrollView *)self->_bodyScroller setContentOffset:v4, v6];
  v7 = [(MFMailComposeView *)self firstResponder];

  if (v7)
  {
    v28 = [(MFMailComposeView *)self firstResponder];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v28;
      bodyScroller = self->_bodyScroller;
      [v8 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v8 superview];
      [(UIScrollView *)bodyScroller convertRect:v18 fromView:v11, v13, v15, v17];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [(UIScrollView *)self->_bodyScroller contentInset];
      [(UIScrollView *)self->_bodyScroller scrollRectToVisible:1 animated:v20, v22 + v27, v24, v26];
    }
  }
}

- (BOOL)shouldScrollLastChangedRecipientViewToTop
{
  v3 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  if (IsAccessibilityCategory)
  {
    return ![(MFMailComposeView *)self _presentsSearchResultsTableAsPopover];
  }

  else
  {
    return 0;
  }
}

- (void)_updateKeyboardIntersection:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(MFMailComposeView *)self window];
  v9 = [v8 screen];
  v31 = [v9 coordinateSpace];

  [(MFMailComposeView *)self bounds];
  [(MFMailComposeView *)self convertRect:v31 toCoordinateSpace:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v31 convertRect:v31 toCoordinateSpace:{x, y, width, height}];
  v36.origin.x = v18;
  v36.origin.y = v19;
  v36.size.width = v20;
  v36.size.height = v21;
  v33.origin.x = v11;
  v33.origin.y = v13;
  v33.size.width = v15;
  v33.size.height = v17;
  v34 = CGRectIntersection(v33, v36);
  v22 = v34.size.height;
  v23 = [(MFMailComposeView *)self composeWebView:v34.origin.x];
  if ([v23 _contentViewIsFirstResponder])
  {
    v24 = *(self + 777);

    if ((v24 & 0x40) == 0)
    {
      headerView = self->_headerView;
      [(UIView *)headerView bounds];
      [(UIView *)headerView convertRect:self toView:?];
      v26 = v17 - height - CGRectGetMaxY(v35);
      if (v26 < 40.0)
      {
        bodyScroller = self->_bodyScroller;
        [(UIScrollView *)bodyScroller contentOffset];
        v29 = v28;
        [(UIScrollView *)self->_bodyScroller contentOffset];
        [(UIScrollView *)bodyScroller setContentOffset:v29, fabs(v26) + v30];
      }
    }
  }

  else
  {
  }

  if (self->_keyboardIntersection != v22)
  {
    self->_keyboardIntersection = v22;
    [(MFMailComposeView *)self _adjustScrollerForBottomView];
    [(MFMailComposeView *)self _layoutSubviews:0];
  }
}

- (void)automaticKeyboardFinishedAppearing:(id)a3
{
  v14 = a3;
  v4 = [v14 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(MFMailComposeView *)self _updateKeyboardIntersection:v7, v9, v11, v13];
}

- (void)automaticKeyboardFinishedDisappearing:(id)a3
{
  v14 = a3;
  v4 = [v14 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(MFMailComposeView *)self _beginPreventingScrollingToRevealSelection];
  [(MFMailComposeView *)self _updateKeyboardIntersection:v7, v9, v11, v13];
  [(MFMailComposeView *)self _endPreventingScrollingToRevealSelection];
}

- (void)setKeyboardVisible:(BOOL)a3 animate:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  IsAutomaticAppearanceEnabled = UIKeyboardIsAutomaticAppearanceEnabled();
  if (v5)
  {
    if ((IsAutomaticAppearanceEnabled & 1) == 0)
    {

      MEMORY[0x1EEE4DE18](v4);
    }
  }

  else if ((IsAutomaticAppearanceEnabled & 1) == 0)
  {

    MEMORY[0x1EEE4DE28](v4);
  }
}

- (BOOL)isKeyboardVisible
{
  v2 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  if ([v2 isMinimized])
  {
    v3 = 0;
  }

  else
  {
    v3 = UIKeyboardAutomaticIsOnScreen();
  }

  return v3;
}

- (double)_heightForBottomView
{
  keyboardIntersection = self->_keyboardIntersection;
  v4 = [(MFMailComposeView *)self window];
  [v4 frame];
  v6 = v5;
  v7 = [(MFMailComposeView *)self window];
  [v7 frame];
  v9 = v8;

  v10 = [(MFMailComposeView *)self window];
  [v10 convertRect:0 fromWindow:{0.0, v6, v9, 100.0}];
  [(MFMailComposeView *)self convertRect:0 fromView:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(MFMailComposeView *)self bounds];
  v22.origin.x = v12;
  v22.origin.y = v14;
  v22.size.width = v16;
  v22.size.height = v18;
  v21 = CGRectIntersection(v20, v22);
  return keyboardIntersection + v21.size.height;
}

- (void)saveFirstResponderWithKeyboardPinning:(BOOL)a3
{
  v3 = a3;
  obj = [(MFMailComposeView *)self firstResponder];
  objc_storeWeak(&self->_firstResponderBeforeSheet, obj);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pinningResponder);
    if (WeakRetained != obj)
    {
      [WeakRetained _endPinningInputViews];
      objc_storeWeak(&self->_pinningResponder, obj);
      [obj _beginPinningInputViews];
    }
  }
}

- (void)restoreFirstResponder
{
  [(MFMailComposeView *)self restoreFirstResponderWithKeyboardPinning:0];

  objc_storeWeak(&self->_firstResponderBeforeSheet, 0);
}

- (void)restoreFirstResponderWithKeyboardPinning:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_firstResponderBeforeSheet);
  [WeakRetained becomeFirstResponder];

  if (v3)
  {
    v6 = objc_loadWeakRetained(&self->_pinningResponder);
    [v6 _endPinningInputViews];

    objc_storeWeak(&self->_pinningResponder, 0);
  }
}

- (void)focusFirstResponderBeforeRecipientView:(id)a3
{
  v4 = a3;
  p_super = &self->_toField->super;
  v6 = v4;
  if (p_super == v4)
  {
    p_super = self->_webView;
  }

  else if (self->_ccField != v4)
  {
    if (self->_bccField != v4)
    {
      goto LABEL_7;
    }

    p_super = self->_ccField;
  }

  [(MFMailComposeRecipientTextView *)p_super becomeFirstResponder];
LABEL_7:
}

- (void)focusFirstResponderAfterRecipientView:(id)a3
{
  v4 = a3;
  ccField = self->_ccField;
  v6 = v4;
  if (self->_toField != v4)
  {
    if (ccField == v4)
    {
      ccField = self->_bccField;
    }

    else
    {
      if (self->_bccField != v4)
      {
        goto LABEL_7;
      }

      ccField = self->_subjectField;
    }
  }

  [(MFMailComposeRecipientTextView *)ccField becomeFirstResponder];
LABEL_7:
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  [(UIScrollView *)self->_bodyScroller contentOffset];
  v6 = v5;
  [(UIScrollView *)self->_bodyScroller _effectiveContentInset];
  bodyScroller = self->_bodyScroller;

  [(UIScrollView *)bodyScroller setContentOffset:v3 animated:v6, -v7];
}

- (void)scrollToRecipientTextView:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 isDescendantOfView:self])
  {
    v10 = [(MFMailComposeView *)self navigationBarDelegate];
    v11 = [v10 getPrefersLargeTitles];
    [v10 setPrefersLargeTitles:0];
    v12 = MEMORY[0x1E6979518];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__MFMailComposeView_scrollToRecipientTextView_animated_completion___block_invoke;
    v15[3] = &unk_1E806FA30;
    v15[4] = self;
    v16 = v8;
    v19 = a4;
    v13 = v10;
    v17 = v13;
    v20 = v11;
    v18 = v9;
    [v12 setCompletionBlock:v15];
  }

  else
  {
    v14 = +[MFMailComposeView log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "Unable to scroll to unrelated recipient view.", buf, 2u);
    }

    (*(v9 + 2))(v9, 1);
  }
}

void __67__MFMailComposeView_scrollToRecipientTextView_animated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bodyScroller];
  [*(a1 + 40) frame];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 32) bodyScroller];
  [v2 convertPoint:v7 toView:{v4, v6}];
  v9 = v8;

  v10 = [*(a1 + 32) bodyScroller];
  [v10 _effectiveContentInset];
  v12 = v11;

  v13 = v9 - v12;
  if (*(a1 + 64))
  {
    v14 = 0.200000003;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__MFMailComposeView_scrollToRecipientTextView_animated_completion___block_invoke_2;
  v20[3] = &unk_1E806D078;
  v20[4] = *(a1 + 32);
  v20[5] = 0;
  *&v20[6] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__MFMailComposeView_scrollToRecipientTextView_animated_completion___block_invoke_3;
  v16[3] = &unk_1E806FA08;
  v17 = *(a1 + 48);
  v19 = *(a1 + 65);
  v18 = *(a1 + 56);
  [v15 animateWithDuration:v20 animations:v16 completion:v14];
}

void __67__MFMailComposeView_scrollToRecipientTextView_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) bodyScroller];
  [v2 setContentOffset:0 animated:{*(a1 + 40), *(a1 + 48)}];
}

uint64_t __67__MFMailComposeView_scrollToRecipientTextView_animated_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setPrefersLargeTitles:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)viewDidBecomeFirstResponder:(id)a3
{
  v4 = a3;
  if (self->_toField == v4 && [(MFMailComposeView *)self _shouldShowCorecipientsTableView])
  {
    [(MFMailComposeView *)self _layoutSubviews:1];
  }

  v5 = self->_ccField == v4 || self->_bccField == v4;
  [(MFMailComposeView *)self _updateOptionalHeaderVisibilityForceVisible:v5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__MFMailComposeView_viewDidBecomeFirstResponder___block_invoke;
  v7[3] = &unk_1E806E930;
  v6 = v4;
  v8 = v6;
  v9 = self;
  [(MFMailComposeView *)self _performBlockWithStrongComposeCoordinator:v7];
}

void __49__MFMailComposeView_viewDidBecomeFirstResponder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v3;
  if (v4 == v5[67])
  {
    v6 = @"to";
  }

  else if (v4 == v5[68])
  {
    v6 = @"cc";
  }

  else if (v4 == v5[69])
  {
    v6 = @"bcc";
  }

  else
  {
    if (v4 != v5[73])
    {
      goto LABEL_10;
    }

    v6 = @"subject";
  }

  [v3 setFocusedField:v6];
LABEL_10:
}

- (void)_updateOptionalHeaderVisibilityForceVisible:(BOOL)a3
{
  if (a3)
  {
    v4 = self + 777;
    if ((*(self + 777) & 8) != 0)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = [(CNComposeRecipientTextView *)self->_ccField recipients];
  if ([v5 count] || self->_isDragging)
  {
    v6 = 1;
  }

  else
  {
    v10 = [(CNComposeRecipientTextView *)self->_bccField recipients];
    if ([v10 count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
      v6 = [WeakRetained bccAddressesDirtied];
    }

    else
    {
      v6 = 0;
    }
  }

  v4 = self + 777;
  v7 = *(self + 777);
  if (((v6 ^ ((v7 & 8) == 0)) & 1) == 0)
  {
    if (!v6)
    {
      v8 = 0;
      goto LABEL_12;
    }

LABEL_10:
    [(MFMailComposeView *)self _createCCAndBCCFieldIfNeededAndCompleteSetup:1];
    v7 = *v4;
    v8 = 8;
LABEL_12:
    *v4 = v7 & 0xF7 | v8;
    v9 = (*(self + 777) & 2) == 0;

    [(MFMailComposeView *)self _layoutSubviews:v9];
  }
}

- (void)menuDidHide
{
  v3 = [(MFMailComposeView *)self composeWebView];
  v4 = [v3 isFirstResponder];

  if (v4)
  {

    [(MFMailComposeView *)self _updateQuoteLevelMenu];
  }
}

- (UITableView)searchTableView
{
  v2 = [(MFMailComposeView *)self searchViewController];
  v3 = [v2 tableView];

  return v3;
}

- (BOOL)presentSearchResults
{
  v3 = [(MFMailComposeView *)self searchViewController];
  v4 = [v3 recipients];
  v5 = [v4 count];

  if (v5 && !self->_activeRecipientView)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"MFMailComposeViewDidSortSearchResults" object:0];

    objc_storeStrong(&self->_activeRecipientView, self->_lastChangedRecipientView);
    [(UIScrollView *)self->_bodyScroller contentOffset];
    self->_offsetBeforeSearch = v7;
    [(MFMailComposeView *)self _layoutSubviews:0];
  }

  return v5 != 0;
}

- (void)dismissSearchResults
{
  activeRecipientView = self->_activeRecipientView;
  if (activeRecipientView)
  {
    [(MFMailComposeView *)self clearSearchForRecipientView:activeRecipientView reflow:1 clear:1];
  }
}

- (BOOL)presentSearchResults:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(MFMailComposeView *)self searchViewController];
    [v5 setRecipients:v4];

    v6 = [(MFMailComposeView *)self presentSearchResults];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)beginSearchForText:(id)a3 recipientView:(id)a4
{
  v17 = a3;
  v6 = a4;
  objc_storeStrong(&self->_lastChangedRecipientView, a4);
  if (!self->_searchController)
  {
    v7 = objc_alloc_init(MFMailComposeContactsSearchController);
    searchController = self->_searchController;
    self->_searchController = v7;

    [(MFMailComposeContactsSearchController *)self->_searchController setDelegate:self];
  }

  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [(CNComposeRecipientTextView *)self->_toField recipients];
  [v9 addObjectsFromArray:v10];

  v11 = [(CNComposeRecipientTextView *)self->_ccField recipients];
  [v9 addObjectsFromArray:v11];

  v12 = [(CNComposeRecipientTextView *)self->_bccField recipients];
  [v9 addObjectsFromArray:v12];

  v13 = self->_searchController;
  v14 = [(MFComposeSubjectView *)self->_subjectField text];
  [(MFMailComposeContactsSearchController *)v13 searchWithString:v17 enteredRecipients:v9 title:v14];

  v15 = [(MFMailComposeView *)self _searchResultsTable];
  [v15 selectRowAtIndexPath:0 animated:0 scrollPosition:0];

  v16 = [(MFMailComposeView *)self _searchResultsTable];
  [v16 scrollRectToVisible:0 animated:{0.0, 0.0, 1.0, 1.0}];
}

- (void)clearSearchForActiveRecipientView
{
  if (self->_activeRecipientView || self->_lastChangedRecipientView)
  {
    [MFMailComposeView clearSearchForRecipientView:"clearSearchForRecipientView:reflow:clear:" reflow:? clear:?];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"_MFComposeRecipientTextViewSearchEnd" object:self userInfo:0];
  }
}

- (void)invalidateSearchResultRecipient:(id)a3
{
  v6 = a3;
  v4 = [(CNAutocompleteResultsTableViewController *)self->_searchViewController recipients];
  v5 = [v4 count];

  if (v5 == 1)
  {
    [(MFMailComposeView *)self clearSearchForRecipientView:self->_activeRecipientView reflow:0 clear:0];
  }

  else
  {
    [(CNAutocompleteResultsTableViewController *)self->_searchViewController invalidateSearchResultRecipient:v6];
  }
}

- (void)findCorecipientsWithRecipientView:(id)a3
{
  v7 = a3;
  if ([(MFMailComposeView *)self _userInterfaceConfigurationSupportsCorecipientsTableView])
  {
    if (!self->_searchController)
    {
      v4 = objc_alloc_init(MFMailComposeContactsSearchController);
      searchController = self->_searchController;
      self->_searchController = v4;

      [(MFMailComposeContactsSearchController *)self->_searchController setDelegate:self];
    }

    v6 = [v7 uncommentedAddresses];
    if ([v6 count] < 2)
    {
      [(CNAutocompleteResultsTableViewController *)self->_corecipientsSearchViewController setDeferTableViewUpdates:1];
      [(CNAutocompleteResultsTableViewController *)self->_corecipientsSearchViewController setRecipients:0];
      [(MFMailComposeView *)self _layoutSubviews:1];
    }

    else
    {
      [(MFMailComposeContactsSearchController *)self->_searchController findCorecipientsWithRecipients:v6];
    }
  }
}

- (void)disambiguateRecipient:(id)a3 recipientView:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_searchController)
  {
    v8 = objc_alloc_init(MFMailComposeContactsSearchController);
    searchController = self->_searchController;
    self->_searchController = v8;

    [(MFMailComposeContactsSearchController *)self->_searchController setDelegate:self];
  }

  *(self + 777) |= 4u;
  objc_storeStrong(&self->_lastChangedRecipientView, a4);
  v10 = [(MFMailComposeView *)self searchViewController];
  v12[0] = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v10 updateRecipients:v11 disambiguatingRecipient:v6];

  [(MFMailComposeView *)self presentSearchResults];
}

- (void)dismissSearchResultsIfDisambiguating
{
  if ((*(self + 777) & 4) != 0)
  {
    *(self + 777) &= ~4u;
    [(MFMailComposeView *)self dismissSearchResults];
  }
}

- (void)autocompleteResultsController:(id)a3 didSelectRecipient:(id)a4 atIndex:(unint64_t)a5
{
  v14 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 address];

    if (v10)
    {
      [(MFMailComposeContactsSearchController *)self->_searchController didSelectRecipient:v9 atIndex:a5];
      p_super = self->_activeRecipientView;
      if (self->_corecipientsSearchViewController == v14)
      {
        v12 = self->_toField;

        p_super = &v12->super;
      }

      v13 = v9;
      [(MFMailComposeView *)self clearSearchForRecipientView:self->_activeRecipientView reflow:0 clear:1];
      [(MFMailComposeView *)self setChangingRecipients:1];
      [(MFMailComposeRecipientTextView *)p_super addRecipient:v13];
      [(MFMailComposeView *)self setChangingRecipients:0];
    }
  }
}

- (void)autocompleteResultsController:(id)a3 didRequestInfoAboutRecipient:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_composeRecipientViewDelegate);
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained composeRecipientView:self->_activeRecipientView showPersonCardForRecipient:v6];
  }
}

- (void)autocompleteResultsController:(id)a3 didAskToRemoveRecipient:(id)a4
{
  v6 = a4;
  v5 = [(MFMailComposeView *)self searchController];
  [v5 removeRecipient:v6];
}

- (id)sendingAccountProxyForComposeContactsSearchController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v4 = [WeakRetained sendingAccountProxy];

  return v4;
}

- (int64_t)addressableGroupResultStyleForComposeContactsSearchController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);
  v4 = [WeakRetained isCloudKitShare];

  return v4 ^ 1u;
}

- (void)composeContactsSearchController:(id)a3 finishedWithResults:(BOOL)a4
{
  if (!a4 && (self->_activeRecipientView || self->_lastChangedRecipientView))
  {
    [MFMailComposeView clearSearchForRecipientView:"clearSearchForRecipientView:reflow:clear:" reflow:? clear:?];
  }
}

- (void)composeContactsSearchController:(id)a3 didFindCorecipients:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!self->_corecipientsSearchViewController)
  {
    v7 = [objc_alloc(MEMORY[0x1E69963B8]) initWithStyle:0];
    corecipientsSearchViewController = self->_corecipientsSearchViewController;
    self->_corecipientsSearchViewController = v7;

    [(CNAutocompleteResultsTableViewController *)self->_corecipientsSearchViewController setDelegate:self];
    v9 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    v10 = [(CNAutocompleteResultsTableViewController *)self->_corecipientsSearchViewController view];
    [v10 setBackgroundColor:v9];
  }

  if ([v6 count] >= 4)
  {
    v11 = [v6 subarrayWithRange:{0, 3}];

    v6 = v11;
  }

  -[CNAutocompleteResultsTableViewController setDeferTableViewUpdates:](self->_corecipientsSearchViewController, "setDeferTableViewUpdates:", [v6 count] == 0);
  [(CNAutocompleteResultsTableViewController *)self->_corecipientsSearchViewController setRecipients:v6];
  [(MFMailComposeView *)self _layoutSubviews:1];
}

- (void)clearSearchForRecipientView:(id)a3 reflow:(BOOL)a4 clear:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  [(MFMailComposeContactsSearchController *)self->_searchController cancelSearch];
  activeRecipientView = self->_activeRecipientView;
  self->_activeRecipientView = 0;

  if (v5)
  {
    [v9 clearText];
  }

  if (v6)
  {
    [v9 reflow];
  }

  [(MFMailComposeView *)self _layoutSubviews:0];
}

- (void)parentWillClose
{
  *(self + 776) |= 0x80u;
  [(CNComposeRecipientTextView *)self->_toField parentWillClose];
  [(CNComposeRecipientTextView *)self->_ccField parentWillClose];
  bccField = self->_bccField;

  [(CNComposeRecipientTextView *)bccField parentWillClose];
}

- (void)parentDidClose
{
  [(CNComposeRecipientTextView *)self->_toField parentDidClose];
  [(CNComposeRecipientTextView *)self->_ccField parentDidClose];
  bccField = self->_bccField;

  [(CNComposeRecipientTextView *)bccField parentDidClose];
}

- (void)didAppear
{
  *(self + 777) |= 0x10u;
  [(UIScrollView *)self->_bodyScroller flashScrollIndicators];

  [(MFMailComposeView *)self _createCCAndBCCFieldIfNeededAndCompleteSetup:1];
}

- (CGPoint)_headerViewOriginWithScrollViewOffsetCalculation
{
  [(UIView *)self->_headerView origin];
  v4 = v3;
  [(UIScrollView *)self->_bodyScroller contentOffset];
  if ((*(self + 777) & 1) == 0)
  {
    if (v5 >= 0.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [(MFMailComposeView *)self composeWebView];
    [v7 frame];
    v9 = v8;
    [(UIView *)self->_headerView frame];
    v11 = v9 - v10;

    if (v6 <= v11)
    {
      v5 = v6;
    }

    else
    {
      v5 = v11;
    }
  }

  v12 = v4;
  result.y = v12;
  result.x = v5;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v17 = [(MFMailComposeView *)self traitCollection];
  [(MFMailComposeView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFMailComposeView *)self safeAreaInsets];
  v16 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:v17 layoutMargins:v5 safeAreaInsets:v7, v9, v11, v12, v13, v14, v15];
  [(MFMailComposeView *)self setDisplayMetrics:v16];
}

- (void)layoutMarginsDidChange
{
  v17.receiver = self;
  v17.super_class = MFMailComposeView;
  [(MFMailComposeView *)&v17 layoutMarginsDidChange];
  [(MFMailComposeView *)self layoutMargins];
  [(UIView *)self->_headerView setLayoutMargins:?];
  v3 = [(MFMailComposeView *)self traitCollection];
  [(MFMailComposeView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(MFMailComposeView *)self safeAreaInsets];
  v16 = [MFComposeDisplayMetrics displayMetricsWithTraitCollection:v3 layoutMargins:v5 safeAreaInsets:v7, v9, v11, v12, v13, v14, v15];
  [(MFMailComposeView *)self setDisplayMetrics:v16];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  if ((*(self + 777) & 0x40) == 0)
  {
    headerView = self->_headerView;
    if (headerView && self->_bodyScroller == v4)
    {
      [(UIView *)headerView frame];
      [(MFMailComposeView *)self _headerViewOriginWithScrollViewOffsetCalculation];
      v8 = v7;
      [(UIView *)self->_headerView setFrame:?];
      if (![(MFMailComposeView *)self _presentsSearchResultsTableAsPopover]&& self->_searchViewController && self->_shadowView)
      {
        v9 = [(MFMailComposeView *)self _searchResultsTable];
        [v9 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v16 = [(MFMailComposeView *)self _searchResultsTable];
        [v16 setFrame:{v8, v11, v13, v15}];

        [(UIView *)self->_shadowView frame];
        [(UIView *)self->_shadowView setFrame:v8];
      }

      [(MFMailComposeView *)self _layoutFindPanelHostView];
    }

    else
    {
      v6 = +[MFMailComposeView log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(MFMailComposeView *)v4 scrollViewDidScroll:v6];
      }
    }

    v17 = [(MFMailComposeView *)self composeWebView];
    [v17 hideMakeLinkAccessoryButton];
  }
}

- (void)_displayMetricsDidChange
{
  v6 = [(MFMailComposeView *)self displayMetrics];
  [v6 trailingButtonMidlineOffset];
  v4 = v3;
  v5 = [(MFMailComposeView *)self searchViewController];
  [v5 setTrailingButtonMidlineInsetFromLayoutMargin:v4];
}

- (void)composeWebViewTextChanged:(id)a3
{
  v4 = [(MFMailComposeView *)self composeViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 composeViewBodyTextChanged:self];
  }
}

- (void)composeWebView:(id)a3 didChangeHeight:(double)a4
{
  v7 = a3;
  if (_os_feature_enabled_impl())
  {
    v6 = [(MFMailComposeView *)self composeViewDelegate];
    [v6 composeWebView:v7 didChangeHeight:a4];
  }
}

- (void)composeWebView:(id)a3 composeBodyIsEmpty:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (_os_feature_enabled_impl())
  {
    v6 = [(MFMailComposeView *)self composeViewDelegate];
    [v6 composeWebView:v7 composeBodyIsEmpty:v4];
  }
}

- (void)composeWebView:(id)a3 hasActiveWritingToolsSession:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(MFMailComposeView *)self composeViewDelegate];
  [v6 composeWebView:v7 hasActiveWritingToolsSession:v4];
}

- (void)composeFromView:(id)a3 didSelectAddress:(id)a4
{
  v6 = a4;
  v5 = [(MFMailComposeView *)self composeViewDelegate];
  [v5 setSendingEmailAddress:v6];
}

- (void)_performBlockWithStrongComposeCoordinator:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_composeCoordinator);
  if (WeakRetained)
  {
    v5[2](v5, WeakRetained);
  }
}

- (MFMailComposeViewDelegate)composeViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeViewDelegate);

  return WeakRetained;
}

- (MFMailComposeRecipientTextViewDelegate)composeRecipientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_composeRecipientViewDelegate);

  return WeakRetained;
}

- (UIViewController)popoverOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverOwner);

  return WeakRetained;
}

- (MFMailComposeToFieldDelegate)toFieldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_toFieldDelegate);

  return WeakRetained;
}

- (ComposeViewNavigationBarDelegate)navigationBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBarDelegate);

  return WeakRetained;
}

- (MFMailComposeCoordinator)composeCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_composeCoordinator);

  return WeakRetained;
}

- (void)scrollViewDidScroll:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1BE819000, a2, OS_LOG_TYPE_DEBUG, "Scroll view could not scroll: %@", &v2, 0xCu);
}

@end