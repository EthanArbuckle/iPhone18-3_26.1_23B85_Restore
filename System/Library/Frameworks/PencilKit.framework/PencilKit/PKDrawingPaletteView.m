@interface PKDrawingPaletteView
- (BOOL)_canHandlePencilInteraction;
- (BOOL)_canShowFingerDrawsOption;
- (BOOL)_hasToolWithIdentifier:(id)a3;
- (BOOL)_isPaletteContentViewHidden;
- (BOOL)_shouldShowFingerDrawsOption;
- (BOOL)_wantsClearBackgroundColor;
- (BOOL)canShowResetHandwritingEducationPane;
- (BOOL)colorPickerShouldDisplayColorSelection:(id)a3;
- (BOOL)enableKeyboardButtons;
- (BOOL)hasContextMenuVisible;
- (BOOL)isAnnotationSupportEnabled;
- (BOOL)isEllipsisButtonVisible;
- (BOOL)isExtendedColorPickerVisible;
- (BOOL)isHandwritingToolSelected;
- (BOOL)isPalettePresentingPopover;
- (BOOL)toolPicker:(id)a3 canSelectTool:(id)a4 fromTap:(BOOL)a5;
- (BOOL)wantsScrollableTools;
- (CGRect)plusButtonFrame;
- (CGRect)sourceRectForPopoverPresentationForSourceView:(id)a3;
- (CGRect)toolPickerViewSourceRectForPopoverPresentation:(id)a3 fromCorner:(unint64_t)a4;
- (CGSize)paletteSizeForEdge:(unint64_t)a3;
- (NSArray)inputAssistantItems;
- (PKDrawingPaletteView)initWithTools:(id)a3;
- (PKDrawingPaletteView)initWithTools:(id)a3 wantsEllipsisButtonVisibleInCompactSize:(BOOL)a4;
- (PKPaletteButton)_plusButton;
- (PKPaletteToolView)selectedToolView;
- (PKPaletteViewAnnotationDelegate)annotationDelegate;
- (PKTextInputWindowFirstResponder)windowFirstResponder;
- (PKTool)selectedTool;
- (UIView)contextualEditingView;
- (UIView)lassoToolEditingView;
- (UIWindow)_hostingWindow;
- (UIWindowScene)windowScene;
- (double)_paletteHeightForVerticalOrientation;
- (double)_paletteWidthForHorizontalOrientation;
- (double)_paletteWidthForHorizontalOrientationWithoutTools;
- (double)_toolsContainerWidth;
- (double)borderWidthForTraitCollection:(id)a3;
- (double)shadowOpacity;
- (double)shadowRadius;
- (double)toolPickerView:(id)a3 widthForToolAtIndex:(int64_t)a4 isCompactSize:(BOOL)a5;
- (id)_clippingViewBackgroundColor:(BOOL)a3;
- (id)_currentFirstResponder;
- (id)_paletteToolViewAtIndex:(unint64_t)a3;
- (id)_selectedToolViewInToolPicker;
- (id)borderColorForTraitCollection:(id)a3;
- (id)contentScrollView;
- (id)keyboardSelectionMenuForAdditionalOptionsView:(id)a3;
- (id)keyboardSelectionMenuForContentView:(id)a3;
- (id)toolPickerView:(id)a3 viewForToolAtIndex:(int64_t)a4;
- (id)undoManager;
- (unint64_t)_indexOfToolPassingTest:(id)a3;
- (void)_centerPaletteContainerSubviewToCurrentlySelectedToolForEdge:(unint64_t)a3 needsContainerViewLayout:(BOOL)a4;
- (void)_dictationAvailabilityDidChange:(id)a3;
- (void)_didTapPlusButton:(id)a3;
- (void)_didTapShapeButton:(id)a3;
- (void)_didTapTextButton:(id)a3;
- (void)_dismissEyeDropper;
- (void)_installPaletteContentViewInView:(id)a3;
- (void)_pencilInteraction:(id)a3 didReceiveSqueeze:(id)a4;
- (void)_performPencilInteraction:(id)a3 preferredAction:(int64_t)a4;
- (void)_performPencilPreferredActionShowColorPalette;
- (void)_performPencilPreferredActionShowInkAttributes;
- (void)_performPencilPreferredActionSwitchEraser;
- (void)_performPencilPreferredActionSwitchPrevious;
- (void)_presentOrDismissFloatingKeyboard;
- (void)_presentViewController:(id)a3 asPopoverFromItem:(id)a4;
- (void)_presentViewController:(id)a3 asPopoverFromView:(id)a4;
- (void)_presentViewController:(void *)a3 configurationBlock:;
- (void)_releaseUndoManager;
- (void)_reloadImageForToolItem:(id)a3;
- (void)_replaceToolAtIndex:(unint64_t)a3 withTool:(id)a4 notifyDelegate:(BOOL)a5;
- (void)_scrollToolViewAtIndex:(unint64_t)a3 toVisibleAnimated:(BOOL)a4;
- (void)_selectToolAtIndex:(unint64_t)a3 updateUI:(BOOL)a4 notifyDelegate:(BOOL)a5;
- (void)_setPlusButton:(id)a3;
- (void)_setSelectedColor:(id)a3 isFromExtendedColorPicker:(BOOL)a4 isContinuousColorSelection:(BOOL)a5;
- (void)_setSelectedToolColor:(id)a3 ignoreColorOpacity:(BOOL)a4 isContinuousColorSelection:(BOOL)a5;
- (void)_setTools:(id)a3 resetSelectedTool:(BOOL)a4 updateUI:(BOOL)a5 notifyDelegate:(BOOL)a6;
- (void)_setUpUpdateLink;
- (void)_toolViewStateDidChange:(id)a3;
- (void)_toolViewStateDidLiveUpdate:(id)a3;
- (void)_updateHandwritingAssistantItemsFromResponder:(id)a3;
- (void)_updateKeyboardSceneDelegateInputAssistantSupressionState;
- (void)_updateToolPreviewContentsAnimated:(BOOL)a3;
- (void)_updateToolPreviewPositionForEdge:(unint64_t)a3;
- (void)_updateToolsContainerScrollingEnabled;
- (void)_updateUIReloadTools:(BOOL)a3;
- (void)_willDockPaletteToCorner:(unint64_t)a3;
- (void)_willDockPaletteToEdge:(unint64_t)a3 prepareForExpansion:(BOOL)a4 isPaletteChangingOrientation:(BOOL)a5;
- (void)additionalOptionsViewDidPressTapToRadarButton:(id)a3;
- (void)colorPickerDidChangeSelectedColor:(id)a3 isFromExtendedColorPicker:(BOOL)a4 isContinuousColorSelection:(BOOL)a5;
- (void)configureForDockedAtCorner;
- (void)configureForDockedAtEdge:(unint64_t)a3;
- (void)contentViewDidResize:(id)a3;
- (void)contentViewDidSelectCloseButton:(id)a3;
- (void)dealloc;
- (void)didChangePaletteScaleFactor;
- (void)didEndAppearanceAnimation;
- (void)didMoveToWindow;
- (void)dismissContextMenu;
- (void)dismissPalettePopoverWithCompletion:(id)a3;
- (void)endOpacityEditing;
- (void)floatingKeyboardController:(id)a3 didChangeKeyboardType:(int64_t)a4;
- (void)floatingKeyboardControllerWillHide:(id)a3;
- (void)floatingKeyboardControllerWillShow:(id)a3;
- (void)handwritingEducationPaneSettingsDidChange;
- (void)hostView:(id)a3 didDockPaletteToPosition:(int64_t)a4;
- (void)hostView:(id)a3 willDockPaletteToPosition:(int64_t)a4 prepareForExpansion:(BOOL)a5;
- (void)layoutSubviews;
- (void)pencilInteractionDidTap:(id)a3;
- (void)performOnUpdateLink:(id)a3;
- (void)setAnnotationDelegate:(id)a3;
- (void)setCloseButtonVisible:(BOOL)a3;
- (void)setColorMaximumLinearExposure:(double)a3;
- (void)setColorSwatchesVisible:(BOOL)a3;
- (void)setColorUserInterfaceStyle:(int64_t)a3;
- (void)setContextEditingMode:(int64_t)a3;
- (void)setEditingExternalElementsSelection:(BOOL)a3;
- (void)setEditingStrokeSelection:(BOOL)a3;
- (void)setEditingTextSelection:(BOOL)a3;
- (void)setFingerDrawsOptionEnabled:(BOOL)a3;
- (void)setInterItemToolsSpacingInCompactSize:(double)a3 shouldNotify:(BOOL)a4;
- (void)setInterItemUndoRedoButtonsSpacingInCompactSize:(double)a3;
- (void)setLassoToolEditingViewIdentifier:(id)a3;
- (void)setPlusButtonViewController:(id)a3;
- (void)setPrefersLargeContextualEditingUI:(BOOL)a3;
- (void)setSelectedAnnotationType:(int64_t)a3;
- (void)setShadowVisible:(BOOL)a3;
- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)a3;
- (void)setShowsLassoToolEditingView:(BOOL)a3;
- (void)setShowsPlusButton:(BOOL)a3;
- (void)setShowsShapeButton:(BOOL)a3;
- (void)setShowsTextButton:(BOOL)a3;
- (void)setUndoManager:(id)a3;
- (void)setUseEqualSpacingLayoutInCompactSize:(BOOL)a3;
- (void)setWantsBottomLineDividerVisibleInCompactSize:(BOOL)a3;
- (void)setWantsClearBackgroundColorInCompactSize:(BOOL)a3;
- (void)setWantsEllipsisButtonVisibleInCompactSize:(BOOL)a3;
- (void)setWantsMulticolorSwatchShadowInCompactSize:(BOOL)a3;
- (void)setWantsUndoRedoButtonsShadowInCompactSize:(BOOL)a3;
- (void)setWantsUndoRedoButtonsVisibleInCompactSize:(BOOL)a3;
- (void)showImageWandTipWithController:(id)a3;
- (void)startOpacityEditing;
- (void)toolPicker:(id)a3 didSelectTool:(id)a4 atIndex:(unint64_t)a5;
- (void)toolPickerDidToggleRulerTool:(id)a3;
- (void)toolPickerViewDidChangeTraitCollectionSizeClass:(id)a3;
- (void)toolPreviewDidChangeToolColor:(id)a3 isContinuousColorSelection:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)undoRedoViewDidTapRedo:(id)a3;
- (void)undoRedoViewDidTapUndo:(id)a3;
- (void)updateColorPickerSelectedColor;
- (void)updateHandwritingAssistantItems;
- (void)updatePopoverUI;
- (void)updateUndoRedo;
- (void)willStartAppearanceAnimation:(BOOL)a3;
- (void)windowFirstResponderController:(id)a3 didChangeFirstResponder:(id)a4;
@end

@implementation PKDrawingPaletteView

- (PKDrawingPaletteView)initWithTools:(id)a3
{
  v4 = a3;
  v5 = [(PKDrawingPaletteView *)self initWithTools:v4 wantsEllipsisButtonVisibleInCompactSize:PKIsPadDevice()];

  return v5;
}

- (PKDrawingPaletteView)initWithTools:(id)a3 wantsEllipsisButtonVisibleInCompactSize:(BOOL)a4
{
  v6 = a3;
  v57.receiver = self;
  v57.super_class = PKDrawingPaletteView;
  v7 = [(PKPaletteView *)&v57 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    [(PKDrawingPaletteView *)v7 setAccessibilityIdentifier:@"Drawing-Palette"];
    v9 = objc_alloc_init(PKPaletteToolViewFactory);
    toolViewFactory = v8->_toolViewFactory;
    v8->_toolViewFactory = v9;

    v11 = objc_alloc_init(PKPaletteBackgroundColorFactory);
    backgroundColorFactory = v8->_backgroundColorFactory;
    v8->_backgroundColorFactory = v11;

    v8->_wantsClearBackgroundColorInCompactSize = 0;
    v8->_wantsEllipsisButtonVisibleInCompactSize = a4;
    v8->_wantsBottomLineDividerVisibleInCompactSize = 1;
    v8->_pencilInteractionEnabledWhenNotVisible = 0;
    v13 = [v6 copy];
    tools = v8->_tools;
    v8->_tools = v13;

    v8->_indexOfSelectedTool = 0x7FFFFFFFFFFFFFFFLL;
    v15 = [v6 count];
    v16 = 5.0;
    v17 = 2.0;
    if (!v8->_showsPlusButton)
    {
      v17 = 5.0;
    }

    if (v15 >= 8)
    {
      v16 = v17;
    }

    v8->_interItemToolsSpacingInCompactSize = v16;
    v8->_interItemUndoRedoButtonsSpacing = 12.0;
    v8->_interItemUndoRedoButtonsSpacingInCompactSize = 12.0;
    v18 = objc_alloc_init(PKTextInputWindowFirstResponderController);
    firstResponderController = v8->_firstResponderController;
    v8->_firstResponderController = v18;

    [(PKTextInputWindowFirstResponderController *)v8->_firstResponderController setDelegate:v8];
    v20 = objc_alloc_init(PKPaletteFloatingKeyboardController);
    floatingKeyboardController = v8->_floatingKeyboardController;
    v8->_floatingKeyboardController = v20;

    [(PKPaletteFloatingKeyboardController *)v8->_floatingKeyboardController setDelegate:v8];
    v22 = objc_alloc_init(PKPaletteInputAssistantButtonProvider);
    inputAssistantButtonProvider = v8->_inputAssistantButtonProvider;
    v8->_inputAssistantButtonProvider = v22;

    v24 = NSSelectorFromString(&cfstr_Showinkpicker.isa);
    v25 = NSSelectorFromString(&cfstr_Inlinesketchac.isa);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __78__PKDrawingPaletteView_initWithTools_wantsEllipsisButtonVisibleInCompactSize___block_invoke;
    v56[3] = &__block_descriptor_48_e67_B24__0__PKPaletteInputAssistantButtonProvider_8__UIBarButtonItem_16l;
    v56[4] = v24;
    v56[5] = v25;
    [(PKPaletteInputAssistantButtonProvider *)v8->_inputAssistantButtonProvider setInclusionFilter:v56];
    v8->_colorMaximumLinearExposure = 1.0;
    v26 = [(PKPaletteView *)v8 containerView];
    v27 = [v26 contentView];
    [(PKDrawingPaletteView *)v8 _installPaletteContentViewInView:v27];

    v28 = [(PKDrawingPaletteView *)v8 contentView];
    [v28 setDelegate:v8];

    v29 = [(PKDrawingPaletteView *)v8 contentView];
    v30 = [v29 undoRedoView];
    [v30 setDelegate:v8];

    v31 = [(PKDrawingPaletteView *)v8 contentView];
    v32 = [v31 toolPickerView];
    [v32 setDelegate:v8];

    v33 = [(PKDrawingPaletteView *)v8 contentView];
    v34 = [v33 colorPickerView];
    [v34 setDelegate:v8];

    v35 = [(PKDrawingPaletteView *)v8 contentView];
    v36 = [v35 additionalOptionsView];
    [v36 setDelegate:v8];

    v37 = [(PKDrawingPaletteView *)v8 contentView];
    v38 = [v37 toolAndColorPickerContainerView];
    v39 = [v38 plusButton];
    [v39 addTarget:v8 action:sel__didTapPlusButton_ forControlEvents:64];

    v40 = [(PKDrawingPaletteView *)v8 contentView];
    v41 = [v40 additionalOptionsView];
    [v41 setPalettePopoverPresenting:v8];

    v42 = [(PKDrawingPaletteView *)v8 contentView];
    v43 = [v42 additionalOptionsView];
    v44 = [v43 plusButton];
    [v44 addTarget:v8 action:sel__didTapPlusButton_ forControlEvents:64];

    v45 = [(PKDrawingPaletteView *)v8 contentView];
    v46 = [v45 additionalOptionsView];
    v47 = [v46 textButton];
    [v47 addTarget:v8 action:sel__didTapTextButton_ forControlEvents:64];

    v48 = [(PKDrawingPaletteView *)v8 contentView];
    v49 = [v48 additionalOptionsView];
    v50 = [v49 shapeButton];
    [v50 addTarget:v8 action:sel__didTapShapeButton_ forControlEvents:64];

    v51 = [(PKPaletteView *)v8 toolPreview];
    [v51 setDelegate:v8];

    [(PKDrawingPaletteView *)v8 updateColorPickerSelectedColor];
    v52 = +[PKPencilInteraction fallbackPencilInteraction];
    pencilInteraction = v8->_pencilInteraction;
    v8->_pencilInteraction = v52;

    [(UIPencilInteraction *)v8->_pencilInteraction setDelegate:v8];
    [(PKDrawingPaletteView *)v8 addInteraction:v8->_pencilInteraction];
    [(PKDrawingPaletteView *)v8 _setUpUpdateLink];
    [(PKPaletteView *)v8 setPalettePopoverLayoutSceneMargins:10.0, 10.0, 10.0, 10.0];
    [(PKDrawingPaletteView *)v8 _updateUI];
    v54 = [MEMORY[0x1E696AD88] defaultCenter];
    [v54 addObserver:v8 selector:sel__dictationAvailabilityDidChange_ name:*MEMORY[0x1E69DDF60] object:0];
  }

  return v8;
}

