@interface HWBrowserViewController
- (BOOL)_advancePageLeftButtonShouldBeVisible;
- (BOOL)_advancePageRightButtonShouldBeVisible;
- (BOOL)_currentKeyboardIsRTL;
- (BOOL)_deviceOrientationPortrait;
- (BOOL)_swipePageHintTextShouldBeVisible;
- (BOOL)handwritingScrollView:(id)view shouldCancelTouchesInView:(id)inView;
- (BOOL)shouldPresentModally;
- (CGRect)_visibleInkRegionInView;
- (CGSize)_canvasSize;
- (CGSize)currentLayoutSize;
- (CKBrowserItemPayload)resumablePayload;
- (double)topBarHeight;
- (id)_attributedButtonTitleForString:(id)string foregroundColor:(id)color;
- (id)_createAdvancePageLeftButton;
- (id)_createAdvancePageRightButton;
- (id)_handwritingItemFromCurrentState;
- (id)_keyboardImageDeviceSize:(BOOL)size orientationIsLandscape:(BOOL)landscape;
- (id)_pageButtonWith:(SEL)with image:(id)image label:(id)label;
- (id)_recentsPickerImageForState:(BOOL)state isLandscape:(BOOL)landscape;
- (int64_t)buttonYMargin;
- (int64_t)inkViewMargin;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_clear:(id)_clear;
- (void)_configureLayoutToiPadLandscape;
- (void)_configureLayoutToiPadPortrait;
- (void)_configureLayoutToiPhoneRecentsPicker;
- (void)_configureLayoutToiPhoneWritepad;
- (void)_datasourceUpdated:(id)updated;
- (void)_dismissAndShowKeyboard:(id)keyboard;
- (void)_done:(id)_done;
- (void)_inkViewTouchesBeganNotification:(id)notification;
- (void)_inkViewTouchesEndedNotification:(id)notification;
- (void)_loadDrawingFromResumablePayload;
- (void)_nextInputMode:(id)mode;
- (void)_pickLayoutForSize:(CGSize)size;
- (void)_resetScrollView:(BOOL)view;
- (void)_scrollPageToLeft:(id)left;
- (void)_scrollPageToRight:(id)right;
- (void)_scrollToVisibleRegion;
- (void)_sendHandwritingMessage;
- (void)_sendTypingIndicator;
- (void)_setupViewHierarchyForiPadWithBindings:(id)bindings;
- (void)_setupViewHierarchyForiPhoneWithBindings:(id)bindings;
- (void)_showInputMethodPicker:(id)picker event:(id)event;
- (void)_toggleRecentsPicker:(id)picker;
- (void)_udpatePageButtonVisibility:(BOOL)visibility;
- (void)_undo:(id)_undo;
- (void)_updateBackgroundView;
- (void)_updateCanvasSize;
- (void)_updateClearButton;
- (void)_updateCoronaColors;
- (void)_updateLayoutForKeboardInterfaceOrientaion;
- (void)_updateLayoutForRecentsPickerHidden:(BOOL)hidden;
- (void)_updateSwipePageHintTextVisibility:(BOOL)visibility;
- (void)_updateUndoButton:(id)button;
- (void)_updateUserInterfaceStyle;
- (void)_workaround_sendNilMessageToForceModalDismiss;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)pickerDidExitEditMode:(id)mode;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)sendEncodedHandwriting:(id)handwriting;
- (void)setCurrentHandwritingItem:(id)item;
- (void)setResumablePayload:(id)payload;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HWBrowserViewController

- (int64_t)buttonYMargin
{
  v2 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];
  if (_UIContentSizeCategoryIsAccessibilityContentSizeCategory())
  {
    v4 = 0;
  }

  else
  {
    v4 = 16;
  }

  return v4;
}

- (int64_t)inkViewMargin
{
  v2 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];
  if (_UIContentSizeCategoryIsAccessibilityContentSizeCategory())
  {
    v4 = 0;
  }

  else
  {
    v4 = 11;
  }

  return v4;
}

- (double)topBarHeight
{
  topBarSpacing = [(HWBrowserViewController *)self topBarSpacing];
  view = [(HWBrowserViewController *)self view];
  [view safeAreaInsets];
  v6 = v5;

  v7 = vcvtd_n_f64_s64(topBarSpacing, 1uLL);
  if (v6 <= 0.0)
  {
    v8 = topBarSpacing;
  }

  else
  {
    v8 = v7;
  }

  [(HWRepeatingButton *)self->_undoButton sizeThatFits:1.79769313e308, 1.79769313e308];
  return v8 + v9;
}

