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
- (PKPaletteContentView)initWithPaletteViewStateObservable:(id)observable;
- (PKPaletteContentViewDelegate)delegate;
- (PKPaletteToolPickerView)toolPickerView;
- (UIView)lassoToolEditingView;
- (double)_interItemToolsSpacing;
- (double)_stackViewSpacing;
- (double)_undoRedoButtonsInterItemSpacing;
- (double)toolPickerView:(id)view widthForToolAtIndex:(int64_t)index isCompactSize:(BOOL)size;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)paletteButton:(id)button backgroundColorForState:(unint64_t)state;
- (id)paletteButton:(id)button tintColorForState:(unint64_t)state;
- (int64_t)_stackViewDistribution;
- (void)_closeButtonTapped:(id)tapped;
- (void)_configureMenuForKeyboardButton:(id)button;
- (void)_didTapLassoToolInCompact;
- (void)_dismissPalettePopoverUsingConfirmationBlock:(id)block completion:(id)completion;
- (void)_handleKeyboardButtonPressed;
- (void)_handleReturnKeyButtonPressed;
- (void)_installAdditionalOptionsView;
- (void)_installStackView;
- (void)_installUndoRedoButtonsView;
- (void)_updateAdditionalOptionsViewVisibility;
- (void)_updateCloseButtonVisibility;
- (void)_updateColorPickerContainerViewLocationInHierarchy;
- (void)_updateUIResetUnselectedToolsVisible:(BOOL)visible;
- (void)colorPickerContainerView:(id)view willDismissInputAssistantView:(id)assistantView;
- (void)colorPickerContainerView:(id)view willPresentInputAssistantView:(id)assistantView;
- (void)dismissEyeDropper;
- (void)dismissPalettePopoverWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)paletteViewStateDidChangeIsVisible:(id)visible;
- (void)safeAreaInsetsDidChange;
- (void)setCloseButtonVisible:(BOOL)visible;
- (void)setColorMaximumLinearExposure:(double)exposure;
- (void)setContextEditingMode:(int64_t)mode;
- (void)setCornerLocation:(unint64_t)location;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setLassoToolEditingViewIdentifier:(id)identifier;
- (void)toggleColorSelectionPopover;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKPaletteContentView

- (PKPaletteContentView)initWithPaletteViewStateObservable:(id)observable
{
  observableCopy = observable;
  v39.receiver = self;
  v39.super_class = PKPaletteContentView;
  v5 = [(PKPaletteContentView *)&v39 init];
  v6 = v5;
  if (v5)
  {
    v5->_colorMaximumLinearExposure = 1.0;
    objc_storeWeak(&v5->_paletteViewState, observableCopy);
    [(PKPaletteContentView *)v6 _installStackView];
    [(PKPaletteContentView *)v6 _installUndoRedoButtonsView];
    undoRedoView = [(PKPaletteContentView *)v6 undoRedoView];
    undoButton = [undoRedoView undoButton];
    [undoButton setDelegate:v6];

    undoRedoView2 = [(PKPaletteContentView *)v6 undoRedoView];
    redoButton = [undoRedoView2 redoButton];
    [redoButton setDelegate:v6];

    v11 = objc_alloc_init(PKPaletteToolPickerAndColorPickerView);
    toolAndColorPickerContainerView = v6->_toolAndColorPickerContainerView;
    v6->_toolAndColorPickerContainerView = v11;

    [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    WeakRetained = objc_loadWeakRetained(&v6->_paletteViewState);
    colorPickerContainerView = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView colorPickerContainerView];
    [colorPickerContainerView setPaletteViewState:WeakRetained];

    colorPickerContainerView2 = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView colorPickerContainerView];
    [colorPickerContainerView2 setDelegate:v6];

    [(UIStackView *)v6->_stackView addArrangedSubview:v6->_toolAndColorPickerContainerView];
    widthAnchor = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView widthAnchor];
    widthAnchor2 = [(UIStackView *)v6->_stackView widthAnchor];
    v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    toolAndColorPickerContainerViewWidthConstraint = v6->_toolAndColorPickerContainerViewWidthConstraint;
    v6->_toolAndColorPickerContainerViewWidthConstraint = v18;

    heightAnchor = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView heightAnchor];
    heightAnchor2 = [(UIStackView *)v6->_stackView heightAnchor];
    v22 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    toolAndColorPickerContainerViewHeightConstraint = v6->_toolAndColorPickerContainerViewHeightConstraint;
    v6->_toolAndColorPickerContainerViewHeightConstraint = v22;

    LODWORD(v24) = 1148829696;
    [(NSLayoutConstraint *)v6->_toolAndColorPickerContainerViewWidthConstraint setPriority:v24];
    LODWORD(v25) = 1148829696;
    [(NSLayoutConstraint *)v6->_toolAndColorPickerContainerViewHeightConstraint setPriority:v25];
    toolPickerView = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView toolPickerView];
    widthAnchor3 = [toolPickerView widthAnchor];
    v28 = [widthAnchor3 constraintEqualToConstant:0.0];
    toolPickerViewWidthConstraint = v6->_toolPickerViewWidthConstraint;
    v6->_toolPickerViewWidthConstraint = v28;

    toolPickerView2 = [(PKPaletteToolPickerAndColorPickerView *)v6->_toolAndColorPickerContainerView toolPickerView];
    heightAnchor3 = [toolPickerView2 heightAnchor];
    v32 = [heightAnchor3 constraintEqualToConstant:0.0];
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
    colorPickerView = [(PKPaletteContentView *)self colorPickerView];
    [colorPickerView toggleColorSelectionPopover];
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
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [(PKPaletteContentView *)self topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  stackViewTopConstraint = self->_stackViewTopConstraint;
  self->_stackViewTopConstraint = v7;

  bottomAnchor = [(PKPaletteContentView *)self bottomAnchor];
  bottomAnchor2 = [(UIStackView *)self->_stackView bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  stackViewBottomConstraint = self->_stackViewBottomConstraint;
  self->_stackViewBottomConstraint = v11;

  leftAnchor = [(UIStackView *)self->_stackView leftAnchor];
  leftAnchor2 = [(PKPaletteContentView *)self leftAnchor];
  v15 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  stackViewLeftConstraint = self->_stackViewLeftConstraint;
  self->_stackViewLeftConstraint = v15;

  rightAnchor = [(PKPaletteContentView *)self rightAnchor];
  rightAnchor2 = [(UIStackView *)self->_stackView rightAnchor];
  v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
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
  centerXAnchor = [(UIStackView *)self->_stackView centerXAnchor];
  centerXAnchor2 = [(PKPaletteContentView *)self centerXAnchor];
  v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
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
  toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  toolPickerView = [toolAndColorPickerContainerView toolPickerView];

  return toolPickerView;
}

- (PKPaletteColorPickerView)colorPickerView
{
  toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  colorPickerView = [toolAndColorPickerContainerView colorPickerView];

  return colorPickerView;
}

- (PKDrawingPaletteInputAssistantView)paletteInputAssistantView
{
  toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  paletteInputAssistantView = [toolAndColorPickerContainerView paletteInputAssistantView];

  return paletteInputAssistantView;
}

- (void)setCloseButtonVisible:(BOOL)visible
{
  if (self->_closeButtonVisible != visible)
  {
    self->_closeButtonVisible = visible;
    [(PKPaletteContentView *)self _updateCloseButtonVisibility];
  }
}

- (void)setColorMaximumLinearExposure:(double)exposure
{
  if (self->_colorMaximumLinearExposure != exposure)
  {
    self->_colorMaximumLinearExposure = exposure;
    colorPickerView = [(PKPaletteContentView *)self colorPickerView];
    [colorPickerView setColorMaximumLinearExposure:exposure];

    toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    [toolAndColorPickerContainerView setAllowHDR:exposure > 1.0];
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
    stackView = [(PKPaletteContentView *)self stackView];
    [stackView insertArrangedSubview:self->_closeButton atIndex:0];

    stackView2 = [(PKPaletteContentView *)self stackView];
    [stackView2 setCustomSpacing:self->_closeButton afterView:0.0];

    v8 = MEMORY[0x1E696ACD8];
    widthAnchor = [(PKPaletteButton *)self->_closeButton widthAnchor];
    v10 = [widthAnchor constraintEqualToConstant:28.0];
    v20[0] = v10;
    heightAnchor = [(PKPaletteButton *)self->_closeButton heightAnchor];
    v12 = [heightAnchor constraintEqualToConstant:28.0];
    v20[1] = v12;
    leadingAnchor = [(PKPaletteButton *)self->_closeButton leadingAnchor];
    stackView3 = [(PKPaletteContentView *)self stackView];
    leadingAnchor2 = [stackView3 leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
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
    widthAnchor = self->_closeButton;
    self->_closeButton = 0;
  }
}

- (void)_closeButtonTapped:(id)tapped
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
  widthAnchor = [(PKPaletteAdditionalOptionsView *)self->_additionalOptionsView widthAnchor];
  v6 = [widthAnchor constraintEqualToConstant:28.0];
  [(PKPaletteContentView *)self setAdditionalOptionsViewCompactWidthConstraint:v6];

  heightAnchor = [(PKPaletteAdditionalOptionsView *)self->_additionalOptionsView heightAnchor];
  stackView = [(PKPaletteContentView *)self stackView];
  heightAnchor2 = [stackView heightAnchor];
  v9 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [(PKPaletteContentView *)self setAdditionalOptionsViewCompactHeightConstraint:v9];
}

- (UIView)lassoToolEditingView
{
  toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  lassoToolEditingView = [toolAndColorPickerContainerView lassoToolEditingView];

  return lassoToolEditingView;
}

- (NSString)lassoToolEditingViewIdentifier
{
  toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  lassoToolEditingViewIdentifier = [toolAndColorPickerContainerView lassoToolEditingViewIdentifier];

  return lassoToolEditingViewIdentifier;
}

- (void)setLassoToolEditingViewIdentifier:(id)identifier
{
  identifierCopy = identifier;
  toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView setLassoToolEditingViewIdentifier:identifierCopy];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (!-[PKPaletteContentView contextEditingMode](self, "contextEditingMode") || (-[PKPaletteContentView contextualEditingView](self, "contextualEditingView"), v8 = objc_claimAutoreleasedReturnValue(), -[PKPaletteContentView convertPoint:toView:](self, "convertPoint:toView:", v8, x, y), v10 = v9, v12 = v11, v8, -[PKPaletteContentView contextualEditingView](self, "contextualEditingView"), v13 = objc_claimAutoreleasedReturnValue(), [v13 hitTest:eventCopy withEvent:{v10, v12}], v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
    toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    [(PKPaletteContentView *)self convertPoint:toolAndColorPickerContainerView toView:x, y];
    v17 = v16;
    v19 = v18;

    toolAndColorPickerContainerView2 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    v14 = [toolAndColorPickerContainerView2 hitTest:eventCopy withEvent:{v17, v19}];

    if (!v14)
    {
      v22.receiver = self;
      v22.super_class = PKPaletteContentView;
      v14 = [(PKPaletteContentView *)&v22 hitTest:eventCopy withEvent:x, y];
    }
  }

  return v14;
}

- (void)setContextEditingMode:(int64_t)mode
{
  if (self->_contextEditingMode != mode)
  {
    self->_contextEditingMode = mode;
    [(PKPaletteContentView *)self _updateUI];
  }
}

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    [(PKPaletteContentView *)self _updateUI];
  }
}