BOOL __78__PKDrawingPaletteView_initWithTools_wantsEllipsisButtonVisibleInCompactSize___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 action] != *(a1 + 32) && objc_msgSend(v4, "action") != *(a1 + 40);

  return v5;
}

- (void)_setUpUpdateLink
{
  v3 = [MEMORY[0x1E695DF70] array];
  blocksToPerformOnUpdateLink = self->_blocksToPerformOnUpdateLink;
  self->_blocksToPerformOnUpdateLink = v3;

  v5 = [MEMORY[0x1E69DD238] updateLinkForView:self];
  updateLink = self->_updateLink;
  self->_updateLink = v5;

  objc_initWeak(&location, self);
  v7 = self->_updateLink;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __40__PKDrawingPaletteView__setUpUpdateLink__block_invoke;
  v11 = &unk_1E82DC998;
  objc_copyWeak(&v12, &location);
  [(UIUpdateLink *)v7 addActionWithHandler:&v8];
  [(UIUpdateLink *)self->_updateLink setRequiresContinuousUpdates:1, v8, v9, v10, v11];
  [(UIUpdateLink *)self->_updateLink setEnabled:1];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __40__PKDrawingPaletteView__setUpUpdateLink__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained[102] count])
  {
    v3 = [v2[102] copy];
    [v2[102] removeAllObjects];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)performOnUpdateLink:(id)a3
{
  blocksToPerformOnUpdateLink = self->_blocksToPerformOnUpdateLink;
  v5 = [a3 copy];
  v4 = _Block_copy(v5);
  [(NSMutableArray *)blocksToPerformOnUpdateLink addObject:v4];
}

- (void)_dictationAvailabilityDidChange:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Dictation availability did change: %@. Update UI.", &v6, 0xCu);
  }

  [(PKDrawingPaletteView *)self _updateUI];
}

- (void)didChangePaletteScaleFactor
{
  v4.receiver = self;
  v4.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v4 didChangePaletteScaleFactor];
  v3 = [(PKDrawingPaletteView *)self contentView];
  [v3 paletteViewStateDidChangeScaleFactor:self];

  [(PKDrawingPaletteView *)self _updateUI];
  [(PKDrawingPaletteView *)self setNeedsUpdateConstraints];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = PKDrawingPaletteView;
  [(PKDrawingPaletteView *)&v7 didMoveToWindow];
  v3 = [(PKDrawingPaletteView *)self window];

  if (v3)
  {
    firstResponderController = self->_firstResponderController;
    v5 = [(PKDrawingPaletteView *)self windowScene];
    [(PKTextInputWindowFirstResponderController *)firstResponderController updateFirstResponderFromWindowScene:v5 sendDelegateCallback:0];
  }

  else
  {
    v5 = [(PKDrawingPaletteView *)self floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)v5 dismissWithReason:?];
  }

  v6 = [(PKDrawingPaletteView *)self windowScene];
  [(PKDrawingPaletteView *)self setIsQuickNoteUI:PKIsQuickNoteWindowScene(v6)];
}

- (id)contentScrollView
{
  v2 = [(PKDrawingPaletteView *)self contentView];
  v3 = [v2 toolPickerView];
  v4 = [v3 scrollView];

  return v4;
}

- (void)dealloc
{
  [(PKDrawingPaletteView *)self _releaseUndoManager];
  v3.receiver = self;
  v3.super_class = PKDrawingPaletteView;
  [(PKDrawingPaletteView *)&v3 dealloc];
}

- (void)_installPaletteContentViewInView:(id)a3
{
  v31[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[PKPaletteContentView alloc] initWithPaletteViewStateObservable:self];
  [(PKDrawingPaletteView *)self setContentView:v5];

  v6 = [(PKDrawingPaletteView *)self contentView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(PKDrawingPaletteView *)self contentView];
  [v4 addSubview:v7];

  v8 = [(PKDrawingPaletteView *)self contentView];
  v9 = [v8 bottomAnchor];
  v10 = [v4 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  contentViewBottomConstraint = self->_contentViewBottomConstraint;
  self->_contentViewBottomConstraint = v11;

  v26 = MEMORY[0x1E696ACD8];
  v30 = [(PKDrawingPaletteView *)self contentView];
  v29 = [v30 topAnchor];
  v28 = [v4 topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v13 = self->_contentViewBottomConstraint;
  v31[0] = v27;
  v31[1] = v13;
  v14 = [(PKDrawingPaletteView *)self contentView];
  v15 = [v14 leftAnchor];
  v16 = [v4 leftAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v31[2] = v17;
  v18 = [(PKDrawingPaletteView *)self contentView];
  v19 = [v18 rightAnchor];
  v20 = [v4 rightAnchor];

  v21 = [v19 constraintEqualToAnchor:v20];
  v31[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  [v26 activateConstraints:v22];

  v23 = [(PKPaletteContentView *)self->_contentView heightAnchor];
  [(PKDrawingPaletteView *)self compactPaletteHeight];
  v24 = [v23 constraintEqualToConstant:?];
  compactContentViewHeightConstraint = self->_compactContentViewHeightConstraint;
  self->_compactContentViewHeightConstraint = v24;
}

- (id)borderColorForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC888] clearColor];
  if (!PKIsVisionDevice())
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      v6 = [MEMORY[0x1E69DC888] systemGray4Color];
    }

    else
    {
      v7 = [(PKDrawingPaletteView *)self window];
      v8 = [v7 windowScene];
      if (PKUseCompactSize(v4, v8))
      {

        goto LABEL_7;
      }

      v11 = [v4 userInterfaceStyle];

      if (v11 != 2)
      {
        goto LABEL_8;
      }

      v6 = [MEMORY[0x1E69DC888] colorWithRed:0.172549024 green:0.172549024 blue:0.180392161 alpha:1.0];
    }

    v7 = v5;
    v5 = v6;
LABEL_7:
  }

LABEL_8:
  v9 = v5;

  return v5;
}

- (double)borderWidthForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (!PKIsVisionDevice())
  {
    v6 = [(PKDrawingPaletteView *)self window];
    v7 = [v6 windowScene];
    v8 = PKUseCompactSize(v4, v7);

    if (!v8)
    {
      v5 = 1.0;
      if (!UIAccessibilityDarkerSystemColorsEnabled())
      {
        if ([v4 userInterfaceStyle] == 2)
        {
          v5 = 0.5;
        }

        else
        {
          v5 = 0.0;
        }
      }
    }
  }

  return v5;
}

- (void)setShadowVisible:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v5 setShadowVisible:a3];
  v4 = [(PKPaletteView *)self internalDelegate];
  [v4 paletteViewStateDidChange:self updatePaletteAppearance:1];
}

- (double)shadowOpacity
{
  v2 = [(PKPaletteView *)self shadowVisible];
  result = 0.0;
  if (v2)
  {
    v4 = UIAccessibilityDarkerSystemColorsEnabled();
    result = 0.25;
    if (v4)
    {
      return 0.5;
    }
  }

  return result;
}

- (double)shadowRadius
{
  v2 = [(PKPaletteView *)self shadowVisible];
  result = 0.0;
  if (v2)
  {
    v4 = UIAccessibilityDarkerSystemColorsEnabled();
    result = 38.0;
    if (v4)
    {
      return 15.0;
    }
  }

  return result;
}

- (void)setWantsUndoRedoButtonsShadowInCompactSize:(BOOL)a3
{
  if (self->_wantsUndoRedoButtonsShadowInCompactSize != a3)
  {
    self->_wantsUndoRedoButtonsShadowInCompactSize = a3;
    v5 = [(PKDrawingPaletteView *)self contentView];
    [v5 paletteViewStateDidChange:self];
  }
}

- (void)setWantsMulticolorSwatchShadowInCompactSize:(BOOL)a3
{
  if (self->_wantsMulticolorSwatchShadowInCompactSize != a3)
  {
    self->_wantsMulticolorSwatchShadowInCompactSize = a3;
    v5 = [(PKDrawingPaletteView *)self contentView];
    [v5 paletteViewStateDidChange:self];
  }
}

