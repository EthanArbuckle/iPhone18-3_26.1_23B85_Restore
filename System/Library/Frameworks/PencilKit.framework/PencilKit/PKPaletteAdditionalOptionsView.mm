@interface PKPaletteAdditionalOptionsView
- (BOOL)_hasPlusButtonView;
- (CGRect)plusButtonFrame;
- (CGSize)intrinsicContentSize;
- (PKPaletteAdditionalOptionsView)initWithFrame:(CGRect)a3;
- (PKPaletteAdditionalOptionsViewDelegate)delegate;
- (PKPalettePopoverPresenting)palettePopoverPresenting;
- (id)_keyboardButtonGroupViewButtons;
- (void)_didSelectEllipsisButton:(id)a3;
- (void)_handleAutoRefineSettingsDidChange;
- (void)_handleKeyboardButton;
- (void)_handleProofreadingSettingsDidChange;
- (void)_handleReturnKeyButton;
- (void)_handleSceneWillDeactivateNotification:(id)a3;
- (void)_pencilInteractionPrefersPencilOnlyDrawsDidChange;
- (void)_setPlusButton:(id)a3;
- (void)_updateMoreOptionsViewControllerAutoRefineState;
- (void)_updateMoreOptionsViewControllerProofreadingState;
- (void)_updateUI;
- (void)didMoveToWindow;
- (void)dismissPalettePopoverWithCompletion:(id)a3;
- (void)moreOptionsViewControllerDidSelectOpenPencilSettings:(id)a3;
- (void)moreOptionsViewControllerDidSelectResetHandwritingEducationPane:(id)a3;
- (void)moreOptionsViewControllerDidSelectTapToRadar:(id)a3;
- (void)moreOptionsViewControllerDidToggleAutoHide:(id)a3;
- (void)moreOptionsViewControllerDidToggleAutoRefine:(id)a3;
- (void)moreOptionsViewControllerDidToggleFingerDraws:(id)a3;
- (void)moreOptionsViewControllerDidToggleProofreading:(id)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setEnableKeyboardButtons:(BOOL)a3;
- (void)setFloatingKeyboardType:(int64_t)a3;
- (void)setPlusButton:(id)a3;
- (void)setScalingFactor:(double)a3;
- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)a3;
- (void)setShouldShowFingerDrawsOption:(BOOL)a3;
- (void)setShouldShowResetHandwritingEducationPane:(BOOL)a3;
- (void)setShouldShowTapToRadarOption:(BOOL)a3;
- (void)setShowsPlusButton:(BOOL)a3;
- (void)setShowsShapeButton:(BOOL)a3;
- (void)setShowsTextButton:(BOOL)a3;
- (void)setWantsEllipsisButtonVisible:(BOOL)a3;
- (void)setWantsInputAssistantViewVisible:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePopoverUI;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PKPaletteAdditionalOptionsView