- (void)setCornerLocation:(unint64_t)location
{
  if (self->_cornerLocation != location)
  {
    self->_cornerLocation = location;
    [(PKPaletteContentView *)self _updateUI];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = PKPaletteContentView;
  [(PKPaletteContentView *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPaletteContentView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(PKPaletteContentView *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
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

- (void)_updateUIResetUnselectedToolsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v336[9] = *MEMORY[0x1E69E9840];
  window = [(PKPaletteContentView *)self window];
  windowScene = [window windowScene];
  v7 = PKIsQuickNoteWindowScene(windowScene);

  v325 = v7;
  [(PKPaletteContentView *)self setClipsToBounds:[(UIView *)self _pk_useCompactLayout]& (v7 ^ 1)];
  [(PKPaletteContentView *)self _updateColorPickerContainerViewLocationInHierarchy];
  [(PKPaletteContentView *)self _stackViewSpacing];
  v9 = v8;
  stackView = [(PKPaletteContentView *)self stackView];
  [stackView setSpacing:v9];

  v11 = 3.40282347e38;
  v331 = visibleCopy;
  if ([(PKPaletteContentView *)self _wantsUndoRedoButtonsVisible]&& ![(UIView *)self _pk_useCompactLayout])
  {
    paletteViewState = [(PKPaletteContentView *)self paletteViewState];
    [paletteViewState paletteScaleFactor];
    v11 = v13 * 12.0;
  }

  stackView2 = [(PKPaletteContentView *)self stackView];
  undoRedoView = [(PKPaletteContentView *)self undoRedoView];
  [stackView2 setCustomSpacing:undoRedoView afterView:v11];

  _stackViewDistribution = [(PKPaletteContentView *)self _stackViewDistribution];
  stackView3 = [(PKPaletteContentView *)self stackView];
  [stackView3 setDistribution:_stackViewDistribution];

  paletteViewState2 = [(PKPaletteContentView *)self paletteViewState];
  [paletteViewState2 paletteScaleFactor];
  v20 = v19;
  undoRedoView2 = [(PKPaletteContentView *)self undoRedoView];
  [undoRedoView2 setScalingFactor:v20];

  paletteViewState3 = [(PKPaletteContentView *)self paletteViewState];
  [paletteViewState3 paletteScaleFactor];
  v24 = v23;
  toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView setScalingFactor:v24];

  paletteViewState4 = [(PKPaletteContentView *)self paletteViewState];
  [paletteViewState4 paletteScaleFactor];
  v28 = v27;
  additionalOptionsView = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView setScalingFactor:v28];

  edgeLocation = [(PKPaletteContentView *)self edgeLocation];
  undoRedoView3 = [(PKPaletteContentView *)self undoRedoView];
  [undoRedoView3 setEdgeLocation:edgeLocation];

  edgeLocation2 = [(PKPaletteContentView *)self edgeLocation];
  toolAndColorPickerContainerView2 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView2 setEdgeLocation:edgeLocation2];

  cornerLocation = [(PKPaletteContentView *)self cornerLocation];
  toolAndColorPickerContainerView3 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView3 setCornerLocation:cornerLocation];

  edgeLocation3 = [(PKPaletteContentView *)self edgeLocation];
  additionalOptionsView2 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView2 setEdgeLocation:edgeLocation3];

  [(PKPaletteContentView *)self _undoRedoButtonsInterItemSpacing];
  v39 = v38;
  undoRedoView4 = [(PKPaletteContentView *)self undoRedoView];
  [undoRedoView4 setInterItemSpacing:v39];

  v332[0] = MEMORY[0x1E69E9820];
  v332[1] = 3221225472;
  v332[2] = __61__PKPaletteContentView__updateUIResetUnselectedToolsVisible___block_invoke;
  v332[3] = &unk_1E82D7148;
  v332[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v332];
  [(PKPaletteContentView *)self _interItemToolsSpacing];
  v42 = v41;
  toolPickerView = [(PKPaletteContentView *)self toolPickerView];
  [toolPickerView setInterItemToolsSpacing:v42];

  additionalOptionsView3 = [(PKPaletteContentView *)self additionalOptionsView];
  palettePopoverPresenting = [additionalOptionsView3 palettePopoverPresenting];
  toolAndColorPickerContainerView4 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  colorPickerContainerView = [toolAndColorPickerContainerView4 colorPickerContainerView];
  [colorPickerContainerView setPalettePopoverPresenting:palettePopoverPresenting];

  v327 = MEMORY[0x1E696ACD8];
  stackViewLeftConstraint = [(PKPaletteContentView *)self stackViewLeftConstraint];
  v336[0] = stackViewLeftConstraint;
  stackViewRightConstraint = [(PKPaletteContentView *)self stackViewRightConstraint];
  v336[1] = stackViewRightConstraint;
  stackViewCenterXConstraint = [(PKPaletteContentView *)self stackViewCenterXConstraint];
  v336[2] = stackViewCenterXConstraint;
  toolAndColorPickerContainerViewWidthConstraint = [(PKPaletteContentView *)self toolAndColorPickerContainerViewWidthConstraint];
  v336[3] = toolAndColorPickerContainerViewWidthConstraint;
  toolAndColorPickerContainerViewHeightConstraint = [(PKPaletteContentView *)self toolAndColorPickerContainerViewHeightConstraint];
  v336[4] = toolAndColorPickerContainerViewHeightConstraint;
  toolPickerViewWidthConstraint = [(PKPaletteContentView *)self toolPickerViewWidthConstraint];
  v336[5] = toolPickerViewWidthConstraint;
  toolPickerViewHeightConstraint = [(PKPaletteContentView *)self toolPickerViewHeightConstraint];
  v336[6] = toolPickerViewHeightConstraint;
  additionalOptionsViewCompactWidthConstraint = [(PKPaletteContentView *)self additionalOptionsViewCompactWidthConstraint];
  v336[7] = additionalOptionsViewCompactWidthConstraint;
  additionalOptionsViewCompactHeightConstraint = [(PKPaletteContentView *)self additionalOptionsViewCompactHeightConstraint];
  v336[8] = additionalOptionsViewCompactHeightConstraint;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v336 count:9];
  [v327 deactivateConstraints:v56];

  stackViewCompactLeftConstraint = [(PKPaletteContentView *)self stackViewCompactLeftConstraint];
  [stackViewCompactLeftConstraint setActive:0];

  stackViewCompactRightConstraint = [(PKPaletteContentView *)self stackViewCompactRightConstraint];
  [stackViewCompactRightConstraint setActive:0];

  if ([(UIView *)self _pk_useCompactLayout])
  {
    stackView4 = [(PKPaletteContentView *)self stackView];
    [stackView4 setAxis:0];

    stackViewTopConstraint = [(PKPaletteContentView *)self stackViewTopConstraint];
    [stackViewTopConstraint setConstant:12.0];

    stackViewBottomConstraint = [(PKPaletteContentView *)self stackViewBottomConstraint];
    v62 = 0.0;
    [stackViewBottomConstraint setConstant:0.0];

    _useEqualSpacingStackViewDistribution = [(PKPaletteContentView *)self _useEqualSpacingStackViewDistribution];
    stackView5 = [(PKPaletteContentView *)self stackView];
    leftAnchor = [stackView5 leftAnchor];
    safeAreaLayoutGuide = [(PKPaletteContentView *)self safeAreaLayoutGuide];
    leftAnchor2 = [safeAreaLayoutGuide leftAnchor];
    if (_useEqualSpacingStackViewDistribution)
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

      v69 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v68];
      [(PKPaletteContentView *)self setStackViewCompactLeftConstraint:v69];

      stackView6 = [(PKPaletteContentView *)self stackView];
      rightAnchor = [stackView6 rightAnchor];
      safeAreaLayoutGuide2 = [(PKPaletteContentView *)self safeAreaLayoutGuide];
      rightAnchor2 = [safeAreaLayoutGuide2 rightAnchor];
      v74 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v62];
    }

    else
    {
      v106 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:16.0];
      [(PKPaletteContentView *)self setStackViewCompactLeftConstraint:v106];

      stackView6 = [(PKPaletteContentView *)self stackView];
      rightAnchor = [stackView6 rightAnchor];
      safeAreaLayoutGuide2 = [(PKPaletteContentView *)self safeAreaLayoutGuide];
      rightAnchor2 = [safeAreaLayoutGuide2 rightAnchor];
      v74 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2 constant:16.0];
    }

    v107 = v74;
    [(PKPaletteContentView *)self setStackViewCompactRightConstraint:v74];

    v108 = MEMORY[0x1E696ACD8];
    stackViewTopConstraint2 = [(PKPaletteContentView *)self stackViewTopConstraint];
    v335[0] = stackViewTopConstraint2;
    stackViewBottomConstraint2 = [(PKPaletteContentView *)self stackViewBottomConstraint];
    v335[1] = stackViewBottomConstraint2;
    stackViewCenterXConstraint2 = [(PKPaletteContentView *)self stackViewCenterXConstraint];
    v335[2] = stackViewCenterXConstraint2;
    stackViewCompactLeftConstraint2 = [(PKPaletteContentView *)self stackViewCompactLeftConstraint];
    v335[3] = stackViewCompactLeftConstraint2;
    stackViewCompactRightConstraint2 = [(PKPaletteContentView *)self stackViewCompactRightConstraint];
    v335[4] = stackViewCompactRightConstraint2;
    v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v335 count:5];
    [v108 activateConstraints:v113];

    _wantsAdditionalOptionsViewVisible = [(PKPaletteContentView *)self _wantsAdditionalOptionsViewVisible];
    additionalOptionsViewCompactWidthConstraint2 = [(PKPaletteContentView *)self additionalOptionsViewCompactWidthConstraint];
    [additionalOptionsViewCompactWidthConstraint2 setActive:_wantsAdditionalOptionsViewVisible];

    _wantsAdditionalOptionsViewVisible2 = [(PKPaletteContentView *)self _wantsAdditionalOptionsViewVisible];
    additionalOptionsViewCompactHeightConstraint2 = [(PKPaletteContentView *)self additionalOptionsViewCompactHeightConstraint];
    [additionalOptionsViewCompactHeightConstraint2 setActive:_wantsAdditionalOptionsViewVisible2];
  }

  else
  {
    v75 = MEMORY[0x1E695DF70];
    stackViewLeftConstraint2 = [(PKPaletteContentView *)self stackViewLeftConstraint];
    v334[0] = stackViewLeftConstraint2;
    stackViewRightConstraint2 = [(PKPaletteContentView *)self stackViewRightConstraint];
    v334[1] = stackViewRightConstraint2;
    toolPickerViewWidthConstraint2 = [(PKPaletteContentView *)self toolPickerViewWidthConstraint];
    v334[2] = toolPickerViewWidthConstraint2;
    stackViewCompactLeftConstraint2 = [(PKPaletteContentView *)self toolPickerViewHeightConstraint];
    v334[3] = stackViewCompactLeftConstraint2;
    v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v334 count:4];
    additionalOptionsViewCompactHeightConstraint2 = [v75 arrayWithArray:v80];

    edgeLocation4 = [(PKPaletteContentView *)self edgeLocation];
    if (edgeLocation4 == 8 || edgeLocation4 == 2)
    {
      paletteViewState5 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState5 paletteScaleFactor];
      UIFloorToViewScale();
      v85 = v84;
      toolPickerViewWidthConstraint3 = [(PKPaletteContentView *)self toolPickerViewWidthConstraint];
      [toolPickerViewWidthConstraint3 setConstant:v85];

      paletteViewState6 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState6 _toolsContainerWidth];
      paletteViewState7 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState7 paletteScaleFactor];
      UIFloorToViewScale();
      v90 = v89;
      toolPickerViewHeightConstraint2 = [(PKPaletteContentView *)self toolPickerViewHeightConstraint];
      [toolPickerViewHeightConstraint2 setConstant:v90];

      stackView7 = [(PKPaletteContentView *)self stackView];
      [stackView7 setAxis:1];

      paletteViewState8 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState8 paletteScaleFactor];
      v95 = v94 * 48.0;
      stackViewTopConstraint3 = [(PKPaletteContentView *)self stackViewTopConstraint];
      [stackViewTopConstraint3 setConstant:v95];

      paletteViewState9 = [(PKPaletteContentView *)self paletteViewState];
      if ([paletteViewState9 showsPlusButton])
      {
        v98 = 48.0;
      }

      else
      {
        v98 = 26.0;
      }

      paletteViewState10 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState10 paletteScaleFactor];
      v101 = v98 * v100;
      stackViewBottomConstraint3 = [(PKPaletteContentView *)self stackViewBottomConstraint];
      [stackViewBottomConstraint3 setConstant:v101];

      stackViewLeftConstraint3 = [(PKPaletteContentView *)self stackViewLeftConstraint];
      [stackViewLeftConstraint3 setConstant:0.0];

      stackViewRightConstraint3 = [(PKPaletteContentView *)self stackViewRightConstraint];
      [stackViewRightConstraint3 setConstant:0.0];

      toolAndColorPickerContainerViewWidthConstraint2 = [(PKPaletteContentView *)self toolAndColorPickerContainerViewWidthConstraint];
    }

    else
    {
      paletteViewState11 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState11 _toolsContainerWidth];
      paletteViewState12 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState12 paletteScaleFactor];
      UIFloorToViewScale();
      v120 = v119;
      toolPickerViewWidthConstraint4 = [(PKPaletteContentView *)self toolPickerViewWidthConstraint];
      [toolPickerViewWidthConstraint4 setConstant:v120];

      paletteViewState13 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState13 paletteScaleFactor];
      UIFloorToViewScale();
      v124 = v123;
      toolPickerViewHeightConstraint3 = [(PKPaletteContentView *)self toolPickerViewHeightConstraint];
      [toolPickerViewHeightConstraint3 setConstant:v124];

      stackView8 = [(PKPaletteContentView *)self stackView];
      [stackView8 setAxis:0];

      stackViewTopConstraint4 = [(PKPaletteContentView *)self stackViewTopConstraint];
      [stackViewTopConstraint4 setConstant:0.0];

      stackViewBottomConstraint4 = [(PKPaletteContentView *)self stackViewBottomConstraint];
      [stackViewBottomConstraint4 setConstant:0.0];

      if ([(UIView *)self _pk_useCompactLayout])
      {
        v129 = 0.0;
      }

      else
      {
        v129 = 26.0;
      }

      paletteViewState14 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState14 paletteScaleFactor];
      v132 = v129 * v131;
      stackViewLeftConstraint4 = [(PKPaletteContentView *)self stackViewLeftConstraint];
      [stackViewLeftConstraint4 setConstant:v132];

      if ([(UIView *)self _pk_useCompactLayout])
      {
        v134 = 0.0;
      }

      else
      {
        v134 = 26.0;
      }

      paletteViewState15 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState15 paletteScaleFactor];
      v137 = v134 * v136;
      stackViewRightConstraint4 = [(PKPaletteContentView *)self stackViewRightConstraint];
      [stackViewRightConstraint4 setConstant:v137];

      toolAndColorPickerContainerViewWidthConstraint2 = [(PKPaletteContentView *)self toolAndColorPickerContainerViewHeightConstraint];
    }

    v139 = toolAndColorPickerContainerViewWidthConstraint2;
    [additionalOptionsViewCompactHeightConstraint2 addObject:toolAndColorPickerContainerViewWidthConstraint2];

    [MEMORY[0x1E696ACD8] activateConstraints:additionalOptionsViewCompactHeightConstraint2];
  }

  contextEditingMode = [(PKPaletteContentView *)self contextEditingMode];
  toolAndColorPickerContainerView5 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView5 setContextEditingMode:contextEditingMode];

  _contextEditingModeWantsContextualEditingViewVisible = [(PKPaletteContentView *)self _contextEditingModeWantsContextualEditingViewVisible];
  toolPickerView2 = [(PKPaletteContentView *)self toolPickerView];
  [toolPickerView2 setHidden:_contextEditingModeWantsContextualEditingViewVisible];

  paletteViewState16 = [(PKPaletteContentView *)self paletteViewState];
  if ([paletteViewState16 prefersLargeContextualEditingUI])
  {
    selfCopy = self;
  }

  else
  {
    toolAndColorPickerContainerView6 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    selfCopy = [toolAndColorPickerContainerView6 toolPickerContainerView];
  }

  contextualEditingView = [(PKPaletteContentView *)self contextualEditingView];
  superview = [contextualEditingView superview];

  if (superview != selfCopy)
  {
    contextualEditingView2 = [(PKPaletteContentView *)self contextualEditingView];
    [contextualEditingView2 removeFromSuperview];

    contextualEditingView3 = [(PKPaletteContentView *)self contextualEditingView];
    [(PKPaletteContentView *)selfCopy addSubview:contextualEditingView3];

    v322 = MEMORY[0x1E696ACD8];
    contextualEditingView4 = [(PKPaletteContentView *)self contextualEditingView];
    topAnchor = [contextualEditingView4 topAnchor];
    topAnchor2 = [(PKPaletteContentView *)selfCopy topAnchor];
    v324 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v333[0] = v324;
    contextualEditingView5 = [(PKPaletteContentView *)self contextualEditingView];
    bottomAnchor = [contextualEditingView5 bottomAnchor];
    bottomAnchor2 = [(PKPaletteContentView *)selfCopy bottomAnchor];
    v153 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v333[1] = v153;
    contextualEditingView6 = [(PKPaletteContentView *)self contextualEditingView];
    trailingAnchor = [contextualEditingView6 trailingAnchor];
    trailingAnchor2 = [(PKPaletteContentView *)selfCopy trailingAnchor];
    stackViewCompactLeftConstraint2 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v333[2] = stackViewCompactLeftConstraint2;
    v157 = [MEMORY[0x1E695DEC8] arrayWithObjects:v333 count:3];
    [v322 activateConstraints:v157];

    _pk_useCompactLayout = [(UIView *)self _pk_useCompactLayout];
    if (_pk_useCompactLayout && (-[PKPaletteContentView paletteViewState](self, "paletteViewState"), v153 = objc_claimAutoreleasedReturnValue(), [v153 wantsUndoRedoButtonsVisibleInCompactSize]))
    {
      undoRedoView5 = [(PKPaletteContentView *)self undoRedoView];
      trailingAnchor3 = [undoRedoView5 trailingAnchor];
    }

    else
    {
      trailingAnchor3 = [(PKPaletteContentView *)selfCopy leadingAnchor];

      if (!_pk_useCompactLayout)
      {
LABEL_35:
        contextualEditingView7 = [(PKPaletteContentView *)self contextualEditingView];
        leadingAnchor = [contextualEditingView7 leadingAnchor];
        v163 = [leadingAnchor constraintEqualToAnchor:trailingAnchor3];
        [v163 setActive:1];

        goto LABEL_36;
      }
    }

    goto LABEL_35;
  }

