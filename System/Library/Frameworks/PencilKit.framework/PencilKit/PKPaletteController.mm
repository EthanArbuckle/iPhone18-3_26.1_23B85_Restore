@interface PKPaletteController
- (BOOL)_shouldOverridePaletteViewTraitCollectionTo:(id)to;
- (BOOL)_shouldPaletteUseCompactHorizontalSizeClass;
- (BOOL)isPaletteVisible;
- (CGRect)adjustedWindowSceneBounds;
- (PKPaletteController)init;
- (PKPaletteControllerDelegate)delegate;
- (id)_adjustedHorizontalSizeClassTraitCollection;
- (int64_t)_adjustedUserInterfaceSizeClass;
- (int64_t)palettePosition;
- (void)_handleKeyboard;
- (void)_handleMoreButton:(id)button;
- (void)_handleRedo;
- (void)_handleTextInputReturnKeyStateChanged:(id)changed;
- (void)_handleUndo;
- (void)_presentMoreOptionsPopoverFromButton:(id)button;
- (void)_updatePaletteUI;
- (void)_updatePaletteViewTraitCollection;
- (void)_updatePaletteWithApplicationSpecificItems;
- (void)_updatePaletteWithDefaultItems;
- (void)_updateReturnKey;
- (void)_updateTrailingBarButtons;
- (void)_updateUndoRedoEnabledState;
- (void)dealloc;
- (void)floatingKeyboardControllerWillHide:(id)hide;
- (void)floatingKeyboardControllerWillShow:(id)show;
- (void)installInView:(id)view;
- (void)moreOptionsViewControllerDidSelectOpenPencilSettings:(id)settings;
- (void)moreOptionsViewControllerDidSelectTapToRadar:(id)radar;
- (void)moreOptionsViewControllerDidToggleAutoHide:(id)hide;
- (void)setAdjustedWindowSceneBounds:(CGRect)bounds;
- (void)setFirstResponder:(id)responder;
- (void)setPaletteVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)tearDown;
@end

@implementation PKPaletteController

- (PKPaletteController)init
{
  v27[3] = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = PKPaletteController;
  v2 = [(PKPaletteController *)&v25 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleTextInputResponderCapabilitiesChanged_ name:*MEMORY[0x1E69DE6D8] object:0];
    [defaultCenter addObserver:v2 selector:sel__handleTextInputReturnKeyStateChanged_ name:*MEMORY[0x1E69DE6F0] object:0];
    [defaultCenter addObserver:v2 selector:sel__recognitionLocaleIdentifierDidChange_ name:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:0];
    v4 = objc_alloc_init(PKPaletteFloatingKeyboardController);
    v5 = *(v2 + 14);
    *(v2 + 14) = v4;

    [(PKPaletteFloatingKeyboardController *)*(v2 + 14) setDelegate:v2];
    v6 = objc_alloc_init(PKPaletteInputAssistantButtonProvider);
    v7 = *(v2 + 15);
    *(v2 + 15) = v6;

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    *(v2 + 16) = v9;
    *(v2 + 17) = v10;
    *(v2 + 18) = v11;
    *(v2 + 19) = v12;

    v13 = +[PKPaletteButton keyboardButton];
    v14 = *(v2 + 11);
    *(v2 + 11) = v13;

    keyboardSelectionMenu = [(PKPaletteFloatingKeyboardController *)*(v2 + 14) keyboardSelectionMenu];
    [*(v2 + 11) setKeyboardSelectionMenu:keyboardSelectionMenu];

    [*(v2 + 11) addTarget:v2 action:sel__handleKeyboard forControlEvents:64];
    v16 = +[PKPaletteButton returnKeyButton];
    v17 = *(v2 + 10);
    *(v2 + 10) = v16;

    [*(v2 + 10) addTarget:v2 action:sel__handleReturn forControlEvents:64];
    v18 = +[PKPaletteButton ellipsisButton];
    [v18 addTarget:v2 action:sel__handleMoreButton_ forControlEvents:64];
    v19 = *(v2 + 10);
    v27[0] = *(v2 + 11);
    v27[1] = v19;
    v27[2] = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
    v21 = *(v2 + 12);
    *(v2 + 12) = v20;

    v26[0] = *(v2 + 11);
    v26[1] = v18;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v23 = *(v2 + 13);
    *(v2 + 13) = v22;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE6D8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE6F0] object:0];
  [defaultCenter removeObserver:self name:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = PKPaletteController;
  [(PKPaletteController *)&v4 dealloc];
}

- (void)setAdjustedWindowSceneBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!CGRectEqualToRect(self->_adjustedWindowSceneBounds, bounds))
  {
    self->_adjustedWindowSceneBounds.origin.x = x;
    self->_adjustedWindowSceneBounds.origin.y = y;
    self->_adjustedWindowSceneBounds.size.width = width;
    self->_adjustedWindowSceneBounds.size.height = height;
    _paletteView = [(PKPaletteController *)self _paletteView];
    [_paletteView paletteHostingWindowSceneDidChangeBounds:self];

    [(PKPaletteController *)self _updatePaletteUI];
  }
}

- (void)_updatePaletteUI
{
  v3 = +[PKTextInputSettings sharedSettings];
  recognitionLocaleIdentifier = [v3 recognitionLocaleIdentifier];
  _paletteView = [(PKPaletteController *)self _paletteView];
  [_paletteView setLocaleIdentifier:recognitionLocaleIdentifier];

  [(PKPaletteController *)self adjustedWindowSceneBounds];
  v7 = v6;
  paletteHostViewWidthConstraint = [(PKPaletteController *)self paletteHostViewWidthConstraint];
  [paletteHostViewWidthConstraint setConstant:v7];

  [(PKPaletteController *)self adjustedWindowSceneBounds];
  v10 = v9;
  paletteHostViewHeightConstraint = [(PKPaletteController *)self paletteHostViewHeightConstraint];
  [paletteHostViewHeightConstraint setConstant:v10];

  [(PKPaletteController *)self _updatePaletteViewTraitCollection];
}

- (void)_updatePaletteViewTraitCollection
{
  _adjustedHorizontalSizeClassTraitCollection = [(PKPaletteController *)self _adjustedHorizontalSizeClassTraitCollection];
  if ([(PKPaletteController *)self _shouldOverridePaletteViewTraitCollectionTo:?])
  {
    _hostView = [(PKPaletteController *)self _hostView];
    [_hostView _setLocalOverrideTraitCollection:_adjustedHorizontalSizeClassTraitCollection];
  }
}