- (void)setCloseButtonVisible:(BOOL)a3
{
  if (self->_closeButtonVisible != a3)
  {
    self->_closeButtonVisible = a3;
    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setColorMaximumLinearExposure:(double)a3
{
  if (self->_colorMaximumLinearExposure != a3)
  {
    self->_colorMaximumLinearExposure = a3;
    v5 = [(PKDrawingPaletteView *)self contentView];
    [v5 setColorMaximumLinearExposure:a3];

    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)_updateUIReloadTools:(BOOL)a3
{
  v3 = a3;
  v85 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.pencilkit", "ToolPickerLayout");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v84 = v3;
    _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "PKDrawingPaletteView._updateUIReloadTools: %d", buf, 8u);
  }

  if (v3)
  {
    v6 = [(PKDrawingPaletteView *)self contentView];
    v7 = [v6 toolPickerView];
    [v7 reloadToolViewsWithDataSource:self];
  }

  v8 = MEMORY[0x1E696ACD8];
  v9 = [(PKDrawingPaletteView *)self contentViewBottomConstraint];
  v82[0] = v9;
  v10 = [(PKDrawingPaletteView *)self compactContentViewHeightConstraint];
  v82[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  [v8 deactivateConstraints:v11];

  v12 = [(UIView *)self _pk_useCompactLayout];
  v13 = MEMORY[0x1E696ACD8];
  if (v12)
  {
    v14 = [(PKDrawingPaletteView *)self compactContentViewHeightConstraint];
    v81 = v14;
    v15 = &v81;
  }

  else
  {
    v14 = [(PKDrawingPaletteView *)self contentViewBottomConstraint];
    v80 = v14;
    v15 = &v80;
  }

  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:{1, v80, v81}];
  [v13 activateConstraints:v16];

  v17 = [(PKDrawingPaletteView *)self closeButtonVisible];
  v18 = [(PKDrawingPaletteView *)self contentView];
  [v18 setCloseButtonVisible:v17];

  [(PKDrawingPaletteView *)self colorMaximumLinearExposure];
  v20 = v19;
  v21 = [(PKDrawingPaletteView *)self contentView];
  [v21 setColorMaximumLinearExposure:v20];

  v22 = [(PKDrawingPaletteView *)self contentView];
  v23 = [v22 undoRedoView];
  [v23 updateUI];

  v24 = [(PKDrawingPaletteView *)self colorUserInterfaceStyle];
  v25 = [(PKDrawingPaletteView *)self contentView];
  v26 = [v25 colorPickerView];
  [v26 setColorUserInterfaceStyle:v24];

  v27 = [(PKDrawingPaletteView *)self colorUserInterfaceStyle];
  v28 = [(PKDrawingPaletteView *)self contentView];
  v29 = [v28 toolPickerView];
  [v29 setColorUserInterfaceStyle:v27];

  v30 = [(PKPaletteView *)self isAutoHideEnabled];
  v31 = [(PKDrawingPaletteView *)self contentView];
  v32 = [v31 additionalOptionsView];
  [v32 setAutoHideOn:v30];

  v33 = [(PKDrawingPaletteView *)self _shouldShowFingerDrawsOption];
  v34 = [(PKDrawingPaletteView *)self contentView];
  v35 = [v34 additionalOptionsView];
  [v35 setShouldShowFingerDrawsOption:v33];

  v36 = [(PKDrawingPaletteView *)self shouldAlwaysShowAutoRefineControls];
  v37 = [(PKDrawingPaletteView *)self contentView];
  v38 = [v37 additionalOptionsView];
  [v38 setShouldAlwaysShowAutoRefineControls:v36];

  v39 = [(PKDrawingPaletteView *)self colorUserInterfaceStyle];
  v40 = [(PKPaletteView *)self toolPreview];
  [v40 setColorUserInterfaceStyle:v39];

  v41 = [(PKDrawingPaletteView *)self tools];
  v42 = [v41 count];
  v43 = [(PKDrawingPaletteView *)self showsPlusButton];
  v44 = 5.0;
  v45 = 2.0;
  if (!v43)
  {
    v45 = 5.0;
  }

  if (v42 >= 8)
  {
    v44 = v45;
  }

  [(PKDrawingPaletteView *)self setInterItemToolsSpacingInCompactSize:1 shouldNotify:v44];

  [(PKDrawingPaletteView *)self _updateToolsContainerScrollingEnabled];
  if ([(UIView *)self _pk_useCompactLayout]|| ([(PKPaletteView *)self palettePosition]- 1) > 3)
  {
    if (([(PKPaletteView *)self palettePosition]- 5) <= 3)
    {
      v48 = [(PKPaletteView *)self palettePosition]- 5;
      if (v48 > 3)
      {
        v49 = -1;
      }

      else
      {
        v49 = qword_1C801F560[v48];
      }

      v50 = [(PKPaletteView *)self edgeLocationToDockFromCorner:v49];
      [(PKPaletteView *)self _updateContainerSizeConstraintsForEdge:v50];
      [(PKDrawingPaletteView *)self _centerPaletteContainerSubviewToCurrentlySelectedToolForEdge:v50 needsContainerViewLayout:1];
      [(PKDrawingPaletteView *)self _updateToolPreviewPositionForEdge:v50];
    }
  }

  else
  {
    v46 = [(PKPaletteView *)self palettePosition]- 1;
    if (v46 > 3)
    {
      v47 = 0;
    }

    else
    {
      v47 = qword_1C801F5C0[v46];
    }

    [(PKPaletteView *)self _updateContainerSizeConstraintsForEdge:v47];
  }

  [(PKPaletteView *)self paletteScaleFactor];
  v52 = v51;
  v53 = [(PKPaletteView *)self containerView];
  [v53 setScalingFactor:v52];

  indexOfSelectedTool = self->_indexOfSelectedTool;
  if (indexOfSelectedTool != 0x7FFFFFFFFFFFFFFFLL)
  {
    v55 = [(PKDrawingPaletteView *)self contentView];
    v56 = [v55 toolPickerView];
    [v56 selectToolViewAtIndex:indexOfSelectedTool];

    v57 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
    v58 = [v57 tool];
    if ([v58 isLassoTool])
    {
    }

    else
    {
      v59 = [(PKDrawingPaletteView *)self selectedTool];
      v60 = [v59 _isLassoTool];

      if (!v60)
      {
        goto LABEL_28;
      }
    }

    v61 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
    [v61 setSupportsDisplayingSelectedColor:0];

LABEL_28:
    [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
    v62 = [(PKPaletteView *)self paletteViewHosting];
    if (v62)
    {
      v63 = v62;
      v64 = [(PKPaletteView *)self paletteViewHosting];
      v65 = [v64 isPaletteVisualStateMinimized];

      if (v65)
      {
LABEL_30:
        v66 = 1;
LABEL_36:
        [(PKDrawingPaletteView *)self _updateToolPreviewContentsAnimated:v66];
        [(PKPaletteView *)self _updateToolPreviewVisibility];
        goto LABEL_37;
      }
    }

    else if (([(PKPaletteView *)self palettePosition]- 5) < 4)
    {
      goto LABEL_30;
    }

    v67 = [(PKPaletteView *)self palettePosition]- 1;
    if (v67 > 3)
    {
      v68 = 0;
    }

    else
    {
      v68 = qword_1C801F5C0[v67];
    }

    [(PKDrawingPaletteView *)self _updateToolPreviewPositionForEdge:v68];
    v66 = 0;
    goto LABEL_36;
  }

LABEL_37:
  [(PKDrawingPaletteView *)self _updateKeyboardSceneDelegateInputAssistantSupressionState];
  if ([(PKDrawingPaletteView *)self isHandwritingToolSelected])
  {
    [(PKDrawingPaletteView *)self updateHandwritingAssistantItems];
  }

  else if ([(PKDrawingPaletteView *)self hasHandwritingTool])
  {
    v69 = [(PKDrawingPaletteView *)self floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)v69 dismissWithReason:?];
  }

  if (![(PKDrawingPaletteView *)self isAnnotationSupportEnabled]&& [(PKDrawingPaletteView *)self selectedAnnotationType])
  {
    [(PKDrawingPaletteView *)self setSelectedAnnotationType:0];
  }

  v70 = [(PKDrawingPaletteView *)self bottomLineDividerView];
  v71 = [v70 isDescendantOfView:self];

  if (_UISolariumEnabled())
  {
    LOBYTE(v72) = 0;
  }

  else
  {
    v72 = [(PKDrawingPaletteView *)self wantsBottomLineDividerVisibleInCompactSize];
    if (v72)
    {
      LOBYTE(v72) = [(UIView *)self _pk_useCompactLayout];
    }
  }

  if (v72 || ((v71 ^ 1) & 1) != 0)
  {
    if (!(v71 & 1 | !v72))
    {
      v74 = objc_alloc_init(MEMORY[0x1E69DD250]);
      bottomLineDividerView = self->_bottomLineDividerView;
      self->_bottomLineDividerView = v74;

      v76 = [(PKDrawingPaletteView *)self bottomLineDividerView];
      [(PKDrawingPaletteView *)self addSubview:v76];
    }
  }

  else
  {
    v73 = [(PKDrawingPaletteView *)self bottomLineDividerView];
    [v73 removeFromSuperview];

    [(PKDrawingPaletteView *)self setBottomLineDividerView:0];
  }

  if (v3)
  {
    v77 = [(PKDrawingPaletteView *)self contentView];
    [v77 paletteViewStateDidChange:self];

    v78 = [(PKPaletteView *)self internalDelegate];
    [v78 paletteViewStateDidChange:self];

    v79 = [(PKPaletteView *)self delegate];
    [v79 paletteViewContentSizeDidChange:self];
  }
}

- (BOOL)_canShowFingerDrawsOption
{
  v2 = [(PKDrawingPaletteView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] != 0;

  return v3;
}

- (BOOL)_shouldShowFingerDrawsOption
{
  v3 = [(PKDrawingPaletteView *)self _canShowFingerDrawsOption];
  if (v3)
  {

    LOBYTE(v3) = [(PKDrawingPaletteView *)self isFingerDrawsOptionEnabled];
  }

  return v3;
}

- (void)_updateToolsContainerScrollingEnabled
{
  v3 = [(PKDrawingPaletteView *)self contentView];
  v4 = [v3 toolPickerView];
  v5 = [v4 isScrollingEnabled];
  v6 = [(PKDrawingPaletteView *)self wantsScrollableTools];

  if (v5 != v6)
  {
    v7 = [(PKDrawingPaletteView *)self contentView];
    [v7 paletteViewStateDidChange:self];
  }
}

- (BOOL)wantsScrollableTools
{
  v3 = [(PKDrawingPaletteView *)self tools];
  v4 = [v3 count];

  if (v4 < 8)
  {
    return 0;
  }

  v5 = [(PKDrawingPaletteView *)self windowScene];
  v6 = PKIsSmallestQuickNoteWindowScene(v5);

  v7 = 7.0;
  if (v6)
  {
    v7 = 6.0;
  }

  return v7 < v4;
}

- (BOOL)isExtendedColorPickerVisible
{
  v2 = [(PKDrawingPaletteView *)self contentView];
  v3 = [v2 colorPickerView];
  v4 = [v3 _isExtendedColorPickerVisible];

  return v4;
}

- (void)_dismissEyeDropper
{
  v2 = [(PKDrawingPaletteView *)self contentView];
  [v2 dismissEyeDropper];
}

- (CGSize)paletteSizeForEdge:(unint64_t)a3
{
  if (a3 == 8 || a3 == 2)
  {
    [(PKDrawingPaletteView *)self _paletteHeightForVerticalOrientation];
    v5 = v4;
    v6 = 122.0;
  }

  else
  {
    [(PKDrawingPaletteView *)self _paletteWidthForHorizontalOrientation];
    v6 = v7;
    v5 = 122.0;
  }

  [(PKPaletteView *)self paletteScaleFactor];
  v9 = v5 * v8;
  v10 = v6 * v8;
  result.height = v9;
  result.width = v10;
  return result;
}

- (double)_paletteHeightForVerticalOrientation
{
  PKPaletteButtonSize(0);
  v4 = v3;
  v5 = v3 + 48.0 + 12.0;
  [(PKDrawingPaletteView *)self _toolsContainerWidth];
  v7 = v6 + v5 + 12.0;
  PKPaletteColorSwatchesSize(1);
  v9 = v8 + v7 + 26.0;
  if ([(PKDrawingPaletteView *)self showsPlusButton]|| [(PKDrawingPaletteView *)self showsTextButton]|| [(PKDrawingPaletteView *)self showsShapeButton])
  {
    v9 = v4 + 6.0 + v9;
  }

  v10 = v4 + v9;
  v11 = [(PKDrawingPaletteView *)self showsPlusButton];
  v12 = 48.0;
  if (!v11)
  {
    v12 = 26.0;
  }

  return v10 + v12;
}

- (double)_paletteWidthForHorizontalOrientation
{
  [(PKDrawingPaletteView *)self _paletteWidthForHorizontalOrientationWithoutTools];
  v4 = v3;
  [(PKDrawingPaletteView *)self _toolsContainerWidth];
  return v4 + v5;
}

- (double)_paletteWidthForHorizontalOrientationWithoutTools
{
  v3 = PKPaletteButtonSize(0);
  v4 = PKPaletteColorSwatchesSize(0) + v3 * 2.0 + 12.0 + 26.0 + 12.0 + 12.0 + 26.0;
  if ([(PKDrawingPaletteView *)self showsTextButton]|| [(PKDrawingPaletteView *)self showsShapeButton])
  {
    v4 = v3 + 6.0 + v4;
  }

  if ([(PKDrawingPaletteView *)self showsPlusButton])
  {
    v4 = v3 + 12.0 + v4;
  }

  v5 = [(PKDrawingPaletteView *)self isEllipsisButtonVisible];
  v6 = v3 + v4;
  if (!v5)
  {
    v6 = v4;
  }

  return v6 + 26.0;
}

- (double)_toolsContainerWidth
{
  v3 = [(PKDrawingPaletteView *)self tools];
  v4 = [v3 count];

  v5 = v4 - 1;
  if (v4 == 1)
  {
    return 46.0;
  }

  v7 = 10.0;
  if (v5 < 8)
  {
    v7 = 12.0;
  }

  v6 = v4 * 46.0 + v7 * v5;
  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 bundleIdentifier];
  v10 = [v9 isEqualToString:@"com.apple.mobilenotes"];

  if (v10)
  {
    v11 = PKIsVisionDevice();
    v12 = 372.0;
    if (v11)
    {
      v12 = 534.0;
    }

    if (v12 >= v6)
    {
      v6 = v12;
    }
  }

  if (PKIsVisionDevice() && ([MEMORY[0x1E696AAE8] mainBundle], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "bundleIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"com.apple.freeform"), v14, v13, v15))
  {
    [(PKDrawingPaletteView *)self _paletteWidthForHorizontalOrientationWithoutTools];
    v17 = v16;
    v18 = v6 + v16;
    v19 = [(PKDrawingPaletteView *)self windowScene];
    v20 = [v19 effectiveGeometry];
    v21 = [v20 coordinateSpace];
    [v21 bounds];
    v23 = v22;

    if (v23 <= v18)
    {
      v24 = v23 - v17;
      if (v23 - v17 < 300.0)
      {
        v24 = 300.0;
      }

      if (v24 < v6)
      {
        v6 = v24;
      }
    }

    if (v23 >= v18 || v23 + 196.0 < v18)
    {
      if (v23 <= v18)
      {
        return v6;
      }

      v27 = v23 - (v17 + 196.0);
    }

    else
    {
      v27 = v18 - (v17 + 196.0);
    }
  }

  else if (PKIsVisionDevice())
  {
    v26 = PKIsVisionDevice();
    v27 = 372.0;
    if (v26)
    {
      v27 = 534.0;
    }
  }

  else
  {
    v27 = 394.0;
  }

  if (v27 < v6)
  {
    return v27;
  }

  return v6;
}

- (CGRect)sourceRectForPopoverPresentationForSourceView:(id)a3
{
  v4 = a3;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 superview];

  [(PKDrawingPaletteView *)self frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(PKDrawingPaletteView *)self superview];
  [v13 convertRect:v22 fromView:{v15, v17, v19, v21}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [(PKPaletteView *)self palettePosition];
  if (v31 == 4)
  {
    v32 = v24;
  }

  else
  {
    v32 = v6;
  }

  if (v31 == 4)
  {
    v33 = v8;
  }

  else
  {
    v33 = v26;
  }

  if (v31 == 4)
  {
    v34 = v28;
  }

  else
  {
    v34 = v10;
  }

  if (v31 == 4)
  {
    v35 = v12;
  }

  else
  {
    v35 = v30;
  }

  if (v31 == 2)
  {
    v32 = v24;
    v33 = v8;
    v34 = v28;
    v35 = v12;
  }

  return CGRectInset(*&v32, -5.0, -5.0);
}

- (void)updatePopoverUI
{
  v3 = [(PKDrawingPaletteView *)self contentView];
  v4 = [v3 toolPickerView];
  [v4 updatePopoverUI];

  v5 = [(PKDrawingPaletteView *)self contentView];
  v6 = [v5 colorPickerView];
  [v6 updatePopoverUI];

  v8 = [(PKDrawingPaletteView *)self contentView];
  v7 = [v8 additionalOptionsView];
  [v7 updatePopoverUI];
}

- (void)setWantsClearBackgroundColorInCompactSize:(BOOL)a3
{
  if (self->_wantsClearBackgroundColorInCompactSize != a3)
  {
    self->_wantsClearBackgroundColorInCompactSize = a3;
    [(PKDrawingPaletteView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v28 layoutSubviews];
  [(PKDrawingPaletteView *)self updateUndoRedo];
  v3 = [(PKDrawingPaletteView *)self _wantsClearBackgroundColor];
  v4 = [(PKDrawingPaletteView *)self _clippingViewBackgroundColor:v3];
  v5 = [(PKPaletteView *)self clippingView];
  [v5 setBackgroundColor:v4];

  v6 = [(PKPaletteView *)self clippingView];
  [v6 bounds];
  x = v7;
  y = v9;
  width = v11;
  height = v13;

  if (![(UIView *)self _pk_useCompactLayout])
  {
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectInset(v29, -6.0, -6.0);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
  }

  v15 = [(PKPaletteView *)self backgroundMaterialView];
  [v15 setFrame:{x, y, width, height}];

  v16 = [(PKPaletteView *)self backgroundMaterialView];
  [v16 setHidden:v3];

  [(PKDrawingPaletteView *)self compactPaletteHeight];
  v18 = v17;
  [(PKDrawingPaletteView *)self bounds];
  v19 = CGRectGetWidth(v31);
  v20 = [(PKDrawingPaletteView *)self bottomLineDividerView];
  [v20 setFrame:{0.0, v18, v19, 1.0}];

  if ([(UIView *)self _pk_useCompactLayout])
  {
    [MEMORY[0x1E69DC888] pk_separatorLineColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v21 = ;
  v22 = [(PKDrawingPaletteView *)self bottomLineDividerView];
  [v22 setBackgroundColor:v21];

  v23 = [MEMORY[0x1E696AAE8] mainBundle];
  v24 = [v23 bundleIdentifier];
  v25 = [v24 isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v25)
  {
    v26 = 2;
  }

  else
  {
    v23 = [(PKDrawingPaletteView *)self traitCollection];
    v26 = [v23 userInterfaceStyle];
  }

  v27 = [(PKDrawingPaletteView *)self bottomLineDividerView];
  [v27 setOverrideUserInterfaceStyle:v26];

  if ((v25 & 1) == 0)
  {
  }

  if ([(PKDrawingPaletteView *)self isQuickNoteUI])
  {
    [(PKDrawingPaletteView *)self _updateToolsContainerScrollingEnabled];
  }
}

- (BOOL)_wantsClearBackgroundColor
{
  if ([(PKPaletteView *)self _wantsGlassBackground])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(UIView *)self _pk_useCompactLayout];
    if (v3)
    {

      LOBYTE(v3) = [(PKDrawingPaletteView *)self wantsClearBackgroundColorInCompactSize];
    }
  }

  return v3;
}

- (id)_clippingViewBackgroundColor:(BOOL)a3
{
  if (a3)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [(PKPaletteBackgroundColorFactory *)self->_backgroundColorFactory makeBackgroundColor];
  }
  v3 = ;

  return v3;
}

- (void)setUseEqualSpacingLayoutInCompactSize:(BOOL)a3
{
  if (self->_useEqualSpacingLayoutInCompactSize != a3)
  {
    self->_useEqualSpacingLayoutInCompactSize = a3;
    v5 = [(PKDrawingPaletteView *)self contentView];
    [v5 paletteViewStateDidChange:self];
  }
}

- (void)setAnnotationDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_annotationDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_annotationDelegate, obj);
    [(PKDrawingPaletteView *)self setShowsPlusButton:[(PKDrawingPaletteView *)self isAnnotationSupportEnabled]];
    v5 = obj;
  }
}

- (BOOL)isAnnotationSupportEnabled
{
  v2 = [(PKDrawingPaletteView *)self annotationDelegate];
  v3 = v2 != 0;

  return v3;
}

- (void)updateUndoRedo
{
  v3 = [(PKPaletteView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PKPaletteView *)self delegate];
    v12 = [v5 paletteViewUndoManager:self];
  }

  else
  {
    v12 = 0;
  }

  [(PKDrawingPaletteView *)self setUndoManager:v12];
  v6 = [v12 canUndo];
  v7 = [(PKDrawingPaletteView *)self contentView];
  v8 = [v7 undoRedoView];
  [v8 setUndoEnabled:v6];

  v9 = [v12 canRedo];
  v10 = [(PKDrawingPaletteView *)self contentView];
  v11 = [v10 undoRedoView];
  [v11 setRedoEnabled:v9];
}