LABEL_36:
  _contextEditingModeWantsContextualEditingViewVisible2 = [(PKPaletteContentView *)self _contextEditingModeWantsContextualEditingViewVisible];
  contextualEditingView8 = [(PKPaletteContentView *)self contextualEditingView];
  [contextualEditingView8 setHidden:!_contextEditingModeWantsContextualEditingViewVisible2];

  if (![(PKPaletteContentView *)self _contextEditingModeWantsContextualEditingViewVisible])
  {
    contextualEditingView9 = [(PKPaletteContentView *)self contextualEditingView];
    subviews = [contextualEditingView9 subviews];
    [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
  }

  paletteViewState17 = [(PKPaletteContentView *)self paletteViewState];
  showsPlusButton = [paletteViewState17 showsPlusButton];
  additionalOptionsView4 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView4 setShowsPlusButton:showsPlusButton];

  paletteViewState18 = [(PKPaletteContentView *)self paletteViewState];
  showsTextButton = [paletteViewState18 showsTextButton];
  additionalOptionsView5 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView5 setShowsTextButton:showsTextButton];

  paletteViewState19 = [(PKPaletteContentView *)self paletteViewState];
  showsShapeButton = [paletteViewState19 showsShapeButton];
  additionalOptionsView6 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView6 setShowsShapeButton:showsShapeButton];

  isEllipsisButtonVisible = [(PKPaletteContentView *)self isEllipsisButtonVisible];
  additionalOptionsView7 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView7 setWantsEllipsisButtonVisible:isEllipsisButtonVisible];

  paletteViewState20 = [(PKPaletteContentView *)self paletteViewState];
  shouldHideHoverPreviewToggle = [paletteViewState20 shouldHideHoverPreviewToggle];
  additionalOptionsView8 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView8 setShouldHideHoverPreviewToggle:shouldHideHoverPreviewToggle];

  traitCollection = [(PKPaletteContentView *)self traitCollection];
  window2 = [(PKPaletteContentView *)self window];
  windowScene2 = [window2 windowScene];
  v185 = PKUseCompactSize(traitCollection, windowScene2);
  if (v185)
  {
    stackViewCompactLeftConstraint2 = [(PKPaletteContentView *)self paletteViewState];
    showsPlusButton2 = [stackViewCompactLeftConstraint2 showsPlusButton];
  }

  else
  {
    showsPlusButton2 = 0;
  }

  toolAndColorPickerContainerView7 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView7 setShowsPlusButton:showsPlusButton2];

  if (v185)
  {
  }

  contextEditingMode2 = [(PKPaletteContentView *)self contextEditingMode];
  if (v331 || (-[PKPaletteContentView paletteViewState](self, "paletteViewState"), v185 = objc_claimAutoreleasedReturnValue(), ([v185 showsLassoToolEditingView] & 1) == 0))
  {
    v189 = !v331;
    if ([(UIView *)self _pk_useCompactLayout])
    {
      v190 = 0;
    }

    else
    {
      _isHandwritingToolSelected = [(PKPaletteContentView *)self _isHandwritingToolSelected];
      if (contextEditingMode2)
      {
        v190 = 0;
      }

      else
      {
        v190 = _isHandwritingToolSelected;
      }
    }
  }

  else
  {
    v189 = 1;
    v190 = 1;
  }

  toolAndColorPickerContainerView8 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  colorPickerContainerView2 = [toolAndColorPickerContainerView8 colorPickerContainerView];
  [colorPickerContainerView2 setHidden:v190];

  if (v189)
  {
  }

  if (!contextEditingMode2 || (-[PKPaletteContentView paletteViewState](self, "paletteViewState"), v185 = objc_claimAutoreleasedReturnValue(), [v185 colorSwatchesVisible]))
  {
    v194 = contextEditingMode2 != 0;
    if ([(UIView *)self _pk_useCompactLayout])
    {
      _isHandwritingToolSelected2 = [(PKPaletteContentView *)self _isHandwritingToolSelected];
    }

    else
    {
      _isHandwritingToolSelected2 = 0;
    }
  }

  else
  {
    v194 = 1;
    _isHandwritingToolSelected2 = 1;
  }

  toolAndColorPickerContainerView9 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  colorPickerView = [toolAndColorPickerContainerView9 colorPickerView];
  [colorPickerView setHidden:_isHandwritingToolSelected2];

  if (v194)
  {
  }

  if (v331)
  {
    showsLassoToolEditingView = 0;
  }

  else
  {
    paletteViewState21 = [(PKPaletteContentView *)self paletteViewState];
    showsLassoToolEditingView = [paletteViewState21 showsLassoToolEditingView];
  }

  toolAndColorPickerContainerView10 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView10 setLassoToolEditingViewVisible:showsLassoToolEditingView];

  paletteViewState22 = [(PKPaletteContentView *)self paletteViewState];
  if ([paletteViewState22 wantsScrollableTools])
  {
    v202 = [(UIView *)self _pk_useCompactLayout]& showsLassoToolEditingView ^ 1;
  }

  else
  {
    v202 = 0;
  }

  toolAndColorPickerContainerView11 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  toolPickerView3 = [toolAndColorPickerContainerView11 toolPickerView];
  [toolPickerView3 setScrollingEnabled:v202];

  if (v331)
  {
    toolPickerView4 = [(PKPaletteContentView *)self toolPickerView];
    [toolPickerView4 setUnselectedToolsVisible:1];

    additionalOptionsView9 = [(PKPaletteContentView *)self additionalOptionsView];
    [additionalOptionsView9 setHidden:0];

    toolAndColorPickerContainerView12 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    toolPickerView5 = [toolAndColorPickerContainerView12 toolPickerView];
    [toolPickerView5 scrollSelectedToolViewToVisibleAnimated:0];
  }

  else
  {
    if ([(UIView *)self _pk_useCompactLayout])
    {
      paletteViewState23 = [(PKPaletteContentView *)self paletteViewState];
      selectedTool = [paletteViewState23 selectedTool];
      _configuration = [selectedTool _configuration];
      v212 = _configuration;
      if (_configuration && *(_configuration + 20) == 1)
      {
        paletteViewState24 = [(PKPaletteContentView *)self paletteViewState];
        showsLassoToolEditingView2 = [paletteViewState24 showsLassoToolEditingView];
      }

      else
      {
        showsLassoToolEditingView2 = 0;
      }
    }

    else
    {
      showsLassoToolEditingView2 = 0;
    }

    toolPickerView6 = [(PKPaletteContentView *)self toolPickerView];
    [toolPickerView6 setUnselectedToolsVisible:showsLassoToolEditingView2 ^ 1];

    lassoToolTapGestureRecognizerInCompact = [(PKPaletteContentView *)self lassoToolTapGestureRecognizerInCompact];
    [lassoToolTapGestureRecognizerInCompact setEnabled:showsLassoToolEditingView2];

    toolPickerView7 = [(PKPaletteContentView *)self toolPickerView];
    selectedToolView = [toolPickerView7 selectedToolView];
    gestureRecognizers = [selectedToolView gestureRecognizers];
    lassoToolTapGestureRecognizerInCompact2 = [(PKPaletteContentView *)self lassoToolTapGestureRecognizerInCompact];
    v221 = [gestureRecognizers containsObject:lassoToolTapGestureRecognizerInCompact2];

    if ((v221 & 1) == 0)
    {
      toolPickerView8 = [(PKPaletteContentView *)self toolPickerView];
      selectedToolView2 = [toolPickerView8 selectedToolView];
      lassoToolTapGestureRecognizerInCompact3 = [(PKPaletteContentView *)self lassoToolTapGestureRecognizerInCompact];
      [selectedToolView2 addGestureRecognizer:lassoToolTapGestureRecognizerInCompact3];
    }

    toolAndColorPickerContainerView12 = [(PKPaletteContentView *)self additionalOptionsView];
    [toolAndColorPickerContainerView12 setHidden:showsLassoToolEditingView2];
  }

  if ([(PKPaletteContentView *)self _isHandwritingToolSelected])
  {
    v225 = (contextEditingMode2 == 0) & ~[(UIView *)self _pk_useCompactLayout];
  }

  else
  {
    v225 = 0;
  }

  toolAndColorPickerContainerView13 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView13 setInputAssistantViewVisible:v225];

  if ([(PKPaletteContentView *)self _isHandwritingToolSelected])
  {
    _pk_useCompactLayout2 = [(UIView *)self _pk_useCompactLayout];
    if (contextEditingMode2)
    {
      v228 = 0;
    }

    else
    {
      v228 = _pk_useCompactLayout2;
    }
  }

  else
  {
    v228 = 0;
  }

  toolAndColorPickerContainerView14 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  colorPickerContainerView3 = [toolAndColorPickerContainerView14 colorPickerContainerView];
  [colorPickerContainerView3 setShouldShowInputAssistantView:v228];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v233 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if (v233)
  {
    contextEditingMode2 = [(PKPaletteContentView *)self paletteViewState];
    bundleIdentifier = [contextEditingMode2 inputAssistantItems];
    if ([bundleIdentifier count] <= 1)
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
    _isHandwritingToolSelected3 = [(PKPaletteContentView *)self _isHandwritingToolSelected];
    if (contextEditingMode2)
    {
      v234 = 0;
    }

    else
    {
      v234 = _isHandwritingToolSelected3;
    }
  }

  additionalOptionsView10 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView10 setWantsInputAssistantViewVisible:v234];

  if (v233)
  {
  }

  paletteViewState25 = [(PKPaletteContentView *)self paletteViewState];
  enableKeyboardButtons = [paletteViewState25 enableKeyboardButtons];
  additionalOptionsView11 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView11 setEnableKeyboardButtons:enableKeyboardButtons];

  paletteViewState26 = [(PKPaletteContentView *)self paletteViewState];
  floatingKeyboardType = [paletteViewState26 floatingKeyboardType];
  additionalOptionsView12 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView12 setFloatingKeyboardType:floatingKeyboardType];

  paletteViewState27 = [(PKPaletteContentView *)self paletteViewState];
  hasHandwritingTool = [paletteViewState27 hasHandwritingTool];
  additionalOptionsView13 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView13 setShouldShowTapToRadarOption:hasHandwritingTool];

  paletteViewState28 = [(PKPaletteContentView *)self paletteViewState];
  canShowResetHandwritingEducationPane = [paletteViewState28 canShowResetHandwritingEducationPane];
  additionalOptionsView14 = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView14 setShouldShowResetHandwritingEducationPane:canShowResetHandwritingEducationPane];

  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier2 = [mainBundle2 bundleIdentifier];
  LODWORD(additionalOptionsView14) = [bundleIdentifier2 isEqualToString:@"com.apple.mobilenotes"];

  if (additionalOptionsView14)
  {
    paletteViewState29 = [(PKPaletteContentView *)self paletteViewState];
    inputAssistantItems = [paletteViewState29 inputAssistantItems];
    v253 = [inputAssistantItems count] == 1;
  }

  else
  {
    v253 = 0;
  }

  paletteInputAssistantView = [(PKPaletteContentView *)self paletteInputAssistantView];
  [paletteInputAssistantView setShouldShowKeyboardButton:v253];

  paletteInputAssistantView2 = [(PKPaletteContentView *)self paletteInputAssistantView];
  [paletteInputAssistantView2 setShouldShowReturnKeyButton:v253];

  paletteViewState30 = [(PKPaletteContentView *)self paletteViewState];
  inputAssistantItems2 = [paletteViewState30 inputAssistantItems];
  paletteInputAssistantView3 = [(PKPaletteContentView *)self paletteInputAssistantView];
  [paletteInputAssistantView3 setButtons:inputAssistantItems2];

  paletteViewState31 = [(PKPaletteContentView *)self paletteViewState];
  enableKeyboardButtons2 = [paletteViewState31 enableKeyboardButtons];
  paletteInputAssistantView4 = [(PKPaletteContentView *)self paletteInputAssistantView];
  [paletteInputAssistantView4 setEnableKeyboardButtons:enableKeyboardButtons2];

  if (v253)
  {
    paletteInputAssistantView5 = [(PKPaletteContentView *)self paletteInputAssistantView];
    keyboardButton = [paletteInputAssistantView5 keyboardButton];
    [(PKPaletteContentView *)self _configureMenuForKeyboardButton:keyboardButton];

    paletteInputAssistantView6 = [(PKPaletteContentView *)self paletteInputAssistantView];
    returnKeyButton = [paletteInputAssistantView6 returnKeyButton];
    [(PKPaletteContentView *)self _configureReturnKeyButton:returnKeyButton];
  }

  paletteViewState32 = [(PKPaletteContentView *)self paletteViewState];
  if ([paletteViewState32 wantsMulticolorSwatchShadowInCompactSize])
  {
    _pk_useCompactLayout3 = [(UIView *)self _pk_useCompactLayout];
  }

  else
  {
    _pk_useCompactLayout3 = 0;
  }

  if (_UISolariumEnabled())
  {
    v268 = 0;
  }

  else
  {
    v268 = [(PKPaletteContentView *)self _wantsUndoRedoButtonsShadow]|| _pk_useCompactLayout3;
  }

  traitCollection2 = [(PKPaletteContentView *)self traitCollection];
  userInterfaceStyle = [traitCollection2 userInterfaceStyle];

  if (v268)
  {
    v271 = dbl_1C801C730[userInterfaceStyle == 2];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v273 = [blackColor colorWithAlphaComponent:v271];

    v274 = v271;
    v275 = 10.0;
  }

  else
  {
    v273 = 0;
    v275 = 0.0;
    v274 = 0.0;
  }

  cGColor = [v273 CGColor];
  undoRedoView6 = [(PKPaletteContentView *)self undoRedoView];
  undoButton = [undoRedoView6 undoButton];
  layer = [undoButton layer];
  [layer setShadowColor:cGColor];

  undoRedoView7 = [(PKPaletteContentView *)self undoRedoView];
  undoButton2 = [undoRedoView7 undoButton];
  layer2 = [undoButton2 layer];
  [layer2 setShadowRadius:v275];

  undoRedoView8 = [(PKPaletteContentView *)self undoRedoView];
  undoButton3 = [undoRedoView8 undoButton];
  layer3 = [undoButton3 layer];
  *&v286 = v274;
  [layer3 setShadowOpacity:v286];

  v287 = *MEMORY[0x1E695F060];
  v288 = *(MEMORY[0x1E695F060] + 8);
  undoRedoView9 = [(PKPaletteContentView *)self undoRedoView];
  undoButton4 = [undoRedoView9 undoButton];
  layer4 = [undoButton4 layer];
  [layer4 setShadowOffset:{v287, v288}];

  cGColor2 = [v273 CGColor];
  undoRedoView10 = [(PKPaletteContentView *)self undoRedoView];
  redoButton = [undoRedoView10 redoButton];
  layer5 = [redoButton layer];
  [layer5 setShadowColor:cGColor2];

  undoRedoView11 = [(PKPaletteContentView *)self undoRedoView];
  redoButton2 = [undoRedoView11 redoButton];
  layer6 = [redoButton2 layer];
  [layer6 setShadowRadius:v275];

  undoRedoView12 = [(PKPaletteContentView *)self undoRedoView];
  redoButton3 = [undoRedoView12 redoButton];
  layer7 = [redoButton3 layer];
  *&v302 = v274;
  [layer7 setShadowOpacity:v302];

  undoRedoView13 = [(PKPaletteContentView *)self undoRedoView];
  redoButton4 = [undoRedoView13 redoButton];
  layer8 = [redoButton4 layer];
  [layer8 setShadowOffset:{v287, v288}];

  cGColor3 = [v273 CGColor];
  colorPickerView2 = [(PKPaletteContentView *)self colorPickerView];
  multicolorSwatch = [colorPickerView2 multicolorSwatch];
  layer9 = [multicolorSwatch layer];
  [layer9 setShadowColor:cGColor3];

  colorPickerView3 = [(PKPaletteContentView *)self colorPickerView];
  multicolorSwatch2 = [colorPickerView3 multicolorSwatch];
  layer10 = [multicolorSwatch2 layer];
  [layer10 setShadowRadius:v275];

  colorPickerView4 = [(PKPaletteContentView *)self colorPickerView];
  multicolorSwatch3 = [colorPickerView4 multicolorSwatch];
  layer11 = [multicolorSwatch3 layer];
  *&v316 = v274;
  [layer11 setShadowOpacity:v316];

  if (_pk_useCompactLayout3)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    systemBackgroundColor = 0;
  }

  colorPickerView5 = [(PKPaletteContentView *)self colorPickerView];
  multicolorSwatch4 = [colorPickerView5 multicolorSwatch];
  [multicolorSwatch4 setBackgroundColor:systemBackgroundColor];

  if (_pk_useCompactLayout3)
  {
  }

  undoRedoView14 = [(PKPaletteContentView *)self undoRedoView];
  [undoRedoView14 updateUI];

  toolAndColorPickerContainerView15 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView15 _updateUI];

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
    toolPickerView = [(PKPaletteContentView *)self toolPickerView];
    unselectedToolsVisible = [toolPickerView unselectedToolsVisible];

    if (unselectedToolsVisible)
    {
      paletteViewState = [(PKPaletteContentView *)self paletteViewState];
      showsLassoToolEditingView = [paletteViewState showsLassoToolEditingView];

      if (showsLassoToolEditingView)
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

  paletteViewState = [(PKPaletteContentView *)self paletteViewState];
  if ([paletteViewState wantsUndoRedoButtonsVisibleInCompactSize])
  {
    paletteViewState2 = [(PKPaletteContentView *)self paletteViewState];
    wantsUndoRedoButtonsShadowInCompactSize = [paletteViewState2 wantsUndoRedoButtonsShadowInCompactSize];
  }

  else
  {
    wantsUndoRedoButtonsShadowInCompactSize = 0;
  }

  return wantsUndoRedoButtonsShadowInCompactSize;
}