- (BOOL)_shouldOverridePaletteViewTraitCollectionTo:(id)to
{
  toCopy = to;
  delegate = [(PKPaletteController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(PKPaletteController *)self delegate];
    v8 = [delegate2 paletteController:self shouldOverridePaletteViewTraitCollectionTo:toCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_adjustedHorizontalSizeClassTraitCollection
{
  _adjustedUserInterfaceSizeClass = [(PKPaletteController *)self _adjustedUserInterfaceSizeClass];
  v3 = MEMORY[0x1E69DD1B8];

  return [v3 traitCollectionWithHorizontalSizeClass:_adjustedUserInterfaceSizeClass];
}

- (int64_t)_adjustedUserInterfaceSizeClass
{
  if ([(PKPaletteController *)self _shouldPaletteUseCompactHorizontalSizeClass])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)_shouldPaletteUseCompactHorizontalSizeClass
{
  _paletteView = [(PKPaletteController *)self _paletteView];
  window = [_paletteView window];
  windowScene = [window windowScene];
  if (([windowScene interfaceOrientation] - 3) >= 2)
  {
  }

  else
  {
    [(PKPaletteController *)self adjustedWindowSceneBounds];
    v7 = v6;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v10 = v9 / 3.0;

    if (v7 <= v10)
    {
      return 1;
    }
  }

  _paletteView2 = [(PKPaletteController *)self _paletteView];
  window2 = [_paletteView2 window];
  windowScene2 = [window2 windowScene];
  if (([windowScene2 interfaceOrientation] - 1) > 1)
  {
    v11 = 0;
  }

  else
  {
    [(PKPaletteController *)self adjustedWindowSceneBounds];
    v16 = v15;
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 bounds];
    v11 = v16 < v18;
  }

  return v11;
}

- (void)installInView:(id)view
{
  location[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v4 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = viewCopy;
    _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Installing palette UI in view: %@", location, 0xCu);
  }

  v5 = objc_alloc_init(PKUCBPaletteView);
  [(PKPaletteController *)self set_paletteView:v5];

  window = [viewCopy window];
  rootViewController = [window rootViewController];
  childViewControllers = [rootViewController childViewControllers];
  firstObject = [childViewControllers firstObject];
  _paletteView = [(PKPaletteController *)self _paletteView];
  [_paletteView setPalettePopoverPresentingController:firstObject];

  objc_initWeak(location, self);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __37__PKPaletteController_installInView___block_invoke;
  v40[3] = &unk_1E82DAE98;
  objc_copyWeak(&v41, location);
  _paletteView2 = [(PKPaletteController *)self _paletteView];
  [_paletteView2 setReturnKeyHandler:v40];

  v12 = [PKPaletteHostView alloc];
  _paletteView3 = [(PKPaletteController *)self _paletteView];
  v14 = [(PKPaletteHostView *)v12 initWithPaletteView:_paletteView3];
  [(PKPaletteController *)self set_hostView:v14];

  _hostView = [(PKPaletteController *)self _hostView];
  [_hostView setTranslatesAutoresizingMaskIntoConstraints:0];

  _hostView2 = [(PKPaletteController *)self _hostView];
  [viewCopy addSubview:_hostView2];

  _hostView3 = [(PKPaletteController *)self _hostView];
  widthAnchor = [_hostView3 widthAnchor];
  [(PKPaletteController *)self adjustedWindowSceneBounds];
  v20 = [widthAnchor constraintEqualToConstant:v19];
  paletteHostViewWidthConstraint = self->_paletteHostViewWidthConstraint;
  self->_paletteHostViewWidthConstraint = v20;

  _hostView4 = [(PKPaletteController *)self _hostView];
  heightAnchor = [_hostView4 heightAnchor];
  [(PKPaletteController *)self adjustedWindowSceneBounds];
  v25 = [heightAnchor constraintEqualToConstant:v24];
  paletteHostViewHeightConstraint = self->_paletteHostViewHeightConstraint;
  self->_paletteHostViewHeightConstraint = v25;

  v38 = MEMORY[0x1E696ACD8];
  _hostView5 = [(PKPaletteController *)self _hostView];
  topAnchor = [_hostView5 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[0] = v30;
  _hostView6 = [(PKPaletteController *)self _hostView];
  leftAnchor = [_hostView6 leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v34 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v35 = self->_paletteHostViewWidthConstraint;
  v36 = self->_paletteHostViewHeightConstraint;
  v42[1] = v34;
  v42[2] = v35;
  v42[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  [v38 activateConstraints:v37];

  [(PKPaletteController *)self _updatePaletteWithDefaultItems];
  [(PKPaletteController *)self _updatePaletteUI];
  objc_destroyWeak(&v41);
  objc_destroyWeak(location);
}

void __37__PKPaletteController_installInView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReturn];
}

- (void)tearDown
{
  v3 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEBUG, "Tearing down palette UI", v6, 2u);
  }

  floatingKeyboardController = [(PKPaletteController *)self floatingKeyboardController];
  [(PKPaletteFloatingKeyboardController *)floatingKeyboardController dismissWithReason:?];

  _hostView = [(PKPaletteController *)self _hostView];
  [_hostView removeFromSuperview];
}

- (BOOL)isPaletteVisible
{
  _hostView = [(PKPaletteController *)self _hostView];
  isPaletteVisible = [_hostView isPaletteVisible];

  return isPaletteVisible;
}

- (void)setPaletteVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  isPaletteVisible = [(PKPaletteController *)self isPaletteVisible];
  v10 = isPaletteVisible ^ visibleCopy;
  if (isPaletteVisible && !visibleCopy)
  {
    floatingKeyboardController = [(PKPaletteController *)self floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)floatingKeyboardController dismissWithReason:?];
  }

  _hostView = [(PKPaletteController *)self _hostView];
  [_hostView setPaletteVisible:visibleCopy animated:animatedCopy completion:completionCopy];

  if (v10)
  {

    [(PKPaletteController *)self _updatePaletteWithApplicationSpecificItems];
  }
}

- (int64_t)palettePosition
{
  _paletteView = [(PKPaletteController *)self _paletteView];
  palettePosition = [_paletteView palettePosition];

  return palettePosition;
}

