@interface PKPaletteAdditionalOptionsView
- (BOOL)_hasPlusButtonView;
- (CGRect)plusButtonFrame;
- (CGSize)intrinsicContentSize;
- (PKPaletteAdditionalOptionsView)initWithFrame:(CGRect)frame;
- (PKPaletteAdditionalOptionsViewDelegate)delegate;
- (PKPalettePopoverPresenting)palettePopoverPresenting;
- (id)_keyboardButtonGroupViewButtons;
- (void)_didSelectEllipsisButton:(id)button;
- (void)_handleAutoRefineSettingsDidChange;
- (void)_handleKeyboardButton;
- (void)_handleProofreadingSettingsDidChange;
- (void)_handleReturnKeyButton;
- (void)_handleSceneWillDeactivateNotification:(id)notification;
- (void)_pencilInteractionPrefersPencilOnlyDrawsDidChange;
- (void)_setPlusButton:(id)button;
- (void)_updateMoreOptionsViewControllerAutoRefineState;
- (void)_updateMoreOptionsViewControllerProofreadingState;
- (void)_updateUI;
- (void)didMoveToWindow;
- (void)dismissPalettePopoverWithCompletion:(id)completion;
- (void)moreOptionsViewControllerDidSelectOpenPencilSettings:(id)settings;
- (void)moreOptionsViewControllerDidSelectResetHandwritingEducationPane:(id)pane;
- (void)moreOptionsViewControllerDidSelectTapToRadar:(id)radar;
- (void)moreOptionsViewControllerDidToggleAutoHide:(id)hide;
- (void)moreOptionsViewControllerDidToggleAutoRefine:(id)refine;
- (void)moreOptionsViewControllerDidToggleFingerDraws:(id)draws;
- (void)moreOptionsViewControllerDidToggleProofreading:(id)proofreading;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setEnableKeyboardButtons:(BOOL)buttons;
- (void)setFloatingKeyboardType:(int64_t)type;
- (void)setPlusButton:(id)button;
- (void)setScalingFactor:(double)factor;
- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)controls;
- (void)setShouldShowFingerDrawsOption:(BOOL)option;
- (void)setShouldShowResetHandwritingEducationPane:(BOOL)pane;
- (void)setShouldShowTapToRadarOption:(BOOL)option;
- (void)setShowsPlusButton:(BOOL)button;
- (void)setShowsShapeButton:(BOOL)button;
- (void)setShowsTextButton:(BOOL)button;
- (void)setWantsEllipsisButtonVisible:(BOOL)visible;
- (void)setWantsInputAssistantViewVisible:(BOOL)visible;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePopoverUI;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PKPaletteAdditionalOptionsView