- (void)_updateAdditionalOptionsViewVisibility
{
  _wantsAdditionalOptionsViewVisible = [(PKPaletteContentView *)self _wantsAdditionalOptionsViewVisible];
  stackView = [(PKPaletteContentView *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];
  additionalOptionsView = [(PKPaletteContentView *)self additionalOptionsView];
  v7 = [arrangedSubviews containsObject:additionalOptionsView];

  if (!_wantsAdditionalOptionsViewVisible || (v7 & 1) != 0)
  {
    if (_wantsAdditionalOptionsViewVisible || (v7 & 1) == 0)
    {
      return;
    }

    additionalOptionsView2 = [(PKPaletteContentView *)self additionalOptionsView];
    [additionalOptionsView2 removeFromSuperview];
  }

  else
  {
    additionalOptionsView2 = [(PKPaletteContentView *)self stackView];
    additionalOptionsView3 = [(PKPaletteContentView *)self additionalOptionsView];
    [additionalOptionsView2 addArrangedSubview:additionalOptionsView3];
  }
}

- (BOOL)_wantsAdditionalOptionsViewVisible
{
  paletteViewState = [(PKPaletteContentView *)self paletteViewState];
  if ([paletteViewState hasHandwritingTool] && self->_usingSmallestSupportedWidth)
  {
    showsShapeButton = 1;
  }

  else
  {
    paletteViewState2 = [(PKPaletteContentView *)self paletteViewState];
    if (([paletteViewState2 showsPlusButton] & 1) != 0 || -[PKPaletteContentView isEllipsisButtonVisible](self, "isEllipsisButtonVisible"))
    {
      showsShapeButton = 1;
    }

    else
    {
      paletteViewState3 = [(PKPaletteContentView *)self paletteViewState];
      if ([paletteViewState3 showsTextButton])
      {
        showsShapeButton = 1;
      }

      else
      {
        paletteViewState4 = [(PKPaletteContentView *)self paletteViewState];
        showsShapeButton = [paletteViewState4 showsShapeButton];
      }
    }
  }

  return showsShapeButton;
}

- (void)_updateColorPickerContainerViewLocationInHierarchy
{
  if ([(UIView *)self _pk_useCompactLayout])
  {
    paletteViewState = [(PKPaletteContentView *)self paletteViewState];
    useEqualSpacingLayoutInCompactSize = [paletteViewState useEqualSpacingLayoutInCompactSize];
  }

  else
  {
    useEqualSpacingLayoutInCompactSize = 0;
  }

  stackView = [(PKPaletteContentView *)self stackView];
  arrangedSubviews = [stackView arrangedSubviews];
  toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  colorPickerContainerView = [toolAndColorPickerContainerView colorPickerContainerView];
  v9 = [arrangedSubviews containsObject:colorPickerContainerView];

  toolAndColorPickerContainerView2 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView2 setWantsColorPickerContainerViewInHierarchy:useEqualSpacingLayoutInCompactSize ^ 1u];

  if ((useEqualSpacingLayoutInCompactSize ^ 1) & 1) != 0 || (v9)
  {
    if (useEqualSpacingLayoutInCompactSize & 1 | ((v9 & 1) == 0))
    {
      return;
    }

    toolAndColorPickerContainerView3 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    colorPickerContainerView2 = [toolAndColorPickerContainerView3 colorPickerContainerView];
    [colorPickerContainerView2 removeFromSuperview];
  }

  else
  {
    toolAndColorPickerContainerView3 = [(PKPaletteContentView *)self stackView];
    colorPickerContainerView2 = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    v11ColorPickerContainerView = [colorPickerContainerView2 colorPickerContainerView];
    [toolAndColorPickerContainerView3 addArrangedSubview:v11ColorPickerContainerView];
  }
}

