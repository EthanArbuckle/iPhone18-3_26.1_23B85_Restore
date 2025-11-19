@interface PKPaletteContentView
- (BOOL)_contextEditingModeWantsContextualEditingViewVisible;
- (BOOL)_isHandwritingToolSelected;
- (BOOL)_useEqualSpacingStackViewDistribution;
- (BOOL)_wantsAdditionalOptionsViewVisible;
- (BOOL)_wantsUndoRedoButtonsShadow;
- (BOOL)_wantsUndoRedoButtonsVisible;
- (BOOL)isEllipsisButtonVisible;
- (CGRect)plusButtonFrame;
- (NSString)lassoToolEditingViewIdentifier;
- (PKDrawingPaletteInputAssistantView)paletteInputAssistantView;
- (PKDrawingPaletteViewStateSubject)paletteViewState;
- (PKPaletteColorPickerView)colorPickerView;
- (PKPaletteContentView)initWithPaletteViewStateObservable:(id)a3;
- (PKPaletteContentViewDelegate)delegate;
- (PKPaletteToolPickerView)toolPickerView;
- (UIView)lassoToolEditingView;
- (double)_interItemToolsSpacing;
- (double)_stackViewSpacing;
- (double)_undoRedoButtonsInterItemSpacing;
- (double)toolPickerView:(id)a3 widthForToolAtIndex:(int64_t)a4 isCompactSize:(BOOL)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)paletteButton:(id)a3 backgroundColorForState:(unint64_t)a4;
- (id)paletteButton:(id)a3 tintColorForState:(unint64_t)a4;
- (int64_t)_stackViewDistribution;
- (void)_closeButtonTapped:(id)a3;
- (void)_configureMenuForKeyboardButton:(id)a3;
- (void)_didTapLassoToolInCompact;
- (void)_dismissPalettePopoverUsingConfirmationBlock:(id)a3 completion:(id)a4;
- (void)_handleKeyboardButtonPressed;
- (void)_handleReturnKeyButtonPressed;
- (void)_installAdditionalOptionsView;
- (void)_installStackView;
- (void)_installUndoRedoButtonsView;
- (void)_updateAdditionalOptionsViewVisibility;
- (void)_updateCloseButtonVisibility;
- (void)_updateColorPickerContainerViewLocationInHierarchy;
- (void)_updateUIResetUnselectedToolsVisible:(BOOL)a3;
- (void)colorPickerContainerView:(id)a3 willDismissInputAssistantView:(id)a4;
- (void)colorPickerContainerView:(id)a3 willPresentInputAssistantView:(id)a4;
- (void)dismissEyeDropper;
- (void)dismissPalettePopoverWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)paletteViewStateDidChangeIsVisible:(id)a3;
- (void)safeAreaInsetsDidChange;
- (void)setCloseButtonVisible:(BOOL)a3;
- (void)setColorMaximumLinearExposure:(double)a3;
- (void)setContextEditingMode:(int64_t)a3;
- (void)setCornerLocation:(unint64_t)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setLassoToolEditingViewIdentifier:(id)a3;
- (void)toggleColorSelectionPopover;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PKPaletteContentView

- (PKPaletteContentView)initWithPaletteViewStateObservable:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = PKPaletteContentView;
  v5 = [(PKPaletteContentView *)&v39 init];
  v6 = v5;
  if (v5)
  {
    v5->_colorMaximumLinearExposure = 1.0;
    objc_storeWeak(&v5->_paletteViewState, v4);
    [(PKPaletteContentView *)v6 _installStackView];
    [(PKPaletteContentView *)v6 _installUndoRedoButtonsView];
    v7 = [(PKPaletteContentView *)v6 undoRedoView];
    v8 = [v7 undoButton];
    [v8 setDelegate:v6];

    v9 = [(PKPaletteContentView *)v6 undoRedoView];
    v10 = [v9 redoButton];
    [v10 setDelegate:v6];

    v11 = objc_alloc_init(PKPaletteToolPickerAndColorPickerView);
    toolAndColorPickerContainerView = v6->_toolAndColorPickerContainerView;
    v6->_toolAndColorPickerContainerView = v11;

    [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    WeakRetained = objc_loadWeakRetained(&v6->_paletteViewState);
    v14 = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView colorPickerContainerView];
    [v14 setPaletteViewState:WeakRetained];

    v15 = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView colorPickerContainerView];
    [v15 setDelegate:v6];

    [(UIStackView *)v6->_stackView addArrangedSubview:v6->_toolAndColorPickerContainerView];
    v16 = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView widthAnchor];
    v17 = [(UIStackView *)v6->_stackView widthAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    toolAndColorPickerContainerViewWidthConstraint = v6->_toolAndColorPickerContainerViewWidthConstraint;
    v6->_toolAndColorPickerContainerViewWidthConstraint = v18;

    v20 = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView heightAnchor];
    v21 = [(UIStackView *)v6->_stackView heightAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    toolAndColorPickerContainerViewHeightConstraint = v6->_toolAndColorPickerContainerViewHeightConstraint;
    v6->_toolAndColorPickerContainerViewHeightConstraint = v22;

    LODWORD(v24) = 1148829696;
    [(NSLayoutConstraint *)v6->_toolAndColorPickerContainerViewWidthConstraint setPriority:v24];
    LODWORD(v25) = 1148829696;
    [(NSLayoutConstraint *)v6->_toolAndColorPickerContainerViewHeightConstraint setPriority:v25];
    v26 = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView toolPickerView];
    v27 = [v26 widthAnchor];
    v28 = [v27 constraintEqualToConstant:0.0];
    toolPickerViewWidthConstraint = v6->_toolPickerViewWidthConstraint;
    v6->_toolPickerViewWidthConstraint = v28;

    v30 = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView toolPickerView];
    v31 = [v30 heightAnchor];
    v32 = [v31 constraintEqualToConstant:0.0];
    toolPickerViewHeightConstraint = v6->_toolPickerViewHeightConstraint;
    v6->_toolPickerViewHeightConstraint = v32;

    v34 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contextualEditingView = v6->_contextualEditingView;
    v6->_contextualEditingView = v34;

    [(UIView *)v6->_contextualEditingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = objc_alloc_init(MEMORY[0x1E69DD060]);
    lassoToolTapGestureRecognizerInCompact = v6->_lassoToolTapGestureRecognizerInCompact;
    v6->_lassoToolTapGestureRecognizerInCompact = v36;

    [(UITapGestureRecognizer *)v6->_lassoToolTapGestureRecognizerInCompact addTarget:v6 action:sel__didTapLassoToolInCompact];
    [(PKPaletteContentView *)v6 _installAdditionalOptionsView];
    [(PKPaletteContentView *)v6 _updateUI];
  }

  return v6;
}

- (void)toggleColorSelectionPopover
{
  if ([(PKPaletteContentView *)self _isHandwritingToolSelected])
  {
    v3 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_INFO, "Can't present color picker popover when the handwriting tool is currently selected.", buf, 2u);
    }
  }

  else
  {
    v4 = [(PKPaletteContentView *)self colorPickerView];
    [v4 toggleColorSelectionPopover];
  }
}