- (PKPaletteAdditionalOptionsView)initWithFrame:(CGRect)frame
{
  v83[4] = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = PKPaletteAdditionalOptionsView;
  v3 = [(PKPaletteAdditionalOptionsView *)&v81 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scalingFactor = 1.0;
    traitCollection = [(PKPaletteAdditionalOptionsView *)v3 traitCollection];
    if ([traitCollection userInterfaceIdiom])
    {
      v6 = [MEMORY[0x1E69DCD58] prefersPencilOnlyDrawing] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    v4->_isFingerDrawsOn = v6;

    objc_initWeak(&location, v4);
    v7 = [PKUIPencilInteractionObserver alloc];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __48__PKPaletteAdditionalOptionsView_initWithFrame___block_invoke;
    v78[3] = &unk_1E82D69B8;
    objc_copyWeak(&v79, &location);
    v8 = [(PKUIPencilInteractionObserver *)v7 initWithPrefersPencilOnlyDrawsDidChangeHandler:v78];
    pencilInteractionObserver = v4->_pencilInteractionObserver;
    v4->_pencilInteractionObserver = v8;

    v10 = [PKAutoRefineSettingsObserver alloc];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __48__PKPaletteAdditionalOptionsView_initWithFrame___block_invoke_2;
    v76[3] = &unk_1E82D7618;
    objc_copyWeak(&v77, &location);
    v11 = [(PKAutoRefineSettingsObserver *)v10 initWithHandler:v76];
    autoRefineSettingsObserver = v4->_autoRefineSettingsObserver;
    v4->_autoRefineSettingsObserver = v11;

    v13 = [PKProofreadingSettingsObserver alloc];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __48__PKPaletteAdditionalOptionsView_initWithFrame___block_invoke_4;
    v74[3] = &unk_1E82D7640;
    objc_copyWeak(&v75, &location);
    v14 = [(PKProofreadingSettingsObserver *)v13 initWithHandler:v74];
    proofreadingSettingsObserver = v4->_proofreadingSettingsObserver;
    v4->_proofreadingSettingsObserver = v14;

    v16 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    contentStackView = v4->_contentStackView;
    v4->_contentStackView = v16;

    [(UIStackView *)v4->_contentStackView setAlignment:3];
    [(UIStackView *)v4->_contentStackView setAxis:0];
    [(UIStackView *)v4->_contentStackView setDistribution:0];
    [(UIStackView *)v4->_contentStackView setSpacing:12.0];
    [(UIStackView *)v4->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteAdditionalOptionsView *)v4 addSubview:v4->_contentStackView];
    v68 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIStackView *)v4->_contentStackView topAnchor];
    topAnchor2 = [(PKPaletteAdditionalOptionsView *)v4 topAnchor];
    v71 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v83[0] = v71;
    leadingAnchor = [(UIStackView *)v4->_contentStackView leadingAnchor];
    leadingAnchor2 = [(PKPaletteAdditionalOptionsView *)v4 leadingAnchor];
    v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v83[1] = v18;
    bottomAnchor = [(UIStackView *)v4->_contentStackView bottomAnchor];
    bottomAnchor2 = [(PKPaletteAdditionalOptionsView *)v4 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v83[2] = v21;
    trailingAnchor = [(UIStackView *)v4->_contentStackView trailingAnchor];
    trailingAnchor2 = [(PKPaletteAdditionalOptionsView *)v4 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v83[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
    [v68 activateConstraints:v25];

    v26 = +[PKPaletteButton keyboardButton];
    [(PKPaletteAdditionalOptionsView *)v4 setKeyboardButton:v26];

    keyboardButton = [(PKPaletteAdditionalOptionsView *)v4 keyboardButton];
    [keyboardButton addTarget:v4 action:sel__handleKeyboardButton forControlEvents:64];

    v28 = +[PKPaletteButton returnKeyButton];
    [(PKPaletteAdditionalOptionsView *)v4 setReturnKeyButton:v28];

    returnKeyButton = [(PKPaletteAdditionalOptionsView *)v4 returnKeyButton];
    [returnKeyButton addTarget:v4 action:sel__handleReturnKeyButton forControlEvents:64];

    v30 = objc_alloc_init(PKPaletteButtonGroupView);
    keyboardButtonGroupView = v4->_keyboardButtonGroupView;
    v4->_keyboardButtonGroupView = v30;

    [(PKPaletteButtonGroupView *)v4->_keyboardButtonGroupView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_contentStackView addArrangedSubview:v4->_keyboardButtonGroupView];
    v32 = +[PKPaletteButton plusButton];
    [(PKPaletteAdditionalOptionsView *)v4 _setPlusButton:v32];

    v33 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    textShapeStackView = v4->_textShapeStackView;
    v4->_textShapeStackView = v33;

    [(UIStackView *)v4->_textShapeStackView setAxis:1];
    [(UIStackView *)v4->_textShapeStackView setDistribution:0];
    [(UIStackView *)v4->_textShapeStackView setAlignment:3];
    [(UIStackView *)v4->_textShapeStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_textShapeStackView setSpacing:12.0];
    [(UIStackView *)v4->_contentStackView addArrangedSubview:v4->_textShapeStackView];
    v35 = +[PKPaletteButton textButton];
    textButton = v4->_textButton;
    v4->_textButton = v35;

    [(PKPaletteButton *)v4->_textButton setAccessibilityIdentifier:@"Text Button"];
    [(UIStackView *)v4->_textShapeStackView addArrangedSubview:v4->_textButton];
    widthAnchor = [(PKPaletteButton *)v4->_textButton widthAnchor];
    v38 = [widthAnchor constraintEqualToConstant:0.0];
    textButtonWidthConstraint = v4->_textButtonWidthConstraint;
    v4->_textButtonWidthConstraint = v38;

    heightAnchor = [(PKPaletteButton *)v4->_textButton heightAnchor];
    v41 = [heightAnchor constraintEqualToConstant:0.0];
    textButtonHeightConstraint = v4->_textButtonHeightConstraint;
    v4->_textButtonHeightConstraint = v41;

    LODWORD(v43) = 1148846080;
    [(PKPaletteButton *)v4->_textButton setContentHuggingPriority:0 forAxis:v43];
    LODWORD(v44) = 1148846080;
    [(PKPaletteButton *)v4->_textButton setContentHuggingPriority:1 forAxis:v44];
    v45 = +[PKPaletteButton shapeButton];
    shapeButton = v4->_shapeButton;
    v4->_shapeButton = v45;

    [(PKPaletteButton *)v4->_shapeButton setAccessibilityIdentifier:@"Shape Button"];
    [(UIStackView *)v4->_textShapeStackView addArrangedSubview:v4->_shapeButton];
    widthAnchor2 = [(PKPaletteButton *)v4->_shapeButton widthAnchor];
    v48 = [widthAnchor2 constraintEqualToConstant:0.0];
    shapeButtonWidthConstraint = v4->_shapeButtonWidthConstraint;
    v4->_shapeButtonWidthConstraint = v48;

    heightAnchor2 = [(PKPaletteButton *)v4->_shapeButton heightAnchor];
    v51 = [heightAnchor2 constraintEqualToConstant:0.0];
    shapeButtonHeightConstraint = v4->_shapeButtonHeightConstraint;
    v4->_shapeButtonHeightConstraint = v51;

    LODWORD(v53) = 1148846080;
    [(PKPaletteButton *)v4->_shapeButton setContentHuggingPriority:0 forAxis:v53];
    LODWORD(v54) = 1148846080;
    [(PKPaletteButton *)v4->_shapeButton setContentHuggingPriority:1 forAxis:v54];
    v4->_wantsEllipsisButtonVisible = 1;
    v55 = +[PKPaletteButton ellipsisButton];
    ellipsisButton = v4->_ellipsisButton;
    v4->_ellipsisButton = v55;

    [(PKPaletteButton *)v4->_ellipsisButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PKPaletteButton *)v4->_ellipsisButton addTarget:v4 action:sel__didSelectEllipsisButton_ forControlEvents:64];
    [(UIStackView *)v4->_contentStackView addArrangedSubview:v4->_ellipsisButton];
    widthAnchor3 = [(PKPaletteButton *)v4->_ellipsisButton widthAnchor];
    v58 = [widthAnchor3 constraintEqualToConstant:0.0];
    ellipsisButtonWidthConstraint = v4->_ellipsisButtonWidthConstraint;
    v4->_ellipsisButtonWidthConstraint = v58;

    heightAnchor3 = [(PKPaletteButton *)v4->_ellipsisButton heightAnchor];
    v61 = [heightAnchor3 constraintEqualToConstant:0.0];
    ellipsisButtonHeightConstraint = v4->_ellipsisButtonHeightConstraint;
    v4->_ellipsisButtonHeightConstraint = v61;

    LODWORD(v63) = 1148846080;
    [(PKPaletteButton *)v4->_ellipsisButton setContentHuggingPriority:0 forAxis:v63];
    LODWORD(v64) = 1148846080;
    [(PKPaletteButton *)v4->_ellipsisButton setContentHuggingPriority:1 forAxis:v64];
    v82[0] = v4->_textButtonWidthConstraint;
    v82[1] = v4->_textButtonHeightConstraint;
    v82[2] = v4->_shapeButtonWidthConstraint;
    v82[3] = v4->_shapeButtonHeightConstraint;
    v65 = MEMORY[0x1E696ACD8];
    v82[4] = v4->_ellipsisButtonWidthConstraint;
    v82[5] = v4->_ellipsisButtonHeightConstraint;
    v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:6];
    [v65 activateConstraints:v66];

    [(PKPaletteAdditionalOptionsView *)v4 _updateUI];
    objc_destroyWeak(&v75);
    objc_destroyWeak(&v77);
    objc_destroyWeak(&v79);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __48__PKPaletteAdditionalOptionsView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pencilInteractionPrefersPencilOnlyDrawsDidChange];
}