- (double)_interItemToolsSpacing
{
  if (![(UIView *)self _pk_useCompactLayout])
  {
    toolPickerView = [(PKPaletteContentView *)self toolPickerView];
    toolViews = [toolPickerView toolViews];
    if ([toolViews count] >= 8)
    {
      v7 = 10.0;
    }

    else
    {
      v7 = 12.0;
    }

    paletteViewState = [(PKPaletteContentView *)self paletteViewState];
    [paletteViewState paletteScaleFactor];
    v3 = v7 * v9;

    goto LABEL_8;
  }

  v3 = 0.0;
  if (!self->_usingSmallestSupportedWidth)
  {
    toolPickerView = [(PKPaletteContentView *)self paletteViewState];
    [toolPickerView interItemToolsSpacingInCompactSize];
    v3 = v5;
LABEL_8:
  }

  return v3;
}

- (double)_undoRedoButtonsInterItemSpacing
{
  paletteViewState = [(PKPaletteContentView *)self paletteViewState];
  [paletteViewState interItemUndoRedoButtonsSpacing];
  v5 = v4;

  if ([(UIView *)self _pk_useCompactLayout])
  {
    paletteViewState2 = [(PKPaletteContentView *)self paletteViewState];
    wantsUndoRedoButtonsShadowInCompactSize = [paletteViewState2 wantsUndoRedoButtonsShadowInCompactSize];

    if (wantsUndoRedoButtonsShadowInCompactSize)
    {
      paletteViewState3 = [(PKPaletteContentView *)self paletteViewState];
      [paletteViewState3 interItemUndoRedoButtonsSpacingInCompactSize];
      v5 = v9;
    }
  }

  return v5;
}