- (NSArray)inputAssistantItems
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(PKDrawingPaletteView *)self window];
  v4 = [v3 windowScene];

  v5 = [(__CFString *)v4 keyboardSceneDelegate];
  if (v5)
  {
    v6 = [(PKPaletteView *)self isVisible];
    v7 = [(PKDrawingPaletteView *)self isHandwritingToolSelected];
    v8 = [v5 shouldSuppressInputAssistantUpdates];
    v9 = MEMORY[0x1E695E0F0];
    if (v7 && v6)
    {
      if ((_os_feature_enabled_impl() | v8))
      {
        v10 = [(PKDrawingPaletteView *)self inputAssistantButtonProvider];
        v9 = [v10 buttonsForCurrentConfiguration];
      }

      else
      {
        v12 = os_log_create("com.apple.pencilkit", "PKPalette");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = @"UIKeyboardSceneDelegate.shouldSuppressInputAssistantUpdates is 'NO' yet something requested inputAssistantItems";
          _os_log_error_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__PKDrawingPaletteView_inputAssistantItems__block_invoke;
        block[3] = &unk_1E82D7148;
        v19 = @"UIKeyboardSceneDelegate.shouldSuppressInputAssistantUpdates is 'NO' yet something requested inputAssistantItems";
        if (inputAssistantItems_onceToken != -1)
        {
          dispatch_once(&inputAssistantItems_onceToken, block);
        }

        v9 = MEMORY[0x1E695E0F0];
      }
    }

    v11 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:v7];
      v15 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      v16 = [MEMORY[0x1E696AD98] numberWithBool:v8];
      *buf = 138413058;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_INFO, "Returning %@ input assistant item(s). isVisible = %@, isHandwritingToolSelected = %@, shouldSuppressInputAssistantUpdates = %@", buf, 0x2Au);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v21 = v4;
      v22 = 2048;
      v23 = 0;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_INFO, "No input assistant items. Either drawing palette is not in a scene (%p), or has not input responder controller (%p).", buf, 0x16u);
    }

    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

void __43__PKDrawingPaletteView_inputAssistantItems__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_fault_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_FAULT, "%@", &v4, 0xCu);
  }
}

- (BOOL)enableKeyboardButtons
{
  v3 = [(PKDrawingPaletteView *)self window];
  v4 = [v3 windowScene];
  v5 = [v4 keyboardSceneDelegate];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 hasNullInputView] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(PKDrawingPaletteView *)self window];
  v8 = [v7 windowScene];
  v9 = [v8 screen];
  v10 = [v9 _isEmbeddedScreen];

  if (v10)
  {
    v11 = [(PKDrawingPaletteView *)self firstResponderController];
    v12 = [v11 firstResponder];
    v13 = [v12 isEditableTextInput] & v6;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (id)undoManager
{
  undoManager = self->_undoManager;
  if (undoManager)
  {
    v3 = undoManager;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFC8]);
    [(PKDrawingPaletteView *)self setUndoManager:v3];
  }

  return v3;
}

- (void)setUndoManager:(id)a3
{
  v5 = a3;
  undoManager = self->_undoManager;
  v8 = v5;
  if (undoManager != v5)
  {
    if (undoManager)
    {
      [(PKDrawingPaletteView *)self _releaseUndoManager];
    }

    objc_storeStrong(&self->_undoManager, a3);
    if (self->_undoManager)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 addObserver:self selector:sel__changeWasUndone_ name:*MEMORY[0x1E696AA30] object:self->_undoManager];
      [v7 addObserver:self selector:sel__changeWasRedone_ name:*MEMORY[0x1E696AA28] object:self->_undoManager];
      [v7 addObserver:self selector:sel__changeWasDone_ name:*MEMORY[0x1E696AA18] object:self->_undoManager];
    }
  }
}

- (void)_releaseUndoManager
{
  if (self->_undoManager)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x1E696AA30] object:self->_undoManager];
    [v4 removeObserver:self name:*MEMORY[0x1E696AA28] object:self->_undoManager];
    [v4 removeObserver:self name:*MEMORY[0x1E696AA18] object:self->_undoManager];
    undoManager = self->_undoManager;
    self->_undoManager = 0;
  }
}

- (PKPaletteButton)_plusButton
{
  v3 = [(PKDrawingPaletteView *)self traitCollection];
  v4 = [(PKDrawingPaletteView *)self window];
  v5 = [v4 windowScene];
  v6 = PKUseCompactSize(v3, v5);
  v7 = [(PKDrawingPaletteView *)self contentView];
  v8 = v7;
  if (v6)
  {
    [v7 toolAndColorPickerContainerView];
  }

  else
  {
    [v7 additionalOptionsView];
  }
  v9 = ;
  v10 = [v9 plusButton];

  return v10;
}

- (void)_setPlusButton:(id)a3
{
  v4 = a3;
  v5 = [(PKDrawingPaletteView *)self contentView];
  v6 = [v5 additionalOptionsView];
  [v6 setPlusButton:v4];

  v8 = [(PKDrawingPaletteView *)self contentView];
  v7 = [v8 toolAndColorPickerContainerView];
  [v7 setPlusButton:v4];
}