- (PKPaletteAdditionalOptionsView)initWithFrame:(CGRect)a3
{
  v83[4] = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = PKPaletteAdditionalOptionsView;
  v3 = [(PKPaletteAdditionalOptionsView *)&v81 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scalingFactor = 1.0;
    v5 = [(PKPaletteAdditionalOptionsView *)v3 traitCollection];
    if ([v5 userInterfaceIdiom])
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
    v73 = [(UIStackView *)v4->_contentStackView topAnchor];
    v72 = [(PKPaletteAdditionalOptionsView *)v4 topAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v83[0] = v71;
    v70 = [(UIStackView *)v4->_contentStackView leadingAnchor];
    v69 = [(PKPaletteAdditionalOptionsView *)v4 leadingAnchor];
    v18 = [v70 constraintEqualToAnchor:v69];
    v83[1] = v18;
    v19 = [(UIStackView *)v4->_contentStackView bottomAnchor];
    v20 = [(PKPaletteAdditionalOptionsView *)v4 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v83[2] = v21;
    v22 = [(UIStackView *)v4->_contentStackView trailingAnchor];
    v23 = [(PKPaletteAdditionalOptionsView *)v4 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v83[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];
    [v68 activateConstraints:v25];

    v26 = +[PKPaletteButton keyboardButton];
    [(PKPaletteAdditionalOptionsView *)v4 setKeyboardButton:v26];

    v27 = [(PKPaletteAdditionalOptionsView *)v4 keyboardButton];
    [v27 addTarget:v4 action:sel__handleKeyboardButton forControlEvents:64];

    v28 = +[PKPaletteButton returnKeyButton];
    [(PKPaletteAdditionalOptionsView *)v4 setReturnKeyButton:v28];

    v29 = [(PKPaletteAdditionalOptionsView *)v4 returnKeyButton];
    [v29 addTarget:v4 action:sel__handleReturnKeyButton forControlEvents:64];

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
    v37 = [(PKPaletteButton *)v4->_textButton widthAnchor];
    v38 = [v37 constraintEqualToConstant:0.0];
    textButtonWidthConstraint = v4->_textButtonWidthConstraint;
    v4->_textButtonWidthConstraint = v38;

    v40 = [(PKPaletteButton *)v4->_textButton heightAnchor];
    v41 = [v40 constraintEqualToConstant:0.0];
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
    v47 = [(PKPaletteButton *)v4->_shapeButton widthAnchor];
    v48 = [v47 constraintEqualToConstant:0.0];
    shapeButtonWidthConstraint = v4->_shapeButtonWidthConstraint;
    v4->_shapeButtonWidthConstraint = v48;

    v50 = [(PKPaletteButton *)v4->_shapeButton heightAnchor];
    v51 = [v50 constraintEqualToConstant:0.0];
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
    v57 = [(PKPaletteButton *)v4->_ellipsisButton widthAnchor];
    v58 = [v57 constraintEqualToConstant:0.0];
    ellipsisButtonWidthConstraint = v4->_ellipsisButtonWidthConstraint;
    v4->_ellipsisButtonWidthConstraint = v58;

    v60 = [(PKPaletteButton *)v4->_ellipsisButton heightAnchor];
    v61 = [v60 constraintEqualToConstant:0.0];
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

- (void)willMoveToSuperview:(id)a3
{
  v5 = [(PKPaletteAdditionalOptionsView *)self superview];

  if (!a3 && v5)
  {

    [(PKPaletteAdditionalOptionsView *)self dismissPalettePopoverWithCompletion:0];
  }
}

- (void)didMoveToWindow
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaletteAdditionalOptionsView *)self window];

  if (v3)
  {
    v4 = os_log_create("com.apple.pencilkit", "AdditionalOptions");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      didTapOnPencilSettings = self->_didTapOnPencilSettings;
      v10[0] = 67174657;
      v10[1] = didTapOnPencilSettings;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "didMoveToWindow, didTapOnPencilSettings: %{private}d", v10, 8u);
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E69DE358];
    v8 = [(PKPaletteAdditionalOptionsView *)self window];
    v9 = [v8 windowScene];
    [v6 addObserver:self selector:sel__handleSceneWillDeactivateNotification_ name:v7 object:v9];
  }
}

- (void)_handleSceneWillDeactivateNotification:(id)a3
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

    v7 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [v7 dismissViewControllerAnimated:0 completion:0];
  }
}

