@interface PKPaletteController
- (BOOL)_shouldOverridePaletteViewTraitCollectionTo:(id)a3;
- (BOOL)_shouldPaletteUseCompactHorizontalSizeClass;
- (BOOL)isPaletteVisible;
- (CGRect)adjustedWindowSceneBounds;
- (PKPaletteController)init;
- (PKPaletteControllerDelegate)delegate;
- (id)_adjustedHorizontalSizeClassTraitCollection;
- (int64_t)_adjustedUserInterfaceSizeClass;
- (int64_t)palettePosition;
- (void)_handleKeyboard;
- (void)_handleMoreButton:(id)a3;
- (void)_handleRedo;
- (void)_handleTextInputReturnKeyStateChanged:(id)a3;
- (void)_handleUndo;
- (void)_presentMoreOptionsPopoverFromButton:(id)a3;
- (void)_updatePaletteUI;
- (void)_updatePaletteViewTraitCollection;
- (void)_updatePaletteWithApplicationSpecificItems;
- (void)_updatePaletteWithDefaultItems;
- (void)_updateReturnKey;
- (void)_updateTrailingBarButtons;
- (void)_updateUndoRedoEnabledState;
- (void)dealloc;
- (void)floatingKeyboardControllerWillHide:(id)a3;
- (void)floatingKeyboardControllerWillShow:(id)a3;
- (void)installInView:(id)a3;
- (void)moreOptionsViewControllerDidSelectOpenPencilSettings:(id)a3;
- (void)moreOptionsViewControllerDidSelectTapToRadar:(id)a3;
- (void)moreOptionsViewControllerDidToggleAutoHide:(id)a3;
- (void)setAdjustedWindowSceneBounds:(CGRect)a3;
- (void)setFirstResponder:(id)a3;
- (void)setPaletteVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__handleTextInputResponderCapabilitiesChanged_ name:*MEMORY[0x1E69DE6D8] object:0];
    [v3 addObserver:v2 selector:sel__handleTextInputReturnKeyStateChanged_ name:*MEMORY[0x1E69DE6F0] object:0];
    [v3 addObserver:v2 selector:sel__recognitionLocaleIdentifierDidChange_ name:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:0];
    v4 = objc_alloc_init(PKPaletteFloatingKeyboardController);
    v5 = *(v2 + 14);
    *(v2 + 14) = v4;

    [(PKPaletteFloatingKeyboardController *)*(v2 + 14) setDelegate:v2];
    v6 = objc_alloc_init(PKPaletteInputAssistantButtonProvider);
    v7 = *(v2 + 15);
    *(v2 + 15) = v6;

    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 bounds];
    *(v2 + 16) = v9;
    *(v2 + 17) = v10;
    *(v2 + 18) = v11;
    *(v2 + 19) = v12;

    v13 = +[PKPaletteButton keyboardButton];
    v14 = *(v2 + 11);
    *(v2 + 11) = v13;

    v15 = [(PKPaletteFloatingKeyboardController *)*(v2 + 14) keyboardSelectionMenu];
    [*(v2 + 11) setKeyboardSelectionMenu:v15];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE6D8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE6F0] object:0];
  [v3 removeObserver:self name:@"PKTextInputSettingsRecognitionLocaleIdentifierDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = PKPaletteController;
  [(PKPaletteController *)&v4 dealloc];
}

- (void)setAdjustedWindowSceneBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_adjustedWindowSceneBounds, a3))
  {
    self->_adjustedWindowSceneBounds.origin.x = x;
    self->_adjustedWindowSceneBounds.origin.y = y;
    self->_adjustedWindowSceneBounds.size.width = width;
    self->_adjustedWindowSceneBounds.size.height = height;
    v8 = [(PKPaletteController *)self _paletteView];
    [v8 paletteHostingWindowSceneDidChangeBounds:self];

    [(PKPaletteController *)self _updatePaletteUI];
  }
}

- (void)_updatePaletteUI
{
  v3 = +[PKTextInputSettings sharedSettings];
  v4 = [v3 recognitionLocaleIdentifier];
  v5 = [(PKPaletteController *)self _paletteView];
  [v5 setLocaleIdentifier:v4];

  [(PKPaletteController *)self adjustedWindowSceneBounds];
  v7 = v6;
  v8 = [(PKPaletteController *)self paletteHostViewWidthConstraint];
  [v8 setConstant:v7];

  [(PKPaletteController *)self adjustedWindowSceneBounds];
  v10 = v9;
  v11 = [(PKPaletteController *)self paletteHostViewHeightConstraint];
  [v11 setConstant:v10];

  [(PKPaletteController *)self _updatePaletteViewTraitCollection];
}