- (void)viewDidLoad
{
  v133.receiver = self;
  v133.super_class = HWBrowserViewController;
  [(HWBrowserViewController *)&v133 viewDidLoad];
  v3 = +[UIColor handwritingBrowserBackgroundColor];
  view = [(HWBrowserViewController *)self view];
  [view setBackgroundColor:v3];

  if (qword_32268 != -1)
  {
    sub_13904();
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_datasourceUpdated:" name:HWRecentsManagerUpdatedNotification object:0];

  [(HWBrowserViewController *)self _updateBackgroundView];
  v6 = [HWRepeatingButton alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(HWRepeatingButton *)v6 initWithFrame:CGRectZero.origin.x, y, width, height];
  undoButton = self->_undoButton;
  self->_undoButton = height;

  [(HWRepeatingButton *)self->_undoButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HWRepeatingButton *)self->_undoButton setEnabled:0];
  v12 = +[UIColor enabledButtonColor];
  [(HWRepeatingButton *)self->_undoButton setTintColor:v12];

  [(HWRepeatingButton *)self->_undoButton setContentHorizontalAlignment:1];
  v13 = self->_undoButton;
  v14 = +[NSBundle hw_handwritingPluginBundle];
  v15 = [v14 localizedStringForKey:@"Undo" value:&stru_28B70 table:@"HWBrowserViewController"];
  tintColor = [(HWRepeatingButton *)self->_undoButton tintColor];
  v17 = [(HWBrowserViewController *)self _attributedButtonTitleForString:v15 foregroundColor:tintColor];
  [(HWRepeatingButton *)v13 setAttributedTitle:v17 forState:0];

  v18 = self->_undoButton;
  v19 = +[NSBundle hw_handwritingPluginBundle];
  v20 = [v19 localizedStringForKey:@"Undo" value:&stru_28B70 table:@"HWBrowserViewController"];
  tintColor2 = [(HWRepeatingButton *)self->_undoButton tintColor];
  v22 = [tintColor2 colorWithAlphaComponent:0.4];
  v23 = [(HWBrowserViewController *)self _attributedButtonTitleForString:v20 foregroundColor:v22];
  [(HWRepeatingButton *)v18 setAttributedTitle:v23 forState:1];

  v24 = self->_undoButton;
  v25 = +[NSBundle hw_handwritingPluginBundle];
  v26 = [v25 localizedStringForKey:@"Undo" value:&stru_28B70 table:@"HWBrowserViewController"];
  v27 = +[UIColor disabledButtonColor];
  v28 = [(HWBrowserViewController *)self _attributedButtonTitleForString:v26 foregroundColor:v27];
  [(HWRepeatingButton *)v24 setAttributedTitle:v28 forState:2];

  [(HWRepeatingButton *)self->_undoButton addTarget:self action:"_undo:" forControlEvents:64];
  [(HWRepeatingButton *)self->_undoButton setRepeatingAction:"_undo:"];
  v29 = [UIButton buttonWithType:0];
  clearButton = self->_clearButton;
  self->_clearButton = v29;

  [(UIButton *)self->_clearButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_clearButton setHidden:1];
  v31 = +[UIColor enabledButtonColor];
  [(UIButton *)self->_clearButton setTintColor:v31];

  [(UIButton *)self->_clearButton setContentHorizontalAlignment:2];
  v32 = self->_clearButton;
  v33 = +[NSBundle hw_handwritingPluginBundle];
  v34 = [v33 localizedStringForKey:@"Clear" value:&stru_28B70 table:@"HWBrowserViewController"];
  tintColor3 = [(UIButton *)self->_clearButton tintColor];
  v36 = [(HWBrowserViewController *)self _attributedButtonTitleForString:v34 foregroundColor:tintColor3];
  [(UIButton *)v32 setAttributedTitle:v36 forState:0];

  v37 = self->_clearButton;
  v38 = +[NSBundle hw_handwritingPluginBundle];
  v39 = [v38 localizedStringForKey:@"Clear" value:&stru_28B70 table:@"HWBrowserViewController"];
  v40 = +[UIColor disabledButtonColor];
  v41 = [(HWBrowserViewController *)self _attributedButtonTitleForString:v39 foregroundColor:v40];
  [(UIButton *)v37 setAttributedTitle:v41 forState:2];

  [(UIButton *)self->_clearButton addTarget:self action:"_clear:" forControlEvents:64];
  v42 = [UIButton buttonWithType:0];
  doneButton = self->_doneButton;
  self->_doneButton = v42;

  [(UIButton *)self->_doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = +[UIColor enabledButtonColor];
  [(UIButton *)self->_doneButton setTintColor:v44];

  [(UIButton *)self->_doneButton setContentHorizontalAlignment:2];
  v45 = self->_doneButton;
  v46 = +[NSBundle hw_handwritingPluginBundle];
  v47 = [v46 localizedStringForKey:@"Done" value:&stru_28B70 table:@"HWBrowserViewController"];
  tintColor4 = [(UIButton *)self->_doneButton tintColor];
  v49 = [(HWBrowserViewController *)self _attributedButtonTitleForString:v47 foregroundColor:tintColor4];
  [(UIButton *)v45 setAttributedTitle:v49 forState:0];

  [(UIButton *)self->_doneButton addTarget:self action:"_done:" forControlEvents:64];
  v50 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  roateInstructionLabel = self->_roateInstructionLabel;
  self->_roateInstructionLabel = v50;

  [(UILabel *)self->_roateInstructionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_roateInstructionLabel setTextAlignment:1];
  v52 = +[NSBundle hw_handwritingPluginBundle];
  v53 = [v52 localizedStringForKey:@"Rotate to begin writing" value:&stru_28B70 table:@"HWBrowserViewController"];
  [(UILabel *)self->_roateInstructionLabel setText:v53];

  v54 = +[UIColor favoritesLabelColor];
  [(UILabel *)self->_roateInstructionLabel setTextColor:v54];

  v55 = [UIFont systemFontOfSize:14.0 weight:UIFontWeightLight];
  [(UILabel *)self->_roateInstructionLabel setFont:v55];

  [(UILabel *)self->_roateInstructionLabel setHidden:1];
  v56 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  swipeInstructionLabel = self->_swipeInstructionLabel;
  self->_swipeInstructionLabel = v56;

  [(UILabel *)self->_swipeInstructionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_swipeInstructionLabel setTextAlignment:1];
  v58 = +[NSBundle hw_handwritingPluginBundle];
  v59 = [v58 localizedStringForKey:@"Swipe with two fingers to go back." value:&stru_28B70 table:@"HWBrowserViewController"];
  [(UILabel *)self->_swipeInstructionLabel setText:v59];

  v60 = +[UIColor favoritesLabelColor];
  [(UILabel *)self->_swipeInstructionLabel setTextColor:v60];

  v61 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  [v61 _scaledValueForValue:16.0];
  v62 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  [(UILabel *)self->_swipeInstructionLabel setFont:v62];

  [(UILabel *)self->_swipeInstructionLabel setHidden:0];
  [(UILabel *)self->_swipeInstructionLabel setAlpha:0.0];
  [(UILabel *)self->_swipeInstructionLabel setNumberOfLines:0];
  [(UILabel *)self->_swipeInstructionLabel sizeToFit];
  v63 = [UIButton buttonWithType:0];
  keyboardButton = self->_keyboardButton;
  self->_keyboardButton = v63;

  [(UIButton *)self->_keyboardButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = +[UIColor keyboardButtonTintColor];
  [(UIButton *)self->_keyboardButton setTintColor:v65];

  v66 = +[NSBundle hw_handwritingPluginBundle];
  v67 = [v66 localizedStringForKey:@"Keyboard" value:&stru_28B70 table:@"HWBrowserViewController"];
  [(UIButton *)self->_keyboardButton setAccessibilityLabel:v67];

  [(UIButton *)self->_keyboardButton addTarget:self action:"_dismissAndShowKeyboard:" forControlEvents:64];
  v68 = [UIButton buttonWithType:0];
  recentsButton = self->_recentsButton;
  self->_recentsButton = v68;

  [(UIButton *)self->_recentsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v70 = +[UIColor keyboardButtonTintColor];
  [(UIButton *)self->_recentsButton setTintColor:v70];

  v71 = +[NSBundle hw_handwritingPluginBundle];
  v72 = [v71 localizedStringForKey:@"Recents" value:&stru_28B70 table:@"HWBrowserViewController"];
  [(UIButton *)self->_recentsButton setAccessibilityLabel:v72];

  [(UIButton *)self->_recentsButton addTarget:self action:"_toggleRecentsPicker:" forControlEvents:64];
  v73 = [UIButton buttonWithType:0];
  inputMethodPickerButton = self->_inputMethodPickerButton;
  self->_inputMethodPickerButton = v73;

  [(UIButton *)self->_inputMethodPickerButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = +[UIColor favoritesGlobeButtonTintColor];
  [(UIButton *)self->_inputMethodPickerButton setTintColor:v75];

  v76 = +[NSBundle hw_handwritingPluginBundle];
  v77 = [v76 localizedStringForKey:@"Input method" value:&stru_28B70 table:@"HWBrowserViewController"];
  [(UIButton *)self->_inputMethodPickerButton setAccessibilityLabel:v77];

  v78 = self->_inputMethodPickerButton;
  v79 = UIKeyboardGetGlobeKeyImage();
  v80 = [v79 imageWithRenderingMode:2];
  [(UIButton *)v78 setImage:v80 forState:0];

  [(UIButton *)self->_inputMethodPickerButton addTarget:self action:"_nextInputMode:" forControlEvents:64];
  [(UIButton *)self->_inputMethodPickerButton addTarget:self action:"_showInputMethodPicker:event:" forControlEvents:0xFFFFFFFFLL];
  height2 = [[HWFavoritesPickerView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  recentsPicker = self->_recentsPicker;
  self->_recentsPicker = height2;

  [(HWFavoritesPickerView *)self->_recentsPicker setTranslatesAutoresizingMaskIntoConstraints:0];
  v83 = +[UIColor clearColor];
  [(HWFavoritesPickerView *)self->_recentsPicker setBackgroundColor:v83];

  [(HWFavoritesPickerView *)self->_recentsPicker setDelegate:self];
  objc_initWeak(&location, self);
  v130[0] = _NSConcreteStackBlock;
  v130[1] = 3221225472;
  v130[2] = sub_3368;
  v130[3] = &unk_28690;
  objc_copyWeak(&v131, &location);
  [(HWFavoritesPickerView *)self->_recentsPicker setSelectionHandler:v130];
  v84 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  handwritingContainerView = self->_handwritingContainerView;
  self->_handwritingContainerView = v84;

  [(UIView *)self->_handwritingContainerView setTranslatesAutoresizingMaskIntoConstraints:1];
  [(UIView *)self->_handwritingContainerView setUserInteractionEnabled:0];
  v86 = +[UIColor clearColor];
  [(UIView *)self->_handwritingContainerView setBackgroundColor:v86];

  v87 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  handwritingPreviewContainer = self->_handwritingPreviewContainer;
  self->_handwritingPreviewContainer = v87;

  [(UIView *)self->_handwritingPreviewContainer setTranslatesAutoresizingMaskIntoConstraints:1];
  v89 = [[DKInkView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  canvasView = self->_canvasView;
  self->_canvasView = v89;

  [(DKInkView *)self->_canvasView setTranslatesAutoresizingMaskIntoConstraints:1];
  v91 = +[UIColor drawingCanvasBackgroundColor];
  [(DKInkView *)self->_canvasView setBackgroundColor:v91];

  [(DKInkView *)self->_canvasView setExclusiveTouch:1];
  v92 = +[UIColor inkColor];
  [(DKInkView *)self->_canvasView setStrokeColor:v92];

  [(DKInkView *)self->_canvasView setRenderPreviewMode:2];
  height3 = [[HWScrollView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  handwritingScrollView = self->_handwritingScrollView;
  self->_handwritingScrollView = height3;

  [(HWScrollView *)self->_handwritingScrollView setDelegate:self];
  [(HWScrollView *)self->_handwritingScrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HWScrollView *)self->_handwritingScrollView setShowsVerticalScrollIndicator:0];
  [(HWScrollView *)self->_handwritingScrollView setShowsHorizontalScrollIndicator:0];
  panGestureRecognizer = [(HWScrollView *)self->_handwritingScrollView panGestureRecognizer];
  [panGestureRecognizer setMinimumNumberOfTouches:2];

  panGestureRecognizer2 = [(HWScrollView *)self->_handwritingScrollView panGestureRecognizer];
  [panGestureRecognizer2 _setHysteresis:1.0];

  panGestureRecognizer3 = [(HWScrollView *)self->_handwritingScrollView panGestureRecognizer];
  [panGestureRecognizer3 setEnabled:0];

  [(HWScrollView *)self->_handwritingScrollView setDelaysContentTouches:0];
  [(HWScrollView *)self->_handwritingScrollView setCanCancelContentTouches:1];
  [(HWScrollView *)self->_handwritingScrollView setPagingEnabled:0];
  [(HWScrollView *)self->_handwritingScrollView setContentInset:*(qword_32250 + 16), *(qword_32250 + 24), *(qword_32250 + 32), *(qword_32250 + 40)];
  _createAdvancePageRightButton = [(HWBrowserViewController *)self _createAdvancePageRightButton];
  advancePageRightButton = self->_advancePageRightButton;
  self->_advancePageRightButton = _createAdvancePageRightButton;

  _createAdvancePageLeftButton = [(HWBrowserViewController *)self _createAdvancePageLeftButton];
  advancePageLeftButton = self->_advancePageLeftButton;
  self->_advancePageLeftButton = _createAdvancePageLeftButton;

  v102 = [[HWStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
  topStackView = self->_topStackView;
  self->_topStackView = &v102->super;

  [(UIStackView *)self->_topStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_topStackView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_topStackView setSpacing:[(HWBrowserViewController *)self topBarSpacing]];
  [(UIStackView *)self->_topStackView setLayoutMargins:*(qword_32250 + 160), *(qword_32250 + 168), *(qword_32250 + 176), *(qword_32250 + 184)];
  height4 = [[HWView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  bottomView = self->_bottomView;
  self->_bottomView = &height4->super;

  [(UIView *)self->_bottomView setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [(UIView *)self->_bottomView heightAnchor];
  v107 = [heightAnchor constraintEqualToConstant:65.0];
  bottomViewHeightConstraint = self->_bottomViewHeightConstraint;
  self->_bottomViewHeightConstraint = v107;

  [(NSLayoutConstraint *)self->_bottomViewHeightConstraint setActive:1];
  v109 = [[HWStackView alloc] initWithArrangedSubviews:&__NSArray0__struct];
  bottomStackView = self->_bottomStackView;
  self->_bottomStackView = &v109->super;

  [(UIStackView *)self->_bottomStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_bottomStackView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_bottomStackView setSpacing:32.0];
  [(UIStackView *)self->_bottomStackView setLayoutMargins:*(qword_32250 + 192), *(qword_32250 + 200), *(qword_32250 + 208), *(qword_32250 + 216)];
  [(UIStackView *)self->_bottomStackView setSemanticContentAttribute:3];
  view2 = [(HWBrowserViewController *)self view];
  [view2 addSubview:self->_handwritingScrollView];

  view3 = [(HWBrowserViewController *)self view];
  [view3 addSubview:self->_backgroundView];

  view4 = [(HWBrowserViewController *)self view];
  [view4 sendSubviewToBack:self->_backgroundView];

  view5 = [(HWBrowserViewController *)self view];
  [view5 addSubview:self->_topStackView];

  view6 = [(HWBrowserViewController *)self view];
  [view6 addSubview:self->_bottomView];

  view7 = [(HWBrowserViewController *)self view];
  [view7 addSubview:self->_advancePageRightButton];

  view8 = [(HWBrowserViewController *)self view];
  [view8 addSubview:self->_advancePageLeftButton];

  view9 = [(HWBrowserViewController *)self view];
  [view9 addSubview:self->_swipeInstructionLabel];

  [(HWScrollView *)self->_handwritingScrollView addSubview:self->_canvasView];
  [(HWScrollView *)self->_handwritingScrollView addSubview:self->_handwritingContainerView];
  [(UIView *)self->_bottomView addSubview:self->_bottomStackView];
  v119 = _NSDictionaryOfVariableBindings(@"_backgroundView, _topStackView, _bottomView, _bottomStackView, _canvasView, _handwritingContainerView, _handwritingScrollView, _advancePageRightButton, _advancePageLeftButton, _recentsPicker, _swipeInstructionLabel", self->_backgroundView, self->_topStackView, self->_bottomView, self->_bottomStackView, self->_canvasView, self->_handwritingContainerView, self->_handwritingScrollView, self->_advancePageRightButton, self->_advancePageLeftButton, self->_recentsPicker, self->_swipeInstructionLabel, 0);
  v120 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_backgroundView]|" options:0 metrics:0 views:v119];
  [NSLayoutConstraint activateConstraints:v120];

  v121 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_backgroundView]|" options:0 metrics:0 views:v119];
  [NSLayoutConstraint activateConstraints:v121];

  if (HWDeviceIsiPad())
  {
    [(HWBrowserViewController *)self _setupViewHierarchyForiPadWithBindings:v119];
  }

  else
  {
    [(HWBrowserViewController *)self _setupViewHierarchyForiPhoneWithBindings:v119];
  }

  v122 = +[NSNotificationCenter defaultCenter];
  strokeUndoManager = [(DKInkView *)self->_canvasView strokeUndoManager];
  [v122 addObserver:self selector:"_updateUndoButton:" name:NSUndoManagerDidUndoChangeNotification object:strokeUndoManager];

  v124 = +[NSNotificationCenter defaultCenter];
  strokeUndoManager2 = [(DKInkView *)self->_canvasView strokeUndoManager];
  [v124 addObserver:self selector:"_updateUndoButton:" name:NSUndoManagerCheckpointNotification object:strokeUndoManager2];

  v126 = +[NSNotificationCenter defaultCenter];
  [v126 addObserver:self selector:"_inkViewTouchesBeganNotification:" name:DKInkViewTouchesBeganNotification object:self->_canvasView];

  v127 = +[NSNotificationCenter defaultCenter];
  [v127 addObserver:self selector:"_inkViewTouchesEndedNotification:" name:DKInkViewTouchesEndedNotification object:self->_canvasView];

  v128 = +[NSNotificationCenter defaultCenter];
  [v128 addObserver:self selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v129 = +[NSNotificationCenter defaultCenter];
  [v129 addObserver:self selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

  [(HWBrowserViewController *)self _udpatePageButtonVisibility:0];
  [(HWBrowserViewController *)self _updateClearButton];

  objc_destroyWeak(&v131);
  objc_destroyWeak(&location);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v14.receiver = self;
  v14.super_class = HWBrowserViewController;
  [(HWBrowserViewController *)&v14 viewWillAppear:?];
  [(HWBrowserViewController *)self _updateUserInterfaceStyle];
  navigationController = [(HWBrowserViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:appearCopy];

  view = [(HWBrowserViewController *)self view];
  [view bounds];
  [(HWBrowserViewController *)self _pickLayoutForSize:v7, v8];

  [(HWBrowserViewController *)self _updateLayoutForKeboardInterfaceOrientaion];
  v9 = +[HWRecentsManager sharedManager];
  [v9 reloadStoredItems];

  v10 = +[HWRecentsManager sharedManager];
  items = [v10 items];
  recentsPicker = [(HWBrowserViewController *)self recentsPicker];
  [recentsPicker setItems:items];

  if (+[DKInkView gpuAvailable])
  {
    canvasView = [(HWBrowserViewController *)self canvasView];
    [canvasView resumeRendering];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HWBrowserViewController;
  [(HWCKBrowserViewController *)&v4 viewDidAppear:appear];
  if (self->_resumablePayloadToLoad)
  {
    [(HWBrowserViewController *)self _loadDrawingFromResumablePayload];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = HWBrowserViewController;
  [(HWCKBrowserViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HWBrowserViewController;
  [(HWBrowserViewController *)&v5 viewDidDisappear:disappear];
  canvasView = [(HWBrowserViewController *)self canvasView];
  [canvasView pauseRendering];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  else
  {
    return 24;
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = HWBrowserViewController;
  [(HWBrowserViewController *)&v2 didReceiveMemoryWarning];
}

- (void)dealloc
{
  [(DKInkView *)self->_canvasView teardown];
  canvasView = self->_canvasView;
  self->_canvasView = 0;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  strokeUndoManager = [(DKInkView *)self->_canvasView strokeUndoManager];
  [v6 removeObserver:self name:NSUndoManagerDidUndoChangeNotification object:strokeUndoManager];

  v8 = +[NSNotificationCenter defaultCenter];
  strokeUndoManager2 = [(DKInkView *)self->_canvasView strokeUndoManager];
  [v8 removeObserver:self name:NSUndoManagerCheckpointNotification object:strokeUndoManager2];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self name:DKInkViewTouchesBeganNotification object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self name:DKInkViewTouchesEndedNotification object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 removeObserver:self name:HWRecentsManagerUpdatedNotification object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 removeObserver:self];

  v14.receiver = self;
  v14.super_class = HWBrowserViewController;
  [(HWBrowserViewController *)&v14 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = HWBrowserViewController;
  [(HWBrowserViewController *)&v13 viewDidLayoutSubviews];
  [(NSLayoutConstraint *)self->_leftPageButtonWidthAnchor setConstant:62.0];
  [(NSLayoutConstraint *)self->_rightPageButtonWidthAnchor setConstant:62.0];
  [(HWBrowserViewController *)self _updateCanvasSize];
  [(HWBrowserViewController *)self _udpatePageButtonVisibility:1];
  view = [(HWBrowserViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  [(HWBrowserViewController *)self currentLayoutSize];
  if (v5 == v9 && v7 == v8)
  {
    if (!self->_canvasNeedsRepositioning)
    {
      return;
    }
  }

  else
  {
    view2 = [(HWBrowserViewController *)self view];
    [view2 bounds];
    [(HWBrowserViewController *)self _pickLayoutForSize:v11, v12];
  }

  if (([(DKInkView *)self->_canvasView canvasHasInk]& 1) == 0)
  {
    [(HWBrowserViewController *)self _resetScrollView:0];
  }

  self->_canvasNeedsRepositioning = 0;
}

- (BOOL)shouldPresentModally
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (void)_undo:(id)_undo
{
  canvasView = [(HWBrowserViewController *)self canvasView];
  [canvasView undoLastStroke];

  canvasView2 = [(HWBrowserViewController *)self canvasView];
  strokeUndoManager = [canvasView2 strokeUndoManager];
  canUndo = [strokeUndoManager canUndo];

  if (canUndo)
  {
    [(HWBrowserViewController *)self _scrollToVisibleRegion];
  }

  else
  {
    [(HWBrowserViewController *)self _resetScrollView:1];
  }

  [(HWBrowserViewController *)self _udpatePageButtonVisibility:1];

  [(HWBrowserViewController *)self _updateClearButton];
}

- (void)_clear:(id)_clear
{
  [(HWBrowserViewController *)self setCurrentHandwritingItem:0];
  v4 = objc_alloc_init(DKDrawing);
  canvasView = [(HWBrowserViewController *)self canvasView];
  [canvasView setCurrentDrawing:v4];

  resumablePayload = [(HWBrowserViewController *)self resumablePayload];
  [resumablePayload setData:0];

  [(HWBrowserViewController *)self _resetScrollView:0];
  [(HWBrowserViewController *)self _udpatePageButtonVisibility:1];

  [(HWBrowserViewController *)self _updateUndoButton:0];
}

- (void)_done:(id)_done
{
  if ([(HWFavoritesPickerView *)self->_recentsPicker isEditing])
  {
    recentsPicker = self->_recentsPicker;

    [(HWFavoritesPickerView *)recentsPicker cancelEditing:1];
  }

  else
  {
    [(HWBrowserViewController *)self _sendHandwritingMessage];
    [(HWBrowserViewController *)self setCurrentHandwritingItem:0];
    v5 = objc_alloc_init(DKDrawing);
    canvasView = [(HWBrowserViewController *)self canvasView];
    [canvasView setCurrentDrawing:v5];

    [(HWBrowserViewController *)self _updateUndoButton:0];
    [(HWBrowserViewController *)self _resetScrollView:0];

    [(HWBrowserViewController *)self _udpatePageButtonVisibility:1];
  }
}

- (void)_dismissAndShowKeyboard:(id)keyboard
{
  [(HWFavoritesPickerView *)self->_recentsPicker cancelEditing:0];

  [(HWCKBrowserViewController *)self dismiss];
}

- (void)_toggleRecentsPicker:(id)picker
{
  isHidden = [(HWFavoritesPickerView *)self->_recentsPicker isHidden];
  if (isHidden)
  {
    v5 = +[HWRecentsManager sharedManager];
    [v5 reloadStoredItems];

    v6 = +[HWRecentsManager sharedManager];
    items = [v6 items];
    recentsPicker = [(HWBrowserViewController *)self recentsPicker];
    [recentsPicker setItems:items];
  }

  [(HWBrowserViewController *)self _updateLayoutForRecentsPickerHidden:isHidden ^ 1];
}

- (void)_updateLayoutForRecentsPickerHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _deviceOrientationPortrait = [(HWBrowserViewController *)self _deviceOrientationPortrait];
  [(HWScrollView *)self->_handwritingScrollView setHidden:hiddenCopy ^ 1];
  [(DKInkView *)self->_canvasView setHidden:hiddenCopy ^ 1];
  [(HWFavoritesPickerView *)self->_recentsPicker setHidden:hiddenCopy];
  [(UIView *)self->_advancePageRightButton setHidden:hiddenCopy ^ 1];
  [(UIView *)self->_advancePageLeftButton setHidden:hiddenCopy ^ 1];
  [(UIStackView *)self->_topStackView setHidden:hiddenCopy ^ 1];
  [(UIButton *)self->_keyboardButton setHidden:hiddenCopy ^ 1];
  if (HWDeviceIsiPad())
  {
    v6 = qword_32250;
    bottom = *(qword_32250 + 256);
    if ((_deviceOrientationPortrait & 1) != 0 || ([(HWBrowserViewController *)self currentLayoutSize], v9 = [(HWBrowserViewController *)self _heightAvailableForLandscapeStylePresentation:v8], v6 = qword_32250, !v9))
    {
      v10 = v6[16];
      v11 = v6[17];
      v12 = v6[18];
      v13 = v6[19];
      [(NSLayoutConstraint *)self->_bottomStackViewBottomToBottomScrollViewConstraint setActive:hiddenCopy];
      [(NSLayoutConstraint *)self->_bottomStackViewToSuperViewBottomConstraint setActive:hiddenCopy ^ 1];
      if (!hiddenCopy)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *(qword_32250 + 192);
      v11 = *(qword_32250 + 200);
      v12 = *(qword_32250 + 208);
      v13 = *(qword_32250 + 216);
      if (!hiddenCopy)
      {
LABEL_5:
        [(UIStackView *)self->_bottomStackView setLayoutMargins:*(qword_32250 + 224), *(qword_32250 + 232), *(qword_32250 + 240), *(qword_32250 + 248)];
        right = 0.0;
        v15 = 2;
        left = 0.0;
        top = 0.0;
LABEL_8:
        [(UIButton *)self->_recentsButton setImageEdgeInsets:top, left, bottom, right];
        [(UIButton *)self->_recentsButton setContentVerticalAlignment:v15];
        goto LABEL_9;
      }
    }

    [(UIStackView *)self->_bottomStackView setLayoutMargins:v10, v11, v12, v13];
    v15 = 0;
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    goto LABEL_8;
  }

LABEL_9:
  [(HWFavoritesPickerView *)self->_recentsPicker reloadData];
  recentsPicker = [(HWBrowserViewController *)self recentsPicker];
  [recentsPicker cancelEditing:0];

  v19 = [(HWBrowserViewController *)self _recentsPickerImageForState:[(HWFavoritesPickerView *)self->_recentsPicker isHidden]^ 1 isLandscape:_deviceOrientationPortrait ^ 1];
  [(UIButton *)self->_recentsButton setImage:v19 forState:0];
}

- (void)_showInputMethodPicker:(id)picker event:(id)event
{
  pickerCopy = picker;
  eventCopy = event;
  parentViewController = [(HWBrowserViewController *)self parentViewController];
  if (objc_opt_respondsToSelector())
  {
    [parentViewController handleInputModeListFromView:pickerCopy withEvent:eventCopy];
  }
}

- (void)_nextInputMode:(id)mode
{
  parentViewController = [(HWBrowserViewController *)self parentViewController];
  if (objc_opt_respondsToSelector())
  {
    [parentViewController advanceToNextInputMode];
  }
}

- (void)_sendHandwritingMessage
{
  _handwritingItemFromCurrentState = [(HWBrowserViewController *)self _handwritingItemFromCurrentState];
  currentHandwritingItem = [(HWBrowserViewController *)self currentHandwritingItem];

  drawing = [_handwritingItemFromCurrentState drawing];
  totalPoints = [drawing totalPoints];

  if (totalPoints < 1)
  {
    [(HWBrowserViewController *)self _workaround_sendNilMessageToForceModalDismiss];
  }

  else
  {
    v6 = [HWEncoding encodeHandwriting:_handwritingItemFromCurrentState compress:1];
    [(HWBrowserViewController *)self sendEncodedHandwriting:v6];
    if (_handwritingItemFromCurrentState != currentHandwritingItem)
    {
      [(HWBrowserViewController *)self storeHandwritingToFavorites:_handwritingItemFromCurrentState];
    }
  }
}

- (void)_sendTypingIndicator
{
  sendDelegate = [(HWCKBrowserViewController *)self sendDelegate];
  [sendDelegate setLocalUserIsTyping:1];
}

- (id)_handwritingItemFromCurrentState
{
  canvasView = [(HWBrowserViewController *)self canvasView];
  strokeUndoManager = [canvasView strokeUndoManager];
  if ([strokeUndoManager canUndo])
  {
  }

  else
  {
    currentHandwritingItem = [(HWBrowserViewController *)self currentHandwritingItem];

    if (currentHandwritingItem)
    {
      currentHandwritingItem2 = [(HWBrowserViewController *)self currentHandwritingItem];
      goto LABEL_6;
    }
  }

  canvasView2 = [(HWBrowserViewController *)self canvasView];
  currentDrawing = [canvasView2 currentDrawing];
  v9 = [currentDrawing copy];

  canvasView3 = [(HWBrowserViewController *)self canvasView];
  [canvasView3 bounds];
  [v9 setCanvasBounds:?];

  currentHandwritingItem2 = [[HWHandwritingItem alloc] initWithDrawing:v9];
LABEL_6:

  return currentHandwritingItem2;
}

- (CGSize)_canvasSize
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  if (HWDeviceIsLargeiPad())
  {
    if (v5 >= v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    v9 = v8 - (*(qword_32250 + 56) + *(qword_32250 + 72));
  }

  else
  {
    v9 = 1266.0;
  }

  [(HWScrollView *)self->_handwritingScrollView bounds];
  v11 = v10;
  v12 = v9;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)_updateCanvasSize
{
  [(HWBrowserViewController *)self _canvasSize];
  v4 = v3;
  v6 = v5;
  [(HWScrollView *)self->_handwritingScrollView setContentSize:?];
  [(UIView *)self->_handwritingContainerView setFrame:0.0, 0.0, v4, v6];
  canvasView = self->_canvasView;

  [(DKInkView *)canvasView setFrame:0.0, 0.0, v4, v6];
}

- (void)_resetScrollView:(BOOL)view
{
  viewCopy = view;
  _currentKeyboardIsRTL = [(HWBrowserViewController *)self _currentKeyboardIsRTL];
  handwritingScrollView = self->_handwritingScrollView;
  if (_currentKeyboardIsRTL)
  {
    [(HWScrollView *)handwritingScrollView contentSize];
    v8 = v7;
    [(HWScrollView *)self->_handwritingScrollView bounds];
    v10 = v8 - v9;
    [(HWScrollView *)self->_handwritingScrollView contentInset];
    v12 = v10 + v11;
  }

  else
  {
    [(HWScrollView *)handwritingScrollView contentInset];
    v12 = -v13;
  }

  [(HWScrollView *)self->_handwritingScrollView setContentOffset:viewCopy animated:v12, 0.0];

  [(HWBrowserViewController *)self _udpatePageButtonVisibility:1];
}

- (void)_udpatePageButtonVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  _advancePageRightButtonShouldBeVisible = [(HWBrowserViewController *)self _advancePageRightButtonShouldBeVisible];
  _advancePageLeftButtonShouldBeVisible = [(HWBrowserViewController *)self _advancePageLeftButtonShouldBeVisible];
  if (_advancePageRightButtonShouldBeVisible)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (_advancePageLeftButtonShouldBeVisible)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  [(UIView *)self->_advancePageRightButton alpha];
  if (v9 != v7 || ([(UIView *)self->_advancePageLeftButton alpha], v10 != v8))
  {
    if (visibilityCopy)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_459C;
      v12[3] = &unk_286B8;
      v12[4] = self;
      *&v12[5] = v7;
      *&v12[6] = v8;
      [UIView animateWithDuration:v12 animations:0.18];
    }

    else
    {
      [(UIView *)self->_advancePageRightButton setAlpha:v7];
      advancePageLeftButton = self->_advancePageLeftButton;

      [(UIView *)advancePageLeftButton setAlpha:v8];
    }
  }
}

- (BOOL)_advancePageRightButtonShouldBeVisible
{
  [(HWScrollView *)self->_handwritingScrollView contentSize];
  v4 = v3;
  [(HWScrollView *)self->_handwritingScrollView bounds];
  v6 = v4 - v5;
  [(HWScrollView *)self->_handwritingScrollView contentInset];
  v8 = v6 + v7;
  [(HWScrollView *)self->_handwritingScrollView contentOffset];
  if (v9 >= v8)
  {
    return 0;
  }

  if (([(DKInkView *)self->_canvasView canvasHasInk]& 1) != 0)
  {
    return 1;
  }

  canvasView = self->_canvasView;

  return [(DKInkView *)canvasView trackingTouches];
}

- (BOOL)_advancePageLeftButtonShouldBeVisible
{
  [(HWScrollView *)self->_handwritingScrollView contentOffset];
  if (v3 <= 0.0)
  {
    return 0;
  }

  if (([(DKInkView *)self->_canvasView canvasHasInk]& 1) != 0)
  {
    return 1;
  }

  canvasView = self->_canvasView;

  return [(DKInkView *)canvasView trackingTouches];
}

- (void)_updateSwipePageHintTextVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  if ([(HWBrowserViewController *)self _swipePageHintTextShouldBeVisible])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (!self->_hasSwipeTextBeenShown)
  {
    self->_hasSwipeTextBeenShown = 1;
    v6 = [NSUserDefaults alloc];
    v7 = [v6 initWithSuiteName:HWPreferencesDomain];
    [v7 setBool:1 forKey:HWPreferencesSwipeHintTextHasBeenShownKey];
    [v7 synchronize];
  }

  [(UILabel *)self->_swipeInstructionLabel alpha];
  if (v8 != v5)
  {
    if (visibilityCopy)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_486C;
      v10[3] = &unk_286E0;
      v10[4] = self;
      *&v10[5] = v5;
      [UIView animateWithDuration:v10 animations:0.18];
    }

    else
    {
      swipeInstructionLabel = self->_swipeInstructionLabel;

      [(UILabel *)swipeInstructionLabel setAlpha:v5];
    }
  }
}

- (BOOL)_swipePageHintTextShouldBeVisible
{
  if (!self->_hasSwipeDefaultBeenLoaded)
  {
    self->_hasSwipeDefaultBeenLoaded = 1;
    v3 = [NSUserDefaults alloc];
    v4 = [v3 initWithSuiteName:HWPreferencesDomain];
    self->_hasSwipeTextBeenShown = [v4 BOOLForKey:HWPreferencesSwipeHintTextHasBeenShownKey];
  }

  return !self->_hasSwipeTextBeenShown;
}

- (void)_scrollPageToLeft:(id)left
{
  [(HWScrollView *)self->_handwritingScrollView contentInset];
  v5 = -v4;
  [(HWScrollView *)self->_handwritingScrollView bounds];
  v6 = CGRectGetWidth(v10) * -0.8;
  [(HWScrollView *)self->_handwritingScrollView contentOffset];
  v8 = v7 + v6;
  if (v8 < v5)
  {
    v8 = v5;
  }

  if (v8 + -10.0 >= v5)
  {
    v8 = v5;
  }

  [(HWScrollView *)self->_handwritingScrollView setContentOffset:1 animated:v8];
  if (self->_hasSwipeTextBeenShown)
  {

    [(HWBrowserViewController *)self _updateSwipePageHintTextVisibility:1];
  }
}

- (void)_scrollPageToRight:(id)right
{
  [(HWScrollView *)self->_handwritingScrollView contentSize];
  v5 = v4;
  [(HWScrollView *)self->_handwritingScrollView bounds];
  v7 = v5 - v6;
  [(HWScrollView *)self->_handwritingScrollView contentInset];
  v9 = v7 + v8;
  [(HWScrollView *)self->_handwritingScrollView bounds];
  v10 = CGRectGetWidth(v14) * 0.8;
  [(HWScrollView *)self->_handwritingScrollView contentOffset];
  v12 = v10 + v11;
  if (v12 >= v9)
  {
    v12 = v9;
  }

  if (v12 + 10.0 >= v9)
  {
    v12 = v9;
  }

  [(HWScrollView *)self->_handwritingScrollView setContentOffset:1 animated:v12];
  if (self->_hasSwipeTextBeenShown)
  {

    [(HWBrowserViewController *)self _updateSwipePageHintTextVisibility:1];
  }
}

- (void)_scrollToVisibleRegion
{
  [(DKInkView *)self->_canvasView inkBounds];
  v26 = v3;
  v27 = v4;
  v28 = v6;
  v29 = v5;
  [(HWBrowserViewController *)self _visibleInkRegionInView];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view = [(HWBrowserViewController *)self view];
  [view bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v31.origin.x = v8;
  v31.origin.y = v10;
  v31.size.width = v12;
  v31.size.height = v14;
  v33.origin.x = v17;
  v33.origin.y = v19;
  v33.size.width = v21;
  v33.size.height = v23;
  if (!CGRectIntersectsRect(v31, v33))
  {
    v34.origin.x = CGRectZero.origin.x;
    v34.origin.y = CGRectZero.origin.y;
    v34.size.width = CGRectZero.size.width;
    v34.size.height = CGRectZero.size.height;
    v32.origin.x = v8;
    v32.origin.y = v10;
    v32.size.width = v12;
    v32.size.height = v14;
    if (!CGRectEqualToRect(v32, v34))
    {
      v24 = 0.0;
      if (v26 >= 60.0)
      {
        v24 = v26;
      }

      handwritingScrollView = self->_handwritingScrollView;

      [(HWScrollView *)handwritingScrollView scrollRectToVisible:1 animated:v24, v29, v28, v27];
    }
  }
}

- (CGRect)_visibleInkRegionInView
{
  [(DKInkView *)self->_canvasView inkBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(HWBrowserViewController *)self view];
  canvasView = [(HWBrowserViewController *)self canvasView];
  [view convertRect:canvasView fromView:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)_createAdvancePageRightButton
{
  v3 = [[HWView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(HWView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:-1 scale:30.0];
  v5 = [UIImage systemImageNamed:@"chevron.right" withConfiguration:v4];

  v6 = +[NSBundle hw_handwritingPluginBundle];
  v7 = [v6 localizedStringForKey:@"Next page" value:&stru_28B70 table:@"HWBrowserViewController"];
  v8 = [(HWBrowserViewController *)self _pageButtonWith:"_scrollPageToRight:" image:v5 label:v7];

  [v8 setImageEdgeInsets:{0.0, 0.0, 0.0, 2.0}];
  [(HWView *)v3 addSubview:v8];
  leadingAnchor = [v8 leadingAnchor];
  leadingAnchor2 = [(HWView *)v3 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  [v11 setConstant:4.5];
  [v11 setActive:1];
  centerYAnchor = [v8 centerYAnchor];
  centerYAnchor2 = [(HWView *)v3 centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v14 setActive:1];

  return v3;
}

- (id)_createAdvancePageLeftButton
{
  v3 = [[HWView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(HWView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:-1 scale:30.0];
  v5 = [UIImage systemImageNamed:@"chevron.left" withConfiguration:v4];

  v6 = +[NSBundle hw_handwritingPluginBundle];
  v7 = [v6 localizedStringForKey:@"Previous page" value:&stru_28B70 table:@"HWBrowserViewController"];
  v8 = [(HWBrowserViewController *)self _pageButtonWith:"_scrollPageToLeft:" image:v5 label:v7];

  [v8 setImageEdgeInsets:{0.0, 2.0, 0.0, 0.0}];
  [(HWView *)v3 addSubview:v8];
  trailingAnchor = [v8 trailingAnchor];
  trailingAnchor2 = [(HWView *)v3 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  [v11 setConstant:-4.5];
  [v11 setActive:1];
  centerYAnchor = [v8 centerYAnchor];
  centerYAnchor2 = [(HWView *)v3 centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v14 setActive:1];

  return v3;
}

- (id)_pageButtonWith:(SEL)with image:(id)image label:(id)label
{
  labelCopy = label;
  imageCopy = image;
  v10 = [UIButton buttonWithType:1];
  [v10 setAccessibilityLabel:labelCopy];

  v11 = +[UIColor advancePageButtonEnabledColor];
  [v10 setTintColor:v11];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setContentHorizontalAlignment:0];
  [v10 addTarget:self action:with forControlEvents:64];
  [v10 setImage:imageCopy forState:0];

  widthAnchor = [v10 widthAnchor];
  v13 = [widthAnchor constraintEqualToConstant:40.0];
  [v13 setActive:1];

  heightAnchor = [v10 heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:60.0];
  [v15 setActive:1];

  return v10;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = HWBrowserViewController;
  changeCopy = change;
  [(HWBrowserViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(HWBrowserViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(HWBrowserViewController *)self _updateUserInterfaceStyle];
  }
}

- (void)_updateUserInterfaceStyle
{
  [(HWBrowserViewController *)self _updateCoronaColors];

  [(HWBrowserViewController *)self _updateBackgroundView];
}

- (void)_updateCoronaColors
{
  v3 = +[UIColor favoritesPickerBorderColor];
  cGColor = [v3 CGColor];
  layer = [(DKInkView *)self->_canvasView layer];
  [layer setBorderColor:cGColor];

  v9 = +[UIColor favoritesPickerBorderColor];
  v6 = v9;
  cGColor2 = [v9 CGColor];
  layer2 = [(UIView *)self->_handwritingContainerView layer];
  [layer2 setBorderColor:cGColor2];
}

- (void)_updateBackgroundView
{
  v17 = self->_backgroundView;
  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == &dword_0 + 1)
  {
  }

  else
  {
    traitCollection = [(HWBrowserViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle != &dword_0 + 2)
    {
      v9 = [UIView alloc];
      view = [(HWBrowserViewController *)self view];
      [view bounds];
      v11 = [v9 initWithFrame:?];
      backgroundView = self->_backgroundView;
      self->_backgroundView = v11;

      v6 = +[UIColor handwritingBrowserBackgroundColor];
      [(UIView *)self->_backgroundView setBackgroundColor:v6];
      goto LABEL_6;
    }
  }

  v6 = [HWBlurEffect effectWithStyle:1];
  v7 = [[UIVisualEffectView alloc] initWithEffect:v6];
  v8 = self->_backgroundView;
  self->_backgroundView = v7;

LABEL_6:
  [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  superview = [(UIView *)v17 superview];
  v14 = superview;
  if (superview)
  {
    subviews = [superview subviews];
    v16 = [subviews indexOfObject:v17];

    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIView *)v17 removeFromSuperview];
      [v14 insertSubview:self->_backgroundView atIndex:v16];
    }
  }
}

- (void)_setupViewHierarchyForiPadWithBindings:(id)bindings
{
  bindingsCopy = bindings;
  v5 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setUserInteractionEnabled:0];
  [(UIStackView *)self->_topStackView addArrangedSubview:self->_undoButton];
  [(UIStackView *)self->_topStackView addArrangedSubview:self->_clearButton];
  [(UIStackView *)self->_topStackView addArrangedSubview:v9];
  [(UIStackView *)self->_topStackView addArrangedSubview:self->_doneButton];
  LODWORD(v10) = 1132068864;
  [(UIStackView *)self->_topStackView setContentHuggingPriority:1 forAxis:v10];
  LODWORD(v11) = 1132068864;
  [(HWRepeatingButton *)self->_undoButton setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1132068864;
  [(UIButton *)self->_clearButton setContentHuggingPriority:1 forAxis:v12];
  LODWORD(v13) = 1132068864;
  [v9 setContentHuggingPriority:1 forAxis:v13];
  LODWORD(v14) = 1132068864;
  [(UIButton *)self->_doneButton setContentHuggingPriority:1 forAxis:v14];
  v114 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];

  [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v114 setUserInteractionEnabled:0];
  [(UIStackView *)self->_bottomStackView addArrangedSubview:self->_recentsButton];
  [(UIStackView *)self->_bottomStackView addArrangedSubview:v114];
  [(UIStackView *)self->_bottomStackView addArrangedSubview:self->_keyboardButton];
  LODWORD(v15) = 1132068864;
  [(UIStackView *)self->_bottomStackView setContentHuggingPriority:1 forAxis:v15];
  LODWORD(v16) = 1132068864;
  [(UIButton *)self->_recentsButton setContentHuggingPriority:1 forAxis:v16];
  LODWORD(v17) = 1132068864;
  [v114 setContentHuggingPriority:1 forAxis:v17];
  LODWORD(v18) = 1132068864;
  [(UIButton *)self->_keyboardButton setContentHuggingPriority:1 forAxis:v18];
  [(HWFavoritesPickerView *)self->_recentsPicker setHidden:1];
  v19 = +[UIColor clearColor];
  [(HWFavoritesPickerView *)self->_recentsPicker setBackgroundColor:v19];

  view = [(HWBrowserViewController *)self view];
  [view insertSubview:self->_recentsPicker belowSubview:self->_bottomView];

  [(UIView *)self->_handwritingPreviewContainer setHidden:1];
  v21 = +[UIScreen mainScreen];
  [v21 scale];
  v23 = 1.0 / v22;
  layer = [(DKInkView *)self->_canvasView layer];
  [layer setBorderWidth:v23];

  v25 = +[UIColor favoritesPickerBorderColor];
  cGColor = [v25 CGColor];
  layer2 = [(DKInkView *)self->_canvasView layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [(DKInkView *)self->_canvasView layer];
  [layer3 setCornerRadius:10.0];

  [(DKInkView *)self->_canvasView setClipsToBounds:1];
  v113 = [NSNumber numberWithInteger:[(HWBrowserViewController *)self buttonYMargin]];
  v112 = [NSNumber numberWithInteger:[(HWBrowserViewController *)self inkViewMargin]];
  v29 = _NSDictionaryOfVariableBindings(@"buttonXMargin, buttonYMargin, labelMargin, bottomBarHeight, inkViewMargin, advanceViewWidth", &off_29B98, v113, &off_29B50, &off_29B80, v112, &off_29B68, 0);
  handwritingScrollView = self->_handwritingScrollView;
  view2 = [(HWBrowserViewController *)self view];
  v32 = [NSLayoutConstraint constraintWithItem:handwritingScrollView attribute:10 relatedBy:0 toItem:view2 attribute:10 multiplier:1.0 constant:0.0];
  scrollViewCenterYConstraint = self->_scrollViewCenterYConstraint;
  self->_scrollViewCenterYConstraint = v32;

  [(NSLayoutConstraint *)self->_scrollViewCenterYConstraint setActive:1];
  v34 = self->_handwritingScrollView;
  view3 = [(HWBrowserViewController *)self view];
  v36 = [NSLayoutConstraint constraintWithItem:v34 attribute:5 relatedBy:0 toItem:view3 attribute:5 multiplier:1.0 constant:0.0];
  [v36 setActive:1];

  v37 = self->_handwritingScrollView;
  view4 = [(HWBrowserViewController *)self view];
  v39 = [NSLayoutConstraint constraintWithItem:v37 attribute:6 relatedBy:0 toItem:view4 attribute:6 multiplier:1.0 constant:0.0];
  [v39 setActive:1];

  v40 = self->_handwritingScrollView;
  view5 = [(HWBrowserViewController *)self view];
  v42 = [NSLayoutConstraint constraintWithItem:v40 attribute:9 relatedBy:0 toItem:view5 attribute:9 multiplier:1.0 constant:0.0];
  [v42 setActive:1];

  heightAnchor = [(HWScrollView *)self->_handwritingScrollView heightAnchor];
  v44 = [heightAnchor constraintEqualToConstant:*(qword_32250 + 8)];
  [v44 setActive:1];

  widthAnchor = [(UIView *)self->_advancePageRightButton widthAnchor];
  v46 = [widthAnchor constraintEqualToConstant:62.0];
  [v46 setActive:1];

  rightAnchor = [(UIView *)self->_advancePageRightButton rightAnchor];
  rightAnchor2 = [(HWScrollView *)self->_handwritingScrollView rightAnchor];
  v49 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v49 setActive:1];

  heightAnchor2 = [(UIView *)self->_advancePageRightButton heightAnchor];
  heightAnchor3 = [(HWScrollView *)self->_handwritingScrollView heightAnchor];
  v52 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  [v52 setActive:1];

  centerYAnchor = [(UIView *)self->_advancePageRightButton centerYAnchor];
  centerYAnchor2 = [(HWScrollView *)self->_handwritingScrollView centerYAnchor];
  v55 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v55 setActive:1];

  widthAnchor2 = [(UIView *)self->_advancePageLeftButton widthAnchor];
  v57 = [widthAnchor2 constraintEqualToConstant:62.0];
  [v57 setActive:1];

  leftAnchor = [(UIView *)self->_advancePageLeftButton leftAnchor];
  leftAnchor2 = [(HWScrollView *)self->_handwritingScrollView leftAnchor];
  v60 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v60 setActive:1];

  heightAnchor4 = [(UIView *)self->_advancePageLeftButton heightAnchor];
  heightAnchor5 = [(HWScrollView *)self->_handwritingScrollView heightAnchor];
  v63 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  [v63 setActive:1];

  centerYAnchor3 = [(UIView *)self->_advancePageLeftButton centerYAnchor];
  centerYAnchor4 = [(HWScrollView *)self->_handwritingScrollView centerYAnchor];
  v66 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v66 setActive:1];

  centerYAnchor5 = [(UILabel *)self->_swipeInstructionLabel centerYAnchor];
  centerYAnchor6 = [(HWScrollView *)self->_handwritingScrollView centerYAnchor];
  v69 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:0.0];
  [v69 setActive:1];

  leftAnchor3 = [(UILabel *)self->_swipeInstructionLabel leftAnchor];
  leftAnchor4 = [(HWScrollView *)self->_handwritingScrollView leftAnchor];
  v72 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:0.0];
  [v72 setActive:1];

  rightAnchor3 = [(UILabel *)self->_swipeInstructionLabel rightAnchor];
  rightAnchor4 = [(HWScrollView *)self->_handwritingScrollView rightAnchor];
  v75 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:0.0];
  [v75 setActive:1];

  topAnchor = [(UIStackView *)self->_topStackView topAnchor];
  view6 = [(HWBrowserViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v79 = [topAnchor constraintEqualToAnchor:topAnchor2];
  topStackViewToSuperViewTopConstraint = self->_topStackViewToSuperViewTopConstraint;
  self->_topStackViewToSuperViewTopConstraint = v79;

  topAnchor3 = [(UIStackView *)self->_topStackView topAnchor];
  topAnchor4 = [(HWScrollView *)self->_handwritingScrollView topAnchor];
  v83 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  topStackViewTopToTopScrollViewConstraint = self->_topStackViewTopToTopScrollViewConstraint;
  self->_topStackViewTopToTopScrollViewConstraint = v83;

  bottomAnchor = [(UIStackView *)self->_topStackView bottomAnchor];
  topAnchor5 = [(HWScrollView *)self->_handwritingScrollView topAnchor];
  v87 = [bottomAnchor constraintEqualToAnchor:topAnchor5];
  topStackViewBottomToTopScrollViewConstraint = self->_topStackViewBottomToTopScrollViewConstraint;
  self->_topStackViewBottomToTopScrollViewConstraint = v87;

  [(NSLayoutConstraint *)self->_topStackViewTopToTopScrollViewConstraint setConstant:*(qword_32250 + 264)];
  [(NSLayoutConstraint *)self->_topStackViewTopToTopScrollViewConstraint setActive:1];
  heightAnchor6 = [(UIStackView *)self->_topStackView heightAnchor];
  [(HWBrowserViewController *)self topBarHeight];
  v90 = [heightAnchor6 constraintEqualToConstant:?];
  topStackViewHeightConstraint = self->_topStackViewHeightConstraint;
  self->_topStackViewHeightConstraint = v90;

  [(NSLayoutConstraint *)self->_topStackViewHeightConstraint setActive:1];
  v92 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_topStackView]|" options:0 metrics:v29 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v92];

  v93 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_topStackView]" options:0 metrics:v29 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v93];

  bottomAnchor2 = [(UIView *)self->_bottomView bottomAnchor];
  view7 = [(HWBrowserViewController *)self view];
  bottomAnchor3 = [view7 bottomAnchor];
  v97 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  bottomStackViewToSuperViewBottomConstraint = self->_bottomStackViewToSuperViewBottomConstraint;
  self->_bottomStackViewToSuperViewBottomConstraint = v97;

  bottomAnchor4 = [(UIView *)self->_bottomView bottomAnchor];
  bottomAnchor5 = [(HWScrollView *)self->_handwritingScrollView bottomAnchor];
  v101 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  bottomStackViewBottomToBottomScrollViewConstraint = self->_bottomStackViewBottomToBottomScrollViewConstraint;
  self->_bottomStackViewBottomToBottomScrollViewConstraint = v101;

  topAnchor6 = [(UIView *)self->_bottomView topAnchor];
  bottomAnchor6 = [(HWScrollView *)self->_handwritingScrollView bottomAnchor];
  v105 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6];
  bottomStackViewTopToBottomScrollViewConstraint = self->_bottomStackViewTopToBottomScrollViewConstraint;
  self->_bottomStackViewTopToBottomScrollViewConstraint = v105;

  [(NSLayoutConstraint *)self->_bottomStackViewBottomToBottomScrollViewConstraint setConstant:*(qword_32250 + 272)];
  [(NSLayoutConstraint *)self->_bottomStackViewBottomToBottomScrollViewConstraint setActive:1];
  v107 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_bottomView]|" options:0 metrics:v29 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v107];

  v108 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_bottomStackView]|" options:0 metrics:v29 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v108];

  v109 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_bottomStackView]|" options:0 metrics:v29 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v109];

  v110 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_recentsPicker]|" options:0 metrics:v29 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v110];

  v111 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_recentsPicker]|" options:0 metrics:v29 views:bindingsCopy];

  [NSLayoutConstraint activateConstraints:v111];
}

- (void)_setupViewHierarchyForiPhoneWithBindings:(id)bindings
{
  bindingsCopy = bindings;
  v4 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:19.0];
  v100 = [UIImage systemImageNamed:@"keyboard" withConfiguration:v4];

  [(UIButton *)self->_keyboardButton setImage:v100 forState:0];
  v5 = [HWPreviewBubbleView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(HWPreviewBubbleView *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  handwritingPreviewBubble = self->_handwritingPreviewBubble;
  self->_handwritingPreviewBubble = height;

  [(HWPreviewBubbleView *)self->_handwritingPreviewBubble setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HWPreviewBubbleView *)self->_handwritingPreviewBubble setInkView:self->_canvasView];
  [(DKInkView *)self->_canvasView setRenderPreviewDelegate:self->_handwritingPreviewBubble];
  [(UIView *)self->_handwritingPreviewContainer addSubview:self->_handwritingPreviewBubble];
  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = 1.0 / v12;
  layer = [(UIView *)self->_handwritingContainerView layer];
  [layer setBorderWidth:v13];

  v15 = +[UIColor favoritesPickerBorderColor];
  cGColor = [v15 CGColor];
  layer2 = [(UIView *)self->_handwritingContainerView layer];
  [layer2 setBorderColor:cGColor];

  LODWORD(v18) = 1144750080;
  [(UIButton *)self->_keyboardButton setContentHuggingPriority:0 forAxis:v18];
  [(UIStackView *)self->_topStackView addArrangedSubview:self->_undoButton];
  [(UIStackView *)self->_topStackView addArrangedSubview:self->_clearButton];
  [(UIStackView *)self->_topStackView addArrangedSubview:self->_handwritingPreviewContainer];
  [(UIStackView *)self->_topStackView addArrangedSubview:self->_doneButton];
  heightAnchor = [(HWRepeatingButton *)self->_undoButton heightAnchor];
  heightAnchor2 = [(UIStackView *)self->_topStackView heightAnchor];
  v21 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v21 setActive:1];

  topAnchor = [(HWRepeatingButton *)self->_undoButton topAnchor];
  topAnchor2 = [(UIStackView *)self->_topStackView topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v24 setActive:1];

  heightAnchor3 = [(UIButton *)self->_clearButton heightAnchor];
  heightAnchor4 = [(UIStackView *)self->_topStackView heightAnchor];
  v27 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  [v27 setActive:1];

  topAnchor3 = [(UIButton *)self->_clearButton topAnchor];
  topAnchor4 = [(UIStackView *)self->_topStackView topAnchor];
  v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v30 setActive:1];

  heightAnchor5 = [(UIView *)self->_handwritingPreviewContainer heightAnchor];
  heightAnchor6 = [(UIStackView *)self->_topStackView heightAnchor];
  v33 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
  [v33 setActive:1];

  topAnchor5 = [(UIView *)self->_handwritingPreviewContainer topAnchor];
  topAnchor6 = [(UIStackView *)self->_topStackView topAnchor];
  v36 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v36 setActive:1];

  heightAnchor7 = [(UIButton *)self->_doneButton heightAnchor];
  heightAnchor8 = [(UIStackView *)self->_topStackView heightAnchor];
  v39 = [heightAnchor7 constraintEqualToAnchor:heightAnchor8];
  [v39 setActive:1];

  topAnchor7 = [(UIButton *)self->_doneButton topAnchor];
  topAnchor8 = [(UIStackView *)self->_topStackView topAnchor];
  v42 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  [v42 setActive:1];

  v43 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v99 = v43;
  [v43 setUserInteractionEnabled:0];
  [(UIStackView *)self->_bottomStackView addArrangedSubview:self->_inputMethodPickerButton];
  [(UIStackView *)self->_bottomStackView addArrangedSubview:self->_recentsPicker];
  [(UIStackView *)self->_bottomStackView addArrangedSubview:v43];
  [(UIStackView *)self->_bottomStackView addArrangedSubview:self->_keyboardButton];
  v98 = [NSNumber numberWithInteger:[(HWBrowserViewController *)self buttonYMargin]];
  v97 = [NSNumber numberWithInteger:[(HWBrowserViewController *)self inkViewMargin]];
  v44 = _NSDictionaryOfVariableBindings(@"buttonXMargin, buttonYMargin, labelMargin, bottomBarHeight, inkViewMargin, advanceViewWidth", &off_29B98, v98, &off_29B50, &off_29B80, v97, &off_29B68, 0);
  v45 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_handwritingScrollView]|" options:0 metrics:v44 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v45];

  v46 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_topStackView][_handwritingScrollView][_bottomView]" options:0 metrics:v44 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v46];

  widthAnchor = [(UIView *)self->_advancePageRightButton widthAnchor];
  v48 = [widthAnchor constraintEqualToConstant:62.0];
  rightPageButtonWidthAnchor = self->_rightPageButtonWidthAnchor;
  self->_rightPageButtonWidthAnchor = v48;

  [(NSLayoutConstraint *)self->_rightPageButtonWidthAnchor setActive:1];
  rightAnchor = [(UIView *)self->_advancePageRightButton rightAnchor];
  rightAnchor2 = [(HWScrollView *)self->_handwritingScrollView rightAnchor];
  v52 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v52 setActive:1];

  heightAnchor9 = [(UIView *)self->_advancePageRightButton heightAnchor];
  heightAnchor10 = [(HWScrollView *)self->_handwritingScrollView heightAnchor];
  v55 = [heightAnchor9 constraintEqualToAnchor:heightAnchor10];
  [v55 setActive:1];

  centerYAnchor = [(UIView *)self->_advancePageRightButton centerYAnchor];
  centerYAnchor2 = [(HWScrollView *)self->_handwritingScrollView centerYAnchor];
  v58 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v58 setActive:1];

  widthAnchor2 = [(UIView *)self->_advancePageLeftButton widthAnchor];
  v60 = [widthAnchor2 constraintEqualToConstant:62.0];
  leftPageButtonWidthAnchor = self->_leftPageButtonWidthAnchor;
  self->_leftPageButtonWidthAnchor = v60;

  [(NSLayoutConstraint *)self->_leftPageButtonWidthAnchor setActive:1];
  leftAnchor = [(UIView *)self->_advancePageLeftButton leftAnchor];
  leftAnchor2 = [(HWScrollView *)self->_handwritingScrollView leftAnchor];
  v64 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v64 setActive:1];

  heightAnchor11 = [(UIView *)self->_advancePageLeftButton heightAnchor];
  heightAnchor12 = [(HWScrollView *)self->_handwritingScrollView heightAnchor];
  v67 = [heightAnchor11 constraintEqualToAnchor:heightAnchor12];
  [v67 setActive:1];

  centerYAnchor3 = [(UIView *)self->_advancePageLeftButton centerYAnchor];
  centerYAnchor4 = [(HWScrollView *)self->_handwritingScrollView centerYAnchor];
  v70 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v70 setActive:1];

  centerYAnchor5 = [(UILabel *)self->_swipeInstructionLabel centerYAnchor];
  centerYAnchor6 = [(HWScrollView *)self->_handwritingScrollView centerYAnchor];
  v73 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:0.0];
  [v73 setActive:1];

  leftAnchor3 = [(UILabel *)self->_swipeInstructionLabel leftAnchor];
  leftAnchor4 = [(HWScrollView *)self->_handwritingScrollView leftAnchor];
  v76 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:0.0];
  [v76 setActive:1];

  rightAnchor3 = [(UILabel *)self->_swipeInstructionLabel rightAnchor];
  rightAnchor4 = [(HWScrollView *)self->_handwritingScrollView rightAnchor];
  v79 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:0.0];
  [v79 setActive:1];

  v80 = _NSDictionaryOfVariableBindings(@"_handwritingPreviewBubble", self->_handwritingPreviewBubble, 0);
  v81 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_handwritingPreviewBubble]|" options:0 metrics:v44 views:v80];
  [NSLayoutConstraint activateConstraints:v81];

  v82 = [NSLayoutConstraint constraintWithItem:self->_handwritingPreviewBubble attribute:10 relatedBy:0 toItem:self->_handwritingPreviewContainer attribute:10 multiplier:1.0 constant:0.0];
  [v82 setActive:1];

  v83 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_topStackView]|" options:0 metrics:v44 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v83];

  v84 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_topStackView]" options:0 metrics:v44 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v84];

  heightAnchor13 = [(UIStackView *)self->_topStackView heightAnchor];
  [(HWBrowserViewController *)self topBarHeight];
  v86 = [heightAnchor13 constraintEqualToConstant:?];
  topStackViewHeightConstraint = self->_topStackViewHeightConstraint;
  self->_topStackViewHeightConstraint = v86;

  [(NSLayoutConstraint *)self->_topStackViewHeightConstraint setActive:1];
  v88 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_bottomView]|" options:0 metrics:v44 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v88];

  bottomAnchor = [(UIView *)self->_bottomView bottomAnchor];
  view = [(HWBrowserViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v93 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  [v93 setActive:1];

  v94 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_bottomStackView]|" options:0 metrics:v44 views:bindingsCopy];
  [NSLayoutConstraint activateConstraints:v94];

  v95 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_bottomStackView]|" options:0 metrics:v44 views:bindingsCopy];

  [NSLayoutConstraint activateConstraints:v95];
}