- (void)_installStackView
{
  v33[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  stackView = self->_stackView;
  self->_stackView = v3;

  [(UIStackView *)self->_stackView setAlignment:3];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAlignment:3];
  [(PKPaletteContentView *)self addSubview:self->_stackView];
  v5 = [(UIStackView *)self->_stackView topAnchor];
  v6 = [(PKPaletteContentView *)self topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  stackViewTopConstraint = self->_stackViewTopConstraint;
  self->_stackViewTopConstraint = v7;

  v9 = [(PKPaletteContentView *)self bottomAnchor];
  v10 = [(UIStackView *)self->_stackView bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  stackViewBottomConstraint = self->_stackViewBottomConstraint;
  self->_stackViewBottomConstraint = v11;

  v13 = [(UIStackView *)self->_stackView leftAnchor];
  v14 = [(PKPaletteContentView *)self leftAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  stackViewLeftConstraint = self->_stackViewLeftConstraint;
  self->_stackViewLeftConstraint = v15;

  v17 = [(PKPaletteContentView *)self rightAnchor];
  v18 = [(UIStackView *)self->_stackView rightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  stackViewRightConstraint = self->_stackViewRightConstraint;
  self->_stackViewRightConstraint = v19;

  LODWORD(v21) = 1148829696;
  [(NSLayoutConstraint *)self->_stackViewLeftConstraint setPriority:v21];
  LODWORD(v22) = 1148829696;
  [(NSLayoutConstraint *)self->_stackViewRightConstraint setPriority:v22];
  LODWORD(v23) = 1148829696;
  [(NSLayoutConstraint *)self->_stackViewTopConstraint setPriority:v23];
  LODWORD(v24) = 1148829696;
  [(NSLayoutConstraint *)self->_stackViewBottomConstraint setPriority:v24];
  v25 = [(UIStackView *)self->_stackView centerXAnchor];
  v26 = [(PKPaletteContentView *)self centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  stackViewCenterXConstraint = self->_stackViewCenterXConstraint;
  self->_stackViewCenterXConstraint = v27;

  v29 = MEMORY[0x1E696ACD8];
  v30 = self->_stackViewBottomConstraint;
  v33[0] = self->_stackViewTopConstraint;
  v33[1] = v30;
  v31 = self->_stackViewRightConstraint;
  v33[2] = self->_stackViewLeftConstraint;
  v33[3] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
  [v29 activateConstraints:v32];
}

- (void)_installUndoRedoButtonsView
{
  v3 = objc_alloc_init(PKPaletteUndoRedoView);
  undoRedoView = self->_undoRedoView;
  self->_undoRedoView = v3;

  [(PKPaletteUndoRedoView *)self->_undoRedoView setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = self->_stackView;
  v6 = self->_undoRedoView;

  [(UIStackView *)stackView addArrangedSubview:v6];
}

- (PKPaletteToolPickerView)toolPickerView
{
  v2 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v3 = [v2 toolPickerView];

  return v3;
}

- (PKPaletteColorPickerView)colorPickerView
{
  v2 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v3 = [v2 colorPickerView];

  return v3;
}

- (PKDrawingPaletteInputAssistantView)paletteInputAssistantView
{
  v2 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v3 = [v2 paletteInputAssistantView];

  return v3;
}

- (void)setCloseButtonVisible:(BOOL)a3
{
  if (self->_closeButtonVisible != a3)
  {
    self->_closeButtonVisible = a3;
    [(PKPaletteContentView *)self _updateCloseButtonVisibility];
  }
}

- (void)setColorMaximumLinearExposure:(double)a3
{
  if (self->_colorMaximumLinearExposure != a3)
  {
    self->_colorMaximumLinearExposure = a3;
    v5 = [(PKPaletteContentView *)self colorPickerView];
    [v5 setColorMaximumLinearExposure:a3];

    v6 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    [v6 setAllowHDR:a3 > 1.0];
  }
}

- (void)_updateCloseButtonVisibility
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (self->_closeButtonVisible && [(UIView *)self _pk_useCompactLayout])
  {
    if (self->_closeButton)
    {
      return;
    }

    v3 = os_log_create("com.apple.pencilkit", "PKPaletteContentView");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "install close button", v19, 2u);
    }

    v4 = +[PKPaletteButton closeButton];
    closeButton = self->_closeButton;
    self->_closeButton = v4;

    [(PKPaletteButton *)self->_closeButton addTarget:self action:sel__closeButtonTapped_ forControlEvents:64];
    [(PKPaletteButton *)self->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(PKPaletteContentView *)self stackView];
    [v6 insertArrangedSubview:self->_closeButton atIndex:0];

    v7 = [(PKPaletteContentView *)self stackView];
    [v7 setCustomSpacing:self->_closeButton afterView:0.0];

    v8 = MEMORY[0x1E696ACD8];
    v9 = [(PKPaletteButton *)self->_closeButton widthAnchor];
    v10 = [v9 constraintEqualToConstant:28.0];
    v20[0] = v10;
    v11 = [(PKPaletteButton *)self->_closeButton heightAnchor];
    v12 = [v11 constraintEqualToConstant:28.0];
    v20[1] = v12;
    v13 = [(PKPaletteButton *)self->_closeButton leadingAnchor];
    v14 = [(PKPaletteContentView *)self stackView];
    v15 = [v14 leadingAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:16.0];
    v20[2] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    [v8 activateConstraints:v17];
  }

  else
  {
    if (!self->_closeButton)
    {
      return;
    }

    v18 = os_log_create("com.apple.pencilkit", "PKPaletteContentView");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "uninstall close button", v19, 2u);
    }

    [(PKPaletteButton *)self->_closeButton removeFromSuperview];
    v9 = self->_closeButton;
    self->_closeButton = 0;
  }
}

- (void)_closeButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 contentViewDidSelectCloseButton:self];
  }
}

- (void)_installAdditionalOptionsView
{
  v3 = objc_alloc_init(PKPaletteAdditionalOptionsView);
  additionalOptionsView = self->_additionalOptionsView;
  self->_additionalOptionsView = v3;

  [(PKPaletteAdditionalOptionsView *)self->_additionalOptionsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_additionalOptionsView];
  v5 = [(PKPaletteAdditionalOptionsView *)self->_additionalOptionsView widthAnchor];
  v6 = [v5 constraintEqualToConstant:28.0];
  [(PKPaletteContentView *)self setAdditionalOptionsViewCompactWidthConstraint:v6];

  v10 = [(PKPaletteAdditionalOptionsView *)self->_additionalOptionsView heightAnchor];
  v7 = [(PKPaletteContentView *)self stackView];
  v8 = [v7 heightAnchor];
  v9 = [v10 constraintEqualToAnchor:v8];
  [(PKPaletteContentView *)self setAdditionalOptionsViewCompactHeightConstraint:v9];
}

- (UIView)lassoToolEditingView
{
  v2 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v3 = [v2 lassoToolEditingView];

  return v3;
}

- (NSString)lassoToolEditingViewIdentifier
{
  v2 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v3 = [v2 lassoToolEditingViewIdentifier];

  return v3;
}