- (void)setFirstResponder:(id)responder
{
  p_firstResponder = &self->_firstResponder;
  responderCopy = responder;
  if (*p_firstResponder != responderCopy)
  {
    objc_storeStrong(&self->_firstResponder, responder);
    if (*p_firstResponder)
    {
      [(PKPaletteController *)self _updatePaletteWithApplicationSpecificItems];
      [(PKPaletteController *)self _updateUndoRedoEnabledState];
      [(PKPaletteController *)self _updateReturnKey];
      [(PKPaletteController *)self _updateTrailingBarButtons];
      [(PKPaletteController *)self _updatePaletteUI];
    }
  }
}

- (void)_updatePaletteWithDefaultItems
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = +[PKPaletteButton undoButton];
  [(PKPaletteController *)self setUndoButton:v3];

  undoButton = [(PKPaletteController *)self undoButton];
  [undoButton addTarget:self action:sel__handleUndo forControlEvents:64];

  v5 = +[PKPaletteButton redoButton];
  [(PKPaletteController *)self setRedoButton:v5];

  redoButton = [(PKPaletteController *)self redoButton];
  [redoButton addTarget:self action:sel__handleRedo forControlEvents:64];

  undoButton2 = [(PKPaletteController *)self undoButton];
  v11[0] = undoButton2;
  redoButton2 = [(PKPaletteController *)self redoButton];
  v11[1] = redoButton2;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  _paletteView = [(PKPaletteController *)self _paletteView];
  [_paletteView setLeadingBarButtons:v9];

  [(PKPaletteController *)self _updateTrailingBarButtons];
  [(PKPaletteController *)self _updateUndoRedoEnabledState];
}

- (void)_updateTrailingBarButtons
{
  if (+[PKPaletteKeyboardUtilities textInputReturnKeyTypeForEditing](PKPaletteKeyboardUtilities, "textInputReturnKeyTypeForEditing") && (+[PKTextInputSettings sharedSettings](PKTextInputSettings, "sharedSettings"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 hideDefaultReturnKeyWhenSpecialReturnKeyIsPresent], v3, v4))
  {
    trailingButtonsWithoutReturnKey = [(PKPaletteController *)self trailingButtonsWithoutReturnKey];
  }

  else
  {
    trailingButtonsWithoutReturnKey = [(PKPaletteController *)self trailingButtonsWithReturnKey];
  }

  v7 = trailingButtonsWithoutReturnKey;
  _paletteView = [(PKPaletteController *)self _paletteView];
  [_paletteView setTrailingBarButtons:v7];
}

- (void)_updateUndoRedoEnabledState
{
  v7 = +[PKPaletteKeyboardUtilities textInputUndoManagerForEditing];
  canUndo = [v7 canUndo];
  undoButton = [(PKPaletteController *)self undoButton];
  [undoButton setEnabled:canUndo];

  canRedo = [v7 canRedo];
  redoButton = [(PKPaletteController *)self redoButton];
  [redoButton setEnabled:canRedo];
}