- (void)_pickLayoutForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(HWBrowserViewController *)self setCurrentLayoutSize:?];
  v6 = +[UIScreen mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  v15 = CGRectGetWidth(v22);
  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  v16 = CGRectGetHeight(v23);
  if (v15 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = *(qword_32250 + 8);
  if (HWDeviceIsiPad())
  {
    v19 = height - v18;
    if (width <= v17 || v19 <= 50.0)
    {
      [(HWBrowserViewController *)self _configureLayoutToiPadPortrait];
    }

    else
    {
      [(HWBrowserViewController *)self _configureLayoutToiPadLandscape];
    }

    [(HWFavoritesPickerView *)self->_recentsPicker isHidden];

    [(HWBrowserViewController *)self _updateLayoutForRecentsPickerHidden:?];
  }

  else if (width <= v17)
  {

    [(HWBrowserViewController *)self _configureLayoutToiPhoneRecentsPicker];
  }

  else
  {

    [(HWBrowserViewController *)self _configureLayoutToiPhoneWritepad];
  }
}

- (BOOL)_deviceOrientationPortrait
{
  [(HWBrowserViewController *)self currentLayoutSize];
  v4 = v3;
  v6 = v5;
  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v23.origin.x = v9;
  v23.origin.y = v11;
  v23.size.width = v13;
  v23.size.height = v15;
  Width = CGRectGetWidth(v23);
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  Height = CGRectGetHeight(v24);
  if (Width >= Height)
  {
    v18 = Height;
  }

  else
  {
    v18 = Width;
  }

  v19 = [(HWBrowserViewController *)self _heightAvailableForLandscapeStylePresentation:v6];
  v20 = HWDeviceIsiPad();
  v21 = v4 <= v18;
  if (v20)
  {
    v21 = (v4 <= v18) | v19 ^ 1;
  }

  return v21 & 1;
}

- (void)_configureLayoutToiPadPortrait
{
  v3 = [(HWBrowserViewController *)self _keyboardImageDeviceSize:!HWDeviceIsLargeiPad() orientationIsLandscape:0];
  [(UIButton *)self->_keyboardButton setImage:v3 forState:0];
  v4 = [(HWBrowserViewController *)self _recentsPickerImageForState:[(HWFavoritesPickerView *)self->_recentsPicker isHidden]^ 1 isLandscape:0];
  [(UIButton *)self->_recentsButton setImage:v4 forState:0];
  [(UIStackView *)self->_topStackView setLayoutMargins:*(qword_32250 + 96), *(qword_32250 + 104), *(qword_32250 + 112), *(qword_32250 + 120)];
  [(UIStackView *)self->_bottomStackView setLayoutMargins:*(qword_32250 + 128), *(qword_32250 + 136), *(qword_32250 + 144), *(qword_32250 + 152)];
  [(HWScrollView *)self->_handwritingScrollView setContentInset:*(qword_32250 + 16), *(qword_32250 + 24), *(qword_32250 + 32), *(qword_32250 + 40)];
  topStackViewBottomToTopScrollViewConstraint = self->_topStackViewBottomToTopScrollViewConstraint;
  v12[0] = self->_topStackViewToSuperViewTopConstraint;
  v12[1] = topStackViewBottomToTopScrollViewConstraint;
  bottomStackViewTopToBottomScrollViewConstraint = self->_bottomStackViewTopToBottomScrollViewConstraint;
  v12[2] = self->_bottomStackViewToSuperViewBottomConstraint;
  v12[3] = bottomStackViewTopToBottomScrollViewConstraint;
  v7 = [NSArray arrayWithObjects:v12 count:4];
  [NSLayoutConstraint deactivateConstraints:v7];

  [(NSLayoutConstraint *)self->_scrollViewCenterYConstraint setConstant:*(qword_32250 + 80)];
  bottomStackViewBottomToBottomScrollViewConstraint = self->_bottomStackViewBottomToBottomScrollViewConstraint;
  v11[0] = self->_topStackViewTopToTopScrollViewConstraint;
  v11[1] = bottomStackViewBottomToBottomScrollViewConstraint;
  bottomViewHeightConstraint = self->_bottomViewHeightConstraint;
  v11[2] = self->_topStackViewHeightConstraint;
  v11[3] = bottomViewHeightConstraint;
  v10 = [NSArray arrayWithObjects:v11 count:4];
  [NSLayoutConstraint activateConstraints:v10];

  [(HWFavoritesPickerView *)self->_recentsPicker setLayoutMode:2];
  [(HWFavoritesPickerView *)self->_recentsPicker reloadData];
}

- (void)_configureLayoutToiPadLandscape
{
  v3 = [(HWBrowserViewController *)self _keyboardImageDeviceSize:!HWDeviceIsLargeiPad() orientationIsLandscape:1];
  [(UIButton *)self->_keyboardButton setImage:v3 forState:0];
  v4 = [(HWBrowserViewController *)self _recentsPickerImageForState:[(HWFavoritesPickerView *)self->_recentsPicker isHidden]^ 1 isLandscape:1];
  [(UIButton *)self->_recentsButton setImage:v4 forState:0];
  [(UIStackView *)self->_topStackView setLayoutMargins:*(qword_32250 + 160), *(qword_32250 + 168), *(qword_32250 + 176), *(qword_32250 + 184)];
  [(UIStackView *)self->_bottomStackView setLayoutMargins:*(qword_32250 + 192), *(qword_32250 + 200), *(qword_32250 + 208), *(qword_32250 + 216)];
  [(HWScrollView *)self->_handwritingScrollView setContentInset:*(qword_32250 + 48), *(qword_32250 + 56), *(qword_32250 + 64), *(qword_32250 + 72)];
  bottomStackViewBottomToBottomScrollViewConstraint = self->_bottomStackViewBottomToBottomScrollViewConstraint;
  v12[0] = self->_topStackViewTopToTopScrollViewConstraint;
  v12[1] = bottomStackViewBottomToBottomScrollViewConstraint;
  bottomViewHeightConstraint = self->_bottomViewHeightConstraint;
  v12[2] = self->_topStackViewHeightConstraint;
  v12[3] = bottomViewHeightConstraint;
  v7 = [NSArray arrayWithObjects:v12 count:4];
  [NSLayoutConstraint deactivateConstraints:v7];

  [(NSLayoutConstraint *)self->_scrollViewCenterYConstraint setConstant:*(qword_32250 + 88)];
  topStackViewBottomToTopScrollViewConstraint = self->_topStackViewBottomToTopScrollViewConstraint;
  v11[0] = self->_topStackViewToSuperViewTopConstraint;
  v11[1] = topStackViewBottomToTopScrollViewConstraint;
  bottomStackViewTopToBottomScrollViewConstraint = self->_bottomStackViewTopToBottomScrollViewConstraint;
  v11[2] = self->_bottomStackViewToSuperViewBottomConstraint;
  v11[3] = bottomStackViewTopToBottomScrollViewConstraint;
  v10 = [NSArray arrayWithObjects:v11 count:4];
  [NSLayoutConstraint activateConstraints:v10];

  [(HWFavoritesPickerView *)self->_recentsPicker setLayoutMode:1];
}

- (void)_configureLayoutToiPhoneWritepad
{
  [(HWScrollView *)self->_handwritingScrollView setHidden:0];
  [(DKInkView *)self->_canvasView setHidden:0];
  [(UIView *)self->_advancePageRightButton setHidden:0];
  [(UIView *)self->_advancePageLeftButton setHidden:0];
  [(UIStackView *)self->_topStackView setHidden:0];
  [(UILabel *)self->_roateInstructionLabel removeFromSuperview];
  [(HWFavoritesPickerView *)self->_recentsPicker setLayoutMode:1];
  [(HWFavoritesPickerView *)self->_recentsPicker removeFromSuperview];
  arrangedSubviews = [(UIStackView *)self->_bottomStackView arrangedSubviews];
  v4 = [arrangedSubviews indexOfObject:self->_inputMethodPickerButton];

  [(UIStackView *)self->_bottomStackView insertArrangedSubview:self->_recentsPicker atIndex:v4 + 1];
  arrangedSubviews2 = [(UIStackView *)self->_bottomStackView arrangedSubviews];
  v6 = [arrangedSubviews2 indexOfObject:self->_keyboardButton] - 1;

  arrangedSubviews3 = [(UIStackView *)self->_bottomStackView arrangedSubviews];
  v8 = [arrangedSubviews3 objectAtIndex:v6];
  [v8 setHidden:1];

  heightAnchor = [(UIStackView *)self->_bottomStackView heightAnchor];
  heightAnchor2 = [(HWFavoritesPickerView *)self->_recentsPicker heightAnchor];
  v11 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v11 setActive:1];

  [(UIButton *)self->_inputMethodPickerButton setHidden:1];
  [(UILabel *)self->_roateInstructionLabel setHidden:1];
  keyboardButton = self->_keyboardButton;

  [(UIButton *)keyboardButton setHidden:0];
}