- (void)setShowsPlusButton:(BOOL)a3
{
  if (self->_showsPlusButton != a3)
  {
    self->_showsPlusButton = a3;
    v5 = [(PKPaletteView *)self internalDelegate];
    [v5 paletteViewStateDidChange:self];

    v6 = [(PKDrawingPaletteView *)self contentView];
    [v6 paletteViewStateDidChange:self];

    v7 = [(PKPaletteView *)self delegate];
    [v7 paletteViewContentSizeDidChange:self];

    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setPlusButtonViewController:(id)a3
{
  v5 = a3;
  if (self->_plusButtonViewController != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_plusButtonViewController, a3);
    v6 = [(PKDrawingPaletteView *)self contentView];
    [v6 paletteViewStateDidChange:self];

    v5 = v7;
  }
}

- (void)setShowsTextButton:(BOOL)a3
{
  if (self->_showsTextButton != a3)
  {
    self->_showsTextButton = a3;
    v5 = [(PKPaletteView *)self internalDelegate];
    [v5 paletteViewStateDidChange:self];

    v6 = [(PKDrawingPaletteView *)self contentView];
    [v6 paletteViewStateDidChange:self];

    v7 = [(PKPaletteView *)self delegate];
    [v7 paletteViewContentSizeDidChange:self];

    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setShowsShapeButton:(BOOL)a3
{
  if (self->_showsShapeButton != a3)
  {
    self->_showsShapeButton = a3;
    v5 = [(PKPaletteView *)self internalDelegate];
    [v5 paletteViewStateDidChange:self];

    v6 = [(PKDrawingPaletteView *)self contentView];
    [v6 paletteViewStateDidChange:self];

    v7 = [(PKPaletteView *)self delegate];
    [v7 paletteViewContentSizeDidChange:self];

    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setWantsUndoRedoButtonsVisibleInCompactSize:(BOOL)a3
{
  if (self->_wantsUndoRedoButtonsVisibleInCompactSize != a3)
  {
    self->_wantsUndoRedoButtonsVisibleInCompactSize = a3;
    v5 = [(PKDrawingPaletteView *)self contentView];
    [v5 paletteViewStateDidChange:self];
  }
}

- (void)setWantsEllipsisButtonVisibleInCompactSize:(BOOL)a3
{
  if (self->_wantsEllipsisButtonVisibleInCompactSize != a3)
  {
    self->_wantsEllipsisButtonVisibleInCompactSize = a3;
    v5 = [(PKDrawingPaletteView *)self contentView];
    [v5 paletteViewStateDidChange:self];
  }
}

- (void)setWantsBottomLineDividerVisibleInCompactSize:(BOOL)a3
{
  if (self->_wantsBottomLineDividerVisibleInCompactSize != a3)
  {
    self->_wantsBottomLineDividerVisibleInCompactSize = a3;
    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (BOOL)isEllipsisButtonVisible
{
  v2 = [(PKDrawingPaletteView *)self contentView];
  v3 = [v2 isEllipsisButtonVisible];

  return v3;
}

- (BOOL)isPalettePresentingPopover
{
  v27.receiver = self;
  v27.super_class = PKDrawingPaletteView;
  if ([(PKPaletteView *)&v27 isPalettePresentingPopover])
  {
    return 1;
  }

  v4 = [(PKPaletteView *)self palettePopoverPresentingController];
  v5 = [v4 presentedViewController];

  if (v5 && ([MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()], v6 = objc_claimAutoreleasedReturnValue(), v7 = MEMORY[0x1E696AAE8], -[PKDrawingPaletteView annotationDelegate](self, "annotationDelegate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bundleForClass:", objc_opt_class()), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v6, v6 == v9) || (objc_msgSend(v5, "popoverPresentationController"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "sourceView"), v11 = objc_claimAutoreleasedReturnValue(), -[PKDrawingPaletteView contextualEditingView](self, "contextualEditingView"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isDescendantOfView:", v12), v12, v11, v10, (v13 & 1) != 0) || (objc_msgSend(v5, "popoverPresentationController"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "sourceItem"), v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v17 = objc_opt_isKindOfClass(), v16, v15, (v17 & 1) != 0) && (objc_msgSend(v5, "popoverPresentationController"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "sourceItem"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isDescendantOfView:", self), v19, v18, (v20 & 1) != 0))
  {
    v3 = 1;
  }

  else
  {
    v21 = [v5 popoverPresentationController];
    v22 = [v21 sourceItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v24 = [v5 popoverPresentationController];
      v25 = [v24 sourceItem];
      v26 = [v25 view];
      v3 = [v26 isDescendantOfView:self];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)hasContextMenuVisible
{
  v6.receiver = self;
  v6.super_class = PKDrawingPaletteView;
  if ([(PKPaletteView *)&v6 hasContextMenuVisible])
  {
    return 1;
  }

  v4 = [(PKDrawingPaletteView *)self _plusButton];
  v3 = [v4 hasContextMenuVisible];

  return v3;
}

- (void)dismissContextMenu
{
  v2 = [(PKDrawingPaletteView *)self _plusButton];
  [v2 dismissContextMenu];
}

- (void)_setSelectedToolColor:(id)a3 ignoreColorOpacity:(BOOL)a4 isContinuousColorSelection:(BOOL)a5
{
  v5 = a5;
  v22 = a3;
  v8 = [(PKDrawingPaletteView *)self contentView];
  v9 = [v8 toolPickerView];
  v10 = [v9 selectedToolView];

  if ([v10 supportsDisplayingSelectedColor])
  {
    v11 = [v10 tool];
    v12 = [v11 inkingTool];

    if (v12)
    {
      v13 = [v12 ink];

      if (v13)
      {
        v14 = [v12 ink];
        v15 = [v14 color];
        [v15 alphaComponent];
        v17 = v16;

        if (a4)
        {
          v18 = [v22 colorWithAlphaComponent:v17];
        }

        else
        {
          v18 = v22;
        }

        v19 = v18;
        [v12 setInkColor:v18];
        v20 = [(NSArray *)self->_tools objectAtIndexedSubscript:self->_indexOfSelectedTool];
        v21 = [PKToolFromPaletteTool toolByApplyingPropertiesFromPaletteTool:v12 toTool:v20];

        [(PKDrawingPaletteView *)self _replaceToolAtIndex:self->_indexOfSelectedTool withTool:v21 notifyDelegate:!v5];
      }
    }
  }
}

- (void)setColorUserInterfaceStyle:(int64_t)a3
{
  if (self->_colorUserInterfaceStyle != a3)
  {
    self->_colorUserInterfaceStyle = a3;
    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setFingerDrawsOptionEnabled:(BOOL)a3
{
  if (self->_fingerDrawsOptionEnabled != a3)
  {
    self->_fingerDrawsOptionEnabled = a3;
    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)a3
{
  if (self->_shouldAlwaysShowAutoRefineControls != a3)
  {
    self->_shouldAlwaysShowAutoRefineControls = a3;
    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setEditingStrokeSelection:(BOOL)a3
{
  if (self->_editingStrokeSelection != a3)
  {
    self->_editingStrokeSelection = a3;
    [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
  }
}

- (void)setEditingTextSelection:(BOOL)a3
{
  if (self->_editingTextSelection != a3)
  {
    self->_editingTextSelection = a3;
    v5 = [(PKDrawingPaletteView *)self isEditingTextSelection];

    [(PKDrawingPaletteView *)self setContextEditingMode:v5];
  }
}

- (void)setEditingExternalElementsSelection:(BOOL)a3
{
  if (self->_editingExternalElementsSelection != a3)
  {
    self->_editingExternalElementsSelection = a3;
    if ([(PKDrawingPaletteView *)self isEditingExternalElementsSelection])
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    [(PKDrawingPaletteView *)self setContextEditingMode:v5];

    [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
  }
}

- (void)setShowsLassoToolEditingView:(BOOL)a3
{
  if (self->_showsLassoToolEditingView != a3)
  {
    self->_showsLassoToolEditingView = a3;
    v5 = [(PKDrawingPaletteView *)self contentView];
    [v5 paletteViewStateDidChange:self];
  }
}

- (void)setLassoToolEditingViewIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_lassoToolEditingViewIdentifier;
  v6 = v4;
  v11 = v6;
  if (v5 == v6)
  {

LABEL_9:
    v8 = v11;
    goto LABEL_10;
  }

  if (!v6 || !v5)
  {

    v8 = v11;
    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  v8 = v11;
  if (!v7)
  {
LABEL_8:
    v9 = [(NSString *)v8 copy];
    lassoToolEditingViewIdentifier = self->_lassoToolEditingViewIdentifier;
    self->_lassoToolEditingViewIdentifier = v9;

    v5 = [(PKDrawingPaletteView *)self contentView];
    [(NSString *)v5 setLassoToolEditingViewIdentifier:self->_lassoToolEditingViewIdentifier];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setColorSwatchesVisible:(BOOL)a3
{
  if (self->_colorSwatchesVisible != a3)
  {
    self->_colorSwatchesVisible = a3;
    v5 = [(PKDrawingPaletteView *)self contentView];
    [v5 paletteViewStateDidChange:self];
  }
}

- (void)setPrefersLargeContextualEditingUI:(BOOL)a3
{
  if (self->_prefersLargeContextualEditingUI != a3)
  {
    self->_prefersLargeContextualEditingUI = a3;
    v5 = [(PKDrawingPaletteView *)self contentView];
    [v5 paletteViewStateDidChange:self];
  }
}

- (void)setSelectedAnnotationType:(int64_t)a3
{
  if (self->_selectedAnnotationType == a3)
  {
    return;
  }

  v10 = v3;
  v9 = 0;
  self->_selectedAnnotationType = a3;
  if (a3 > 10)
  {
    if (a3 == 11)
    {
      v9 = 3;
      goto LABEL_10;
    }

    if (a3 != 12)
    {
      goto LABEL_8;
    }
  }

  else if (a3)
  {
    if (a3 == 10)
    {
      v9 = 1;
      goto LABEL_10;
    }

LABEL_8:
    v9 = 2;
  }

LABEL_10:
  [(PKDrawingPaletteView *)self setContextEditingMode:v9, v4, v10, v5];

  [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
}

- (void)updateColorPickerSelectedColor
{
  v3 = [(PKDrawingPaletteView *)self contextEditingMode];
  if ((v3 - 1) < 3)
  {
    v4 = [(PKDrawingPaletteView *)self annotationDelegate];
    v5 = [v4 paletteViewSelectedAnnotationColor:self];
LABEL_3:
    v25 = v5;
LABEL_4:

    goto LABEL_17;
  }

  if (v3 == 4)
  {
    v14 = [(PKPaletteView *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v4 = [(PKPaletteView *)self delegate];
      v5 = [v4 paletteViewCurrentSelectionColor:self];
      goto LABEL_3;
    }
  }

  else if (!v3)
  {
    v6 = [(PKDrawingPaletteView *)self isEditingStrokeSelection];
    v7 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
    v4 = v7;
    if (v6)
    {
      v8 = [v7 tool];
      if (![v8 isLassoTool])
      {
        v25 = 0;
LABEL_27:

        goto LABEL_4;
      }

      v9 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
      if (![v9 supportsDisplayingSelectedColor])
      {
        v25 = 0;
        goto LABEL_26;
      }

      v10 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
      v11 = [v10 tool];
      v12 = [v11 inkingTool];
      v13 = [v12 ink];
      v25 = [v13 colorForUIAllowHDR:{-[PKDrawingPaletteView allowHDR](self, "allowHDR")}];

LABEL_15:
LABEL_26:

      goto LABEL_27;
    }

    v16 = [v7 supportsDisplayingSelectedColor];

    if (v16)
    {
      v4 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
      v8 = [v4 tool];
      v9 = [v8 inkingTool];
      v10 = [v9 ink];
      v25 = [v10 colorForUIAllowHDR:{-[PKDrawingPaletteView allowHDR](self, "allowHDR")}];
      goto LABEL_15;
    }
  }

  v25 = 0;
LABEL_17:
  v17 = [(PKDrawingPaletteView *)self contentView];
  v18 = [v17 colorPickerView];
  [v18 setSelectedColor:v25];

  v19 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  v20 = [v19 configuration];
  v21 = v20;
  if (v20)
  {
    if (*(v20 + 18) == 1)
    {
      v22 = *(v20 + 19);
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = [(PKDrawingPaletteView *)self contentView];
  v24 = [v23 colorPickerView];
  [v24 setSupportsAlpha:v22 & 1];
}

- (id)_selectedToolViewInToolPicker
{
  v2 = [(PKDrawingPaletteView *)self contentView];
  v3 = [v2 toolPickerView];
  v4 = [v3 selectedToolView];

  return v4;
}

- (BOOL)_isPaletteContentViewHidden
{
  v2 = [(PKDrawingPaletteView *)self contentView];
  v3 = [v2 toolPickerView];
  v4 = [v3 isHidden];

  return v4;
}

- (void)_updateToolPreviewPositionForEdge:(unint64_t)a3
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  if (v5 && [(PKPaletteView *)self isToolPreviewInstalled])
  {
    v6 = MEMORY[0x1E696ACD8];
    v7 = [(PKPaletteView *)self toolPreviewCenterXConstraint];
    v29[0] = v7;
    v8 = [(PKPaletteView *)self toolPreviewCenterYConstraint];
    v29[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [v6 deactivateConstraints:v9];

    if (a3 == 8 || a3 == 2)
    {
      v10 = [(PKPaletteView *)self toolPreview];
      v11 = [v10 centerXAnchor];
      v12 = [(PKPaletteView *)self containerView];
      v13 = [v12 centerXAnchor];
      v14 = [v11 constraintEqualToAnchor:v13];
      [(PKPaletteView *)self setToolPreviewCenterXConstraint:v14];

      v15 = [(PKPaletteView *)self toolPreview];
      v16 = [v15 centerYAnchor];
      v17 = [v5 centerYAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [(PKPaletteView *)self setToolPreviewCenterYConstraint:v18];
    }

    else
    {
      v19 = [(PKPaletteView *)self toolPreview];
      v20 = [v19 centerXAnchor];
      v21 = [v5 centerXAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      [(PKPaletteView *)self setToolPreviewCenterXConstraint:v22];

      v15 = [(PKPaletteView *)self toolPreview];
      v16 = [v15 centerYAnchor];
      v17 = [(PKPaletteView *)self containerView];
      v18 = [v17 centerYAnchor];
      v23 = [v16 constraintEqualToAnchor:v18];
      [(PKPaletteView *)self setToolPreviewCenterYConstraint:v23];
    }

    v24 = MEMORY[0x1E696ACD8];
    v25 = [(PKPaletteView *)self toolPreviewCenterXConstraint];
    v28[0] = v25;
    v26 = [(PKPaletteView *)self toolPreviewCenterYConstraint];
    v28[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    [v24 activateConstraints:v27];
  }
}

- (void)_updateToolPreviewContentsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  v8 = [v5 tool];

  v6 = [(PKPaletteView *)self toolPreview];
  [v6 showPreviewForTool:v8 animated:v3];

  v7 = [(PKPaletteView *)self toolPreview];
  [v7 setEdgeLocation:4];
}

- (void)undoRedoViewDidTapUndo:(id)a3
{
  v4 = [(PKDrawingPaletteView *)self undoManager];
  [v4 undo];

  [(PKDrawingPaletteView *)self setNeedsLayout];

  +[PKTextInputUtilities markAnalyticsForUndo];
}

- (void)undoRedoViewDidTapRedo:(id)a3
{
  v4 = [(PKDrawingPaletteView *)self undoManager];
  [v4 redo];

  [(PKDrawingPaletteView *)self setNeedsLayout];

  +[PKTextInputUtilities markAnalyticsForRedo];
}

- (UIWindowScene)windowScene
{
  v2 = [(PKDrawingPaletteView *)self window];
  v3 = [v2 windowScene];

  return v3;
}

- (void)windowFirstResponderController:(id)a3 didChangeFirstResponder:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [v6 _responderWindow];
  v8 = [v7 windowScene];
  v9 = [(PKDrawingPaletteView *)self window];
  v10 = [v9 windowScene];

  if (v8 != v10)
  {
    goto LABEL_9;
  }

  v11 = [v21 firstResponder];
  v12 = [v11 isNotesHandwritingResponder];

  if (v12)
  {
    [(PKDrawingPaletteView *)self _updateHandwritingAssistantItemsFromResponder:v6];
    v13 = [(PKDrawingPaletteView *)self contentView];
    [v13 paletteViewStateDidChangeEnableKeyboardButtons:self];

    v14 = [(PKPaletteView *)self internalDelegate];
    [v14 paletteViewStateDidChangeEnableKeyboardButtons:self];
  }

  else
  {
    v15 = [(PKDrawingPaletteView *)self selectedTool];
    v16 = [v15 ink];
    v17 = [v16 _isHandwritingInk];

    if (v17)
    {
      goto LABEL_7;
    }

    v14 = [(PKDrawingPaletteView *)self floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)v14 dismissWithReason:?];
  }

LABEL_7:
  v18 = [(PKPaletteView *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(PKPaletteView *)self delegate];
    [v20 paletteViewFirstResponderDidUpdate:self];
  }

LABEL_9:
}

- (PKTextInputWindowFirstResponder)windowFirstResponder
{
  v2 = [(PKDrawingPaletteView *)self firstResponderController];
  v3 = [v2 firstResponder];

  return v3;
}

- (void)floatingKeyboardControllerWillShow:(id)a3
{
  v3 = [(PKDrawingPaletteView *)self firstResponderController];
  [v3 setPaletteFloatingMode:1];
}

- (void)floatingKeyboardControllerWillHide:(id)a3
{
  v3 = [(PKDrawingPaletteView *)self firstResponderController];
  [v3 setPaletteFloatingMode:0];
}

- (void)floatingKeyboardController:(id)a3 didChangeKeyboardType:(int64_t)a4
{
  v5 = [(PKDrawingPaletteView *)self contentView:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PKDrawingPaletteView *)self contentView];
    [v7 paletteViewStateDidChangeFloatingKeyboardType:self];
  }
}

- (BOOL)toolPicker:(id)a3 canSelectTool:(id)a4 fromTap:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [v7 tool];
  v9 = [v8 isRulerTool];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(PKDrawingPaletteView *)self _hostingWindow];
    if (v5)
    {
      v12 = [v7 tool];
      v10 = 1;
      if ([v12 isGenerationTool] && v11)
      {
        v13 = +[PKGenerationModelAvailabilityController sharedInstance];
        v14 = [v13 presentGreymatterAvailabilityAlertControllerInWindow:v11];

        v10 = v14 ^ 1;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

- (void)toolPicker:(id)a3 didSelectTool:(id)a4 atIndex:(unint64_t)a5
{
  v7 = [(PKDrawingPaletteView *)self contentView:a3];
  v8 = [v7 colorPickerView];
  [v8 reloadColorsForCurrentColorPickerMode];

  [(PKDrawingPaletteView *)self _selectToolAtIndex:a5 updateUI:1 notifyDelegate:1];
}

- (void)toolPickerDidToggleRulerTool:(id)a3
{
  v4 = [(PKPaletteView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PKPaletteView *)self delegate];
    [v6 paletteViewDidToggleRuler:self];
  }
}

- (void)toolPickerViewDidChangeTraitCollectionSizeClass:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__PKDrawingPaletteView_toolPickerViewDidChangeTraitCollectionSizeClass___block_invoke;
  v3[3] = &unk_1E82D69B8;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __72__PKDrawingPaletteView_toolPickerViewDidChangeTraitCollectionSizeClass___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateUI];
}

- (double)toolPickerView:(id)a3 widthForToolAtIndex:(int64_t)a4 isCompactSize:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(PKDrawingPaletteView *)self contentView];
  [v9 toolPickerView:v8 widthForToolAtIndex:a4 isCompactSize:v5];
  v11 = v10;

  return v11;
}

- (CGRect)toolPickerViewSourceRectForPopoverPresentation:(id)a3 fromCorner:(unint64_t)a4
{
  [(PKDrawingPaletteView *)self bounds:a3];

  return CGRectInset(*&v4, 0.0, -5.0);
}

- (void)colorPickerDidChangeSelectedColor:(id)a3 isFromExtendedColorPicker:(BOOL)a4 isContinuousColorSelection:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [a3 selectedColor];
  if (v8)
  {
    v9 = v8;
    [(PKDrawingPaletteView *)self _setSelectedColor:v8 isFromExtendedColorPicker:v6 isContinuousColorSelection:v5];
    v8 = v9;
  }
}

- (void)_setSelectedColor:(id)a3 isFromExtendedColorPicker:(BOOL)a4 isContinuousColorSelection:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v22 = a3;
  v8 = [(PKPaletteView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(PKPaletteView *)self delegate];
    v10 = [v9 paletteView:self shouldChangeSelectedToolColor:v22];

    if (!v10)
    {
      v11 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (![(PKDrawingPaletteView *)self isEditingStrokeSelection])
  {
    [(PKDrawingPaletteView *)self _setSelectedToolColor:v22 ignoreColorOpacity:!v6 isContinuousColorSelection:v5];
  }

  v12 = [(PKDrawingPaletteView *)self selectedTool];
  v13 = [v12 _isLassoTool];

  if (v13)
  {
    editingStrokeSelection = self->_editingStrokeSelection;
    v15 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
    [v15 setSupportsDisplayingSelectedColor:editingStrokeSelection];

    [(PKDrawingPaletteView *)self _setSelectedToolColor:v22 ignoreColorOpacity:!v6 isContinuousColorSelection:v5];
  }

  v11 = 0;
LABEL_10:
  v16 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  v17 = [v16 tool];
  if (([v17 isLassoTool] & 1) != 0 || -[PKDrawingPaletteView isEditingStrokeSelection](self, "isEditingStrokeSelection"))
  {
  }

  else
  {
    v21 = v11 | [(PKDrawingPaletteView *)self isEditingExternalElementsSelection];

    if (v21 != 1)
    {
      goto LABEL_16;
    }
  }

  v18 = [(PKPaletteView *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(PKPaletteView *)self delegate];
    [v20 paletteView:self didChangeColor:v22];
  }

LABEL_16:
  [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
  [(PKDrawingPaletteView *)self _updateToolPreviewContentsAnimated:0];
}

- (BOOL)colorPickerShouldDisplayColorSelection:(id)a3
{
  v3 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  v4 = [v3 supportsDisplayingSelectedColor];

  return v4;
}

- (void)_reloadImageForToolItem:(id)a3
{
  v20 = a3;
  v4 = [(NSArray *)self->_tools count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [(NSArray *)self->_tools objectAtIndexedSubscript:v6];
      v8 = [v7 _toolPickerItemIdentifier];
      v9 = [v20 identifier];
      v10 = [v8 isEqualToString:v9];

      if (v10)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    v11 = [(PKDrawingPaletteView *)self contentView];
    v12 = [v11 toolPickerView];
    v13 = [v12 toolViews];
    v14 = [v13 objectAtIndexedSubscript:v6];
    [v14 _setToolImageNeedsReload];
  }

LABEL_7:
  v15 = [(PKPaletteView *)self toolPreview];
  v16 = [v15 itemIdentifier];
  v17 = [v20 identifier];
  v18 = [v16 isEqualToString:v17];

  if (v18)
  {
    v19 = [(PKPaletteView *)self toolPreview];
    [v19 setToolImageNeedsReload];
  }
}

- (void)hostView:(id)a3 willDockPaletteToPosition:(int64_t)a4 prepareForExpansion:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v8 hostView:a3 willDockPaletteToPosition:a4 prepareForExpansion:a5];
  v6 = [(PKDrawingPaletteView *)self contentView];
  v7 = [v6 toolPickerView];
  [v7 updateClippingViewEdgesVisibility];
}

- (void)hostView:(id)a3 didDockPaletteToPosition:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v5 hostView:a3 didDockPaletteToPosition:a4];
  [(PKPaletteView *)self _saveOptions];
}

- (void)_willDockPaletteToEdge:(unint64_t)a3 prepareForExpansion:(BOOL)a4 isPaletteChangingOrientation:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PKDrawingPaletteView;
  [PKPaletteView _willDockPaletteToEdge:sel__willDockPaletteToEdge_prepareForExpansion_isPaletteChangingOrientation_ prepareForExpansion:? isPaletteChangingOrientation:?];
  v9 = [(PKDrawingPaletteView *)self contentView];
  [v9 setEdgeLocation:a3];

  v10 = [(PKDrawingPaletteView *)self contentView];
  [v10 setCornerLocation:-1];

  [(PKDrawingPaletteView *)self setNeedsLayout];
  [(PKDrawingPaletteView *)self layoutIfNeeded];
  if (v6)
  {
    if (v5)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __96__PKDrawingPaletteView__willDockPaletteToEdge_prepareForExpansion_isPaletteChangingOrientation___block_invoke;
      v11[3] = &unk_1E82D7170;
      v11[4] = self;
      v11[5] = a3;
      [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v11];
    }

    else
    {
      [(PKDrawingPaletteView *)self _centerPaletteContainerSubviewToCurrentlySelectedToolForEdge:a3 needsContainerViewLayout:0];
      [(PKDrawingPaletteView *)self _updateToolPreviewPositionForEdge:a3];
      [(PKDrawingPaletteView *)self _updateToolPreviewContentsAnimated:0];
    }
  }
}

uint64_t __96__PKDrawingPaletteView__willDockPaletteToEdge_prepareForExpansion_isPaletteChangingOrientation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _centerPaletteContainerSubviewToCurrentlySelectedToolForEdge:*(a1 + 40) needsContainerViewLayout:0];
  [*(a1 + 32) _updateToolPreviewPositionForEdge:*(a1 + 40)];
  [*(a1 + 32) _updateToolPreviewContentsAnimated:0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_willDockPaletteToCorner:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v8 _willDockPaletteToCorner:?];
  v5 = [(PKDrawingPaletteView *)self contentView];
  [v5 dismissPalettePopoverWithCompletion:0];

  [(PKDrawingPaletteView *)self _updateToolPreviewPositionForEdge:[(PKPaletteView *)self lastPaletteEdgePositionWhileDragging]];
  [(PKDrawingPaletteView *)self _updateToolPreviewContentsAnimated:0];
  v6 = [(PKDrawingPaletteView *)self contentView];
  [v6 setCornerLocation:a3];

  v7 = [(PKDrawingPaletteView *)self contentView];
  [v7 setEdgeLocation:15];
}

- (void)_centerPaletteContainerSubviewToCurrentlySelectedToolForEdge:(unint64_t)a3 needsContainerViewLayout:(BOOL)a4
{
  v4 = a4;
  v28 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  if (v28 && v4)
  {
    v7 = [(PKPaletteView *)self containerView];
    [v7 layoutIfNeeded];
  }

  else if (!v28)
  {
    goto LABEL_10;
  }

  v8 = [(PKDrawingPaletteView *)self contentView];
  v9 = [v8 toolPickerView];
  [v9 scrollSelectedToolViewToVisibleAnimated:0];

  v10 = [(PKPaletteView *)self containerView];
  [v28 center];
  v12 = v11;
  v14 = v13;
  v15 = [v28 superview];
  [v10 convertPoint:v15 fromView:{v12, v14}];
  v17 = v16;
  v19 = v18;

  [(PKDrawingPaletteView *)self paletteSizeForEdge:a3];
  if (a3 == 8 || a3 == 2)
  {
    v22 = v21 * 0.5 - v19;
    v23 = [(PKPaletteView *)self paletteContainerCenterYConstraint];
    [v23 setConstant:v22];

    v24 = [(PKPaletteView *)self paletteContainerCenterXConstraint];
  }

  else
  {
    v25 = v20 * 0.5 - v17;
    v26 = [(PKPaletteView *)self paletteContainerCenterXConstraint];
    [v26 setConstant:v25];

    v24 = [(PKPaletteView *)self paletteContainerCenterYConstraint];
  }

  v27 = v24;
  [v24 setConstant:0.0];

LABEL_10:
}

- (void)toolPreviewDidChangeToolColor:(id)a3 isContinuousColorSelection:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 toolColor];
  if (v6)
  {
    v7 = v6;
    [(PKDrawingPaletteView *)self _setSelectedToolColor:v6 ignoreColorOpacity:0 isContinuousColorSelection:v4];
    [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
    v6 = v7;
  }
}

- (void)_didTapPlusButton:(id)a3
{
  v6 = a3;
  v4 = [(PKDrawingPaletteView *)self plusButtonViewController];

  if (v4)
  {
    v5 = [(PKDrawingPaletteView *)self plusButtonViewController];
    [(PKDrawingPaletteView *)self _presentViewController:v5 asPopoverFromView:v6];
  }

  else
  {
    v5 = [(PKDrawingPaletteView *)self annotationDelegate];
    [v5 paletteViewDidSelectPlusButton:self];
  }
}

- (void)_didTapTextButton:(id)a3
{
  v4 = a3;
  v5 = [(PKDrawingPaletteView *)self textButtonViewController];
  [(PKDrawingPaletteView *)self _presentViewController:v5 asPopoverFromView:v4];
}

- (void)_didTapShapeButton:(id)a3
{
  v4 = a3;
  v5 = [(PKDrawingPaletteView *)self shapeButtonViewController];
  [(PKDrawingPaletteView *)self _presentViewController:v5 asPopoverFromView:v4];
}

- (void)_presentViewController:(id)a3 asPopoverFromItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = [v7 valueForKey:@"view"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  if (!v8)
  {
LABEL_7:
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PKDrawingPaletteView__presentViewController_asPopoverFromItem___block_invoke_2;
    v10[3] = &unk_1E82DC9E8;
    v11 = v7;
    [(PKDrawingPaletteView *)self _presentViewController:v6 configurationBlock:v10];
    v9 = v11;
    goto LABEL_8;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PKDrawingPaletteView__presentViewController_asPopoverFromItem___block_invoke;
  v12[3] = &unk_1E82DC9C0;
  v12[4] = self;
  v13 = v8;
  v9 = v8;
  [(PKDrawingPaletteView *)self _presentViewController:v6 configurationBlock:v12];

LABEL_8:
}

void __65__PKDrawingPaletteView__presentViewController_asPopoverFromItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) sourceRectForPopoverPresentationForSourceView:*(a1 + 40)];
  [v3 setSourceRect:?];
  [v3 setSourceView:*(a1 + 40)];
  if (_UISolariumEnabled())
  {
    [v3 _setShouldHideArrow:1];
  }
}

- (void)_presentViewController:(void *)a3 configurationBlock:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v7 = [a1 palettePopoverPresentingController];
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v7;
    v9 = v5;
    if ([v9 isBeingPresented])
    {

      goto LABEL_7;
    }

    v10 = [v9 isBeingDismissed];

    if (v10)
    {
LABEL_7:
      v11 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v5;
        _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Can't present view controller: %@", &v24, 0xCu);
      }

      goto LABEL_9;
    }

    [v9 setModalPresentationStyle:7];
    v12 = [v9 popoverPresentationController];
    v6[2](v6, v12);

    v13 = [v9 popoverPresentationController];
    [v13 setDelegate:a1];

    v14 = [a1 traitCollection];
    v15 = [a1 window];
    v16 = [v15 windowScene];
    if (PKUseCompactSize(v14, v16))
    {
      v17 = 2;
    }

    else
    {
      v18 = [a1 palettePosition] - 1;
      if (v18 > 7)
      {
        v17 = 15;
      }

      else
      {
        v17 = qword_1C801F580[v18];
      }
    }

    v19 = [v9 popoverPresentationController];
    [v19 setPermittedArrowDirections:v17];

    v20 = [v9 popoverPresentationController];
    [v20 _setShouldDisableInteractionDuringTransitions:0];

    v21 = [a1 palettePopoverPassthroughViews];
    v22 = [v9 popoverPresentationController];
    [v22 setPassthroughViews:v21];

    v23 = [v9 popoverPresentationController];
    [v23 _setIgnoresKeyboardNotifications:1];

    [a1 updatePalettePopover:v9];
    if ([a1 shouldPalettePresentPopover] && (objc_msgSend(a1, "isPalettePresentingPopover") & 1) == 0)
    {
      [a1 setPresentedPopoverViewController:v9];
      v11 = [a1 palettePopoverPresentingController];
      [v11 presentViewController:v9 animated:1 completion:0];
LABEL_9:
    }
  }
}

- (void)_presentViewController:(id)a3 asPopoverFromView:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PKDrawingPaletteView__presentViewController_asPopoverFromView___block_invoke;
  v8[3] = &unk_1E82DC9C0;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [(PKDrawingPaletteView *)self _presentViewController:a3 configurationBlock:v8];
}

void __65__PKDrawingPaletteView__presentViewController_asPopoverFromView___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  [*(a1 + 32) bounds];
  v14 = CGRectInset(v13, -5.0, -5.0);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (_UISolariumEnabled())
  {
    [*(a1 + 40) sourceRectForPopoverPresentationForSourceView:*(a1 + 32)];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
    [v11 _setShouldHideArrow:1];
  }

  [v11 setSourceRect:{x, y, width, height}];
  [v11 setSourceView:*(a1 + 32)];
}

- (void)additionalOptionsViewDidPressTapToRadarButton:(id)a3
{
  v3 = [(PKDrawingPaletteView *)self tapToRadarCommand];
  [v3 execute];
}

- (id)keyboardSelectionMenuForAdditionalOptionsView:(id)a3
{
  v3 = [(PKDrawingPaletteView *)self floatingKeyboardController];
  v4 = [(PKPaletteFloatingKeyboardController *)v3 keyboardSelectionMenu];

  return v4;
}

- (void)_presentOrDismissFloatingKeyboard
{
  v2 = [(PKDrawingPaletteView *)self floatingKeyboardController];
  [(PKPaletteFloatingKeyboardController *)v2 presentOrDismissIfPresented];
}

- (id)keyboardSelectionMenuForContentView:(id)a3
{
  v3 = [(PKDrawingPaletteView *)self floatingKeyboardController];
  v4 = [(PKPaletteFloatingKeyboardController *)v3 keyboardSelectionMenu];

  return v4;
}

- (void)contentViewDidResize:(id)a3
{
  v4 = [(PKPaletteView *)self internalDelegate];
  [v4 paletteViewStateDidChange:self];

  v5 = [(PKPaletteView *)self delegate];
  [v5 paletteViewContentSizeDidChange:self];
}

- (void)contentViewDidSelectCloseButton:(id)a3
{
  v4 = [(PKPaletteView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PKPaletteView *)self delegate];
    [v6 paletteViewDidTapCloseButton:self];
  }
}