- (void)_updatePaletteViewTraitCollection
{
  v4 = [(PKPaletteController *)self _adjustedHorizontalSizeClassTraitCollection];
  if ([(PKPaletteController *)self _shouldOverridePaletteViewTraitCollectionTo:?])
  {
    v3 = [(PKPaletteController *)self _hostView];
    [v3 _setLocalOverrideTraitCollection:v4];
  }
}

- (BOOL)_shouldOverridePaletteViewTraitCollectionTo:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PKPaletteController *)self delegate];
    v8 = [v7 paletteController:self shouldOverridePaletteViewTraitCollectionTo:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_adjustedHorizontalSizeClassTraitCollection
{
  v2 = [(PKPaletteController *)self _adjustedUserInterfaceSizeClass];
  v3 = MEMORY[0x1E69DD1B8];

  return [v3 traitCollectionWithHorizontalSizeClass:v2];
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
  v3 = [(PKPaletteController *)self _paletteView];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  if (([v5 interfaceOrientation] - 3) >= 2)
  {
  }

  else
  {
    [(PKPaletteController *)self adjustedWindowSceneBounds];
    v7 = v6;
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 bounds];
    v10 = v9 / 3.0;

    if (v7 <= v10)
    {
      return 1;
    }
  }

  v12 = [(PKPaletteController *)self _paletteView];
  v13 = [v12 window];
  v14 = [v13 windowScene];
  if (([v14 interfaceOrientation] - 1) > 1)
  {
    v11 = 0;
  }

  else
  {
    [(PKPaletteController *)self adjustedWindowSceneBounds];
    v16 = v15;
    v17 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v17 bounds];
    v11 = v16 < v18;
  }

  return v11;
}

- (void)installInView:(id)a3
{
  location[3] = *MEMORY[0x1E69E9840];
  v39 = a3;
  v4 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v39;
    _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Installing palette UI in view: %@", location, 0xCu);
  }

  v5 = objc_alloc_init(PKUCBPaletteView);
  [(PKPaletteController *)self set_paletteView:v5];

  v6 = [v39 window];
  v7 = [v6 rootViewController];
  v8 = [v7 childViewControllers];
  v9 = [v8 firstObject];
  v10 = [(PKPaletteController *)self _paletteView];
  [v10 setPalettePopoverPresentingController:v9];

  objc_initWeak(location, self);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __37__PKPaletteController_installInView___block_invoke;
  v40[3] = &unk_1E82DAE98;
  objc_copyWeak(&v41, location);
  v11 = [(PKPaletteController *)self _paletteView];
  [v11 setReturnKeyHandler:v40];

  v12 = [PKPaletteHostView alloc];
  v13 = [(PKPaletteController *)self _paletteView];
  v14 = [(PKPaletteHostView *)v12 initWithPaletteView:v13];
  [(PKPaletteController *)self set_hostView:v14];

  v15 = [(PKPaletteController *)self _hostView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(PKPaletteController *)self _hostView];
  [v39 addSubview:v16];

  v17 = [(PKPaletteController *)self _hostView];
  v18 = [v17 widthAnchor];
  [(PKPaletteController *)self adjustedWindowSceneBounds];
  v20 = [v18 constraintEqualToConstant:v19];
  paletteHostViewWidthConstraint = self->_paletteHostViewWidthConstraint;
  self->_paletteHostViewWidthConstraint = v20;

  v22 = [(PKPaletteController *)self _hostView];
  v23 = [v22 heightAnchor];
  [(PKPaletteController *)self adjustedWindowSceneBounds];
  v25 = [v23 constraintEqualToConstant:v24];
  paletteHostViewHeightConstraint = self->_paletteHostViewHeightConstraint;
  self->_paletteHostViewHeightConstraint = v25;

  v38 = MEMORY[0x1E696ACD8];
  v27 = [(PKPaletteController *)self _hostView];
  v28 = [v27 topAnchor];
  v29 = [v39 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v42[0] = v30;
  v31 = [(PKPaletteController *)self _hostView];
  v32 = [v31 leftAnchor];
  v33 = [v39 leftAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
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

  v4 = [(PKPaletteController *)self floatingKeyboardController];
  [(PKPaletteFloatingKeyboardController *)v4 dismissWithReason:?];

  v5 = [(PKPaletteController *)self _hostView];
  [v5 removeFromSuperview];
}

- (BOOL)isPaletteVisible
{
  v2 = [(PKPaletteController *)self _hostView];
  v3 = [v2 isPaletteVisible];

  return v3;
}

- (void)setPaletteVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(PKPaletteController *)self isPaletteVisible];
  v10 = v9 ^ v6;
  if (v9 && !v6)
  {
    v11 = [(PKPaletteController *)self floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)v11 dismissWithReason:?];
  }

  v12 = [(PKPaletteController *)self _hostView];
  [v12 setPaletteVisible:v6 animated:v5 completion:v8];

  if (v10)
  {

    [(PKPaletteController *)self _updatePaletteWithApplicationSpecificItems];
  }
}