- (void)_configureLayoutToiPhoneRecentsPicker
{
  [(UIStackView *)self->_bottomStackView removeArrangedSubview:self->_recentsPicker];
  [(HWFavoritesPickerView *)self->_recentsPicker removeFromSuperview];
  arrangedSubviews = [(UIStackView *)self->_bottomStackView arrangedSubviews];
  v4 = [arrangedSubviews indexOfObject:self->_keyboardButton] - 1;

  arrangedSubviews2 = [(UIStackView *)self->_bottomStackView arrangedSubviews];
  v6 = [arrangedSubviews2 objectAtIndex:v4];
  [v6 setHidden:0];

  [(HWFavoritesPickerView *)self->_recentsPicker setLayoutMode:2];
  [(UILabel *)self->_roateInstructionLabel setHidden:0];
  [(UIButton *)self->_keyboardButton setHidden:1];
  [(UIButton *)self->_inputMethodPickerButton setHidden:0];
  [(UIStackView *)self->_topStackView setHidden:1];
  [(HWScrollView *)self->_handwritingScrollView setHidden:1];
  [(DKInkView *)self->_canvasView setHidden:1];
  [(UIView *)self->_advancePageRightButton setHidden:1];
  [(UIView *)self->_advancePageLeftButton setHidden:1];
  view = [(HWBrowserViewController *)self view];
  [view insertSubview:self->_recentsPicker aboveSubview:self->_handwritingScrollView];

  [(UIView *)self->_bottomView insertSubview:self->_roateInstructionLabel aboveSubview:self->_bottomStackView];
  v12 = _NSDictionaryOfVariableBindings(@"_recentsPicker, _bottomView, _roateInstructionLabel", self->_recentsPicker, self->_bottomView, self->_roateInstructionLabel, 0);
  v8 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_recentsPicker]|" options:0 metrics:0 views:v12];
  [NSLayoutConstraint activateConstraints:v8];

  v9 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_recentsPicker][_bottomView]|" options:0 metrics:0 views:v12];
  [NSLayoutConstraint activateConstraints:v9];

  v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_roateInstructionLabel]|" options:0 metrics:0 views:v12];
  [NSLayoutConstraint activateConstraints:v10];

  v11 = [NSLayoutConstraint constraintWithItem:self->_roateInstructionLabel attribute:10 relatedBy:0 toItem:self->_inputMethodPickerButton attribute:10 multiplier:1.0 constant:0.0];
  [v11 setActive:1];
}