- (void)_performPencilInteraction:(id)a3 preferredAction:(int64_t)a4
{
  v6 = [(PKDrawingPaletteView *)self windowScene];

  if (v6)
  {
    v7 = [(PKDrawingPaletteView *)self windowScene];
    v8 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:v7];
    v9 = [v8 _paletteViewVisible];

    if (v9)
    {
      v10 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v57 = 0;
        v11 = "Ignore pencil interaction";
        v12 = &v57;
LABEL_13:
        _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
        goto LABEL_54;
      }

      goto LABEL_54;
    }
  }

  v13 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Received pencil interaction", buf, 2u);
  }

  if (![(PKDrawingPaletteView *)self _canHandlePencilInteraction])
  {
    v10 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v55 = 0;
      v11 = "Can't handle pencil interaction.";
      v12 = v55;
      goto LABEL_13;
    }

LABEL_54:

    return;
  }

  v14 = [(PKPaletteView *)self hoverDelegate];
  [v14 paletteViewPencilDidTap:self];

  if ([(PKPaletteView *)self isVisible]&& ([(PKPaletteView *)self palettePosition]- 1) <= 3)
  {
    v14 = [(PKPaletteView *)self paletteViewHosting];
    v15 = [v14 tooltipPresentationHandle];
    v16 = 1;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v17 = [(PKDrawingPaletteView *)self contentView];
  v18 = [v17 toolPickerView];
  [v18 setTooltipPresentationHandle:v15];

  if (v16)
  {
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      [(PKDrawingPaletteView *)self _performPencilPreferredActionShowColorPalette];
    }

    else
    {
      if (a4 != 4)
      {
LABEL_24:
        v19 = os_log_create("com.apple.pencilkit", "PKPalette");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v54 = 0;
          _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "Ignore Pencil interaction", v54, 2u);
        }

        goto LABEL_44;
      }

      [(PKDrawingPaletteView *)self _performPencilPreferredActionShowInkAttributes];
    }

LABEL_44:
    v42 = 0;
    goto LABEL_51;
  }

  if (a4 == 1)
  {
    [(PKDrawingPaletteView *)self _performPencilPreferredActionSwitchEraser];
    goto LABEL_28;
  }

  if (a4 != 2)
  {
    goto LABEL_24;
  }

  [(PKDrawingPaletteView *)self _performPencilPreferredActionSwitchPrevious];
LABEL_28:
  v20 = [(PKPaletteView *)self paletteViewHosting];
  v21 = [v20 hostingView];

  v22 = [(PKDrawingPaletteView *)self selectedToolView];
  v23 = [v22 toolName];

  v24 = [(PKPaletteView *)self hoverDelegate];
  [v24 paletteViewPencilDidTap:self];

  v25 = [(PKPaletteView *)self _paletteViewHoverView];
  if (v25)
  {
    v26 = v21 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  if (!v26)
  {
    [(PKPaletteView *)self _paletteViewHoverLocation];
    v28 = *MEMORY[0x1E695F060];
    v29 = *(MEMORY[0x1E695F060] + 8);
    v32 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v25, v21, v30, v31, *MEMORY[0x1E695F060], v29);
    v34 = v33;
    v35 = [(PKPaletteView *)self paletteViewHosting];
    v36 = [v35 tooltipPresentationHandle];
    v37 = [(PKDrawingPaletteView *)self traitCollection];
    [v36 showWithText:v23 fromView:v21 rect:4 atEdge:v37 offset:v32 traitCollection:{v34, v28, v29, 28.0}];
  }

  v38 = [(PKPaletteView *)self hoverDelegate];
  [v38 paletteViewHoverDidSwitchToolsViaPencilInteraction:self];

  if ((v27 & 1) == 0 && v21 && [(PKPaletteView *)self isVisible]&& ([(PKPaletteView *)self palettePosition]- 5) <= 3)
  {
    v39 = [(PKPaletteView *)self palettePosition]- 1;
    v40 = [(PKPaletteView *)self palettePosition];
    if (v39 > 3)
    {
      if ((v40 - 5) >= 2)
      {
        [(PKPaletteView *)self palettePosition];
        v41 = 4;
      }

      else
      {
        v41 = 1;
      }
    }

    else if ((v40 - 1) >= 4)
    {
      v41 = 0;
    }

    else
    {
      v41 = qword_1C801F5C0[v40 - 1];
    }

    v43 = [(PKPaletteView *)self paletteViewHosting];
    v44 = [v43 tooltipPresentationHandle];
    [(PKDrawingPaletteView *)self bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = [(PKDrawingPaletteView *)self traitCollection];
    [v44 showWithText:v23 fromView:self rect:v41 atEdge:v53 offset:v46 traitCollection:{v48, v50, v52, 10.0}];
  }

  v42 = 1;
LABEL_51:
  if (![(PKPaletteView *)self isVisible]&& (v42 & [(PKDrawingPaletteView *)self isPencilInteractionEnabledWhenNotVisible]) == 1)
  {
    v10 = [(PKPaletteView *)self internalDelegate];
    [v10 paletteViewShowFeedbackForToolChange:self];
    goto LABEL_54;
  }
}

- (void)pencilInteractionDidTap:(id)a3
{
  v8 = a3;
  v4 = +[PKStatisticsManager sharedStatisticsManager];
  [MEMORY[0x1E69DCD58] preferredTapAction];
  [PKStatisticsManager recordPencilAction:v4 doubleTap:?];

  v5 = [(PKPaletteView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PKPaletteView *)self delegate];
    [v7 paletteView:self didReceivePencilInteractionDidTap:v8];
  }

  -[PKDrawingPaletteView _performPencilInteraction:preferredAction:](self, "_performPencilInteraction:preferredAction:", v8, [MEMORY[0x1E69DCD58] preferredTapAction]);
}

- (void)_pencilInteraction:(id)a3 didReceiveSqueeze:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (_os_feature_enabled_impl() && ![v6 _phase])
  {
    v7 = +[PKStatisticsManager sharedStatisticsManager];
    [MEMORY[0x1E69DCD58] preferredSqueezeAction];
    [PKStatisticsManager recordPencilAction:v7 doubleTap:?];

    -[PKDrawingPaletteView _performPencilInteraction:preferredAction:](self, "_performPencilInteraction:preferredAction:", v8, [MEMORY[0x1E69DCD58] preferredSqueezeAction]);
  }
}

- (void)_performPencilPreferredActionSwitchEraser
{
  v3 = [(PKDrawingPaletteView *)self _canHandlePencilInteraction];
  v4 = os_log_create("com.apple.pencilkit", "PKPalette");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Switch to or from eraser tool", v8, 2u);
    }

    [(PKDrawingPaletteView *)self dismissContextMenu];
    [(PKDrawingPaletteView *)self dismissPalettePopoverWithCompletion:0];
    v6 = ([(PKPaletteView *)self palettePosition]- 9) < 0xFFFFFFFFFFFFFFFCLL;
    v4 = [(PKDrawingPaletteView *)self contentView];
    v7 = [v4 toolPickerView];
    [v7 toggleSelectedToolAndEraserAnimated:v6];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Can't handle pencil interaction.", buf, 2u);
  }
}