- (void)setLassoToolEditingViewIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [v5 setLassoToolEditingViewIdentifier:v4];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPaletteContentView;
  [(PKPaletteContentView *)&v4 layoutSubviews];
  if ([(UIView *)self _pk_useCompactLayout])
  {
    [(PKPaletteContentView *)self bounds];
    v3 = CGRectGetWidth(v5) <= 327.0;
  }

  else
  {
    v3 = 0;
  }

  if (self->_usingSmallestSupportedWidth != v3)
  {
    self->_usingSmallestSupportedWidth = v3;
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateUI object:0];
    [(PKPaletteContentView *)self performSelector:sel__updateUI withObject:0 afterDelay:0.0];
  }
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PKPaletteContentView;
  [(PKPaletteContentView *)&v3 safeAreaInsetsDidChange];
  [(PKPaletteContentView *)self _updateUI];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (!-[PKPaletteContentView contextEditingMode](self, "contextEditingMode") || (-[PKPaletteContentView contextualEditingView](self, "contextualEditingView"), v8 = objc_claimAutoreleasedReturnValue(), -[PKPaletteContentView convertPoint:toView:](self, "convertPoint:toView:", v8, x, y), v10 = v9, v12 = v11, v8, -[PKPaletteContentView contextualEditingView](self, "contextualEditingView"), v13 = objc_claimAutoreleasedReturnValue(), [v13 hitTest:v7 withEvent:{v10, v12}], v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
    v15 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    [(PKPaletteContentView *)self convertPoint:v15 toView:x, y];
    v17 = v16;
    v19 = v18;

    v20 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    v14 = [v20 hitTest:v7 withEvent:{v17, v19}];

    if (!v14)
    {
      v22.receiver = self;
      v22.super_class = PKPaletteContentView;
      v14 = [(PKPaletteContentView *)&v22 hitTest:v7 withEvent:x, y];
    }
  }

  return v14;
}

- (void)setContextEditingMode:(int64_t)a3
{
  if (self->_contextEditingMode != a3)
  {
    self->_contextEditingMode = a3;
    [(PKPaletteContentView *)self _updateUI];
  }
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKPaletteContentView *)self _updateUI];
  }
}