- (BOOL)_contextEditingModeWantsContextualEditingViewVisible
{
  contextEditingMode = [(PKPaletteContentView *)self contextEditingMode];
  if (contextEditingMode)
  {
    LOBYTE(contextEditingMode) = [(PKPaletteContentView *)self contextEditingMode]!= 3;
  }

  return contextEditingMode;
}

- (BOOL)_wantsUndoRedoButtonsVisible
{
  if (![(UIView *)self _pk_useCompactLayout])
  {
    return 1;
  }

  paletteViewState = [(PKPaletteContentView *)self paletteViewState];
  wantsUndoRedoButtonsVisibleInCompactSize = [paletteViewState wantsUndoRedoButtonsVisibleInCompactSize];

  return wantsUndoRedoButtonsVisibleInCompactSize;
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

  paletteViewState = [(PKPaletteContentView *)self paletteViewState];
  wantsEllipsisButtonVisibleInCompactSize = [paletteViewState wantsEllipsisButtonVisibleInCompactSize];

  return wantsEllipsisButtonVisibleInCompactSize;
}

- (BOOL)_isHandwritingToolSelected
{
  paletteViewState = [(PKPaletteContentView *)self paletteViewState];
  selectedTool = [paletteViewState selectedTool];
  v4 = [selectedTool ink];
  _isHandwritingInk = [v4 _isHandwritingInk];

  return _isHandwritingInk;
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
        paletteViewState = [(PKPaletteContentView *)self paletteViewState];
        hasHandwritingTool = [paletteViewState hasHandwritingTool];

        if (hasHandwritingTool)
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
    paletteViewState2 = [(PKPaletteContentView *)self paletteViewState];
    [paletteViewState2 paletteScaleFactor];
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
  _pk_useCompactLayout = [(UIView *)self _pk_useCompactLayout];
  if (_pk_useCompactLayout)
  {
    paletteViewState = [(PKPaletteContentView *)self paletteViewState];
    useEqualSpacingLayoutInCompactSize = [paletteViewState useEqualSpacingLayoutInCompactSize];

    LOBYTE(_pk_useCompactLayout) = useEqualSpacingLayoutInCompactSize;
  }

  return _pk_useCompactLayout;
}