- (void)_performPencilPreferredActionSwitchPrevious
{
  v3 = [(PKDrawingPaletteView *)self _canHandlePencilInteraction];
  v4 = os_log_create("com.apple.pencilkit", "PKPalette");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Switch to previous tool", v8, 2u);
    }

    [(PKDrawingPaletteView *)self dismissContextMenu];
    [(PKDrawingPaletteView *)self dismissPalettePopoverWithCompletion:0];
    v6 = ([(PKPaletteView *)self palettePosition]- 9) < 0xFFFFFFFFFFFFFFFCLL;
    v4 = [(PKDrawingPaletteView *)self contentView];
    v7 = [v4 toolPickerView];
    [v7 toggleSelectedToolAndLastSelectedToolAnimated:v6];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Can't handle pencil interaction.", buf, 2u);
  }
}

- (void)_performPencilPreferredActionShowColorPalette
{
  v3 = [(PKDrawingPaletteView *)self _canHandlePencilInteraction];
  v4 = os_log_create("com.apple.pencilkit", "PKPalette");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Show color palette", buf, 2u);
    }

    [(PKDrawingPaletteView *)self dismissContextMenu];
    if (([(PKPaletteView *)self palettePosition]- 5) <= 3)
    {
      v6 = [(PKPaletteView *)self toolPreview];
      [v6 toggleColorSelectionPopover];

      return;
    }

    v4 = [(PKDrawingPaletteView *)self contentView];
    v7[4] = self;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__PKDrawingPaletteView__performPencilPreferredActionShowColorPalette__block_invoke;
    v8[3] = &unk_1E82DCA10;
    v8[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__PKDrawingPaletteView__performPencilPreferredActionShowColorPalette__block_invoke_2;
    v7[3] = &unk_1E82D7148;
    [v4 _dismissPalettePopoverUsingConfirmationBlock:v8 completion:v7];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Can't handle pencil interaction.", buf, 2u);
  }
}

BOOL __69__PKDrawingPaletteView__performPencilPreferredActionShowColorPalette__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 contentView];
  v5 = [v4 colorPickerView];

  return v5 != v3;
}

void __69__PKDrawingPaletteView__performPencilPreferredActionShowColorPalette__block_invoke_2(uint64_t a1)
{
  if (![*(a1 + 32) showsLassoToolEditingView] || (objc_msgSend(*(a1 + 32), "delegate"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_opt_respondsToSelector(), v2, (v3 & 1) == 0) || (objc_msgSend(*(a1 + 32), "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "toggleLassoToolEditingViewColorPickerForPaletteView:", *(a1 + 32)), v4, (v5 & 1) == 0))
  {
    v6 = [*(a1 + 32) contentView];
    [v6 toggleColorSelectionPopover];
  }
}

- (void)_performPencilPreferredActionShowInkAttributes
{
  v3 = [(PKDrawingPaletteView *)self _canHandlePencilInteraction];
  v4 = os_log_create("com.apple.pencilkit", "PKPalette");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Show ink attributes", buf, 2u);
    }

    [(PKDrawingPaletteView *)self dismissContextMenu];
    v4 = [(PKDrawingPaletteView *)self contentView];
    v6 = [v4 colorPickerView];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PKDrawingPaletteView__performPencilPreferredActionShowInkAttributes__block_invoke;
    v7[3] = &unk_1E82D7148;
    v7[4] = self;
    [v6 dismissPalettePopoverWithCompletion:v7];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEFAULT, "Can't handle pencil interaction.", buf, 2u);
  }
}

void __70__PKDrawingPaletteView__performPencilPreferredActionShowInkAttributes__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _paletteViewHoverView];

  if (v2)
  {
    [*(a1 + 32) palettePopoverSourceRectToPresentViewController:0];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v13 = [*(a1 + 32) palettePopoverSourceView];
  }

  else
  {
    v13 = 0;
    v4 = *MEMORY[0x1E695F050];
    v6 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v10 = *(MEMORY[0x1E695F050] + 24);
  }

  v11 = [*(a1 + 32) contentView];
  v12 = [v11 toolPickerView];
  [v12 toggleSelectedToolAttributesPopoverFromRect:v13 inView:{v4, v6, v8, v10}];
}

- (BOOL)_canHandlePencilInteraction
{
  v2 = self;
  if ([(PKPaletteView *)self isVisible])
  {
    v3 = [(PKPaletteView *)v2 paletteViewHosting];
    LODWORD(v2) = [v3 isPaletteDragging] ^ 1;
  }

  else
  {
    if (![(PKDrawingPaletteView *)v2 isPencilInteractionEnabledWhenNotVisible]|| ([(PKPaletteView *)v2 delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) == 0))
    {
      LOBYTE(v2) = 0;
      return v2;
    }

    v3 = [(PKPaletteView *)v2 delegate];
    LOBYTE(v2) = [v3 shouldHandlePencilInteractionWhenNotVisible:v2];
  }

  return v2;
}

- (void)configureForDockedAtCorner
{
  v3.receiver = self;
  v3.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v3 configureForDockedAtCorner];
  [(PKDrawingPaletteView *)self _centerPaletteContainerSubviewToCurrentlySelectedToolForEdge:[(PKPaletteView *)self lastPaletteEdgePositionWhileDragging] needsContainerViewLayout:0];
  [(PKDrawingPaletteView *)self _updateToolPreviewPositionForEdge:[(PKPaletteView *)self lastPaletteEdgePositionWhileDragging]];
  [(PKDrawingPaletteView *)self _updateToolPreviewContentsAnimated:0];
}

- (void)configureForDockedAtEdge:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v6 configureForDockedAtEdge:a3];
  v4 = [(PKPaletteView *)self paletteContainerCenterXConstraint];
  [v4 setConstant:0.0];

  v5 = [(PKPaletteView *)self paletteContainerCenterYConstraint];
  [v5 setConstant:0.0];
}

- (void)willStartAppearanceAnimation:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v14 willStartAppearanceAnimation:a3];
  [(PKDrawingPaletteView *)self _updateKeyboardSceneDelegateInputAssistantSupressionState];
  v4 = [(PKDrawingPaletteView *)self contentView];
  [v4 paletteViewStateDidChangeIsVisible:self];

  if (([(PKPaletteView *)self palettePosition]- 5) <= 3)
  {
    [(PKDrawingPaletteView *)self configureForDockedAtCorner];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v5 = [(PKDrawingPaletteView *)self contentView];
    v6 = [v5 layer];
    [v6 setShouldRasterize:1];
  }

  v7 = [(PKDrawingPaletteView *)self contentView];
  v8 = [v7 layer];
  [v8 setPreloadsCache:1];

  v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v9 scale];
  v11 = v10;
  v12 = [(PKDrawingPaletteView *)self contentView];
  v13 = [v12 layer];
  [v13 setRasterizationScale:v11];
}

- (void)didEndAppearanceAnimation
{
  v9.receiver = self;
  v9.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v9 didEndAppearanceAnimation];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKDrawingPaletteView *)self contentView];
    v4 = [v3 layer];
    [v4 setShouldRasterize:0];
  }

  v5 = [(PKDrawingPaletteView *)self contentView];
  v6 = [v5 layer];
  [v6 setPreloadsCache:0];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PKDrawingPaletteView_didEndAppearanceAnimation__block_invoke;
  block[3] = &unk_1E82D7148;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (![(PKPaletteView *)self isVisible])
  {
    v7 = [(PKDrawingPaletteView *)self floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)v7 dismissWithReason:?];

    [(PKDrawingPaletteView *)self setSelectedAnnotationType:0];
  }
}

uint64_t __49__PKDrawingPaletteView_didEndAppearanceAnimation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateKeyboardSceneDelegateInputAssistantSupressionState];
  v2 = *(a1 + 32);

  return [v2 updateHandwritingAssistantItems];
}

- (void)startOpacityEditing
{
  v36[4] = *MEMORY[0x1E69E9840];
  if (![(PKDrawingPaletteView *)self isEditingOpacity])
  {
    v3 = [(PKDrawingPaletteView *)self opacityEditingView];

    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      opacityEditingView = self->_opacityEditingView;
      self->_opacityEditingView = v4;

      v6 = [(PKDrawingPaletteView *)self opacityEditingView];
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

      v7 = [(PKDrawingPaletteView *)self opacityEditingView];
      [(PKDrawingPaletteView *)self addSubview:v7];

      v8 = [(PKDrawingPaletteView *)self opacityEditingView];
      [v8 setAlpha:0.0];

      v19 = MEMORY[0x1E696ACD8];
      v31 = [(PKDrawingPaletteView *)self opacityEditingView];
      v29 = [v31 bottomAnchor];
      v30 = [(PKPaletteView *)self containerView];
      v28 = [v30 bottomAnchor];
      v27 = [v29 constraintEqualToAnchor:v28];
      v36[0] = v27;
      v26 = [(PKDrawingPaletteView *)self opacityEditingView];
      v24 = [v26 leftAnchor];
      v25 = [(PKPaletteView *)self containerView];
      v23 = [v25 leftAnchor];
      v22 = [v24 constraintEqualToAnchor:v23];
      v36[1] = v22;
      v21 = [(PKDrawingPaletteView *)self opacityEditingView];
      v20 = [v21 rightAnchor];
      v9 = [(PKPaletteView *)self containerView];
      v10 = [v9 rightAnchor];
      v11 = [v20 constraintEqualToAnchor:v10];
      v36[2] = v11;
      v12 = [(PKDrawingPaletteView *)self opacityEditingView];
      v13 = [v12 topAnchor];
      v14 = [(PKPaletteView *)self containerView];
      v15 = [v14 topAnchor];
      v16 = [v13 constraintEqualToAnchor:v15];
      v36[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
      [v19 activateConstraints:v17];
    }

    objc_initWeak(&location, self);
    v18 = MEMORY[0x1E69DD250];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __43__PKDrawingPaletteView_startOpacityEditing__block_invoke;
    v33[3] = &unk_1E82D69B8;
    objc_copyWeak(&v34, &location);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __43__PKDrawingPaletteView_startOpacityEditing__block_invoke_2;
    v32[3] = &unk_1E82D8F30;
    v32[4] = self;
    [v18 animateWithDuration:6 delay:v33 options:v32 animations:0.5 completion:0.0];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }
}

void __43__PKDrawingPaletteView_startOpacityEditing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained containerView];
  [v3 setAlpha:0.0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 opacityEditingView];
  [v4 setAlpha:1.0];
}

- (void)endOpacityEditing
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PKDrawingPaletteView_endOpacityEditing__block_invoke;
  v5[3] = &unk_1E82D69B8;
  objc_copyWeak(&v6, &location);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__PKDrawingPaletteView_endOpacityEditing__block_invoke_2;
  v4[3] = &unk_1E82D8F30;
  v4[4] = self;
  [v3 animateWithDuration:6 delay:v5 options:v4 animations:0.5 completion:0.0];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __41__PKDrawingPaletteView_endOpacityEditing__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained containerView];
  [v3 setAlpha:1.0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 opacityEditingView];
  [v4 setAlpha:0.0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v10 traitCollectionDidChange:v4];
  v5 = [v4 horizontalSizeClass];
  v6 = [(PKDrawingPaletteView *)self traitCollection];
  if (v5 == [v6 horizontalSizeClass])
  {
    v7 = [v4 verticalSizeClass];
    v8 = [(PKDrawingPaletteView *)self traitCollection];
    v9 = [v8 verticalSizeClass];

    if (v7 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(PKDrawingPaletteView *)self dismissPalettePopoverWithCompletion:0];
  [(PKDrawingPaletteView *)self _updateUI];
  [(PKDrawingPaletteView *)self setNeedsLayout];
  [(PKDrawingPaletteView *)self setNeedsUpdateConstraints];
LABEL_6:
}

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PKDrawingPaletteView_dismissPalettePopoverWithCompletion___block_invoke;
  v7[3] = &unk_1E82D7AE8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PKDrawingPaletteView;
  v5 = v4;
  [(PKPaletteView *)&v6 dismissPalettePopoverWithCompletion:v7];
}

void __60__PKDrawingPaletteView_dismissPalettePopoverWithCompletion___block_invoke(uint64_t a1)
{
  v2 = dispatch_group_create();
  if ([*(a1 + 32) isPalettePresentingPopover])
  {
    v3 = [*(a1 + 32) palettePopoverPresentingController];
    v4 = [v3 presentedViewController];
    v5 = [v4 isBeingDismissed];

    if ((v5 & 1) == 0)
    {
      v6 = [MEMORY[0x1E69DCBE0] activeInstance];
      v7 = objc_opt_respondsToSelector();

      if ((v7 & 1) == 0 || ([MEMORY[0x1E69DCBE0] activeInstance], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isDictationPopoverPresented"), v8, (v9 & 1) == 0))
      {
        v10 = [*(a1 + 32) palettePopoverPresentingController];
        v11 = [v10 presentedViewController];
        if (v11)
        {
          v12 = v11;
          v13 = [*(a1 + 32) palettePopoverPresentingController];
          v14 = [v13 presentedViewController];
          v15 = [v14 isBeingDismissed];

          if ((v15 & 1) == 0)
          {
            dispatch_group_enter(v2);
            objc_initWeak(&location, *(a1 + 32));
            v16 = [*(a1 + 32) palettePopoverPresentingController];
            v17 = [v16 presentedViewController];
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __60__PKDrawingPaletteView_dismissPalettePopoverWithCompletion___block_invoke_2;
            v32[3] = &unk_1E82D7010;
            v33 = v2;
            objc_copyWeak(&v34, &location);
            [v17 dismissViewControllerAnimated:1 completion:v32];

            objc_destroyWeak(&v34);
            objc_destroyWeak(&location);
          }
        }

        else
        {
        }

        v18 = [*(a1 + 32) presentedPopoverViewController];

        if (v18)
        {
          dispatch_group_enter(v2);
          objc_initWeak(&location, *(a1 + 32));
          v19 = [*(a1 + 32) presentedPopoverViewController];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __60__PKDrawingPaletteView_dismissPalettePopoverWithCompletion___block_invoke_3;
          v29[3] = &unk_1E82D7010;
          v30 = v2;
          objc_copyWeak(&v31, &location);
          [v19 dismissViewControllerAnimated:1 completion:v29];

          objc_destroyWeak(&v31);
          objc_destroyWeak(&location);
        }

        dispatch_group_enter(v2);
        v20 = [*(a1 + 32) contentView];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __60__PKDrawingPaletteView_dismissPalettePopoverWithCompletion___block_invoke_4;
        v27[3] = &unk_1E82D7148;
        v21 = v2;
        v28 = v21;
        [v20 dismissPalettePopoverWithCompletion:v27];

        v22 = [*(a1 + 32) annotationDelegate];

        if (v22)
        {
          dispatch_group_enter(v21);
          v23 = [*(a1 + 32) annotationDelegate];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __60__PKDrawingPaletteView_dismissPalettePopoverWithCompletion___block_invoke_5;
          v25[3] = &unk_1E82D7148;
          v26 = v21;
          [v23 dismissPalettePopoverWithCompletion:v25];
        }
      }
    }
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    dispatch_group_notify(v2, MEMORY[0x1E69E96A0], v24);
  }
}

void __60__PKDrawingPaletteView_dismissPalettePopoverWithCompletion___block_invoke_2(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPresentedPopoverViewController:0];
}

void __60__PKDrawingPaletteView_dismissPalettePopoverWithCompletion___block_invoke_3(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPresentedPopoverViewController:0];
}