- (void)setCornerLocation:(unint64_t)a3
{
  if (self->_cornerLocation != a3)
  {
    self->_cornerLocation = a3;
    [(PKPaletteContentView *)self _updateUI];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPaletteContentView;
  [(PKPaletteContentView *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKPaletteContentView *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(PKPaletteContentView *)self traitCollection];
    v8 = [v7 horizontalSizeClass];
    v9 = [v4 horizontalSizeClass];

    if (v8 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(PKPaletteContentView *)self _updateUI];
LABEL_6:
}

- (void)_updateUIResetUnselectedToolsVisible:(BOOL)a3
{
  v3 = a3;
  v336[9] = *MEMORY[0x1E69E9840];
  v5 = [(PKPaletteContentView *)self window];
  v6 = [v5 windowScene];
  v7 = PKIsQuickNoteWindowScene(v6);

  v325 = v7;
  [(PKPaletteContentView *)self setClipsToBounds:[(UIView *)self _pk_useCompactLayout]& (v7 ^ 1)];
  [(PKPaletteContentView *)self _updateColorPickerContainerViewLocationInHierarchy];
  [(PKPaletteContentView *)self _stackViewSpacing];
  v9 = v8;
  v10 = [(PKPaletteContentView *)self stackView];
  [v10 setSpacing:v9];

  v11 = 3.40282347e38;
  v331 = v3;
  if ([(PKPaletteContentView *)self _wantsUndoRedoButtonsVisible]&& ![(UIView *)self _pk_useCompactLayout])
  {
    v12 = [(PKPaletteContentView *)self paletteViewState];
    [v12 paletteScaleFactor];
    v11 = v13 * 12.0;
  }

  v14 = [(PKPaletteContentView *)self stackView];
  v15 = [(PKPaletteContentView *)self undoRedoView];
  [v14 setCustomSpacing:v15 afterView:v11];

  v16 = [(PKPaletteContentView *)self _stackViewDistribution];
  v17 = [(PKPaletteContentView *)self stackView];
  [v17 setDistribution:v16];

  v18 = [(PKPaletteContentView *)self paletteViewState];
  [v18 paletteScaleFactor];
  v20 = v19;
  v21 = [(PKPaletteContentView *)self undoRedoView];
  [v21 setScalingFactor:v20];

  v22 = [(PKPaletteContentView *)self paletteViewState];
  [v22 paletteScaleFactor];
  v24 = v23;
  v25 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [v25 setScalingFactor:v24];

  v26 = [(PKPaletteContentView *)self paletteViewState];
  [v26 paletteScaleFactor];
  v28 = v27;
  v29 = [(PKPaletteContentView *)self additionalOptionsView];
  [v29 setScalingFactor:v28];

  v30 = [(PKPaletteContentView *)self edgeLocation];
  v31 = [(PKPaletteContentView *)self undoRedoView];
  [v31 setEdgeLocation:v30];

  v32 = [(PKPaletteContentView *)self edgeLocation];
  v33 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [v33 setEdgeLocation:v32];

  v34 = [(PKPaletteContentView *)self cornerLocation];
  v35 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [v35 setCornerLocation:v34];

  v36 = [(PKPaletteContentView *)self edgeLocation];
  v37 = [(PKPaletteContentView *)self additionalOptionsView];
  [v37 setEdgeLocation:v36];

  [(PKPaletteContentView *)self _undoRedoButtonsInterItemSpacing];
  v39 = v38;
  v40 = [(PKPaletteContentView *)self undoRedoView];
  [v40 setInterItemSpacing:v39];

  v332[0] = MEMORY[0x1E69E9820];
  v332[1] = 3221225472;
  v332[2] = __61__PKPaletteContentView__updateUIResetUnselectedToolsVisible___block_invoke;
  v332[3] = &unk_1E82D7148;
  v332[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v332];
  [(PKPaletteContentView *)self _interItemToolsSpacing];
  v42 = v41;
  v43 = [(PKPaletteContentView *)self toolPickerView];
  [v43 setInterItemToolsSpacing:v42];

  v44 = [(PKPaletteContentView *)self additionalOptionsView];
  v45 = [v44 palettePopoverPresenting];
  v46 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v47 = [v46 colorPickerContainerView];
  [v47 setPalettePopoverPresenting:v45];

  v327 = MEMORY[0x1E696ACD8];
  v329 = [(PKPaletteContentView *)self stackViewLeftConstraint];
  v336[0] = v329;
  v48 = [(PKPaletteContentView *)self stackViewRightConstraint];
  v336[1] = v48;
  v49 = [(PKPaletteContentView *)self stackViewCenterXConstraint];
  v336[2] = v49;
  v50 = [(PKPaletteContentView *)self toolAndColorPickerContainerViewWidthConstraint];
  v336[3] = v50;
  v51 = [(PKPaletteContentView *)self toolAndColorPickerContainerViewHeightConstraint];
  v336[4] = v51;
  v52 = [(PKPaletteContentView *)self toolPickerViewWidthConstraint];
  v336[5] = v52;
  v53 = [(PKPaletteContentView *)self toolPickerViewHeightConstraint];
  v336[6] = v53;
  v54 = [(PKPaletteContentView *)self additionalOptionsViewCompactWidthConstraint];
  v336[7] = v54;
  v55 = [(PKPaletteContentView *)self additionalOptionsViewCompactHeightConstraint];
  v336[8] = v55;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v336 count:9];
  [v327 deactivateConstraints:v56];

  v57 = [(PKPaletteContentView *)self stackViewCompactLeftConstraint];
  [v57 setActive:0];

  v58 = [(PKPaletteContentView *)self stackViewCompactRightConstraint];
  [v58 setActive:0];

  if ([(UIView *)self _pk_useCompactLayout])
  {
    v59 = [(PKPaletteContentView *)self stackView];
    [v59 setAxis:0];

    v60 = [(PKPaletteContentView *)self stackViewTopConstraint];
    [v60 setConstant:12.0];

    v61 = [(PKPaletteContentView *)self stackViewBottomConstraint];
    v62 = 0.0;
    [v61 setConstant:0.0];

    v63 = [(PKPaletteContentView *)self _useEqualSpacingStackViewDistribution];
    v64 = [(PKPaletteContentView *)self stackView];
    v65 = [v64 leftAnchor];
    v66 = [(PKPaletteContentView *)self safeAreaLayoutGuide];
    v67 = [v66 leftAnchor];
    if (v63)
    {
      v68 = 16.0;
      if (v325)
      {
        v68 = 0.0;
      }

      else
      {
        v62 = -16.0;
      }

      v69 = [v65 constraintEqualToAnchor:v67 constant:v68];
      [(PKPaletteContentView *)self setStackViewCompactLeftConstraint:v69];

      v70 = [(PKPaletteContentView *)self stackView];
      v71 = [v70 rightAnchor];
      v72 = [(PKPaletteContentView *)self safeAreaLayoutGuide];
      v73 = [v72 rightAnchor];
      v74 = [v71 constraintEqualToAnchor:v73 constant:v62];
    }

    else
    {
      v106 = [v65 constraintGreaterThanOrEqualToAnchor:v67 constant:16.0];
      [(PKPaletteContentView *)self setStackViewCompactLeftConstraint:v106];

      v70 = [(PKPaletteContentView *)self stackView];
      v71 = [v70 rightAnchor];
      v72 = [(PKPaletteContentView *)self safeAreaLayoutGuide];
      v73 = [v72 rightAnchor];
      v74 = [v71 constraintLessThanOrEqualToAnchor:v73 constant:16.0];
    }

    v107 = v74;
    [(PKPaletteContentView *)self setStackViewCompactRightConstraint:v74];

    v108 = MEMORY[0x1E696ACD8];
    v109 = [(PKPaletteContentView *)self stackViewTopConstraint];
    v335[0] = v109;
    v110 = [(PKPaletteContentView *)self stackViewBottomConstraint];
    v335[1] = v110;
    v111 = [(PKPaletteContentView *)self stackViewCenterXConstraint];
    v335[2] = v111;
    v79 = [(PKPaletteContentView *)self stackViewCompactLeftConstraint];
    v335[3] = v79;
    v112 = [(PKPaletteContentView *)self stackViewCompactRightConstraint];
    v335[4] = v112;
    v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v335 count:5];
    [v108 activateConstraints:v113];

    v114 = [(PKPaletteContentView *)self _wantsAdditionalOptionsViewVisible];
    v115 = [(PKPaletteContentView *)self additionalOptionsViewCompactWidthConstraint];
    [v115 setActive:v114];

    v116 = [(PKPaletteContentView *)self _wantsAdditionalOptionsViewVisible];
    v81 = [(PKPaletteContentView *)self additionalOptionsViewCompactHeightConstraint];
    [v81 setActive:v116];
  }

  else
  {
    v75 = MEMORY[0x1E695DF70];
    v76 = [(PKPaletteContentView *)self stackViewLeftConstraint];
    v334[0] = v76;
    v77 = [(PKPaletteContentView *)self stackViewRightConstraint];
    v334[1] = v77;
    v78 = [(PKPaletteContentView *)self toolPickerViewWidthConstraint];
    v334[2] = v78;
    v79 = [(PKPaletteContentView *)self toolPickerViewHeightConstraint];
    v334[3] = v79;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v334 count:4];
    v81 = [v75 arrayWithArray:v80];

    v82 = [(PKPaletteContentView *)self edgeLocation];
    if (v82 == 8 || v82 == 2)
    {
      v83 = [(PKPaletteContentView *)self paletteViewState];
      [v83 paletteScaleFactor];
      UIFloorToViewScale();
      v85 = v84;
      v86 = [(PKPaletteContentView *)self toolPickerViewWidthConstraint];
      [v86 setConstant:v85];

      v87 = [(PKPaletteContentView *)self paletteViewState];
      [v87 _toolsContainerWidth];
      v88 = [(PKPaletteContentView *)self paletteViewState];
      [v88 paletteScaleFactor];
      UIFloorToViewScale();
      v90 = v89;
      v91 = [(PKPaletteContentView *)self toolPickerViewHeightConstraint];
      [v91 setConstant:v90];

      v92 = [(PKPaletteContentView *)self stackView];
      [v92 setAxis:1];

      v93 = [(PKPaletteContentView *)self paletteViewState];
      [v93 paletteScaleFactor];
      v95 = v94 * 48.0;
      v96 = [(PKPaletteContentView *)self stackViewTopConstraint];
      [v96 setConstant:v95];

      v97 = [(PKPaletteContentView *)self paletteViewState];
      if ([v97 showsPlusButton])
      {
        v98 = 48.0;
      }

      else
      {
        v98 = 26.0;
      }

      v99 = [(PKPaletteContentView *)self paletteViewState];
      [v99 paletteScaleFactor];
      v101 = v98 * v100;
      v102 = [(PKPaletteContentView *)self stackViewBottomConstraint];
      [v102 setConstant:v101];

      v103 = [(PKPaletteContentView *)self stackViewLeftConstraint];
      [v103 setConstant:0.0];

      v104 = [(PKPaletteContentView *)self stackViewRightConstraint];
      [v104 setConstant:0.0];

      v105 = [(PKPaletteContentView *)self toolAndColorPickerContainerViewWidthConstraint];
    }

    else
    {
      v117 = [(PKPaletteContentView *)self paletteViewState];
      [v117 _toolsContainerWidth];
      v118 = [(PKPaletteContentView *)self paletteViewState];
      [v118 paletteScaleFactor];
      UIFloorToViewScale();
      v120 = v119;
      v121 = [(PKPaletteContentView *)self toolPickerViewWidthConstraint];
      [v121 setConstant:v120];

      v122 = [(PKPaletteContentView *)self paletteViewState];
      [v122 paletteScaleFactor];
      UIFloorToViewScale();
      v124 = v123;
      v125 = [(PKPaletteContentView *)self toolPickerViewHeightConstraint];
      [v125 setConstant:v124];

      v126 = [(PKPaletteContentView *)self stackView];
      [v126 setAxis:0];

      v127 = [(PKPaletteContentView *)self stackViewTopConstraint];
      [v127 setConstant:0.0];

      v128 = [(PKPaletteContentView *)self stackViewBottomConstraint];
      [v128 setConstant:0.0];

      if ([(UIView *)self _pk_useCompactLayout])
      {
        v129 = 0.0;
      }

      else
      {
        v129 = 26.0;
      }

      v130 = [(PKPaletteContentView *)self paletteViewState];
      [v130 paletteScaleFactor];
      v132 = v129 * v131;
      v133 = [(PKPaletteContentView *)self stackViewLeftConstraint];
      [v133 setConstant:v132];

      if ([(UIView *)self _pk_useCompactLayout])
      {
        v134 = 0.0;
      }

      else
      {
        v134 = 26.0;
      }

      v135 = [(PKPaletteContentView *)self paletteViewState];
      [v135 paletteScaleFactor];
      v137 = v134 * v136;
      v138 = [(PKPaletteContentView *)self stackViewRightConstraint];
      [v138 setConstant:v137];

      v105 = [(PKPaletteContentView *)self toolAndColorPickerContainerViewHeightConstraint];
    }

    v139 = v105;
    [v81 addObject:v105];

    [MEMORY[0x1E696ACD8] activateConstraints:v81];
  }

  v140 = [(PKPaletteContentView *)self contextEditingMode];
  v141 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [v141 setContextEditingMode:v140];

  v142 = [(PKPaletteContentView *)self _contextEditingModeWantsContextualEditingViewVisible];
  v143 = [(PKPaletteContentView *)self toolPickerView];
  [v143 setHidden:v142];

  v144 = [(PKPaletteContentView *)self paletteViewState];
  if ([v144 prefersLargeContextualEditingUI])
  {
    v145 = self;
  }

  else
  {
    v146 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    v145 = [v146 toolPickerContainerView];
  }

  v147 = [(PKPaletteContentView *)self contextualEditingView];
  v148 = [v147 superview];

  if (v148 != v145)
  {
    v149 = [(PKPaletteContentView *)self contextualEditingView];
    [v149 removeFromSuperview];

    v150 = [(PKPaletteContentView *)self contextualEditingView];
    [(PKPaletteContentView *)v145 addSubview:v150];

    v322 = MEMORY[0x1E696ACD8];
    v330 = [(PKPaletteContentView *)self contextualEditingView];
    v328 = [v330 topAnchor];
    v326 = [(PKPaletteContentView *)v145 topAnchor];
    v324 = [v328 constraintEqualToAnchor:v326];
    v333[0] = v324;
    v323 = [(PKPaletteContentView *)self contextualEditingView];
    v151 = [v323 bottomAnchor];
    v152 = [(PKPaletteContentView *)v145 bottomAnchor];
    v153 = [v151 constraintEqualToAnchor:v152];
    v333[1] = v153;
    v154 = [(PKPaletteContentView *)self contextualEditingView];
    v155 = [v154 trailingAnchor];
    v156 = [(PKPaletteContentView *)v145 trailingAnchor];
    v79 = [v155 constraintEqualToAnchor:v156];
    v333[2] = v79;
    v157 = [MEMORY[0x1E695DEC8] arrayWithObjects:v333 count:3];
    [v322 activateConstraints:v157];

    v158 = [(UIView *)self _pk_useCompactLayout];
    if (v158 && (-[PKPaletteContentView paletteViewState](self, "paletteViewState"), v153 = objc_claimAutoreleasedReturnValue(), [v153 wantsUndoRedoButtonsVisibleInCompactSize]))
    {
      v159 = [(PKPaletteContentView *)self undoRedoView];
      v160 = [v159 trailingAnchor];
    }

    else
    {
      v160 = [(PKPaletteContentView *)v145 leadingAnchor];

      if (!v158)
      {
LABEL_35:
        v161 = [(PKPaletteContentView *)self contextualEditingView];
        v162 = [v161 leadingAnchor];
        v163 = [v162 constraintEqualToAnchor:v160];
        [v163 setActive:1];

        goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

LABEL_36:
  v164 = [(PKPaletteContentView *)self _contextEditingModeWantsContextualEditingViewVisible];
  v165 = [(PKPaletteContentView *)self contextualEditingView];
  [v165 setHidden:!v164];

  if (![(PKPaletteContentView *)self _contextEditingModeWantsContextualEditingViewVisible])
  {
    v166 = [(PKPaletteContentView *)self contextualEditingView];
    v167 = [v166 subviews];
    [v167 makeObjectsPerformSelector:sel_removeFromSuperview];
  }

  v168 = [(PKPaletteContentView *)self paletteViewState];
  v169 = [v168 showsPlusButton];
  v170 = [(PKPaletteContentView *)self additionalOptionsView];
  [v170 setShowsPlusButton:v169];

  v171 = [(PKPaletteContentView *)self paletteViewState];
  v172 = [v171 showsTextButton];
  v173 = [(PKPaletteContentView *)self additionalOptionsView];
  [v173 setShowsTextButton:v172];

  v174 = [(PKPaletteContentView *)self paletteViewState];
  v175 = [v174 showsShapeButton];
  v176 = [(PKPaletteContentView *)self additionalOptionsView];
  [v176 setShowsShapeButton:v175];

  v177 = [(PKPaletteContentView *)self isEllipsisButtonVisible];
  v178 = [(PKPaletteContentView *)self additionalOptionsView];
  [v178 setWantsEllipsisButtonVisible:v177];

  v179 = [(PKPaletteContentView *)self paletteViewState];
  v180 = [v179 shouldHideHoverPreviewToggle];
  v181 = [(PKPaletteContentView *)self additionalOptionsView];
  [v181 setShouldHideHoverPreviewToggle:v180];

  v182 = [(PKPaletteContentView *)self traitCollection];
  v183 = [(PKPaletteContentView *)self window];
  v184 = [v183 windowScene];
  v185 = PKUseCompactSize(v182, v184);
  if (v185)
  {
    v79 = [(PKPaletteContentView *)self paletteViewState];
    v186 = [v79 showsPlusButton];
  }

  else
  {
    v186 = 0;
  }

  v187 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [v187 setShowsPlusButton:v186];

  if (v185)
  {
  }

  v188 = [(PKPaletteContentView *)self contextEditingMode];
  if (v331 || (-[PKPaletteContentView paletteViewState](self, "paletteViewState"), v185 = objc_claimAutoreleasedReturnValue(), ([v185 showsLassoToolEditingView] & 1) == 0))
  {
    v189 = !v331;
    if ([(UIView *)self _pk_useCompactLayout])
    {
      v190 = 0;
    }

    else
    {
      v191 = [(PKPaletteContentView *)self _isHandwritingToolSelected];
      if (v188)
      {
        v190 = 0;
      }

      else
      {
        v190 = v191;
      }
    }
  }

  else
  {
    v189 = 1;
    v190 = 1;
  }

  v192 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v193 = [v192 colorPickerContainerView];
  [v193 setHidden:v190];

  if (v189)
  {
  }

  if (!v188 || (-[PKPaletteContentView paletteViewState](self, "paletteViewState"), v185 = objc_claimAutoreleasedReturnValue(), [v185 colorSwatchesVisible]))
  {
    v194 = v188 != 0;
    if ([(UIView *)self _pk_useCompactLayout])
    {
      v195 = [(PKPaletteContentView *)self _isHandwritingToolSelected];
    }

    else
    {
      v195 = 0;
    }
  }

  else
  {
    v194 = 1;
    v195 = 1;
  }

  v196 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v197 = [v196 colorPickerView];
  [v197 setHidden:v195];

  if (v194)
  {
  }

  if (v331)
  {
    v198 = 0;
  }

  else
  {
    v199 = [(PKPaletteContentView *)self paletteViewState];
    v198 = [v199 showsLassoToolEditingView];
  }

  v200 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [v200 setLassoToolEditingViewVisible:v198];

  v201 = [(PKPaletteContentView *)self paletteViewState];
  if ([v201 wantsScrollableTools])
  {
    v202 = [(UIView *)self _pk_useCompactLayout]& v198 ^ 1;
  }

  else
  {
    v202 = 0;
  }

  v203 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v204 = [v203 toolPickerView];
  [v204 setScrollingEnabled:v202];

  if (v331)
  {
    v205 = [(PKPaletteContentView *)self toolPickerView];
    [v205 setUnselectedToolsVisible:1];

    v206 = [(PKPaletteContentView *)self additionalOptionsView];
    [v206 setHidden:0];

    v207 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    v208 = [v207 toolPickerView];
    [v208 scrollSelectedToolViewToVisibleAnimated:0];
  }

  else
  {
    if ([(UIView *)self _pk_useCompactLayout])
    {
      v209 = [(PKPaletteContentView *)self paletteViewState];
      v210 = [v209 selectedTool];
      v211 = [v210 _configuration];
      v212 = v211;
      if (v211 && *(v211 + 20) == 1)
      {
        v213 = [(PKPaletteContentView *)self paletteViewState];
        v214 = [v213 showsLassoToolEditingView];
      }

      else
      {
        v214 = 0;
      }
    }

    else
    {
      v214 = 0;
    }

    v215 = [(PKPaletteContentView *)self toolPickerView];
    [v215 setUnselectedToolsVisible:v214 ^ 1];

    v216 = [(PKPaletteContentView *)self lassoToolTapGestureRecognizerInCompact];
    [v216 setEnabled:v214];

    v217 = [(PKPaletteContentView *)self toolPickerView];
    v218 = [v217 selectedToolView];
    v219 = [v218 gestureRecognizers];
    v220 = [(PKPaletteContentView *)self lassoToolTapGestureRecognizerInCompact];
    v221 = [v219 containsObject:v220];

    if ((v221 & 1) == 0)
    {
      v222 = [(PKPaletteContentView *)self toolPickerView];
      v223 = [v222 selectedToolView];
      v224 = [(PKPaletteContentView *)self lassoToolTapGestureRecognizerInCompact];
      [v223 addGestureRecognizer:v224];
    }

    v207 = [(PKPaletteContentView *)self additionalOptionsView];
    [v207 setHidden:v214];
  }

  if ([(PKPaletteContentView *)self _isHandwritingToolSelected])
  {
    v225 = (v188 == 0) & ~[(UIView *)self _pk_useCompactLayout];
  }

  else
  {
    v225 = 0;
  }

  v226 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [v226 setInputAssistantViewVisible:v225];

  if ([(PKPaletteContentView *)self _isHandwritingToolSelected])
  {
    v227 = [(UIView *)self _pk_useCompactLayout];
    if (v188)
    {
      v228 = 0;
    }

    else
    {
      v228 = v227;
    }
  }

  else
  {
    v228 = 0;
  }

  v229 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v230 = [v229 colorPickerContainerView];
  [v230 setShouldShowInputAssistantView:v228];

  v231 = [MEMORY[0x1E696AAE8] mainBundle];
  v232 = [v231 bundleIdentifier];
  v233 = [v232 isEqualToString:@"com.apple.mobilenotes"];

  if (v233)
  {
    v188 = [(PKPaletteContentView *)self paletteViewState];
    v232 = [v188 inputAssistantItems];
    if ([v232 count] <= 1)
    {
      v234 = PKIsDeviceLocked() && [(PKPaletteContentView *)self _isHandwritingToolSelected];
    }

    else
    {
      v234 = 1;
    }
  }

  else
  {
    v235 = [(PKPaletteContentView *)self _isHandwritingToolSelected];
    if (v188)
    {
      v234 = 0;
    }

    else
    {
      v234 = v235;
    }
  }

  v236 = [(PKPaletteContentView *)self additionalOptionsView];
  [v236 setWantsInputAssistantViewVisible:v234];

  if (v233)
  {
  }

  v237 = [(PKPaletteContentView *)self paletteViewState];
  v238 = [v237 enableKeyboardButtons];
  v239 = [(PKPaletteContentView *)self additionalOptionsView];
  [v239 setEnableKeyboardButtons:v238];

  v240 = [(PKPaletteContentView *)self paletteViewState];
  v241 = [v240 floatingKeyboardType];
  v242 = [(PKPaletteContentView *)self additionalOptionsView];
  [v242 setFloatingKeyboardType:v241];

  v243 = [(PKPaletteContentView *)self paletteViewState];
  v244 = [v243 hasHandwritingTool];
  v245 = [(PKPaletteContentView *)self additionalOptionsView];
  [v245 setShouldShowTapToRadarOption:v244];

  v246 = [(PKPaletteContentView *)self paletteViewState];
  v247 = [v246 canShowResetHandwritingEducationPane];
  v248 = [(PKPaletteContentView *)self additionalOptionsView];
  [v248 setShouldShowResetHandwritingEducationPane:v247];

  v249 = [MEMORY[0x1E696AAE8] mainBundle];
  v250 = [v249 bundleIdentifier];
  LODWORD(v248) = [v250 isEqualToString:@"com.apple.mobilenotes"];

  if (v248)
  {
    v251 = [(PKPaletteContentView *)self paletteViewState];
    v252 = [v251 inputAssistantItems];
    v253 = [v252 count] == 1;
  }

  else
  {
    v253 = 0;
  }

  v254 = [(PKPaletteContentView *)self paletteInputAssistantView];
  [v254 setShouldShowKeyboardButton:v253];

  v255 = [(PKPaletteContentView *)self paletteInputAssistantView];
  [v255 setShouldShowReturnKeyButton:v253];

  v256 = [(PKPaletteContentView *)self paletteViewState];
  v257 = [v256 inputAssistantItems];
  v258 = [(PKPaletteContentView *)self paletteInputAssistantView];
  [v258 setButtons:v257];

  v259 = [(PKPaletteContentView *)self paletteViewState];
  v260 = [v259 enableKeyboardButtons];
  v261 = [(PKPaletteContentView *)self paletteInputAssistantView];
  [v261 setEnableKeyboardButtons:v260];

  if (v253)
  {
    v262 = [(PKPaletteContentView *)self paletteInputAssistantView];
    v263 = [v262 keyboardButton];
    [(PKPaletteContentView *)self _configureMenuForKeyboardButton:v263];

    v264 = [(PKPaletteContentView *)self paletteInputAssistantView];
    v265 = [v264 returnKeyButton];
    [(PKPaletteContentView *)self _configureReturnKeyButton:v265];
  }

  v266 = [(PKPaletteContentView *)self paletteViewState];
  if ([v266 wantsMulticolorSwatchShadowInCompactSize])
  {
    v267 = [(UIView *)self _pk_useCompactLayout];
  }

  else
  {
    v267 = 0;
  }

  if (_UISolariumEnabled())
  {
    v268 = 0;
  }

  else
  {
    v268 = [(PKPaletteContentView *)self _wantsUndoRedoButtonsShadow]|| v267;
  }

  v269 = [(PKPaletteContentView *)self traitCollection];
  v270 = [v269 userInterfaceStyle];

  if (v268)
  {
    v271 = dbl_1C801C730[v270 == 2];
    v272 = [MEMORY[0x1E69DC888] blackColor];
    v273 = [v272 colorWithAlphaComponent:v271];

    v274 = v271;
    v275 = 10.0;
  }

  else
  {
    v273 = 0;
    v275 = 0.0;
    v274 = 0.0;
  }

  v276 = [v273 CGColor];
  v277 = [(PKPaletteContentView *)self undoRedoView];
  v278 = [v277 undoButton];
  v279 = [v278 layer];
  [v279 setShadowColor:v276];

  v280 = [(PKPaletteContentView *)self undoRedoView];
  v281 = [v280 undoButton];
  v282 = [v281 layer];
  [v282 setShadowRadius:v275];

  v283 = [(PKPaletteContentView *)self undoRedoView];
  v284 = [v283 undoButton];
  v285 = [v284 layer];
  *&v286 = v274;
  [v285 setShadowOpacity:v286];

  v287 = *MEMORY[0x1E695F060];
  v288 = *(MEMORY[0x1E695F060] + 8);
  v289 = [(PKPaletteContentView *)self undoRedoView];
  v290 = [v289 undoButton];
  v291 = [v290 layer];
  [v291 setShadowOffset:{v287, v288}];

  v292 = [v273 CGColor];
  v293 = [(PKPaletteContentView *)self undoRedoView];
  v294 = [v293 redoButton];
  v295 = [v294 layer];
  [v295 setShadowColor:v292];

  v296 = [(PKPaletteContentView *)self undoRedoView];
  v297 = [v296 redoButton];
  v298 = [v297 layer];
  [v298 setShadowRadius:v275];

  v299 = [(PKPaletteContentView *)self undoRedoView];
  v300 = [v299 redoButton];
  v301 = [v300 layer];
  *&v302 = v274;
  [v301 setShadowOpacity:v302];

  v303 = [(PKPaletteContentView *)self undoRedoView];
  v304 = [v303 redoButton];
  v305 = [v304 layer];
  [v305 setShadowOffset:{v287, v288}];

  v306 = [v273 CGColor];
  v307 = [(PKPaletteContentView *)self colorPickerView];
  v308 = [v307 multicolorSwatch];
  v309 = [v308 layer];
  [v309 setShadowColor:v306];

  v310 = [(PKPaletteContentView *)self colorPickerView];
  v311 = [v310 multicolorSwatch];
  v312 = [v311 layer];
  [v312 setShadowRadius:v275];

  v313 = [(PKPaletteContentView *)self colorPickerView];
  v314 = [v313 multicolorSwatch];
  v315 = [v314 layer];
  *&v316 = v274;
  [v315 setShadowOpacity:v316];

  if (v267)
  {
    v317 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    v317 = 0;
  }

  v318 = [(PKPaletteContentView *)self colorPickerView];
  v319 = [v318 multicolorSwatch];
  [v319 setBackgroundColor:v317];

  if (v267)
  {
  }

  v320 = [(PKPaletteContentView *)self undoRedoView];
  [v320 updateUI];

  v321 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [v321 _updateUI];

  [(PKPaletteContentView *)self _updateCloseButtonVisibility];
}

uint64_t __61__PKPaletteContentView__updateUIResetUnselectedToolsVisible___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _wantsUndoRedoButtonsVisible];
  v3 = [*(a1 + 32) undoRedoView];
  [v3 setHidden:v2 ^ 1u];

  v4 = *(a1 + 32);

  return [v4 _updateAdditionalOptionsViewVisibility];
}