void __48__PKPaletteAdditionalOptionsView_initWithFrame___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PKPaletteAdditionalOptionsView_initWithFrame___block_invoke_3;
  v4[3] = &unk_1E82D69B8;
  objc_copyWeak(&v5, (a1 + 32));
  PKPerformOnMainThread(v4);
  objc_destroyWeak(&v5);
}

void __48__PKPaletteAdditionalOptionsView_initWithFrame___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAutoRefineSettingsDidChange];
}

void __48__PKPaletteAdditionalOptionsView_initWithFrame___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PKPaletteAdditionalOptionsView_initWithFrame___block_invoke_5;
  v4[3] = &unk_1E82D69B8;
  objc_copyWeak(&v5, (a1 + 32));
  PKPerformOnMainThread(v4);
  objc_destroyWeak(&v5);
}

void __48__PKPaletteAdditionalOptionsView_initWithFrame___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProofreadingSettingsDidChange];
}

- (void)willMoveToSuperview:(id)superview
{
  superview = [(PKPaletteAdditionalOptionsView *)self superview];

  if (!superview && superview)
  {

    [(PKPaletteAdditionalOptionsView *)self dismissPalettePopoverWithCompletion:0];
  }
}

- (void)didMoveToWindow
{
  v11 = *MEMORY[0x1E69E9840];
  window = [(PKPaletteAdditionalOptionsView *)self window];

  if (window)
  {
    v4 = os_log_create("com.apple.pencilkit", "AdditionalOptions");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      didTapOnPencilSettings = self->_didTapOnPencilSettings;
      v10[0] = 67174657;
      v10[1] = didTapOnPencilSettings;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "didMoveToWindow, didTapOnPencilSettings: %{private}d", v10, 8u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E69DE358];
    window2 = [(PKPaletteAdditionalOptionsView *)self window];
    windowScene = [window2 windowScene];
    [defaultCenter addObserver:self selector:sel__handleSceneWillDeactivateNotification_ name:v7 object:windowScene];
  }
}

- (void)_handleSceneWillDeactivateNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.pencilkit", "AdditionalOptions");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    didTapOnPencilSettings = self->_didTapOnPencilSettings;
    v8[0] = 67174657;
    v8[1] = didTapOnPencilSettings;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "scene will deactivate, didTapOnPencilSettings: %{private}d", v8, 8u);
  }

  if (self->_didTapOnPencilSettings)
  {
    self->_didTapOnPencilSettings = 0;
    v6 = os_log_create("com.apple.pencilkit", "AdditionalOptions");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "dismissis More Options popover", v8, 2u);
    }

    moreOptionsViewController = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [moreOptionsViewController dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)_pencilInteractionPrefersPencilOnlyDrawsDidChange
{
  self->_isFingerDrawsOn = [MEMORY[0x1E69DCD58] prefersPencilOnlyDrawing] ^ 1;
  isFingerDrawsOn = [(PKPaletteAdditionalOptionsView *)self isFingerDrawsOn];
  moreOptionsViewController = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [moreOptionsViewController setIsFingerDrawsOn:isFingerDrawsOn];
}

- (void)_handleAutoRefineSettingsDidChange
{
  v3 = os_log_create("com.apple.pencilkit", "PKPaletteAdditionalOptionsView");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Handle AutoRefine settings did change", v4, 2u);
  }

  [(PKPaletteAdditionalOptionsView *)self _updateMoreOptionsViewControllerAutoRefineState];
}

- (void)_handleProofreadingSettingsDidChange
{
  v3 = os_log_create("com.apple.pencilkit", "PKPaletteAdditionalOptionsView");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Handle Proofreading settings did change", v4, 2u);
  }

  [(PKPaletteAdditionalOptionsView *)self _updateMoreOptionsViewControllerProofreadingState];
}