- (id)_recentsPickerImageForState:(BOOL)state isLandscape:(BOOL)landscape
{
  if (state)
  {
    v4 = @"clock.fill";
  }

  else
  {
    v4 = @"clock";
  }

  v5 = 16.0;
  if (landscape)
  {
    v5 = 20.0;
  }

  v6 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:v5];
  v7 = [UIImage systemImageNamed:v4 withConfiguration:v6];

  return v7;
}

- (id)_keyboardImageDeviceSize:(BOOL)size orientationIsLandscape:(BOOL)landscape
{
  v4 = 17.0;
  v5 = 19.0;
  if (!size)
  {
    v5 = 17.0;
    v4 = 16.0;
  }

  if (landscape)
  {
    v4 = v5;
  }

  v6 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:v4];
  v7 = [UIImage systemImageNamed:@"keyboard" withConfiguration:v6];

  return v7;
}

- (void)_updateLayoutForKeboardInterfaceOrientaion
{
  if ([(HWBrowserViewController *)self _currentKeyboardIsRTL])
  {
    v3 = &dword_4;
  }

  else
  {
    v3 = &dword_0 + 3;
  }

  if ([(UIStackView *)self->_topStackView semanticContentAttribute]== v3)
  {
    [(UIStackView *)self->_bottomStackView setSemanticContentAttribute:3];
  }

  else
  {
    [(UIStackView *)self->_topStackView setSemanticContentAttribute:v3];
    [(UIStackView *)self->_topStackView setNeedsLayout];
    self->_canvasNeedsRepositioning = 1;
    [(UIStackView *)self->_bottomStackView setSemanticContentAttribute:3];
    [(HWFavoritesPickerView *)self->_recentsPicker setSemanticContentAttribute:v3];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    subviews = [(HWFavoritesPickerView *)self->_recentsPicker subviews];
    v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v10 + 1) + 8 * v8) setSemanticContentAttribute:v3];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(UIStackView *)self->_bottomStackView setNeedsLayout];
    [(HWFavoritesPickerView *)self->_recentsPicker resetScrollPosition];
  }

  view = [(HWBrowserViewController *)self view];
  [view layoutIfNeeded];
}