- (void)_didTapLassoToolInCompact
{
  if ([(UIView *)self _pk_useCompactLayout])
  {
    v3 = [(PKPaletteContentView *)self toolPickerView];
    v4 = [v3 unselectedToolsVisible];

    if (v4)
    {
      v5 = [(PKPaletteContentView *)self paletteViewState];
      v6 = [v5 showsLassoToolEditingView];

      if (v6)
      {

        [(PKPaletteContentView *)self _updateUI];
      }
    }

    else
    {

      [(PKPaletteContentView *)self _updateUIResetUnselectedToolsVisible:1];
    }
  }
}

- (BOOL)_wantsUndoRedoButtonsShadow
{
  if (![(UIView *)self _pk_useCompactLayout])
  {
    return 0;
  }

  v3 = [(PKPaletteContentView *)self paletteViewState];
  if ([v3 wantsUndoRedoButtonsVisibleInCompactSize])
  {
    v4 = [(PKPaletteContentView *)self paletteViewState];
    v5 = [v4 wantsUndoRedoButtonsShadowInCompactSize];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateAdditionalOptionsViewVisibility
{
  v3 = [(PKPaletteContentView *)self _wantsAdditionalOptionsViewVisible];
  v4 = [(PKPaletteContentView *)self stackView];
  v5 = [v4 arrangedSubviews];
  v6 = [(PKPaletteContentView *)self additionalOptionsView];
  v7 = [v5 containsObject:v6];

  if (!v3 || (v7 & 1) != 0)
  {
    if (v3 || (v7 & 1) == 0)
    {
      return;
    }

    v9 = [(PKPaletteContentView *)self additionalOptionsView];
    [v9 removeFromSuperview];
  }

  else
  {
    v9 = [(PKPaletteContentView *)self stackView];
    v8 = [(PKPaletteContentView *)self additionalOptionsView];
    [v9 addArrangedSubview:v8];
  }
}

- (BOOL)_wantsAdditionalOptionsViewVisible
{
  v3 = [(PKPaletteContentView *)self paletteViewState];
  if ([v3 hasHandwritingTool] && self->_usingSmallestSupportedWidth)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PKPaletteContentView *)self paletteViewState];
    if (([v5 showsPlusButton] & 1) != 0 || -[PKPaletteContentView isEllipsisButtonVisible](self, "isEllipsisButtonVisible"))
    {
      v4 = 1;
    }

    else
    {
      v6 = [(PKPaletteContentView *)self paletteViewState];
      if ([v6 showsTextButton])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(PKPaletteContentView *)self paletteViewState];
        v4 = [v7 showsShapeButton];
      }
    }
  }

  return v4;
}