- (void)_updatePaletteWithApplicationSpecificItems
{
  _paletteView = [(PKPaletteController *)self _paletteView];
  window = [_paletteView window];
  windowScene = [window windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

  if ([(PKPaletteController *)self isPaletteVisible]&& ([(PKPaletteController *)self firstResponder], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [keyboardSceneDelegate setShouldSuppressInputAssistantUpdates:1];
    firstResponder = [(PKPaletteController *)self firstResponder];
    inputAssistantItem = [firstResponder inputAssistantItem];
    inputAssistantButtonProvider = [(PKPaletteController *)self inputAssistantButtonProvider];
    [inputAssistantButtonProvider setInputAssistantItem:inputAssistantItem];

    inputAssistantButtonProvider2 = [(PKPaletteController *)self inputAssistantButtonProvider];
    buttonsForCurrentConfiguration = [inputAssistantButtonProvider2 buttonsForCurrentConfiguration];
    _paletteView2 = [(PKPaletteController *)self _paletteView];
    [_paletteView2 setCenteredBarButtons:buttonsForCurrentConfiguration];
  }

  else
  {
    [keyboardSceneDelegate setShouldSuppressInputAssistantUpdates:0];
    inputAssistantButtonProvider2 = [(PKPaletteController *)self inputAssistantButtonProvider];
    [inputAssistantButtonProvider2 setInputAssistantItem:0];
  }
}

- (void)_updateReturnKey
{
  v3 = +[PKPaletteKeyboardUtilities textInputReturnKeyTypeForEditing];
  _paletteView = [(PKPaletteController *)self _paletteView];
  [_paletteView setReturnKeyType:v3];

  v5 = +[PKPaletteKeyboardUtilities isReturnKeyEnabled];
  returnKeyButton = [(PKPaletteController *)self returnKeyButton];
  [returnKeyButton setEnabled:v5];

  _paletteView2 = [(PKPaletteController *)self _paletteView];
  [_paletteView2 setReturnKeyEnabled:v5];
}

- (void)_handleTextInputReturnKeyStateChanged:(id)changed
{
  [(PKPaletteController *)self _updateReturnKey];

  [(PKPaletteController *)self _updateTrailingBarButtons];
}

- (void)_handleUndo
{
  v3 = +[PKPaletteKeyboardUtilities textInputUndoManagerForEditing];
  [v3 undo];
  [(PKPaletteController *)self _updateUndoRedoEnabledState];
  +[PKTextInputUtilities markAnalyticsForUndo];
}

- (void)_handleRedo
{
  v3 = +[PKPaletteKeyboardUtilities textInputUndoManagerForEditing];
  [v3 redo];
  [(PKPaletteController *)self _updateUndoRedoEnabledState];
  +[PKTextInputUtilities markAnalyticsForRedo];
}

- (void)_handleKeyboard
{
  floatingKeyboardController = [(PKPaletteController *)self floatingKeyboardController];
  [(PKPaletteFloatingKeyboardController *)floatingKeyboardController presentOrDismissIfPresented];
}

- (void)_handleMoreButton:(id)button
{
  buttonCopy = button;
  _paletteView = [(PKPaletteController *)self _paletteView];
  isPalettePresentingPopover = [_paletteView isPalettePresentingPopover];

  if (isPalettePresentingPopover)
  {
    _paletteView2 = [(PKPaletteController *)self _paletteView];
    [_paletteView2 dismissPalettePopoverWithCompletion:0];
  }

  else
  {
    [(PKPaletteController *)self _presentMoreOptionsPopoverFromButton:buttonCopy];
  }
}

- (void)_presentMoreOptionsPopoverFromButton:(id)button
{
  v41[1] = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  v5 = objc_alloc_init(PKPaletteMoreOptionsViewController);
  [(PKPaletteMoreOptionsViewController *)v5 setShouldShowFingerDrawsOption:0];
  _hostView = [(PKPaletteController *)self _hostView];
  traitCollection = [_hostView traitCollection];
  _hostView2 = [(PKPaletteController *)self _hostView];
  window = [_hostView2 window];
  windowScene = [window windowScene];
  [(PKPaletteMoreOptionsViewController *)v5 setShouldShowAutoMinimizeOption:!PKUseCompactSize(traitCollection, windowScene)];

  [(PKPaletteMoreOptionsViewController *)v5 setShouldShowTapToRadarOption:1];
  v11 = +[PKHandwritingEducationPaneSettings sharedInstance];
  [(PKPaletteMoreOptionsViewController *)v5 setShouldShowResetHandwritingEducationPane:[(PKHandwritingEducationPaneSettings *)v11 canShowResetPaneInPalette]];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  -[PKPaletteMoreOptionsViewController setShouldShowOpenPencilSettingsOption:](v5, "setShouldShowOpenPencilSettingsOption:", [currentDevice _supportsPencil]);

  _paletteView = [(PKPaletteController *)self _paletteView];
  -[PKPaletteMoreOptionsViewController setAutoHideOn:](v5, "setAutoHideOn:", [_paletteView isAutoHideEnabled]);

  [(PKPaletteMoreOptionsViewController *)v5 setDelegate:self];
  [(PKPaletteMoreOptionsViewController *)v5 setModalPresentationStyle:7];
  popoverPresentationController = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [popoverPresentationController setDelegate:self];

  popoverPresentationController2 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [popoverPresentationController2 _setIgnoresKeyboardNotifications:1];

  popoverPresentationController3 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [popoverPresentationController3 _setShouldDisableInteractionDuringTransitions:0];

  popoverPresentationController4 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [popoverPresentationController4 setSourceView:buttonCopy];

  [buttonCopy bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v42.origin.x = v19;
  v42.origin.y = v21;
  v42.size.width = v23;
  v42.size.height = v25;
  v43 = CGRectInset(v42, -5.0, -5.0);
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  popoverPresentationController5 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [popoverPresentationController5 setSourceRect:{x, y, width, height}];

  _paletteView2 = [(PKPaletteController *)self _paletteView];
  paletteViewHosting = [_paletteView2 paletteViewHosting];
  hostingView = [paletteViewHosting hostingView];
  v41[0] = hostingView;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  popoverPresentationController6 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [popoverPresentationController6 setPassthroughViews:v34];

  _paletteView3 = [(PKPaletteController *)self _paletteView];
  palettePopoverPermittedArrowDirections = [_paletteView3 palettePopoverPermittedArrowDirections];
  popoverPresentationController7 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [popoverPresentationController7 setPermittedArrowDirections:palettePopoverPermittedArrowDirections];

  _paletteView4 = [(PKPaletteController *)self _paletteView];
  palettePopoverPresentingController = [_paletteView4 palettePopoverPresentingController];
  [palettePopoverPresentingController presentViewController:v5 animated:1 completion:0];
}

- (void)floatingKeyboardControllerWillShow:(id)show
{
  delegate = [(PKPaletteController *)self delegate];
  [delegate paletteControllerFloatingKeyboardWillShow:self];
}

- (void)floatingKeyboardControllerWillHide:(id)hide
{
  delegate = [(PKPaletteController *)self delegate];
  [delegate paletteControllerFloatingKeyboardWillHide:self];
}

- (void)moreOptionsViewControllerDidToggleAutoHide:(id)hide
{
  hideCopy = hide;
  isAutoHideOn = [hideCopy isAutoHideOn];
  _paletteView = [(PKPaletteController *)self _paletteView];
  [_paletteView setAutoHideEnabled:isAutoHideOn];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PKPaletteController_moreOptionsViewControllerDidToggleAutoHide___block_invoke;
  v11[3] = &unk_1E82D7148;
  v11[4] = self;
  [hideCopy dismissViewControllerAnimated:1 completion:v11];

  v7 = +[PKStatisticsManager sharedStatisticsManager];
  _paletteView2 = [(PKPaletteController *)self _paletteView];
  isAutoHideEnabled = [_paletteView2 isAutoHideEnabled];
  _paletteView3 = [(PKPaletteController *)self _paletteView];
  -[PKStatisticsManager recordAutoMinimizeEnabledDidChange:type:](v7, isAutoHideEnabled, [_paletteView3 paletteViewType]);
}

void __66__PKPaletteController_moreOptionsViewControllerDidToggleAutoHide___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _paletteView];
  v2 = [v4 internalDelegate];
  v3 = [*(a1 + 32) _paletteView];
  [v2 paletteViewStateDidChangeAutoHide:v3];
}

- (void)moreOptionsViewControllerDidSelectTapToRadar:(id)radar
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PKPaletteController_moreOptionsViewControllerDidSelectTapToRadar___block_invoke;
  v3[3] = &unk_1E82D7148;
  v3[4] = self;
  [radar dismissViewControllerAnimated:1 completion:v3];
}

void __68__PKPaletteController_moreOptionsViewControllerDidSelectTapToRadar___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tapToRadarCommand];
  [v1 execute];
}

- (void)moreOptionsViewControllerDidSelectOpenPencilSettings:(id)settings
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PKPaletteController_moreOptionsViewControllerDidSelectOpenPencilSettings___block_invoke;
  v3[3] = &unk_1E82D7148;
  v3[4] = self;
  [settings dismissViewControllerAnimated:1 completion:v3];
}

- (CGRect)adjustedWindowSceneBounds
{
  x = self->_adjustedWindowSceneBounds.origin.x;
  y = self->_adjustedWindowSceneBounds.origin.y;
  width = self->_adjustedWindowSceneBounds.size.width;
  height = self->_adjustedWindowSceneBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PKPaletteControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end