- (BOOL)_currentKeyboardIsRTL
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v2 currentInputMode];

  if ([currentInputMode isExtensionInputMode])
  {
    primaryLanguage = [currentInputMode primaryLanguage];
    lowercaseString = [primaryLanguage lowercaseString];
    if ([lowercaseString hasPrefix:@"und"])
    {
    }

    else
    {
      primaryLanguage2 = [currentInputMode primaryLanguage];
      lowercaseString2 = [primaryLanguage2 lowercaseString];
      v8 = [lowercaseString2 hasPrefix:@"mul"];

      if (!v8)
      {
        primaryLanguage3 = [currentInputMode primaryLanguage];
        isDefaultRightToLeft = [NSLocale characterDirectionForLanguage:primaryLanguage3]== &dword_0 + 2;

        goto LABEL_6;
      }
    }
  }

  isDefaultRightToLeft = [currentInputMode isDefaultRightToLeft];
LABEL_6:

  return isDefaultRightToLeft;
}

- (void)setCurrentHandwritingItem:(id)item
{
  itemCopy = item;
  if (self->_currentHandwritingItem != itemCopy)
  {
    objc_storeStrong(&self->_currentHandwritingItem, item);
    drawing = [(HWHandwritingItem *)self->_currentHandwritingItem drawing];
    if (!drawing)
    {
      drawing = objc_alloc_init(DKDrawing);
    }

    [(DKInkView *)self->_canvasView setCurrentDrawing:drawing scaleDrawingToFitBounds:0 withAnimationType:0 animationCompletionHandler:0];
    [(HWBrowserViewController *)self _udpatePageButtonVisibility:1];
  }

  [(HWBrowserViewController *)self _updateUndoButton:0];
}