- (void)_pencilInteractionPrefersPencilOnlyDrawsDidChange
{
  self->_isFingerDrawsOn = [MEMORY[0x1E69DCD58] prefersPencilOnlyDrawing] ^ 1;
  v3 = [(PKPaletteAdditionalOptionsView *)self isFingerDrawsOn];
  v4 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [v4 setIsFingerDrawsOn:v3];
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

- (void)setPlusButton:(id)a3
{
  if (self->_plusButton != a3)
  {
    [(PKPaletteAdditionalOptionsView *)self _setPlusButton:?];

    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)_setPlusButton:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  self->_plusButton = v4;
  v6 = v4;

  [(PKPaletteButton *)self->_plusButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_contentStackView addArrangedSubview:self->_plusButton];
  v7 = [(PKPaletteButton *)self->_plusButton widthAnchor];
  v8 = [v7 constraintEqualToConstant:0.0];
  plusButtonWidthConstraint = self->_plusButtonWidthConstraint;
  self->_plusButtonWidthConstraint = v8;

  v10 = [(PKPaletteButton *)self->_plusButton heightAnchor];
  v11 = [v10 constraintEqualToConstant:0.0];
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

- (void)setShowsPlusButton:(BOOL)a3
{
  if (self->_showsPlusButton != a3)
  {
    self->_showsPlusButton = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShowsTextButton:(BOOL)a3
{
  if (self->_showsTextButton != a3)
  {
    self->_showsTextButton = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShowsShapeButton:(BOOL)a3
{
  if (self->_showsShapeButton != a3)
  {
    self->_showsShapeButton = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setWantsEllipsisButtonVisible:(BOOL)a3
{
  if (self->_wantsEllipsisButtonVisible != a3)
  {
    self->_wantsEllipsisButtonVisible = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setWantsInputAssistantViewVisible:(BOOL)a3
{
  if (self->_wantsInputAssistantViewVisible != a3)
  {
    self->_wantsInputAssistantViewVisible = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setEnableKeyboardButtons:(BOOL)a3
{
  if (self->_enableKeyboardButtons != a3)
  {
    self->_enableKeyboardButtons = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setFloatingKeyboardType:(int64_t)a3
{
  if (self->_floatingKeyboardType != a3)
  {
    self->_floatingKeyboardType = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShouldShowFingerDrawsOption:(BOOL)a3
{
  if (self->_shouldShowFingerDrawsOption != a3)
  {
    self->_shouldShowFingerDrawsOption = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)a3
{
  if (self->_shouldAlwaysShowAutoRefineControls != a3)
  {
    self->_shouldAlwaysShowAutoRefineControls = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShouldShowTapToRadarOption:(BOOL)a3
{
  if (self->_shouldShowTapToRadarOption != a3)
  {
    self->_shouldShowTapToRadarOption = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setShouldShowResetHandwritingEducationPane:(BOOL)a3
{
  if (self->_shouldShowResetHandwritingEducationPane != a3)
  {
    self->_shouldShowResetHandwritingEducationPane = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(PKPaletteAdditionalOptionsView *)self contentStackView];
  [v2 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
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
  v3 = [(PKPaletteAdditionalOptionsView *)self contentStackView];
  v4 = [v3 subviews];
  v5 = [(PKPaletteAdditionalOptionsView *)self plusButton];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)_updateUI
{
  [(PKPaletteAdditionalOptionsView *)self invalidateIntrinsicContentSize];
  v3 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
  v4 = [(PKPaletteAdditionalOptionsView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);

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

  v11 = [(PKPaletteAdditionalOptionsView *)self contentStackView];
  [v11 setSpacing:v7];

  v12 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
  v14 = v12 == 2 || v12 == 8;
  v15 = [(PKPaletteAdditionalOptionsView *)self contentStackView];
  [v15 setAxis:v14];

  v16 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
  v18 = v16 != 2 && v16 != 8;
  v19 = [(PKPaletteAdditionalOptionsView *)self textShapeStackView];
  [v19 setAxis:v18];

  [(PKPaletteAdditionalOptionsView *)self scalingFactor];
  v21 = v20 * 12.0;
  v22 = [(PKPaletteAdditionalOptionsView *)self textShapeStackView];
  [v22 setSpacing:v21];

  [(PKPaletteAdditionalOptionsView *)self scalingFactor];
  v24 = v9 * v23;
  v25 = v9 * v23;
  v26 = [(PKPaletteAdditionalOptionsView *)self plusButtonWidthConstraint];
  [v26 setConstant:v24];

  v27 = [(PKPaletteAdditionalOptionsView *)self plusButtonHeightConstraint];
  [v27 setConstant:v25];

  v28 = [(PKPaletteAdditionalOptionsView *)self ellipsisButtonWidthConstraint];
  [v28 setConstant:v24];

  v29 = [(PKPaletteAdditionalOptionsView *)self ellipsisButtonHeightConstraint];
  [v29 setConstant:v25];

  v30 = [(PKPaletteAdditionalOptionsView *)self textButtonWidthConstraint];
  [v30 setConstant:v24];

  v31 = [(PKPaletteAdditionalOptionsView *)self textButtonHeightConstraint];
  [v31 setConstant:v25];

  v32 = [(PKPaletteAdditionalOptionsView *)self shapeButtonWidthConstraint];
  [v32 setConstant:v24];

  v33 = [(PKPaletteAdditionalOptionsView *)self shapeButtonHeightConstraint];
  [v33 setConstant:v25];

  [(PKPaletteAdditionalOptionsView *)self scalingFactor];
  v35 = v34;
  v36 = [(PKPaletteAdditionalOptionsView *)self textButton];
  [v36 setScalingFactor:v35];

  [(PKPaletteAdditionalOptionsView *)self scalingFactor];
  v38 = v37;
  v39 = [(PKPaletteAdditionalOptionsView *)self shapeButton];
  [v39 setScalingFactor:v38];

  [(PKPaletteAdditionalOptionsView *)self scalingFactor];
  v41 = v40;
  v42 = [(PKPaletteAdditionalOptionsView *)self keyboardButtonGroupView];
  [v42 setScalingFactor:v41];

  v43 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
  v45 = v43 != 2 && v43 != 8;
  v46 = [(PKPaletteAdditionalOptionsView *)self keyboardButtonGroupView];
  [v46 setAxis:v45];

  v47 = [(PKPaletteAdditionalOptionsView *)self keyboardButtonGroupView];
  [v47 removeAllButtons];

  v48 = [(PKPaletteAdditionalOptionsView *)self keyboardButtonGroupView];
  v49 = [(PKPaletteAdditionalOptionsView *)self _keyboardButtonGroupViewButtons];
  [v48 addButtonsFromArray:v49];

  v51 = *MEMORY[0x1E69DC5C0];
  v50 = *(MEMORY[0x1E69DC5C0] + 8);
  v52 = *(MEMORY[0x1E69DC5C0] + 16);
  v53 = *(MEMORY[0x1E69DC5C0] + 24);
  if (!v6 && ([(PKPaletteAdditionalOptionsView *)self showsShapeButton]|| [(PKPaletteAdditionalOptionsView *)self showsTextButton]))
  {
    v54 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
    v55 = v54 == 8 || v54 == 2;
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

    v56 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
    if (v56 != 4 && v56 != 1)
    {
      v53 = 0.0;
    }

    v51 = 0.0;
  }

  v58 = [(PKPaletteAdditionalOptionsView *)self keyboardButtonGroupView];
  [v58 setAdditionalContentMargins:{v51, v50, v52, v53}];

  v59 = [(PKPaletteAdditionalOptionsView *)self floatingKeyboardType];
  v60 = [(PKPaletteAdditionalOptionsView *)self keyboardButton];
  [v60 setFloatingKeyboardType:v59];

  v61 = [(PKPaletteAdditionalOptionsView *)self delegate];
  v62 = [v61 keyboardSelectionMenuForAdditionalOptionsView:self];
  v63 = [(PKPaletteAdditionalOptionsView *)self keyboardButton];
  [v63 setKeyboardSelectionMenu:v62];

  v64 = [(PKPaletteAdditionalOptionsView *)self enableKeyboardButtons];
  v65 = [(PKPaletteAdditionalOptionsView *)self keyboardButton];
  [v65 setEnableKeyboardToggle:v64];

  v66 = [(PKPaletteAdditionalOptionsView *)self enableKeyboardButtons];
  v67 = [(PKPaletteAdditionalOptionsView *)self returnKeyButton];
  [v67 setEnabled:v66];

  v68 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
  if ([v68 userInterfaceIdiom])
  {
    goto LABEL_46;
  }

  v69 = [MEMORY[0x1E696AAE8] mainBundle];
  v70 = [v69 bundleIdentifier];
  v71 = [v70 isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (!v71)
  {
    goto LABEL_46;
  }

  v72 = _UISolariumEnabled();

  if ((v72 & 1) == 0)
  {
    v73 = [(PKPaletteAdditionalOptionsView *)self plusButton];
    [v73 setOverrideUserInterfaceStyle:2];

    v74 = [(PKPaletteAdditionalOptionsView *)self ellipsisButton];
    [v74 setOverrideUserInterfaceStyle:2];

    v75 = [(PKPaletteAdditionalOptionsView *)self textButton];
    [v75 setOverrideUserInterfaceStyle:2];

    v68 = [(PKPaletteAdditionalOptionsView *)self shapeButton];
    [v68 setOverrideUserInterfaceStyle:2];
LABEL_46:
  }

  v76 = [(PKPaletteAdditionalOptionsView *)self shouldShowFingerDrawsOption];
  v77 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [v77 setShouldShowFingerDrawsOption:v76];

  v78 = [(PKPaletteAdditionalOptionsView *)self shouldShowTapToRadarOption];
  v79 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [v79 setShouldShowTapToRadarOption:v78];

  v80 = [(PKPaletteAdditionalOptionsView *)self shouldShowResetHandwritingEducationPane];
  v81 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [v81 setShouldShowResetHandwritingEducationPane:v80];

  v82 = [(PKPaletteAdditionalOptionsView *)self shouldAlwaysShowAutoRefineControls];
  v83 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [v83 setShouldAlwaysShowAutoRefineControls:v82];
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
  v3 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
  if (v3 == 2 || v3 == 8)
  {
    v4 = [(PKPaletteAdditionalOptionsView *)self returnKeyButton];
    v10[0] = v4;
    v5 = [(PKPaletteAdditionalOptionsView *)self keyboardButton];
    v10[1] = v5;
    v6 = v10;
  }

  else
  {
    v4 = [(PKPaletteAdditionalOptionsView *)self keyboardButton];
    v9[0] = v4;
    v5 = [(PKPaletteAdditionalOptionsView *)self returnKeyButton];
    v9[1] = v5;
    v6 = v9;
  }

  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v7;
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }
}

- (void)_didSelectEllipsisButton:(id)a3
{
  v93 = a3;
  v4 = [(PKPaletteAdditionalOptionsView *)self palettePopoverPresenting];
  v5 = [v4 palettePopoverPresentingController];

  if (v5)
  {
    v6 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    if (v6)
    {
      v7 = v6;
      if ([v6 isBeingPresented])
      {

LABEL_27:
        goto LABEL_28;
      }

      v8 = [v7 isBeingDismissed];

      if (v8)
      {
        goto LABEL_28;
      }
    }

    v9 = objc_alloc_init(PKPaletteMoreOptionsViewController);
    [(PKPaletteAdditionalOptionsView *)self setMoreOptionsViewController:v9];

    v10 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [(PKPaletteAdditionalOptionsView *)self setPresentedPopoverViewController:v10];

    v11 = [(PKPaletteAdditionalOptionsView *)self shouldShowTapToRadarOption];
    v12 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [v12 setShouldShowTapToRadarOption:v11];

    v13 = [(PKPaletteAdditionalOptionsView *)self shouldShowResetHandwritingEducationPane];
    v14 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [v14 setShouldShowResetHandwritingEducationPane:v13];

    v15 = PKCurrentDeviceSupportsPencil();
    v16 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [v16 setShouldShowOpenPencilSettingsOption:v15];

    v17 = [(PKPaletteAdditionalOptionsView *)self isAutoHideOn];
    v18 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [v18 setAutoHideOn:v17];

    v19 = [(PKPaletteAdditionalOptionsView *)self isFingerDrawsOn];
    v20 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [v20 setIsFingerDrawsOn:v19];

    [(PKPaletteAdditionalOptionsView *)self _updateMoreOptionsViewControllerAutoRefineState];
    [(PKPaletteAdditionalOptionsView *)self _updateMoreOptionsViewControllerProofreadingState];
    v21 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
    v22 = [(PKPaletteAdditionalOptionsView *)self window];
    v23 = [v22 windowScene];
    v24 = PKUseCompactSize(v21, v23);
    v25 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [v25 setShouldShowAutoMinimizeOption:!v24];

    v26 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [v26 setDelegate:self];

    v27 = [(PKPaletteAdditionalOptionsView *)self shouldShowFingerDrawsOption];
    v28 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [v28 setShouldShowFingerDrawsOption:v27];

    v29 = [(PKPaletteAdditionalOptionsView *)self shouldAlwaysShowAutoRefineControls];
    v30 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    [v30 setShouldAlwaysShowAutoRefineControls:v29];

    v31 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    v32 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
    [v31 updateUIForTraitCollection:v32];

    v33 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    [v33 setModalPresentationStyle:7];

    v34 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    v35 = [v34 popoverPresentationController];
    [v35 setDelegate:self];

    v36 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
    v37 = [(PKPaletteAdditionalOptionsView *)self window];
    v38 = [v37 windowScene];
    if (PKUseCompactSize(v36, v38))
    {
      v39 = 2;
    }

    else
    {
      v39 = PKUIPopoverPermittedArrowDirectionsForEdge([(PKPaletteAdditionalOptionsView *)self edgeLocation]);
    }

    v40 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    v41 = [v40 popoverPresentationController];
    [v41 setPermittedArrowDirections:v39];

    [v93 bounds];
    v96 = CGRectInset(v95, -5.0, -5.0);
    x = v96.origin.x;
    y = v96.origin.y;
    width = v96.size.width;
    height = v96.size.height;
    if (_UISolariumEnabled())
    {
      [v93 bounds];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v54 = [(PKPaletteAdditionalOptionsView *)self palettePopoverPresenting];
      v55 = [v54 palettePopoverClippingView];

      [v55 frame];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v64 = [v55 superview];
      [v93 convertRect:v64 fromView:{v57, v59, v61, v63}];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;

      v73 = [(PKPaletteAdditionalOptionsView *)self edgeLocation];
      if (v73 == 8)
      {
        v74 = v66;
      }

      else
      {
        v74 = v47;
      }

      if (v73 == 8)
      {
        v75 = v49;
      }

      else
      {
        v75 = v68;
      }

      if (v73 == 8)
      {
        v76 = v70;
      }

      else
      {
        v76 = v51;
      }

      if (v73 == 8)
      {
        v77 = v53;
      }

      else
      {
        v77 = v72;
      }

      if (v73 == 2)
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
      v78 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
      v79 = [v78 popoverPresentationController];
      [v79 _setShouldHideArrow:1];
    }

    v80 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    v81 = [v80 popoverPresentationController];
    [v81 setSourceRect:{x, y, width, height}];

    v82 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    v83 = [v82 popoverPresentationController];
    [v83 setSourceView:v93];

    v84 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    v85 = [v84 popoverPresentationController];
    [v85 _setShouldDisableInteractionDuringTransitions:0];

    v86 = [(PKPaletteAdditionalOptionsView *)self palettePopoverPresenting];
    v87 = [v86 palettePopoverPassthroughViews];
    v88 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    v89 = [v88 popoverPresentationController];
    [v89 setPassthroughViews:v87];

    v90 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    v91 = [v90 popoverPresentationController];
    [v91 _setIgnoresKeyboardNotifications:1];

    [(PKPaletteAdditionalOptionsView *)self updatePopoverUI];
    v92 = [(PKPaletteAdditionalOptionsView *)self palettePopoverPresenting];
    LODWORD(v91) = [v92 shouldPalettePresentPopover];

    if (v91)
    {
      v7 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
      [v5 presentViewController:v7 animated:1 completion:0];
      goto LABEL_27;
    }
  }

LABEL_28:
}

- (void)updatePopoverUI
{
  v4 = [(PKPaletteAdditionalOptionsView *)self palettePopoverPresenting];
  v3 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
  [v4 updatePalettePopover:v3];
}

- (void)_updateMoreOptionsViewControllerAutoRefineState
{
  v3 = +[PKSettingsDaemon autoRefineEnabled];
  v4 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [v4 setIsAutoRefineOn:v3];
}

- (void)_updateMoreOptionsViewControllerProofreadingState
{
  v3 = +[PKSettingsDaemon proofreadingEnabled];
  v4 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [v4 setIsProofreadingOn:v3];
}

- (void)moreOptionsViewControllerDidToggleAutoHide:(id)a3
{
  -[PKPaletteAdditionalOptionsView setAutoHideOn:](self, "setAutoHideOn:", [a3 isAutoHideOn]);
  v4 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__PKPaletteAdditionalOptionsView_moreOptionsViewControllerDidToggleAutoHide___block_invoke;
  v5[3] = &unk_1E82D7148;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

void __77__PKPaletteAdditionalOptionsView_moreOptionsViewControllerDidToggleAutoHide___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 additionalOptionsView:*(a1 + 32) didToggleAutoHideOption:{objc_msgSend(*(a1 + 32), "isAutoHideOn")}];
}

- (void)moreOptionsViewControllerDidToggleFingerDraws:(id)a3
{
  v4 = [a3 isFingerDrawsOn];
  v5 = v4;
  [(PKPaletteAdditionalOptionsView *)self setIsFingerDrawsOn:v4];
  [PKSettingsDaemon setPrefersPencilOnlyDrawing:v5 ^ 1u];
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  [PKStatisticsManager recordDrawWithFingerToggle:v6];
}

- (void)moreOptionsViewControllerDidSelectOpenPencilSettings:(id)a3
{
  self->_didTapOnPencilSettings = 1;
  +[PKSettingsDaemon openPencilPreferences];
  v3 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v3 recordJumpToSettings];
}

- (void)moreOptionsViewControllerDidSelectTapToRadar:(id)a3
{
  v4 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__PKPaletteAdditionalOptionsView_moreOptionsViewControllerDidSelectTapToRadar___block_invoke;
  v5[3] = &unk_1E82D7148;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

void __79__PKPaletteAdditionalOptionsView_moreOptionsViewControllerDidSelectTapToRadar___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 additionalOptionsViewDidPressTapToRadarButton:*(a1 + 32)];
}

- (void)moreOptionsViewControllerDidToggleAutoRefine:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = os_log_create("com.apple.pencilkit", "PKPaletteAdditionalOptionsView");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [v3 isAutoRefineOn];
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Did toggle AutoRefine to %{BOOL}d", v5, 8u);
  }

  +[PKSettingsDaemon setAutoRefineEnabled:](PKSettingsDaemon, "setAutoRefineEnabled:", [v3 isAutoRefineOn]);
}

- (void)moreOptionsViewControllerDidToggleProofreading:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = os_log_create("com.apple.pencilkit", "PKPaletteAdditionalOptionsView");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [v3 isProofreadingOn];
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Did toggle Proofreading to %{BOOL}d", v5, 8u);
  }

  +[PKSettingsDaemon setProofreadingEnabled:](PKSettingsDaemon, "setProofreadingEnabled:", [v3 isProofreadingOn]);
}

- (void)moreOptionsViewControllerDidSelectResetHandwritingEducationPane:(id)a3
{
  +[PKWelcomeController resetEducationPane];
  v4 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPaletteAdditionalOptionsView;
  [(PKPaletteAdditionalOptionsView *)&v13 traitCollectionDidChange:v4];
  v5 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
  v6 = [v5 horizontalSizeClass];
  v7 = [v4 horizontalSizeClass];

  if (v6 != v7)
  {
    v8 = [(PKPaletteAdditionalOptionsView *)self moreOptionsViewController];
    v9 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
    [v8 updateUIForTraitCollection:v9];

    [(PKPaletteAdditionalOptionsView *)self _updateUI];
  }

  v10 = [(PKPaletteAdditionalOptionsView *)self traitCollection];
  v11 = [v10 userInterfaceStyle];
  v12 = [v4 userInterfaceStyle];

  if (v11 != v12)
  {
    [(PKPaletteAdditionalOptionsView *)self updatePopoverUI];
  }
}

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];

  if (v4)
  {
    v5 = [(PKPaletteAdditionalOptionsView *)self presentedPopoverViewController];
    [v5 dismissViewControllerAnimated:1 completion:v6];
  }

  else if (v6)
  {
    v6[2]();
  }
}

- (CGRect)plusButtonFrame
{
  v2 = [(PKPaletteAdditionalOptionsView *)self plusButton];
  [v2 frame];
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
  v3 = [(PKPaletteAdditionalOptionsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PKPaletteAdditionalOptionsView *)self delegate];
    [v5 additionalOptionsViewDidPressKeyboardButton:self];
  }
}

- (void)_handleReturnKeyButton
{
  v3 = [(PKPaletteAdditionalOptionsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PKPaletteAdditionalOptionsView *)self delegate];
    [v5 additionalOptionsViewDidPressReturnKeyButton:self];
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