- (int64_t)palettePosition
{
  v2 = [(PKPaletteController *)self _paletteView];
  v3 = [v2 palettePosition];

  return v3;
}

- (void)setFirstResponder:(id)a3
{
  p_firstResponder = &self->_firstResponder;
  v6 = a3;
  if (*p_firstResponder != v6)
  {
    objc_storeStrong(&self->_firstResponder, a3);
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

  v4 = [(PKPaletteController *)self undoButton];
  [v4 addTarget:self action:sel__handleUndo forControlEvents:64];

  v5 = +[PKPaletteButton redoButton];
  [(PKPaletteController *)self setRedoButton:v5];

  v6 = [(PKPaletteController *)self redoButton];
  [v6 addTarget:self action:sel__handleRedo forControlEvents:64];

  v7 = [(PKPaletteController *)self undoButton];
  v11[0] = v7;
  v8 = [(PKPaletteController *)self redoButton];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v10 = [(PKPaletteController *)self _paletteView];
  [v10 setLeadingBarButtons:v9];

  [(PKPaletteController *)self _updateTrailingBarButtons];
  [(PKPaletteController *)self _updateUndoRedoEnabledState];
}

- (void)_updateTrailingBarButtons
{
  if (+[PKPaletteKeyboardUtilities textInputReturnKeyTypeForEditing](PKPaletteKeyboardUtilities, "textInputReturnKeyTypeForEditing") && (+[PKTextInputSettings sharedSettings](PKTextInputSettings, "sharedSettings"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 hideDefaultReturnKeyWhenSpecialReturnKeyIsPresent], v3, v4))
  {
    v5 = [(PKPaletteController *)self trailingButtonsWithoutReturnKey];
  }

  else
  {
    v5 = [(PKPaletteController *)self trailingButtonsWithReturnKey];
  }

  v7 = v5;
  v6 = [(PKPaletteController *)self _paletteView];
  [v6 setTrailingBarButtons:v7];
}

- (void)_updateUndoRedoEnabledState
{
  v7 = +[PKPaletteKeyboardUtilities textInputUndoManagerForEditing];
  v3 = [v7 canUndo];
  v4 = [(PKPaletteController *)self undoButton];
  [v4 setEnabled:v3];

  v5 = [v7 canRedo];
  v6 = [(PKPaletteController *)self redoButton];
  [v6 setEnabled:v5];
}

- (void)_updatePaletteWithApplicationSpecificItems
{
  v3 = [(PKPaletteController *)self _paletteView];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v13 = [v5 keyboardSceneDelegate];

  if ([(PKPaletteController *)self isPaletteVisible]&& ([(PKPaletteController *)self firstResponder], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [v13 setShouldSuppressInputAssistantUpdates:1];
    v7 = [(PKPaletteController *)self firstResponder];
    v8 = [v7 inputAssistantItem];
    v9 = [(PKPaletteController *)self inputAssistantButtonProvider];
    [v9 setInputAssistantItem:v8];

    v10 = [(PKPaletteController *)self inputAssistantButtonProvider];
    v11 = [v10 buttonsForCurrentConfiguration];
    v12 = [(PKPaletteController *)self _paletteView];
    [v12 setCenteredBarButtons:v11];
  }

  else
  {
    [v13 setShouldSuppressInputAssistantUpdates:0];
    v10 = [(PKPaletteController *)self inputAssistantButtonProvider];
    [v10 setInputAssistantItem:0];
  }
}

- (void)_updateReturnKey
{
  v3 = +[PKPaletteKeyboardUtilities textInputReturnKeyTypeForEditing];
  v4 = [(PKPaletteController *)self _paletteView];
  [v4 setReturnKeyType:v3];

  v5 = +[PKPaletteKeyboardUtilities isReturnKeyEnabled];
  v6 = [(PKPaletteController *)self returnKeyButton];
  [v6 setEnabled:v5];

  v7 = [(PKPaletteController *)self _paletteView];
  [v7 setReturnKeyEnabled:v5];
}

- (void)_handleTextInputReturnKeyStateChanged:(id)a3
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
  v2 = [(PKPaletteController *)self floatingKeyboardController];
  [(PKPaletteFloatingKeyboardController *)v2 presentOrDismissIfPresented];
}

- (void)_handleMoreButton:(id)a3
{
  v7 = a3;
  v4 = [(PKPaletteController *)self _paletteView];
  v5 = [v4 isPalettePresentingPopover];

  if (v5)
  {
    v6 = [(PKPaletteController *)self _paletteView];
    [v6 dismissPalettePopoverWithCompletion:0];
  }

  else
  {
    [(PKPaletteController *)self _presentMoreOptionsPopoverFromButton:v7];
  }
}

- (void)_presentMoreOptionsPopoverFromButton:(id)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(PKPaletteMoreOptionsViewController);
  [(PKPaletteMoreOptionsViewController *)v5 setShouldShowFingerDrawsOption:0];
  v6 = [(PKPaletteController *)self _hostView];
  v7 = [v6 traitCollection];
  v8 = [(PKPaletteController *)self _hostView];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  [(PKPaletteMoreOptionsViewController *)v5 setShouldShowAutoMinimizeOption:!PKUseCompactSize(v7, v10)];

  [(PKPaletteMoreOptionsViewController *)v5 setShouldShowTapToRadarOption:1];
  v11 = +[PKHandwritingEducationPaneSettings sharedInstance];
  [(PKPaletteMoreOptionsViewController *)v5 setShouldShowResetHandwritingEducationPane:[(PKHandwritingEducationPaneSettings *)v11 canShowResetPaneInPalette]];

  v12 = [MEMORY[0x1E69DC938] currentDevice];
  -[PKPaletteMoreOptionsViewController setShouldShowOpenPencilSettingsOption:](v5, "setShouldShowOpenPencilSettingsOption:", [v12 _supportsPencil]);

  v13 = [(PKPaletteController *)self _paletteView];
  -[PKPaletteMoreOptionsViewController setAutoHideOn:](v5, "setAutoHideOn:", [v13 isAutoHideEnabled]);

  [(PKPaletteMoreOptionsViewController *)v5 setDelegate:self];
  [(PKPaletteMoreOptionsViewController *)v5 setModalPresentationStyle:7];
  v14 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [v14 setDelegate:self];

  v15 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [v15 _setIgnoresKeyboardNotifications:1];

  v16 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [v16 _setShouldDisableInteractionDuringTransitions:0];

  v17 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [v17 setSourceView:v4];

  [v4 bounds];
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
  v30 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [v30 setSourceRect:{x, y, width, height}];

  v31 = [(PKPaletteController *)self _paletteView];
  v32 = [v31 paletteViewHosting];
  v33 = [v32 hostingView];
  v41[0] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v35 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [v35 setPassthroughViews:v34];

  v36 = [(PKPaletteController *)self _paletteView];
  v37 = [v36 palettePopoverPermittedArrowDirections];
  v38 = [(PKPaletteMoreOptionsViewController *)v5 popoverPresentationController];
  [v38 setPermittedArrowDirections:v37];

  v39 = [(PKPaletteController *)self _paletteView];
  v40 = [v39 palettePopoverPresentingController];
  [v40 presentViewController:v5 animated:1 completion:0];
}