- (void)sendEncodedHandwriting:(id)handwriting
{
  handwritingCopy = handwriting;
  v7 = objc_alloc_init(sub_7EBC());
  [v7 setData:handwritingCopy];

  v5 = HWDeviceIsiPhone();
  sendDelegate = [(HWCKBrowserViewController *)self sendDelegate];
  [sendDelegate startEditingPayload:v7 dismiss:v5];
}

- (void)_workaround_sendNilMessageToForceModalDismiss
{
  sendDelegate = [(HWCKBrowserViewController *)self sendDelegate];
  [sendDelegate commitPayload:0];
}

- (void)_datasourceUpdated:(id)updated
{
  v6 = +[HWRecentsManager sharedManager];
  items = [v6 items];
  recentsPicker = [(HWBrowserViewController *)self recentsPicker];
  [recentsPicker setItems:items];
}

- (void)_updateUndoButton:(id)button
{
  strokeUndoManager = [(DKInkView *)self->_canvasView strokeUndoManager];
  -[HWRepeatingButton setEnabled:](self->_undoButton, "setEnabled:", [strokeUndoManager canUndo]);

  recentsPicker = [(HWBrowserViewController *)self recentsPicker];
  [recentsPicker cancelEditing:1];

  [(HWBrowserViewController *)self _updateClearButton];

  [(HWBrowserViewController *)self _udpatePageButtonVisibility:1];
}