- (void)_updateColorPickerContainerViewLocationInHierarchy
{
  if ([(UIView *)self _pk_useCompactLayout])
  {
    v3 = [(PKPaletteContentView *)self paletteViewState];
    v4 = [v3 useEqualSpacingLayoutInCompactSize];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PKPaletteContentView *)self stackView];
  v6 = [v5 arrangedSubviews];
  v7 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v8 = [v7 colorPickerContainerView];
  v9 = [v6 containsObject:v8];

  v10 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [v10 setWantsColorPickerContainerViewInHierarchy:v4 ^ 1u];

  if ((v4 ^ 1) & 1) != 0 || (v9)
  {
    if (v4 & 1 | ((v9 & 1) == 0))
    {
      return;
    }

    v13 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    v11 = [v13 colorPickerContainerView];
    [v11 removeFromSuperview];
  }

  else
  {
    v13 = [(PKPaletteContentView *)self stackView];
    v11 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    v12 = [v11 colorPickerContainerView];
    [v13 addArrangedSubview:v12];
  }
}

- (double)_interItemToolsSpacing
{
  if (![(UIView *)self _pk_useCompactLayout])
  {
    v4 = [(PKPaletteContentView *)self toolPickerView];
    v6 = [v4 toolViews];
    if ([v6 count] >= 8)
    {
      v7 = 10.0;
    }

    else
    {
      v7 = 12.0;
    }

    v8 = [(PKPaletteContentView *)self paletteViewState];
    [v8 paletteScaleFactor];
    v3 = v7 * v9;

    goto LABEL_8;
  }

  v3 = 0.0;
  if (!self->_usingSmallestSupportedWidth)
  {
    v4 = [(PKPaletteContentView *)self paletteViewState];
    [v4 interItemToolsSpacingInCompactSize];
    v3 = v5;
LABEL_8:
  }

  return v3;
}