- (void)floatingKeyboardControllerWillShow:(id)a3
{
  v4 = [(PKPaletteController *)self delegate];
  [v4 paletteControllerFloatingKeyboardWillShow:self];
}

- (void)floatingKeyboardControllerWillHide:(id)a3
{
  v4 = [(PKPaletteController *)self delegate];
  [v4 paletteControllerFloatingKeyboardWillHide:self];
}

- (void)moreOptionsViewControllerDidToggleAutoHide:(id)a3
{
  v4 = a3;
  v5 = [v4 isAutoHideOn];
  v6 = [(PKPaletteController *)self _paletteView];
  [v6 setAutoHideEnabled:v5];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PKPaletteController_moreOptionsViewControllerDidToggleAutoHide___block_invoke;
  v11[3] = &unk_1E82D7148;
  v11[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v11];

  v7 = +[PKStatisticsManager sharedStatisticsManager];
  v8 = [(PKPaletteController *)self _paletteView];
  v9 = [v8 isAutoHideEnabled];
  v10 = [(PKPaletteController *)self _paletteView];
  -[PKStatisticsManager recordAutoMinimizeEnabledDidChange:type:](v7, v9, [v10 paletteViewType]);
}

void __66__PKPaletteController_moreOptionsViewControllerDidToggleAutoHide___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _paletteView];
  v2 = [v4 internalDelegate];
  v3 = [*(a1 + 32) _paletteView];
  [v2 paletteViewStateDidChangeAutoHide:v3];
}

- (void)moreOptionsViewControllerDidSelectTapToRadar:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__PKPaletteController_moreOptionsViewControllerDidSelectTapToRadar___block_invoke;
  v3[3] = &unk_1E82D7148;
  v3[4] = self;
  [a3 dismissViewControllerAnimated:1 completion:v3];
}

void __68__PKPaletteController_moreOptionsViewControllerDidSelectTapToRadar___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tapToRadarCommand];
  [v1 execute];
}

- (void)moreOptionsViewControllerDidSelectOpenPencilSettings:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PKPaletteController_moreOptionsViewControllerDidSelectOpenPencilSettings___block_invoke;
  v3[3] = &unk_1E82D7148;
  v3[4] = self;
  [a3 dismissViewControllerAnimated:1 completion:v3];
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