- (void)_updateClearButton
{
  strokeUndoManager = [(DKInkView *)self->_canvasView strokeUndoManager];
  if ([strokeUndoManager canUndo])
  {
    v4 = 1;
  }

  else
  {
    canvasView = [(HWBrowserViewController *)self canvasView];
    currentDrawing = [canvasView currentDrawing];
    v4 = [currentDrawing totalPoints] < 1;
  }

  clearButton = self->_clearButton;

  [(UIButton *)clearButton setHidden:v4];
}

- (void)_inkViewTouchesEndedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object == self->_canvasView)
  {
    [(HWBrowserViewController *)self _udpatePageButtonVisibility:1];
    [(HWBrowserViewController *)self _updateClearButton];
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKey:DKInkViewTouchesEndedLocationInViewUserInfoKey];

    if (!v7)
    {
LABEL_10:

      goto LABEL_11;
    }

    v13 = CGPointZero;
    CGPointMakeWithDictionaryRepresentation(v7, &v13);
    if ([(HWBrowserViewController *)self _currentKeyboardIsRTL])
    {
      v8 = self->_advancePageLeftButton;
      [(UIView *)v8 convertPoint:object fromView:v13];
      v10 = v9;
      [(UIView *)v8 bounds];
      if (v10 < CGRectGetWidth(v14))
      {
        v11 = &selRef__scrollPageToLeft_;
LABEL_8:
        [(HWBrowserViewController *)self performSelector:*v11 withObject:self afterDelay:0.0];
      }
    }

    else
    {
      v8 = self->_advancePageRightButton;
      [(UIView *)v8 convertPoint:object fromView:v13];
      if (v12 > 0.0)
      {
        v11 = &selRef__scrollPageToRight_;
        goto LABEL_8;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)_inkViewTouchesBeganNotification:(id)notification
{
  notificationCopy = notification;
  v6 = notificationCopy;
  if (self->_hasSwipeTextBeenShown)
  {
    [(HWBrowserViewController *)self _updateSwipePageHintTextVisibility:1];
    notificationCopy = v6;
  }

  object = [notificationCopy object];
  if (object == self->_canvasView)
  {
    [(HWBrowserViewController *)self _sendTypingIndicator];
  }
}

- (void)_applicationDidEnterBackground:(id)background
{
  [(DKInkView *)self->_canvasView teardown];
  canvasView = self->_canvasView;
  self->_canvasView = 0;
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  [(HWBrowserViewController *)self _updateLayoutForKeboardInterfaceOrientaion];
  view = [(HWBrowserViewController *)self view];
  window = [view window];
  isHidden = [window isHidden];

  if ((isHidden & 1) == 0)
  {
    canvasView = self->_canvasView;

    [(DKInkView *)canvasView resumeRendering];
  }
}

- (CKBrowserItemPayload)resumablePayload
{
  _handwritingItemFromCurrentState = [(HWBrowserViewController *)self _handwritingItemFromCurrentState];
  drawing = [_handwritingItemFromCurrentState drawing];
  totalPoints = [drawing totalPoints];

  resumablePayload = self->_resumablePayload;
  if (totalPoints < 1)
  {
    [(CKBrowserItemPayload *)resumablePayload setData:0];
    v10 = 0;
  }

  else
  {
    if (!resumablePayload)
    {
      v7 = objc_alloc_init(sub_7EBC());
      v8 = self->_resumablePayload;
      self->_resumablePayload = v7;
    }

    v9 = [HWEncoding encodeHandwriting:_handwritingItemFromCurrentState compress:1];
    [(CKBrowserItemPayload *)self->_resumablePayload setData:v9];
    v10 = self->_resumablePayload;
  }

  return v10;
}

- (void)setResumablePayload:(id)payload
{
  if (self->_resumablePayload != payload)
  {
    objc_storeStrong(&self->_resumablePayload, payload);
    objc_storeStrong(&self->_resumablePayloadToLoad, self->_resumablePayload);
    if ([(HWBrowserViewController *)self isViewLoaded])
    {
      [(HWBrowserViewController *)self _loadDrawingFromResumablePayload];
    }
  }

  _objc_release_x1();
}

- (void)_loadDrawingFromResumablePayload
{
  data = [(CKBrowserItemPayload *)self->_resumablePayloadToLoad data];
  v8 = [HWEncoding decodeHandwritingFromData:data];

  [(HWBrowserViewController *)self setCurrentHandwritingItem:v8];
  drawing = [v8 drawing];

  if (!drawing)
  {
    v5 = objc_alloc_init(DKDrawing);
    canvasView = [(HWBrowserViewController *)self canvasView];
    [canvasView setCurrentDrawing:v5];
  }

  resumablePayloadToLoad = self->_resumablePayloadToLoad;
  self->_resumablePayloadToLoad = 0;

  [(HWBrowserViewController *)self _updateUndoButton:0];
}

- (void)pickerDidExitEditMode:(id)mode
{
  v4 = *(qword_32250 + 192);
  v5 = *(qword_32250 + 200);
  v6 = *(qword_32250 + 208);
  v7 = *(qword_32250 + 216);
  bottomStackView = [(HWBrowserViewController *)self bottomStackView];
  [bottomStackView setLayoutMargins:{v4, v5, v6, v7}];

  bottomStackView2 = [(HWBrowserViewController *)self bottomStackView];
  [bottomStackView2 layoutIfNeeded];
}

- (BOOL)handwritingScrollView:(id)view shouldCancelTouchesInView:(id)inView
{
  v5 = [(HWBrowserViewController *)self canvasView:view];

  if (!v5)
  {
    return 0;
  }

  canvasView = [(HWBrowserViewController *)self canvasView];
  countOfCurrentStroke = [canvasView countOfCurrentStroke];

  return countOfCurrentStroke < 5;
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(HWBrowserViewController *)self _udpatePageButtonVisibility:1];
  if (self->_hasSwipeTextBeenShown)
  {

    [(HWBrowserViewController *)self _updateSwipePageHintTextVisibility:1];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  [(HWBrowserViewController *)self _udpatePageButtonVisibility:1];
  if (!self->_hasSwipeTextBeenShown)
  {

    [(HWBrowserViewController *)self _updateSwipePageHintTextVisibility:1];
  }
}

- (id)_attributedButtonTitleForString:(id)string foregroundColor:(id)color
{
  colorCopy = color;
  stringCopy = string;
  v7 = +[NSMutableDictionary dictionary];
  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v8 _scaledValueForValue:*(qword_32250 + 280)];
  v10 = v9;

  v11 = [UIFont systemFontOfSize:v10 weight:UIFontWeightMedium];
  [v7 setObject:v11 forKeyedSubscript:NSFontAttributeName];

  if (colorCopy)
  {
    [v7 setObject:colorCopy forKeyedSubscript:NSForegroundColorAttributeName];
  }

  v12 = [[NSAttributedString alloc] initWithString:stringCopy attributes:v7];

  return v12;
}

- (CGSize)currentLayoutSize
{
  width = self->_currentLayoutSize.width;
  height = self->_currentLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end