- (double)toolPickerView:(id)view widthForToolAtIndex:(int64_t)index isCompactSize:(BOOL)size
{
  viewCopy = view;
  if (self->_usingSmallestSupportedWidth && (-[PKPaletteContentView _wantsUndoRedoButtonsVisible](self, "_wantsUndoRedoButtonsVisible") || ([viewCopy toolViews], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 7)))
  {
    v9 = 31.0;
  }

  else
  {
    v9 = 46.0;
  }

  return v9;
}

- (void)_configureMenuForKeyboardButton:(id)button
{
  buttonCopy = button;
  delegate = [(PKPaletteContentView *)self delegate];
  v5 = [delegate keyboardSelectionMenuForContentView:self];
  [buttonCopy setKeyboardSelectionMenu:v5];

  [buttonCopy addTarget:self action:sel__handleKeyboardButtonPressed forControlEvents:64];
}

- (void)dismissEyeDropper
{
  colorPickerView = [(PKPaletteContentView *)self colorPickerView];
  [colorPickerView dismissEyeDropper];
}

- (void)colorPickerContainerView:(id)view willPresentInputAssistantView:(id)assistantView
{
  assistantViewCopy = assistantView;
  paletteViewState = [(PKPaletteContentView *)self paletteViewState];
  inputAssistantItems = [paletteViewState inputAssistantItems];
  [assistantViewCopy setButtons:inputAssistantItems];

  [assistantViewCopy setUseCompactLayout:1];
  [assistantViewCopy setShouldShowKeyboardButton:1];
  [assistantViewCopy setShouldShowReturnKeyButton:1];
  paletteViewState2 = [(PKPaletteContentView *)self paletteViewState];
  [assistantViewCopy setEnableKeyboardButtons:{objc_msgSend(paletteViewState2, "enableKeyboardButtons")}];

  keyboardButton = [assistantViewCopy keyboardButton];
  [(PKPaletteContentView *)self _configureMenuForKeyboardButton:keyboardButton];

  returnKeyButton = [assistantViewCopy returnKeyButton];

  [(PKPaletteContentView *)self _configureReturnKeyButton:returnKeyButton];
}