- (CGRect)plusButtonFrame
{
  v3 = [(PKDrawingPaletteView *)self contentView];
  [v3 plusButtonFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PKDrawingPaletteView *)self contentView];
  [(PKDrawingPaletteView *)self convertRect:v12 fromView:v5, v7, v9, v11];
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

- (void)setContextEditingMode:(int64_t)a3
{
  if (self->_contextEditingMode != a3)
  {
    self->_contextEditingMode = a3;
    v4 = [(PKDrawingPaletteView *)self contentView];
    [v4 setContextEditingMode:self->_contextEditingMode];
  }
}

- (UIView)contextualEditingView
{
  v2 = [(PKDrawingPaletteView *)self contentView];
  v3 = [v2 contextualEditingView];

  return v3;
}

- (UIView)lassoToolEditingView
{
  v2 = [(PKDrawingPaletteView *)self contentView];
  v3 = [v2 lassoToolEditingView];

  return v3;
}

- (BOOL)_hasToolWithIdentifier:(id)a3
{
  v4 = a3;
  tools = self->_tools;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PKDrawingPaletteView__hasToolWithIdentifier___block_invoke;
  v8[3] = &unk_1E82D7058;
  v9 = v4;
  v6 = v4;
  LOBYTE(tools) = [(NSArray *)tools indexOfObjectPassingTest:v8]!= 0x7FFFFFFFFFFFFFFFLL;

  return tools;
}

uint64_t __47__PKDrawingPaletteView__hasToolWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ink];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (BOOL)isHandwritingToolSelected
{
  v2 = [(PKDrawingPaletteView *)self selectedTool];
  v3 = [v2 ink];
  v4 = [v3 _isHandwritingInk];

  return v4;
}

- (void)handwritingEducationPaneSettingsDidChange
{
  v3 = [(PKDrawingPaletteView *)self contentView];
  [v3 paletteViewStateDidChange:self];
}

- (BOOL)canShowResetHandwritingEducationPane
{
  v2 = +[PKHandwritingEducationPaneSettings sharedInstance];
  v3 = [(PKHandwritingEducationPaneSettings *)v2 canShowResetPaneInPalette];

  return v3;
}

- (void)_updateKeyboardSceneDelegateInputAssistantSupressionState
{
  if ([(PKDrawingPaletteView *)self isHandwritingToolSelected])
  {
    v3 = [(PKPaletteView *)self isVisible];
  }

  else
  {
    v3 = 0;
  }

  v6 = [(PKDrawingPaletteView *)self window];
  v4 = [v6 windowScene];
  v5 = [v4 keyboardSceneDelegate];
  [v5 setShouldSuppressInputAssistantUpdates:v3];
}

- (void)updateHandwritingAssistantItems
{
  v3 = [(PKDrawingPaletteView *)self _currentFirstResponder];
  [(PKDrawingPaletteView *)self _updateHandwritingAssistantItemsFromResponder:v3];
}

- (void)_updateHandwritingAssistantItemsFromResponder:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKDrawingPaletteView *)self inputAssistantButtonProvider];
  v6 = [v5 inputAssistantItem];
  v31 = [v4 inputAssistantItem];

  v32 = v6;
  v7 = [(PKDrawingPaletteView *)self inputAssistantButtonProvider];
  v8 = [v7 inputAssistantItem];
  v9 = [v8 leadingBarButtonGroups];
  v10 = [v4 inputAssistantItem];
  v11 = [v10 leadingBarButtonGroups];
  v12 = v9;
  v13 = v11;
  v14 = v13;
  if (!(v12 | v13))
  {
    goto LABEL_2;
  }

  if (v12 && v13)
  {
    v16 = [v12 isEqualToArray:v13];

    if (v16)
    {
LABEL_2:
      v15 = 1;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v30 = [(PKDrawingPaletteView *)self inputAssistantButtonProvider];
  v29 = [v30 inputAssistantItem];
  v17 = [v29 trailingBarButtonGroups];
  v28 = [v4 inputAssistantItem];
  v18 = [v28 trailingBarButtonGroups];
  v19 = v17;
  v20 = v18;
  v21 = v20;
  if (v19 | v20)
  {
    v15 = 0;
    if (v19 && v20)
    {
      v15 = [v19 isEqualToArray:v20];
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_14:
  v22 = [v4 inputAssistantItem];
  v23 = [(PKDrawingPaletteView *)self inputAssistantButtonProvider];
  [v23 setInputAssistantItem:v22];

  if (v32 != v31 || v15)
  {
    v24 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v4 _pkDebugStringRepresentation];
      *buf = 138412290;
      v34 = v25;
      _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "Input assistant items did change from responder: %@", buf, 0xCu);
    }

    v26 = [(PKDrawingPaletteView *)self contentView];
    [v26 paletteViewStateDidChangeInputAssistantItems:self];

    v27 = [(PKPaletteView *)self internalDelegate];
    [v27 paletteViewStateDidChangeInputAssistantItems:self];
  }
}

- (id)_currentFirstResponder
{
  v3 = [(PKPaletteView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PKPaletteView *)self delegate];
    v6 = [v5 paletteViewCurrentFirstResponder:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setTools:(id)a3 resetSelectedTool:(BOOL)a4 updateUI:(BOOL)a5 notifyDelegate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v21 = a3;
  if (([(NSArray *)self->_tools isEqual:?]& 1) == 0)
  {
    v10 = [v21 copy];
    tools = self->_tools;
    self->_tools = v10;

    if (v8)
    {
      self->_indexOfSelectedTool = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      [(PKDrawingPaletteView *)self _updateUIReloadTools:1];
    }
  }

  if (v6)
  {
    v12 = self->_toolsWhenLastNotifyingDelegate;
    v13 = v21;
    if (v13 | v12)
    {
      v14 = v13;
      if (v13 && v12)
      {
        v15 = [v12 isEqualToArray:v13];

        if (v15)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v16 = [v14 copy];
      toolsWhenLastNotifyingDelegate = self->_toolsWhenLastNotifyingDelegate;
      self->_toolsWhenLastNotifyingDelegate = v16;

      v18 = [(PKPaletteView *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = [(PKPaletteView *)self delegate];
        [v20 paletteViewToolsDidChange:self];
      }
    }
  }

LABEL_15:
}

- (void)_replaceToolAtIndex:(unint64_t)a3 withTool:(id)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v16 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if ([(PKDrawingPaletteView *)self _canReplaceToolAtIndex:a3 withTool:v8])
  {
    v9 = [(NSArray *)self->_tools mutableCopy];
    [v9 replaceObjectAtIndex:a3 withObject:v8];
    v10 = [v9 copy];
    [(PKDrawingPaletteView *)self _setTools:v10 resetSelectedTool:0 updateUI:0 notifyDelegate:v5];
  }

  else
  {
    v11 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      v13 = a3;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Can't replace tool at index: %lu with tool: %@", &v12, 0x16u);
    }
  }
}

- (void)_selectToolAtIndex:(unint64_t)a3 updateUI:(BOOL)a4 notifyDelegate:(BOOL)a5
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_indexOfSelectedTool != a3)
  {
    v5 = a5;
    v6 = a4;
    if ([(PKDrawingPaletteView *)self _canSelectToolAtIndex:?])
    {
      self->_indexOfSelectedTool = a3;
      if (v6)
      {
        [(PKDrawingPaletteView *)self _updateUI];
        v9 = [(PKDrawingPaletteView *)self contentView];
        [v9 paletteViewStateDidChangeSelectedTool:self];
      }

      if (v5)
      {
        v10 = [(PKPaletteView *)self delegate];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          v14 = [(NSArray *)self->_tools objectAtIndex:self->_indexOfSelectedTool];
          v12 = [(PKPaletteView *)self delegate];
          [v12 paletteView:self didSelectTool:v14 atIndex:self->_indexOfSelectedTool];
        }
      }
    }

    else
    {
      v13 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = a3;
        _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Can't select tool at index: %lu", buf, 0xCu);
      }
    }
  }
}

- (PKTool)selectedTool
{
  if (self->_indexOfSelectedTool == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_tools objectAtIndex:v2];
  }

  return v4;
}

- (PKPaletteToolView)selectedToolView
{
  v3 = [(PKDrawingPaletteView *)self selectedTool];

  if (v3)
  {
    v4 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setInterItemToolsSpacingInCompactSize:(double)a3 shouldNotify:(BOOL)a4
{
  if (vabdd_f64(self->_interItemToolsSpacingInCompactSize, a3) >= 0.00999999978)
  {
    self->_interItemToolsSpacingInCompactSize = a3;
    if (a4)
    {
      v6 = [(PKPaletteView *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [(PKPaletteView *)self delegate];
        [v8 paletteViewDidChangeInterItemToolsSpacingInCompactSize:self];
      }
    }

    v9 = [(PKDrawingPaletteView *)self contentView];
    [v9 paletteViewStateDidChange:self];
  }
}

- (void)setInterItemUndoRedoButtonsSpacingInCompactSize:(double)a3
{
  if (vabdd_f64(self->_interItemUndoRedoButtonsSpacingInCompactSize, a3) >= 0.00999999978)
  {
    self->_interItemUndoRedoButtonsSpacingInCompactSize = a3;
    v5 = [(PKDrawingPaletteView *)self contentView];
    [v5 paletteViewStateDidChange:self];
  }
}

- (id)toolPickerView:(id)a3 viewForToolAtIndex:(int64_t)a4
{
  v5 = [(NSArray *)self->_tools objectAtIndex:a4];
  v6 = [(PKPaletteToolViewFactory *)self->_toolViewFactory makePaletteToolViewForTool:v5];
  [v6 addTarget:self action:sel__toolViewStateDidChange_ forControlEvents:4096];
  [v6 addTarget:self action:sel__toolViewStateDidLiveUpdate_ forControlEvents:4];

  return v6;
}

- (void)_toolViewStateDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PKDrawingPaletteView *)self selectedToolView];

  if (v5 == v4)
  {
    v7 = [v4 tool];
    v8 = [(NSArray *)self->_tools objectAtIndexedSubscript:[(PKDrawingPaletteView *)self indexOfSelectedTool]];
    v9 = [PKToolFromPaletteTool toolByApplyingPropertiesFromPaletteTool:v7 toTool:v8];

    [(PKDrawingPaletteView *)self _replaceToolAtIndex:[(PKDrawingPaletteView *)self indexOfSelectedTool] withTool:v9 notifyDelegate:1];
    [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
    [(PKDrawingPaletteView *)self _updateToolPreviewContentsAnimated:0];
  }

  else
  {
    v6 = os_log_create("com.apple.pencilkit", "ToolPicker");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_ERROR, "toolView should be the selectedToolView", v10, 2u);
    }
  }
}

- (void)_toolViewStateDidLiveUpdate:(id)a3
{
  v4 = a3;
  v5 = [(PKDrawingPaletteView *)self selectedToolView];

  if (v5 == v4)
  {

    [(PKDrawingPaletteView *)self _updateToolPreviewContentsAnimated:0];
  }
}

uint64_t __46__PKDrawingPaletteView__indexOfGenerationTool__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ink];
  v3 = [v2 _isGenerationTool];

  return v3;
}

- (unint64_t)_indexOfToolPassingTest:(id)a3
{
  v4 = a3;
  tools = self->_tools;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__PKDrawingPaletteView__indexOfToolPassingTest___block_invoke;
  v9[3] = &unk_1E82D6FE8;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)tools indexOfObjectPassingTest:v9];

  return v7;
}

- (id)_paletteToolViewAtIndex:(unint64_t)a3
{
  v4 = [(PKDrawingPaletteView *)self contentView];
  v5 = [v4 toolPickerView];
  v6 = [v5 toolViews];
  v7 = [v6 objectAtIndex:a3];

  return v7;
}

- (void)_scrollToolViewAtIndex:(unint64_t)a3 toVisibleAnimated:(BOOL)a4
{
  v4 = a4;
  v7 = [(PKDrawingPaletteView *)self contentView];
  v6 = [v7 toolPickerView];
  [v6 scrollToolViewAtIndex:a3 toVisibleAnimated:v4];
}

- (void)showImageWandTipWithController:(id)a3
{
  v4 = a3;
  if ([v4 tipStatusIsInvalid])
  {
    v5 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Unable to present Image Wand Tip; invalid";
LABEL_13:
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if ([v4 tipStatusIsPending])
  {
    v5 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Unable to present Image Wand Tip; pending";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (([v4 tipStatusIsAvailable] & 1) == 0)
  {
    v5 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Unable to present Image Wand Tip; unavailable";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v7 = [(PKPaletteView *)self paletteViewHosting];
  v8 = [v7 isPaletteDragging];

  if (v8)
  {
    v5 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Unable to present Image Wand Tip; palette is dragging";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = [(PKDrawingPaletteView *)self _indexOfGenerationTool];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v6 = "Unable to present Image Wand Tip; image wand tool not found";
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [(PKPaletteView *)self palettePosition]- 1;
  v12 = v11 < 4;
  if (v11 <= 3)
  {
    v13 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEFAULT, "Scroll Image Wand Tool to visible", buf, 2u);
    }

    [(PKDrawingPaletteView *)self _scrollToolViewAtIndex:v10 toVisibleAnimated:1];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__PKDrawingPaletteView_showImageWandTipWithController___block_invoke;
  v14[3] = &unk_1E82DCA38;
  v17 = v12;
  v14[4] = self;
  v16 = v10;
  v15 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v14);

LABEL_15:
}

void __55__PKDrawingPaletteView_showImageWandTipWithController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  v7 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v8 = [v7 _paletteToolViewAtIndex:*(a1 + 48)];

    if (!_UISolariumEnabled())
    {
LABEL_8:
      v2 = v8;
      goto LABEL_9;
    }

    v9 = *(a1 + 32);
    v8 = v8;
    v10 = [v9 contentView];
    v11 = [v10 toolPickerView];
    [v11 sourceRectForPopoverPresentationForTool:v8];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v2 = [*(a1 + 32) contentView];
    v20 = [v2 toolPickerView];
    v21 = [v20 scrollView];
    [v8 convertRect:v21 fromView:{v13, v15, v17, v19}];
    v3 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;

LABEL_7:
    goto LABEL_8;
  }

  if (([v7 palettePosition] - 5) <= 3 && objc_msgSend(*(a1 + 32), "isToolPreviewInstalled"))
  {
    v8 = [*(a1 + 32) toolPreview];
    goto LABEL_7;
  }

LABEL_9:
  v26 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 0;
    _os_log_impl(&dword_1C7CCA000, v26, OS_LOG_TYPE_DEFAULT, "Show image wand tip", v36, 2u);
  }

  v27 = [*(a1 + 32) window];
  v28 = [v27 windowScene];
  v29 = [v28 windows];
  v30 = [v29 firstObject];
  v31 = [v30 tintColor];

  LOBYTE(v30) = objc_opt_respondsToSelector();
  v32 = *(a1 + 40);
  v33 = [*(a1 + 32) palettePopoverPresentingController];
  v34 = [*(a1 + 32) palettePopoverPassthroughViews];
  v35 = [*(a1 + 32) palettePopoverPermittedArrowDirections];
  if (v30)
  {
    [v32 showTipWithPresentationViewController:v33 sourceItem:v2 sourceRect:v34 passthroughViews:v35 permittedArrowDirections:v31 tintColor:1 animated:{v3, v4, v5, v6}];
  }

  else
  {
    [v32 showTipWithPresentationViewController:v33 sourceItem:v2 passthroughViews:v34 permittedArrowDirections:v35 tintColor:v31 animated:1];
  }
}

- (UIWindow)_hostingWindow
{
  WeakRetained = objc_loadWeakRetained(&self->__hostingWindow);

  return WeakRetained;
}

- (PKPaletteViewAnnotationDelegate)annotationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationDelegate);

  return WeakRetained;
}

@end