- (void)setPlusButton:(id)button
{
  if (self->_plusButton != button)
  {
    [(PKPaletteAdditionalOptionsView *)self _setPlusButton:?];

    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)_setPlusButton:(id)button
{
  v19[2] = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  if (self->_plusButton)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__PKPaletteAdditionalOptionsView__setPlusButton___block_invoke;
    v18[3] = &unk_1E82D7148;
    v18[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v18];
    plusButton = self->_plusButton;
  }

  else
  {
    plusButton = 0;
  }

  self->_plusButton = buttonCopy;
  v6 = buttonCopy;

  [(PKPaletteButton *)self->_plusButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_contentStackView addArrangedSubview:self->_plusButton];
  widthAnchor = [(PKPaletteButton *)self->_plusButton widthAnchor];
  v8 = [widthAnchor constraintEqualToConstant:0.0];
  plusButtonWidthConstraint = self->_plusButtonWidthConstraint;
  self->_plusButtonWidthConstraint = v8;

  heightAnchor = [(PKPaletteButton *)self->_plusButton heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:0.0];
  plusButtonHeightConstraint = self->_plusButtonHeightConstraint;
  self->_plusButtonHeightConstraint = v11;

  v13 = MEMORY[0x1E696ACD8];
  v14 = self->_plusButtonHeightConstraint;
  v19[0] = self->_plusButtonWidthConstraint;
  v19[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v13 activateConstraints:v15];

  LODWORD(v16) = 1148846080;
  [(PKPaletteButton *)self->_plusButton setContentHuggingPriority:0 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [(PKPaletteButton *)self->_plusButton setContentHuggingPriority:1 forAxis:v17];
}

- (void)setShowsPlusButton:(BOOL)button
{
  if (self->_showsPlusButton != button)
  {
    self->_showsPlusButton = button;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShowsTextButton:(BOOL)button
{
  if (self->_showsTextButton != button)
  {
    self->_showsTextButton = button;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShowsShapeButton:(BOOL)button
{
  if (self->_showsShapeButton != button)
  {
    self->_showsShapeButton = button;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setWantsEllipsisButtonVisible:(BOOL)visible
{
  if (self->_wantsEllipsisButtonVisible != visible)
  {
    self->_wantsEllipsisButtonVisible = visible;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setWantsInputAssistantViewVisible:(BOOL)visible
{
  if (self->_wantsInputAssistantViewVisible != visible)
  {
    self->_wantsInputAssistantViewVisible = visible;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setEnableKeyboardButtons:(BOOL)buttons
{
  if (self->_enableKeyboardButtons != buttons)
  {
    self->_enableKeyboardButtons = buttons;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setFloatingKeyboardType:(int64_t)type
{
  if (self->_floatingKeyboardType != type)
  {
    self->_floatingKeyboardType = type;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShouldShowFingerDrawsOption:(BOOL)option
{
  if (self->_shouldShowFingerDrawsOption != option)
  {
    self->_shouldShowFingerDrawsOption = option;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)controls
{
  if (self->_shouldAlwaysShowAutoRefineControls != controls)
  {
    self->_shouldAlwaysShowAutoRefineControls = controls;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShouldShowTapToRadarOption:(BOOL)option
{
  if (self->_shouldShowTapToRadarOption != option)
  {
    self->_shouldShowTapToRadarOption = option;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShouldShowResetHandwritingEducationPane:(BOOL)pane
{
  if (self->_shouldShowResetHandwritingEducationPane != pane)
  {
    self->_shouldShowResetHandwritingEducationPane = pane;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (CGSize)intrinsicContentSize
{
  contentStackView = [(PKPaletteAdditionalOptionsView *)self contentStackView];
  [contentStackView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)_hasPlusButtonView
{
  contentStackView = [(PKPaletteAdditionalOptionsView *)self contentStackView];
  subviews = [contentStackView subviews];
  plusButton = [(PKPaletteAdditionalOptionsView *)self plusButton];
  v6 = [subviews containsObject:plusButton];

  return v6;
}

- (void)_updateUI
{
  [(PKPaletteAdditionalOptionsView *)self invalidateIntrinsicContentSize];
  traitCollection = [(PKPaletteAdditionalOptionsView *)self traitCollection];
  window = [(PKPaletteAdditionalOptionsView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);

  if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PKPaletteAdditionalOptionsView__updateUI__block_invoke;
    block[3] = &unk_1E82D7148;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    return;
  }

  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __43__PKPaletteAdditionalOptionsView__updateUI__block_invoke_2;
  v84[3] = &unk_1E82D90B8;
  v84[4] = self;
  v85 = v6;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v84];
  v7 = 6.0;
  v8 = 6.0;
  if (![(PKPaletteAdditionalOptionsView *)self showsShapeButton])
  {
    if ([(PKPaletteAdditionalOptionsView *)self showsTextButton])
    {
      v8 = 6.0;
    }

    else
    {
      v8 = 12.0;
    }
  }

  v9 = 28.0;
  if (!v6)
  {
    [(PKPaletteAdditionalOptionsView *)self scalingFactor];
    v7 = v8 * v10;
    v9 = 36.0;
  }

  contentStackView = [(PKPaletteAdditionalOptionsView *)self contentStackView];
  [contentStackView setSpacing:v7];

  edgeLocation = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
  v14 = edgeLocation == 2 || edgeLocation == 8;
  contentStackView2 = [(PKPaletteAdditionalOptionsView *)self contentStackView];
  [contentStackView2 setAxis:v14];

  edgeLocation2 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
  v18 = edgeLocation2 != 2 && edgeLocation2 != 8;
  textShapeStackView = [(PKPaletteAdditionalOptionsView *)self textShapeStackView];
  [textShapeStackView setAxis:v18];

  [(PKPaletteAdditionalOptionsView *)self scalingFactor];
  v21 = v20 * 12.0;
  textShapeStackView2 = [(PKPaletteAdditionalOptionsView *)self textShapeStackView];
  [textShapeStackView2 setSpacing:v21];

  [(PKPaletteAdditionalOptionsView *)self scalingFactor];
  v24 = v9 * v23;
  v25 = v9 * v23;
  plusButtonWidthConstraint = [(PKPaletteAdditionalOptionsView *)self plusButtonWidthConstraint];
  [plusButtonWidthConstraint setConstant:v24];

  plusButtonHeightConstraint = [(PKPaletteAdditionalOptionsView *)self plusButtonHeightConstraint];
  [plusButtonHeightConstraint setConstant:v25];

  ellipsisButtonWidthConstraint = [(PKPaletteAdditionalOptionsView *)self ellipsisButtonWidthConstraint];
  [ellipsisButtonWidthConstraint setConstant:v24];

  ellipsisButtonHeightConstraint = [(PKPaletteAdditionalOptionsView *)self ellipsisButtonHeightConstraint];
  [ellipsisButtonHeightConstraint setConstant:v25];

  textButtonWidthConstraint = [(PKPaletteAdditionalOptionsView *)self textButtonWidthConstraint];
  [textButtonWidthConstraint setConstant:v24];

  textButtonHeightConstraint = [(PKPaletteAdditionalOptionsView *)self textButtonHeightConstraint];
  [textButtonHeightConstraint setConstant:v25];

  shapeButtonWidthConstraint = [(PKPaletteAdditionalOptionsView *)self shapeButtonWidthConstraint];
  [shapeButtonWidthConstraint setConstant:v24];

  shapeButtonHeightConstraint = [(PKPaletteAdditionalOptionsView *)self shapeButtonHeightConstraint];
  [shapeButtonHeightConstraint setConstant:v25];

  [(PKPaletteAdditionalOptionsView *)self scalingFactor];
  v35 = v34;
  textButton = [(PKPaletteAdditionalOptionsView *)self textButton];
  [textButton setScalingFactor:v35];

  [(PKPaletteAdditionalOptionsView *)self scalingFactor];
  v38 = v37;
  shapeButton = [(PKPaletteAdditionalOptionsView *)self shapeButton];
  [shapeButton setScalingFactor:v38];

  [(PKPaletteAdditionalOptionsView *)self scalingFactor];
  v41 = v40;
  keyboardButtonGroupView = [(PKPaletteAdditionalOptionsView *)self keyboardButtonGroupView];
  [keyboardButtonGroupView setScalingFactor:v41];

  edgeLocation3 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
  v45 = edgeLocation3 != 2 && edgeLocation3 != 8;
  keyboardButtonGroupView2 = [(PKPaletteAdditionalOptionsView *)self keyboardButtonGroupView];
  [keyboardButtonGroupView2 setAxis:v45];

  keyboardButtonGroupView3 = [(PKPaletteAdditionalOptionsView *)self keyboardButtonGroupView];
  [keyboardButtonGroupView3 removeAllButtons];

  keyboardButtonGroupView4 = [(PKPaletteAdditionalOptionsView *)self keyboardButtonGroupView];
  _keyboardButtonGroupViewButtons = [(PKPaletteAdditionalOptionsView *)self _keyboardButtonGroupViewButtons];
  [keyboardButtonGroupView4 addButtonsFromArray:_keyboardButtonGroupViewButtons];

  v51 = *MEMORY[0x1E69DC5C0];
  v50 = *(MEMORY[0x1E69DC5C0] + 8);
  v52 = *(MEMORY[0x1E69DC5C0] + 16);
  v53 = *(MEMORY[0x1E69DC5C0] + 24);
  if (!v6 && ([(PKPaletteAdditionalOptionsView *)self showsShapeButton]|| [(PKPaletteAdditionalOptionsView *)self showsTextButton]))
  {
    edgeLocation4 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
    v55 = edgeLocation4 == 8 || edgeLocation4 == 2;
    v50 = 0.0;
    v53 = 6.0;
    if (v55)
    {
      v52 = 6.0;
    }

    else
    {
      v52 = 0.0;
    }

    edgeLocation5 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
    if (edgeLocation5 != 4 && edgeLocation5 != 1)
    {
      v53 = 0.0;
    }

    v51 = 0.0;
  }

  keyboardButtonGroupView5 = [(PKPaletteAdditionalOptionsView *)self keyboardButtonGroupView];
  [keyboardButtonGroupView5 setAdditionalContentMargins:{v51, v50, v52, v53}];

  floatingKeyboardType = [(PKPaletteAdditionalOptionsView *)self floatingKeyboardType];
  keyboardButton = [(PKPaletteAdditionalOptionsView *)self keyboardButton];
  [keyboardButton setFloatingKeyboardType:floatingKeyboardType];

  delegate = [(PKPaletteAdditionalOptionsView *)self delegate];
  v62 = [delegate keyboardSelectionMenuForAdditionalOptionsView:self];
  keyboardButton2 = [(PKPaletteAdditionalOptionsView *)self keyboardButton];
  [keyboardButton2 setKeyboardSelectionMenu:v62];

  enableKeyboardButtons = [(PKPaletteAdditionalOptionsView *)self enableKeyboardButtons];
  keyboardButton3 = [(PKPaletteAdditionalOptionsView *)self keyboardButton];
  [keyboardButton3 setEnableKeyboardToggle:enableKeyboardButtons];

  enableKeyboardButtons2 = [(PKPaletteAdditionalOptionsView *)self enableKeyboardButtons];
  returnKeyButton = [(PKPaletteAdditionalOptionsView *)self returnKeyButton];
  [returnKeyButton setEnabled:enableKeyboardButtons2];

  traitCollection2 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
  if ([traitCollection2 userInterfaceIdiom])
  {
    goto LABEL_46;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v71 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (!v71)
  {
    goto LABEL_46;
  }

  v72 = _UISolariumEnabled();

  if ((v72 & 1) == 0)
  {
    plusButton = [(PKPaletteAdditionalOptionsView *)self plusButton];
    [plusButton setOverrideUserInterfaceStyle:2];

    ellipsisButton = [(PKPaletteAdditionalOptionsView *)self ellipsisButton];
    [ellipsisButton setOverrideUserInterfaceStyle:2];

    textButton2 = [(PKPaletteAdditionalOptionsView *)self textButton];
    [textButton2 setOverrideUserInterfaceStyle:2];

    traitCollection2 = [(PKPaletteAdditionalOptionsView *)self shapeButton];
    [traitCollection2 setOverrideUserInterfaceStyle:2];
LABEL_46:
  }

  shouldShowFingerDrawsOption = [(PKPaletteAdditionalOptionsView *)self shouldShowFingerDrawsOption];
  moreOptionsViewController = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [moreOptionsViewController setShouldShowFingerDrawsOption:shouldShowFingerDrawsOption];

  shouldShowTapToRadarOption = [(PKPaletteAdditionalOptionsView *)self shouldShowTapToRadarOption];
  moreOptionsViewController2 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [moreOptionsViewController2 setShouldShowTapToRadarOption:shouldShowTapToRadarOption];

  shouldShowResetHandwritingEducationPane = [(PKPaletteAdditionalOptionsView *)self shouldShowResetHandwritingEducationPane];
  moreOptionsViewController3 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [moreOptionsViewController3 setShouldShowResetHandwritingEducationPane:shouldShowResetHandwritingEducationPane];

  shouldAlwaysShowAutoRefineControls = [(PKPaletteAdditionalOptionsView *)self shouldAlwaysShowAutoRefineControls];
  moreOptionsViewController4 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [moreOptionsViewController4 setShouldAlwaysShowAutoRefineControls:shouldAlwaysShowAutoRefineControls];
}

void __43__PKPaletteAdditionalOptionsView__updateUI__block_invoke_2(uint64_t a1)
{
  v52[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) plusButton];
  [v2 removeFromSuperview];

  if (*(a1 + 40) == 1 && !PKIsPhoneDevice())
  {
    v3 = [*(a1 + 32) showsPlusButton];
  }

  else
  {
    v3 = 0;
  }

  if ([*(a1 + 32) showsPlusButton] && ((objc_msgSend(*(a1 + 32), "_hasPlusButtonView") | v3) & 1) == 0)
  {
    v4 = [*(a1 + 32) contentStackView];
    v5 = [*(a1 + 32) plusButton];
    [v4 insertArrangedSubview:v5 atIndex:0];
  }

  v6 = [*(a1 + 32) ellipsisButton];
  [v6 removeFromSuperview];

  v7 = [*(a1 + 32) contentStackView];
  v8 = [*(a1 + 32) ellipsisButton];
  [v7 insertArrangedSubview:v8 atIndex:1];

  if (([*(a1 + 32) showsTextButton] & 1) != 0 || objc_msgSend(*(a1 + 32), "showsShapeButton"))
  {
    v9 = [*(a1 + 32) textShapeStackView];
    [v9 removeFromSuperview];

    v10 = [*(a1 + 32) contentStackView];
    v11 = [*(a1 + 32) textShapeStackView];
    [v10 insertArrangedSubview:v11 atIndex:0];
  }

  v12 = [*(a1 + 32) keyboardButtonGroupView];
  [v12 removeFromSuperview];

  v13 = [*(a1 + 32) contentStackView];
  v14 = [*(a1 + 32) keyboardButtonGroupView];
  [v13 insertArrangedSubview:v14 atIndex:0];

  if ([*(a1 + 32) _hasPlusButtonView])
  {
    v15 = [*(a1 + 32) showsPlusButton];
    v16 = [*(a1 + 32) plusButton];
    [v16 setHidden:v15 ^ 1u];
  }

  v17 = [*(a1 + 32) showsTextButton];
  v18 = [*(a1 + 32) textButton];
  [v18 setHidden:v17 ^ 1u];

  v19 = [*(a1 + 32) showsShapeButton];
  v20 = [*(a1 + 32) shapeButton];
  [v20 setHidden:v19 ^ 1u];

  v21 = [*(a1 + 32) wantsEllipsisButtonVisible];
  v22 = [*(a1 + 32) ellipsisButton];
  [v22 setHidden:v21 ^ 1u];

  if (*(a1 + 40))
  {
    v23 = 1;
  }

  else
  {
    v23 = [*(a1 + 32) wantsInputAssistantViewVisible] ^ 1;
  }

  v24 = [*(a1 + 32) keyboardButtonGroupView];
  [v24 setHidden:v23];

  if ([*(a1 + 32) showsTextButton])
  {
    v25 = 0;
  }

  else
  {
    v25 = [*(a1 + 32) showsShapeButton] ^ 1;
  }

  v26 = [*(a1 + 32) textShapeStackView];
  [v26 setHidden:v25];

  v27 = [*(a1 + 32) textButton];
  [v27 removeFromSuperview];

  v28 = [*(a1 + 32) shapeButton];
  [v28 removeFromSuperview];

  v29 = [*(a1 + 32) edgeLocation];
  v30 = [*(a1 + 32) textShapeStackView];
  v31 = *(a1 + 32);
  if (v29 == 2)
  {
    v32 = [v31 shapeButton];
    [v30 addArrangedSubview:v32];

    v33 = [*(a1 + 32) textShapeStackView];
    [*(a1 + 32) textButton];
  }

  else
  {
    v34 = [v31 textButton];
    [v30 addArrangedSubview:v34];

    v33 = [*(a1 + 32) textShapeStackView];
    [*(a1 + 32) shapeButton];
  }
  v35 = ;
  [v33 addArrangedSubview:v35];

  v36 = [*(a1 + 32) plusEllipsisStackView];
  [v36 removeFromSuperview];

  if (*(a1 + 40) == 1 && [*(a1 + 32) showsPlusButton] && objc_msgSend(*(a1 + 32), "wantsEllipsisButtonVisible"))
  {
    if ([*(a1 + 32) _hasPlusButtonView])
    {
      v37 = [*(a1 + 32) plusButton];
      [v37 removeFromSuperview];
    }

    v38 = [*(a1 + 32) ellipsisButton];
    [v38 removeFromSuperview];

    if (PKIsPhoneDevice())
    {
      v39 = objc_alloc(MEMORY[0x1E69DCF90]);
      v40 = [*(a1 + 32) plusButton];
      v52[0] = v40;
      v41 = [*(a1 + 32) ellipsisButton];
      v52[1] = v41;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
      v43 = [v39 initWithArrangedSubviews:v42];
      [*(a1 + 32) setPlusEllipsisStackView:v43];

      v44 = [*(a1 + 32) plusEllipsisStackView];
      [v44 setAxis:1];

      v45 = [*(a1 + 32) plusEllipsisStackView];
      [v45 setDistribution:1];

      v46 = [*(a1 + 32) plusEllipsisStackView];
      [v46 setAlignment:3];

      v47 = [*(a1 + 32) plusEllipsisStackView];
      [v47 setSpacing:12.0];

      v48 = [*(a1 + 32) contentStackView];
      v49 = [*(a1 + 32) plusEllipsisStackView];
      [v48 addArrangedSubview:v49];
    }

    else
    {
      v51 = [*(a1 + 32) contentStackView];
      v50 = [*(a1 + 32) ellipsisButton];
      [v51 addArrangedSubview:v50];
    }
  }
}

- (id)_keyboardButtonGroupViewButtons
{
  v10[2] = *MEMORY[0x1E69E9840];
  edgeLocation = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
  if (edgeLocation == 2 || edgeLocation == 8)
  {
    returnKeyButton = [(PKPaletteAdditionalOptionsView *)self returnKeyButton];
    v10[0] = returnKeyButton;
    keyboardButton = [(PKPaletteAdditionalOptionsView *)self keyboardButton];
    v10[1] = keyboardButton;
    v6 = v10;
  }

  else
  {
    returnKeyButton = [(PKPaletteAdditionalOptionsView *)self keyboardButton];
    v9[0] = returnKeyButton;
    keyboardButton = [(PKPaletteAdditionalOptionsView *)self returnKeyButton];
    v9[1] = keyboardButton;
    v6 = v9;
  }

  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v7;
}

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)_didSelectEllipsisButton:(id)button
{
  buttonCopy = button;
  palettePopoverPresenting = [(PKPaletteAdditionalOptionsView *)self palettePopoverPresenting];
  palettePopoverPresentingController = [palettePopoverPresenting palettePopoverPresentingController];

  if (palettePopoverPresentingController)
  {
    presentedPopoverViewController = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    if (presentedPopoverViewController)
    {
      presentedPopoverViewController11 = presentedPopoverViewController;
      if ([presentedPopoverViewController isBeingPresented])
      {

LABEL_27:
        goto LABEL_28;
      }

      isBeingDismissed = [presentedPopoverViewController11 isBeingDismissed];

      if (isBeingDismissed)
      {
        goto LABEL_28;
      }
    }

    v9 = objc_alloc_init(PKPaletteMoreOptionsViewController);
    [(PKPaletteAdditionalOptionsView *)self setMoreOptionsViewController:v9];

    moreOptionsViewController = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [(PKPaletteAdditionalOptionsView *)self setPresentedPopoverViewController:moreOptionsViewController];

    shouldShowTapToRadarOption = [(PKPaletteAdditionalOptionsView *)self shouldShowTapToRadarOption];
    moreOptionsViewController2 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [moreOptionsViewController2 setShouldShowTapToRadarOption:shouldShowTapToRadarOption];

    shouldShowResetHandwritingEducationPane = [(PKPaletteAdditionalOptionsView *)self shouldShowResetHandwritingEducationPane];
    moreOptionsViewController3 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [moreOptionsViewController3 setShouldShowResetHandwritingEducationPane:shouldShowResetHandwritingEducationPane];

    v15 = PKCurrentDeviceSupportsPencil();
    moreOptionsViewController4 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [moreOptionsViewController4 setShouldShowOpenPencilSettingsOption:v15];

    isAutoHideOn = [(PKPaletteAdditionalOptionsView *)self isAutoHideOn];
    moreOptionsViewController5 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [moreOptionsViewController5 setAutoHideOn:isAutoHideOn];

    isFingerDrawsOn = [(PKPaletteAdditionalOptionsView *)self isFingerDrawsOn];
    moreOptionsViewController6 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [moreOptionsViewController6 setIsFingerDrawsOn:isFingerDrawsOn];

    [(PKPaletteAdditionalOptionsView *)self _updateMoreOptionsViewControllerAutoRefineState];
    [(PKPaletteAdditionalOptionsView *)self _updateMoreOptionsViewControllerProofreadingState];
    traitCollection = [(PKPaletteAdditionalOptionsView *)self traitCollection];
    window = [(PKPaletteAdditionalOptionsView *)self window];
    windowScene = [window windowScene];
    v24 = PKUseCompactSize(traitCollection, windowScene);
    moreOptionsViewController7 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [moreOptionsViewController7 setShouldShowAutoMinimizeOption:!v24];

    moreOptionsViewController8 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [moreOptionsViewController8 setDelegate:self];

    shouldShowFingerDrawsOption = [(PKPaletteAdditionalOptionsView *)self shouldShowFingerDrawsOption];
    moreOptionsViewController9 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [moreOptionsViewController9 setShouldShowFingerDrawsOption:shouldShowFingerDrawsOption];

    shouldAlwaysShowAutoRefineControls = [(PKPaletteAdditionalOptionsView *)self shouldAlwaysShowAutoRefineControls];
    moreOptionsViewController10 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [moreOptionsViewController10 setShouldAlwaysShowAutoRefineControls:shouldAlwaysShowAutoRefineControls];

    moreOptionsViewController11 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    traitCollection2 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
    [moreOptionsViewController11 updateUIForTraitCollection:traitCollection2];

    presentedPopoverViewController2 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    [presentedPopoverViewController2 setModalPresentationStyle:7];

    presentedPopoverViewController3 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    popoverPresentationController = [presentedPopoverViewController3 popoverPresentationController];
    [popoverPresentationController setDelegate:self];

    traitCollection3 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
    window2 = [(PKPaletteAdditionalOptionsView *)self window];
    windowScene2 = [window2 windowScene];
    if (PKUseCompactSize(traitCollection3, windowScene2))
    {
      v39 = 2;
    }

    else
    {
      v39 = PKUIPopoverPermittedArrowDirectionsForEdge([(PKPaletteAdditionalOptionsView *)self edgeLocation]);
    }

    presentedPopoverViewController4 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    popoverPresentationController2 = [presentedPopoverViewController4 popoverPresentationController];
    [popoverPresentationController2 setPermittedArrowDirections:v39];

    [buttonCopy bounds];
    v96 = CGRectInset(v95, -5.0, -5.0);
    x = v96.origin.x;
    y = v96.origin.y;
    width = v96.size.width;
    height = v96.size.height;
    if (_UISolariumEnabled())
    {
      [buttonCopy bounds];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      palettePopoverPresenting2 = [(PKPaletteAdditionalOptionsView *)self palettePopoverPresenting];
      palettePopoverClippingView = [palettePopoverPresenting2 palettePopoverClippingView];

      [palettePopoverClippingView frame];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      superview = [palettePopoverClippingView superview];
      [buttonCopy convertRect:superview fromView:{v57, v59, v61, v63}];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;

      edgeLocation = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
      if (edgeLocation == 8)
      {
        v74 = v66;
      }

      else
      {
        v74 = v47;
      }

      if (edgeLocation == 8)
      {
        v75 = v49;
      }

      else
      {
        v75 = v68;
      }

      if (edgeLocation == 8)
      {
        v76 = v70;
      }

      else
      {
        v76 = v51;
      }

      if (edgeLocation == 8)
      {
        v77 = v53;
      }

      else
      {
        v77 = v72;
      }

      if (edgeLocation == 2)
      {
        v74 = v66;
        v75 = v49;
        v76 = v70;
        v77 = v53;
      }

      v97 = CGRectInset(*&v74, -5.0, -5.0);
      x = v97.origin.x;
      y = v97.origin.y;
      width = v97.size.width;
      height = v97.size.height;
      presentedPopoverViewController5 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
      popoverPresentationController3 = [presentedPopoverViewController5 popoverPresentationController];
      [popoverPresentationController3 _setShouldHideArrow:1];
    }

    presentedPopoverViewController6 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    popoverPresentationController4 = [presentedPopoverViewController6 popoverPresentationController];
    [popoverPresentationController4 setSourceRect:{x, y, width, height}];

    presentedPopoverViewController7 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    popoverPresentationController5 = [presentedPopoverViewController7 popoverPresentationController];
    [popoverPresentationController5 setSourceView:buttonCopy];

    presentedPopoverViewController8 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    popoverPresentationController6 = [presentedPopoverViewController8 popoverPresentationController];
    [popoverPresentationController6 _setShouldDisableInteractionDuringTransitions:0];

    palettePopoverPresenting3 = [(PKPaletteAdditionalOptionsView *)self palettePopoverPresenting];
    palettePopoverPassthroughViews = [palettePopoverPresenting3 palettePopoverPassthroughViews];
    presentedPopoverViewController9 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    popoverPresentationController7 = [presentedPopoverViewController9 popoverPresentationController];
    [popoverPresentationController7 setPassthroughViews:palettePopoverPassthroughViews];

    presentedPopoverViewController10 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    popoverPresentationController8 = [presentedPopoverViewController10 popoverPresentationController];
    [popoverPresentationController8 _setIgnoresKeyboardNotifications:1];

    [(PKPaletteAdditionalOptionsView *)self updatePopoverUI];
    palettePopoverPresenting4 = [(PKPaletteAdditionalOptionsView *)self palettePopoverPresenting];
    LODWORD(popoverPresentationController8) = [palettePopoverPresenting4 shouldPalettePresentPopover];

    if (popoverPresentationController8)
    {
      presentedPopoverViewController11 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
      [palettePopoverPresentingController presentViewController:presentedPopoverViewController11 animated:1 completion:0];
      goto LABEL_27;
    }
  }

LABEL_28:
}

- (void)updatePopoverUI
{
  palettePopoverPresenting = [(PKPaletteAdditionalOptionsView *)self palettePopoverPresenting];
  presentedPopoverViewController = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
  [palettePopoverPresenting updatePalettePopover:presentedPopoverViewController];
}

- (void)_updateMoreOptionsViewControllerAutoRefineState
{
  v3 = +[PKSettingsDaemon autoRefineEnabled];
  moreOptionsViewController = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [moreOptionsViewController setIsAutoRefineOn:v3];
}

- (void)_updateMoreOptionsViewControllerProofreadingState
{
  v3 = +[PKSettingsDaemon proofreadingEnabled];
  moreOptionsViewController = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [moreOptionsViewController setIsProofreadingOn:v3];
}

- (void)moreOptionsViewControllerDidToggleAutoHide:(id)hide
{
  -[PKPaletteAdditionalOptionsView setAutoHideOn:](self, "setAutoHideOn:", [hide isAutoHideOn]);
  moreOptionsViewController = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKPaletteAdditionalOptionsView_moreOptionsViewControllerDidToggleAutoHide___block_invoke;
  v5[3] = &unk_1E82D7148;
  v5[4] = self;
  [moreOptionsViewController dismissViewControllerAnimated:1 completion:v5];
}

void __77__PKPaletteAdditionalOptionsView_moreOptionsViewControllerDidToggleAutoHide___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 additionalOptionsView:*(a1 + 32) didToggleAutoHideOption:{objc_msgSend(*(a1 + 32), "isAutoHideOn")}];
}

- (void)moreOptionsViewControllerDidToggleFingerDraws:(id)draws
{
  isFingerDrawsOn = [draws isFingerDrawsOn];
  v5 = isFingerDrawsOn;
  [(PKPaletteAdditionalOptionsView *)self setIsFingerDrawsOn:isFingerDrawsOn];
  [PKSettingsDaemon setPrefersPencilOnlyDrawing:v5 ^ 1u];
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  [PKStatisticsManager recordDrawWithFingerToggle:v6];
}

- (void)moreOptionsViewControllerDidSelectOpenPencilSettings:(id)settings
{
  self->_didTapOnPencilSettings = 1;
  +[PKSettingsDaemon openPencilPreferences];
  v3 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v3 recordJumpToSettings];
}

- (void)moreOptionsViewControllerDidSelectTapToRadar:(id)radar
{
  moreOptionsViewController = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__PKPaletteAdditionalOptionsView_moreOptionsViewControllerDidSelectTapToRadar___block_invoke;
  v5[3] = &unk_1E82D7148;
  v5[4] = self;
  [moreOptionsViewController dismissViewControllerAnimated:1 completion:v5];
}

void __79__PKPaletteAdditionalOptionsView_moreOptionsViewControllerDidSelectTapToRadar___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 additionalOptionsViewDidPressTapToRadarButton:*(a1 + 32)];
}

- (void)moreOptionsViewControllerDidToggleAutoRefine:(id)refine
{
  v6 = *MEMORY[0x1E69E9840];
  refineCopy = refine;
  v4 = os_log_create("com.apple.pencilkit", "PKPaletteAdditionalOptionsView");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [refineCopy isAutoRefineOn];
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Did toggle AutoRefine to %{BOOL}d", v5, 8u);
  }

  +[PKSettingsDaemon setAutoRefineEnabled:](PKSettingsDaemon, "setAutoRefineEnabled:", [refineCopy isAutoRefineOn]);
}

- (void)moreOptionsViewControllerDidToggleProofreading:(id)proofreading
{
  v6 = *MEMORY[0x1E69E9840];
  proofreadingCopy = proofreading;
  v4 = os_log_create("com.apple.pencilkit", "PKPaletteAdditionalOptionsView");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [proofreadingCopy isProofreadingOn];
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Did toggle Proofreading to %{BOOL}d", v5, 8u);
  }

  +[PKSettingsDaemon setProofreadingEnabled:](PKSettingsDaemon, "setProofreadingEnabled:", [proofreadingCopy isProofreadingOn]);
}

- (void)moreOptionsViewControllerDidSelectResetHandwritingEducationPane:(id)pane
{
  +[PKWelcomeController resetEducationPane];
  moreOptionsViewController = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [moreOptionsViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = PKPaletteAdditionalOptionsView;
  [(PKPaletteAdditionalOptionsView *)&v13 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPaletteAdditionalOptionsView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];
  horizontalSizeClass2 = [changeCopy horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {
    moreOptionsViewController = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    traitCollection2 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
    [moreOptionsViewController updateUIForTraitCollection:traitCollection2];

    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }

  traitCollection3 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
  userInterfaceStyle = [traitCollection3 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PKPaletteAdditionalOptionsView *)self updatePopoverUI];
  }
}

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  presentedPopoverViewController = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];

  if (presentedPopoverViewController)
  {
    presentedPopoverViewController2 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    [presentedPopoverViewController2 dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (CGRect)plusButtonFrame
{
  plusButton = [(PKPaletteAdditionalOptionsView *)self plusButton];
  [plusButton frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_handleKeyboardButton
{
  delegate = [(PKPaletteAdditionalOptionsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PKPaletteAdditionalOptionsView *)self delegate];
    [delegate2 additionalOptionsViewDidPressKeyboardButton:self];
  }
}

- (void)_handleReturnKeyButton
{
  delegate = [(PKPaletteAdditionalOptionsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PKPaletteAdditionalOptionsView *)self delegate];
    [delegate2 additionalOptionsViewDidPressReturnKeyButton:self];
  }
}

- (PKPalettePopoverPresenting)palettePopoverPresenting
{
  WeakRetained = objc_loadWeakRetained(&self->_palettePopoverPresenting);

  return WeakRetained;
}

- (PKPaletteAdditionalOptionsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end