- (void)colorPickerContainerView:(id)view willDismissInputAssistantView:(id)assistantView
{
  v5 = [(PKPaletteContentView *)self delegate:view];
  [v5 contentViewDidDismissInputAssistantView:self];
}

- (void)_handleKeyboardButtonPressed
{
  delegate = [(PKPaletteContentView *)self delegate];
  [delegate contentViewDidSelectInputAssistantKeyboardItem:self];
}

- (void)_handleReturnKeyButtonPressed
{
  delegate = [(PKPaletteContentView *)self delegate];
  [delegate contentViewDidSelectInputAssistantReturnKeyItem:self];
}

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__PKPaletteContentView_dismissPalettePopoverWithCompletion___block_invoke;
  v12[3] = &unk_1E82D7148;
  v7 = v5;
  v13 = v7;
  [toolAndColorPickerContainerView dismissPalettePopoverWithCompletion:v12];

  dispatch_group_enter(v7);
  additionalOptionsView = [(PKPaletteContentView *)self additionalOptionsView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__PKPaletteContentView_dismissPalettePopoverWithCompletion___block_invoke_2;
  v10[3] = &unk_1E82D7148;
  v9 = v7;
  v11 = v9;
  [additionalOptionsView dismissPalettePopoverWithCompletion:v10];

  if (completionCopy)
  {
    dispatch_group_notify(v9, MEMORY[0x1E69E96A0], completionCopy);
  }
}

- (CGRect)plusButtonFrame
{
  additionalOptionsView = [(PKPaletteContentView *)self additionalOptionsView];
  [additionalOptionsView plusButtonFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  additionalOptionsView2 = [(PKPaletteContentView *)self additionalOptionsView];
  [(PKPaletteContentView *)self convertRect:additionalOptionsView2 fromView:v5, v7, v9, v11];
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

- (void)_dismissPalettePopoverUsingConfirmationBlock:(id)block completion:(id)completion
{
  v27[3] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  block = completion;
  v7 = dispatch_group_create();
  toolPickerView = [(PKPaletteContentView *)self toolPickerView];
  v27[0] = toolPickerView;
  colorPickerView = [(PKPaletteContentView *)self colorPickerView];
  v27[1] = colorPickerView;
  additionalOptionsView = [(PKPaletteContentView *)self additionalOptionsView];
  v27[2] = additionalOptionsView;
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
        if (blockCopy[2](blockCopy, v17))
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
    blockCopy3 = block;
    dispatch_group_notify(v7, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    blockCopy3 = block;
    if (block)
    {
      block[2](block);
    }
  }
}

- (id)paletteButton:(id)button tintColorForState:(unint64_t)state
{
  buttonCopy = button;
  if ([buttonCopy isHighlighted])
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v6 = [secondaryLabelColor colorWithAlphaComponent:0.5];
  }

  else
  {
    if ([buttonCopy isEnabled])
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

- (id)paletteButton:(id)button backgroundColorForState:(unint64_t)state
{
  isHighlighted = [button isHighlighted];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v6 = systemBackgroundColor;
  if (isHighlighted)
  {
    v7 = [systemBackgroundColor colorWithAlphaComponent:0.5];

    v6 = v7;
  }

  return v6;
}

- (void)paletteViewStateDidChangeIsVisible:(id)visible
{
  visibleCopy = visible;
  [(PKPaletteContentView *)self _updateUI];
  isVisible = [visibleCopy isVisible];

  if (isVisible)
  {
    toolAndColorPickerContainerView = [(PKPaletteContentView *)self toolAndColorPickerContainerView];
    toolPickerView = [toolAndColorPickerContainerView toolPickerView];
    [toolPickerView scrollSelectedToolViewToVisibleAnimated:0];
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