- (double)_undoRedoButtonsInterItemSpacing
{
  v3 = [(PKPaletteContentView *)self paletteViewState];
  [v3 interItemUndoRedoButtonsSpacing];
  v5 = v4;

  if ([(UIView *)self _pk_useCompactLayout])
  {
    v6 = [(PKPaletteContentView *)self paletteViewState];
    v7 = [v6 wantsUndoRedoButtonsShadowInCompactSize];

    if (v7)
    {
      v8 = [(PKPaletteContentView *)self paletteViewState];
      [v8 interItemUndoRedoButtonsSpacingInCompactSize];
      v5 = v9;
    }
  }

  return v5;
}

- (BOOL)_contextEditingModeWantsContextualEditingViewVisible
{
  v3 = [(PKPaletteContentView *)self contextEditingMode];
  if (v3)
  {
    LOBYTE(v3) = [(PKPaletteContentView *)self contextEditingMode]!= 3;
  }

  return v3;
}

- (BOOL)_wantsUndoRedoButtonsVisible
{
  if (![(UIView *)self _pk_useCompactLayout])
  {
    return 1;
  }

  v3 = [(PKPaletteContentView *)self paletteViewState];
  v4 = [v3 wantsUndoRedoButtonsVisibleInCompactSize];

  return v4;
}

- (BOOL)isEllipsisButtonVisible
{
  if (PKIsVisionDevice())
  {
    return 0;
  }

  if (![(UIView *)self _pk_useCompactLayout])
  {
    return 1;
  }

  v4 = [(PKPaletteContentView *)self paletteViewState];
  v5 = [v4 wantsEllipsisButtonVisibleInCompactSize];

  return v5;
}

- (BOOL)_isHandwritingToolSelected
{
  v2 = [(PKPaletteContentView *)self paletteViewState];
  v3 = [v2 selectedTool];
  v4 = [v3 ink];
  v5 = [v4 _isHandwritingInk];

  return v5;
}

- (double)_stackViewSpacing
{
  if ([(UIView *)self _pk_useCompactLayout])
  {
    v3 = 10.0;
    if (self->_usingSmallestSupportedWidth)
    {
      v3 = 0.0;
      if (![(PKPaletteContentView *)self _wantsUndoRedoButtonsVisible])
      {
        v4 = [(PKPaletteContentView *)self paletteViewState];
        v5 = [v4 hasHandwritingTool];

        if (v5)
        {
          return 5.0;
        }

        else
        {
          return 10.0;
        }
      }
    }
  }

  else
  {
    [(PKPaletteContentView *)self edgeLocation];
    v6 = [(PKPaletteContentView *)self paletteViewState];
    [v6 paletteScaleFactor];
    v3 = v7 * 26.0;
  }

  return v3;
}

- (int64_t)_stackViewDistribution
{
  if ([(PKPaletteContentView *)self _useEqualSpacingStackViewDistribution])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_useEqualSpacingStackViewDistribution
{
  v3 = [(UIView *)self _pk_useCompactLayout];
  if (v3)
  {
    v4 = [(PKPaletteContentView *)self paletteViewState];
    v5 = [v4 useEqualSpacingLayoutInCompactSize];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (double)toolPickerView:(id)a3 widthForToolAtIndex:(int64_t)a4 isCompactSize:(BOOL)a5
{
  v6 = a3;
  if (self->_usingSmallestSupportedWidth && (-[PKPaletteContentView _wantsUndoRedoButtonsVisible](self, "_wantsUndoRedoButtonsVisible") || ([v6 toolViews], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 7)))
  {
    v9 = 31.0;
  }

  else
  {
    v9 = 46.0;
  }

  return v9;
}

- (void)_configureMenuForKeyboardButton:(id)a3
{
  v6 = a3;
  v4 = [(PKPaletteContentView *)self delegate];
  v5 = [v4 keyboardSelectionMenuForContentView:self];
  [v6 setKeyboardSelectionMenu:v5];

  [v6 addTarget:self action:sel__handleKeyboardButtonPressed forControlEvents:64];
}

- (void)dismissEyeDropper
{
  v2 = [(PKPaletteContentView *)self colorPickerView];
  [v2 dismissEyeDropper];
}

- (void)colorPickerContainerView:(id)a3 willPresentInputAssistantView:(id)a4
{
  v5 = a4;
  v6 = [(PKPaletteContentView *)self paletteViewState];
  v7 = [v6 inputAssistantItems];
  [v5 setButtons:v7];

  [v5 setUseCompactLayout:1];
  [v5 setShouldShowKeyboardButton:1];
  [v5 setShouldShowReturnKeyButton:1];
  v8 = [(PKPaletteContentView *)self paletteViewState];
  [v5 setEnableKeyboardButtons:{objc_msgSend(v8, "enableKeyboardButtons")}];

  v9 = [v5 keyboardButton];
  [(PKPaletteContentView *)self _configureMenuForKeyboardButton:v9];

  v10 = [v5 returnKeyButton];

  [(PKPaletteContentView *)self _configureReturnKeyButton:v10];
}

- (void)colorPickerContainerView:(id)a3 willDismissInputAssistantView:(id)a4
{
  v5 = [(PKPaletteContentView *)self delegate:a3];
  [v5 contentViewDidDismissInputAssistantView:self];
}

- (void)_handleKeyboardButtonPressed
{
  v3 = [(PKPaletteContentView *)self delegate];
  [v3 contentViewDidSelectInputAssistantKeyboardItem:self];
}

- (void)_handleReturnKeyButtonPressed
{
  v3 = [(PKPaletteContentView *)self delegate];
  [v3 contentViewDidSelectInputAssistantReturnKeyItem:self];
}

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PKPaletteContentView_dismissPalettePopoverWithCompletion___block_invoke;
  v12[3] = &unk_1E82D7148;
  v7 = v5;
  v13 = v7;
  [v6 dismissPalettePopoverWithCompletion:v12];

  dispatch_group_enter(v7);
  v8 = [(PKPaletteContentView *)self additionalOptionsView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__PKPaletteContentView_dismissPalettePopoverWithCompletion___block_invoke_2;
  v10[3] = &unk_1E82D7148;
  v9 = v7;
  v11 = v9;
  [v8 dismissPalettePopoverWithCompletion:v10];

  if (v4)
  {
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], v4);
  }
}

- (CGRect)plusButtonFrame
{
  v3 = [(PKPaletteContentView *)self additionalOptionsView];
  [v3 plusButtonFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PKPaletteContentView *)self additionalOptionsView];
  [(PKPaletteContentView *)self convertRect:v12 fromView:v5, v7, v9, v11];
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

- (void)_dismissPalettePopoverUsingConfirmationBlock:(id)a3 completion:(id)a4
{
  v27[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  block = a4;
  v7 = dispatch_group_create();
  v8 = [(PKPaletteContentView *)self toolPickerView];
  v27[0] = v8;
  v9 = [(PKPaletteContentView *)self colorPickerView];
  v27[1] = v9;
  v10 = [(PKPaletteContentView *)self additionalOptionsView];
  v27[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if (v6[2](v6, v17))
        {
          dispatch_group_enter(v7);
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __80__PKPaletteContentView__dismissPalettePopoverUsingConfirmationBlock_completion___block_invoke;
          v20[3] = &unk_1E82D7148;
          v21 = v7;
          [v17 dismissPalettePopoverWithCompletion:v20];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  if (dispatch_group_wait(v7, 0))
  {
    v18 = block;
    dispatch_group_notify(v7, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v18 = block;
    if (block)
    {
      block[2](block);
    }
  }
}

- (id)paletteButton:(id)a3 tintColorForState:(unint64_t)a4
{
  v4 = a3;
  if ([v4 isHighlighted])
  {
    v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v6 = [v5 colorWithAlphaComponent:0.5];
  }

  else
  {
    if ([v4 isEnabled])
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] quaternaryLabelColor];
    }
    v6 = ;
  }

  return v6;
}

- (id)paletteButton:(id)a3 backgroundColorForState:(unint64_t)a4
{
  v4 = [a3 isHighlighted];
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 colorWithAlphaComponent:0.5];

    v6 = v7;
  }

  return v6;
}

- (void)paletteViewStateDidChangeIsVisible:(id)a3
{
  v4 = a3;
  [(PKPaletteContentView *)self _updateUI];
  v5 = [v4 isVisible];

  if (v5)
  {
    v7 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    v6 = [v7 toolPickerView];
    [v6 scrollSelectedToolViewToVisibleAnimated:0];
  }
}

- (PKPaletteContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKDrawingPaletteViewStateSubject)paletteViewState
{
  WeakRetained = objc_loadWeakRetained(&self->_paletteViewState);

  return WeakRetained;
}

@end