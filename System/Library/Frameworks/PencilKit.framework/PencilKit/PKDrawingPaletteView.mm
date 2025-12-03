@interface PKDrawingPaletteView
- (BOOL)_canHandlePencilInteraction;
- (BOOL)_canShowFingerDrawsOption;
- (BOOL)_hasToolWithIdentifier:(id)identifier;
- (BOOL)_isPaletteContentViewHidden;
- (BOOL)_shouldShowFingerDrawsOption;
- (BOOL)_wantsClearBackgroundColor;
- (BOOL)canShowResetHandwritingEducationPane;
- (BOOL)colorPickerShouldDisplayColorSelection:(id)selection;
- (BOOL)enableKeyboardButtons;
- (BOOL)hasContextMenuVisible;
- (BOOL)isAnnotationSupportEnabled;
- (BOOL)isEllipsisButtonVisible;
- (BOOL)isExtendedColorPickerVisible;
- (BOOL)isHandwritingToolSelected;
- (BOOL)isPalettePresentingPopover;
- (BOOL)toolPicker:(id)picker canSelectTool:(id)tool fromTap:(BOOL)tap;
- (BOOL)wantsScrollableTools;
- (CGRect)plusButtonFrame;
- (CGRect)sourceRectForPopoverPresentationForSourceView:(id)view;
- (CGRect)toolPickerViewSourceRectForPopoverPresentation:(id)presentation fromCorner:(unint64_t)corner;
- (CGSize)paletteSizeForEdge:(unint64_t)edge;
- (NSArray)inputAssistantItems;
- (PKDrawingPaletteView)initWithTools:(id)tools;
- (PKDrawingPaletteView)initWithTools:(id)tools wantsEllipsisButtonVisibleInCompactSize:(BOOL)size;
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
- (double)borderWidthForTraitCollection:(id)collection;
- (double)shadowOpacity;
- (double)shadowRadius;
- (double)toolPickerView:(id)view widthForToolAtIndex:(int64_t)index isCompactSize:(BOOL)size;
- (id)_clippingViewBackgroundColor:(BOOL)color;
- (id)_currentFirstResponder;
- (id)_paletteToolViewAtIndex:(unint64_t)index;
- (id)_selectedToolViewInToolPicker;
- (id)borderColorForTraitCollection:(id)collection;
- (id)contentScrollView;
- (id)keyboardSelectionMenuForAdditionalOptionsView:(id)view;
- (id)keyboardSelectionMenuForContentView:(id)view;
- (id)toolPickerView:(id)view viewForToolAtIndex:(int64_t)index;
- (id)undoManager;
- (unint64_t)_indexOfToolPassingTest:(id)test;
- (void)_centerPaletteContainerSubviewToCurrentlySelectedToolForEdge:(unint64_t)edge needsContainerViewLayout:(BOOL)layout;
- (void)_dictationAvailabilityDidChange:(id)change;
- (void)_didTapPlusButton:(id)button;
- (void)_didTapShapeButton:(id)button;
- (void)_didTapTextButton:(id)button;
- (void)_dismissEyeDropper;
- (void)_installPaletteContentViewInView:(id)view;
- (void)_pencilInteraction:(id)interaction didReceiveSqueeze:(id)squeeze;
- (void)_performPencilInteraction:(id)interaction preferredAction:(int64_t)action;
- (void)_performPencilPreferredActionShowColorPalette;
- (void)_performPencilPreferredActionShowInkAttributes;
- (void)_performPencilPreferredActionSwitchEraser;
- (void)_performPencilPreferredActionSwitchPrevious;
- (void)_presentOrDismissFloatingKeyboard;
- (void)_presentViewController:(id)controller asPopoverFromItem:(id)item;
- (void)_presentViewController:(id)controller asPopoverFromView:(id)view;
- (void)_presentViewController:(void *)controller configurationBlock:;
- (void)_releaseUndoManager;
- (void)_reloadImageForToolItem:(id)item;
- (void)_replaceToolAtIndex:(unint64_t)index withTool:(id)tool notifyDelegate:(BOOL)delegate;
- (void)_scrollToolViewAtIndex:(unint64_t)index toVisibleAnimated:(BOOL)animated;
- (void)_selectToolAtIndex:(unint64_t)index updateUI:(BOOL)i notifyDelegate:(BOOL)delegate;
- (void)_setPlusButton:(id)button;
- (void)_setSelectedColor:(id)color isFromExtendedColorPicker:(BOOL)picker isContinuousColorSelection:(BOOL)selection;
- (void)_setSelectedToolColor:(id)color ignoreColorOpacity:(BOOL)opacity isContinuousColorSelection:(BOOL)selection;
- (void)_setTools:(id)tools resetSelectedTool:(BOOL)tool updateUI:(BOOL)i notifyDelegate:(BOOL)delegate;
- (void)_setUpUpdateLink;
- (void)_toolViewStateDidChange:(id)change;
- (void)_toolViewStateDidLiveUpdate:(id)update;
- (void)_updateHandwritingAssistantItemsFromResponder:(id)responder;
- (void)_updateKeyboardSceneDelegateInputAssistantSupressionState;
- (void)_updateToolPreviewContentsAnimated:(BOOL)animated;
- (void)_updateToolPreviewPositionForEdge:(unint64_t)edge;
- (void)_updateToolsContainerScrollingEnabled;
- (void)_updateUIReloadTools:(BOOL)tools;
- (void)_willDockPaletteToCorner:(unint64_t)corner;
- (void)_willDockPaletteToEdge:(unint64_t)edge prepareForExpansion:(BOOL)expansion isPaletteChangingOrientation:(BOOL)orientation;
- (void)additionalOptionsViewDidPressTapToRadarButton:(id)button;
- (void)colorPickerDidChangeSelectedColor:(id)color isFromExtendedColorPicker:(BOOL)picker isContinuousColorSelection:(BOOL)selection;
- (void)configureForDockedAtCorner;
- (void)configureForDockedAtEdge:(unint64_t)edge;
- (void)contentViewDidResize:(id)resize;
- (void)contentViewDidSelectCloseButton:(id)button;
- (void)dealloc;
- (void)didChangePaletteScaleFactor;
- (void)didEndAppearanceAnimation;
- (void)didMoveToWindow;
- (void)dismissContextMenu;
- (void)dismissPalettePopoverWithCompletion:(id)completion;
- (void)endOpacityEditing;
- (void)floatingKeyboardController:(id)controller didChangeKeyboardType:(int64_t)type;
- (void)floatingKeyboardControllerWillHide:(id)hide;
- (void)floatingKeyboardControllerWillShow:(id)show;
- (void)handwritingEducationPaneSettingsDidChange;
- (void)hostView:(id)view didDockPaletteToPosition:(int64_t)position;
- (void)hostView:(id)view willDockPaletteToPosition:(int64_t)position prepareForExpansion:(BOOL)expansion;
- (void)layoutSubviews;
- (void)pencilInteractionDidTap:(id)tap;
- (void)performOnUpdateLink:(id)link;
- (void)setAnnotationDelegate:(id)delegate;
- (void)setCloseButtonVisible:(BOOL)visible;
- (void)setColorMaximumLinearExposure:(double)exposure;
- (void)setColorSwatchesVisible:(BOOL)visible;
- (void)setColorUserInterfaceStyle:(int64_t)style;
- (void)setContextEditingMode:(int64_t)mode;
- (void)setEditingExternalElementsSelection:(BOOL)selection;
- (void)setEditingStrokeSelection:(BOOL)selection;
- (void)setEditingTextSelection:(BOOL)selection;
- (void)setFingerDrawsOptionEnabled:(BOOL)enabled;
- (void)setInterItemToolsSpacingInCompactSize:(double)size shouldNotify:(BOOL)notify;
- (void)setInterItemUndoRedoButtonsSpacingInCompactSize:(double)size;
- (void)setLassoToolEditingViewIdentifier:(id)identifier;
- (void)setPlusButtonViewController:(id)controller;
- (void)setPrefersLargeContextualEditingUI:(BOOL)i;
- (void)setSelectedAnnotationType:(int64_t)type;
- (void)setShadowVisible:(BOOL)visible;
- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)controls;
- (void)setShowsLassoToolEditingView:(BOOL)view;
- (void)setShowsPlusButton:(BOOL)button;
- (void)setShowsShapeButton:(BOOL)button;
- (void)setShowsTextButton:(BOOL)button;
- (void)setUndoManager:(id)manager;
- (void)setUseEqualSpacingLayoutInCompactSize:(BOOL)size;
- (void)setWantsBottomLineDividerVisibleInCompactSize:(BOOL)size;
- (void)setWantsClearBackgroundColorInCompactSize:(BOOL)size;
- (void)setWantsEllipsisButtonVisibleInCompactSize:(BOOL)size;
- (void)setWantsMulticolorSwatchShadowInCompactSize:(BOOL)size;
- (void)setWantsUndoRedoButtonsShadowInCompactSize:(BOOL)size;
- (void)setWantsUndoRedoButtonsVisibleInCompactSize:(BOOL)size;
- (void)showImageWandTipWithController:(id)controller;
- (void)startOpacityEditing;
- (void)toolPicker:(id)picker didSelectTool:(id)tool atIndex:(unint64_t)index;
- (void)toolPickerDidToggleRulerTool:(id)tool;
- (void)toolPickerViewDidChangeTraitCollectionSizeClass:(id)class;
- (void)toolPreviewDidChangeToolColor:(id)color isContinuousColorSelection:(BOOL)selection;
- (void)traitCollectionDidChange:(id)change;
- (void)undoRedoViewDidTapRedo:(id)redo;
- (void)undoRedoViewDidTapUndo:(id)undo;
- (void)updateColorPickerSelectedColor;
- (void)updateHandwritingAssistantItems;
- (void)updatePopoverUI;
- (void)updateUndoRedo;
- (void)willStartAppearanceAnimation:(BOOL)animation;
- (void)windowFirstResponderController:(id)controller didChangeFirstResponder:(id)responder;
@end

@implementation PKDrawingPaletteView

- (PKDrawingPaletteView)initWithTools:(id)tools
{
  toolsCopy = tools;
  v5 = [(PKDrawingPaletteView *)self initWithTools:toolsCopy wantsEllipsisButtonVisibleInCompactSize:PKIsPadDevice()];

  return v5;
}

- (PKDrawingPaletteView)initWithTools:(id)tools wantsEllipsisButtonVisibleInCompactSize:(BOOL)size
{
  toolsCopy = tools;
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
    v8->_wantsEllipsisButtonVisibleInCompactSize = size;
    v8->_wantsBottomLineDividerVisibleInCompactSize = 1;
    v8->_pencilInteractionEnabledWhenNotVisible = 0;
    v13 = [toolsCopy copy];
    tools = v8->_tools;
    v8->_tools = v13;

    v8->_indexOfSelectedTool = 0x7FFFFFFFFFFFFFFFLL;
    v15 = [toolsCopy count];
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
    containerView = [(PKPaletteView *)v8 containerView];
    contentView = [containerView contentView];
    [(PKDrawingPaletteView *)v8 _installPaletteContentViewInView:contentView];

    contentView2 = [(PKDrawingPaletteView *)v8 contentView];
    [contentView2 setDelegate:v8];

    contentView3 = [(PKDrawingPaletteView *)v8 contentView];
    undoRedoView = [contentView3 undoRedoView];
    [undoRedoView setDelegate:v8];

    contentView4 = [(PKDrawingPaletteView *)v8 contentView];
    toolPickerView = [contentView4 toolPickerView];
    [toolPickerView setDelegate:v8];

    contentView5 = [(PKDrawingPaletteView *)v8 contentView];
    colorPickerView = [contentView5 colorPickerView];
    [colorPickerView setDelegate:v8];

    contentView6 = [(PKDrawingPaletteView *)v8 contentView];
    additionalOptionsView = [contentView6 additionalOptionsView];
    [additionalOptionsView setDelegate:v8];

    contentView7 = [(PKDrawingPaletteView *)v8 contentView];
    toolAndColorPickerContainerView = [contentView7 toolAndColorPickerContainerView];
    plusButton = [toolAndColorPickerContainerView plusButton];
    [plusButton addTarget:v8 action:sel__didTapPlusButton_ forControlEvents:64];

    contentView8 = [(PKDrawingPaletteView *)v8 contentView];
    additionalOptionsView2 = [contentView8 additionalOptionsView];
    [additionalOptionsView2 setPalettePopoverPresenting:v8];

    contentView9 = [(PKDrawingPaletteView *)v8 contentView];
    additionalOptionsView3 = [contentView9 additionalOptionsView];
    plusButton2 = [additionalOptionsView3 plusButton];
    [plusButton2 addTarget:v8 action:sel__didTapPlusButton_ forControlEvents:64];

    contentView10 = [(PKDrawingPaletteView *)v8 contentView];
    additionalOptionsView4 = [contentView10 additionalOptionsView];
    textButton = [additionalOptionsView4 textButton];
    [textButton addTarget:v8 action:sel__didTapTextButton_ forControlEvents:64];

    contentView11 = [(PKDrawingPaletteView *)v8 contentView];
    additionalOptionsView5 = [contentView11 additionalOptionsView];
    shapeButton = [additionalOptionsView5 shapeButton];
    [shapeButton addTarget:v8 action:sel__didTapShapeButton_ forControlEvents:64];

    toolPreview = [(PKPaletteView *)v8 toolPreview];
    [toolPreview setDelegate:v8];

    [(PKDrawingPaletteView *)v8 updateColorPickerSelectedColor];
    v52 = +[PKPencilInteraction fallbackPencilInteraction];
    pencilInteraction = v8->_pencilInteraction;
    v8->_pencilInteraction = v52;

    [(UIPencilInteraction *)v8->_pencilInteraction setDelegate:v8];
    [(PKDrawingPaletteView *)v8 addInteraction:v8->_pencilInteraction];
    [(PKDrawingPaletteView *)v8 _setUpUpdateLink];
    [(PKPaletteView *)v8 setPalettePopoverLayoutSceneMargins:10.0, 10.0, 10.0, 10.0];
    [(PKDrawingPaletteView *)v8 _updateUI];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__dictationAvailabilityDidChange_ name:*MEMORY[0x1E69DDF60] object:0];
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
  array = [MEMORY[0x1E695DF70] array];
  blocksToPerformOnUpdateLink = self->_blocksToPerformOnUpdateLink;
  self->_blocksToPerformOnUpdateLink = array;

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

- (void)performOnUpdateLink:(id)link
{
  blocksToPerformOnUpdateLink = self->_blocksToPerformOnUpdateLink;
  v5 = [link copy];
  v4 = _Block_copy(v5);
  [(NSMutableArray *)blocksToPerformOnUpdateLink addObject:v4];
}

- (void)_dictationAvailabilityDidChange:(id)change
{
  v8 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = changeCopy;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Dictation availability did change: %@. Update UI.", &v6, 0xCu);
  }

  [(PKDrawingPaletteView *)self _updateUI];
}

- (void)didChangePaletteScaleFactor
{
  v4.receiver = self;
  v4.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v4 didChangePaletteScaleFactor];
  contentView = [(PKDrawingPaletteView *)self contentView];
  [contentView paletteViewStateDidChangeScaleFactor:self];

  [(PKDrawingPaletteView *)self _updateUI];
  [(PKDrawingPaletteView *)self setNeedsUpdateConstraints];
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = PKDrawingPaletteView;
  [(PKDrawingPaletteView *)&v7 didMoveToWindow];
  window = [(PKDrawingPaletteView *)self window];

  if (window)
  {
    firstResponderController = self->_firstResponderController;
    windowScene = [(PKDrawingPaletteView *)self windowScene];
    [(PKTextInputWindowFirstResponderController *)firstResponderController updateFirstResponderFromWindowScene:windowScene sendDelegateCallback:0];
  }

  else
  {
    windowScene = [(PKDrawingPaletteView *)self floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)windowScene dismissWithReason:?];
  }

  windowScene2 = [(PKDrawingPaletteView *)self windowScene];
  [(PKDrawingPaletteView *)self setIsQuickNoteUI:PKIsQuickNoteWindowScene(windowScene2)];
}

- (id)contentScrollView
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  scrollView = [toolPickerView scrollView];

  return scrollView;
}

- (void)dealloc
{
  [(PKDrawingPaletteView *)self _releaseUndoManager];
  v3.receiver = self;
  v3.super_class = PKDrawingPaletteView;
  [(PKDrawingPaletteView *)&v3 dealloc];
}

- (void)_installPaletteContentViewInView:(id)view
{
  v31[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = [[PKPaletteContentView alloc] initWithPaletteViewStateObservable:self];
  [(PKDrawingPaletteView *)self setContentView:v5];

  contentView = [(PKDrawingPaletteView *)self contentView];
  [contentView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(PKDrawingPaletteView *)self contentView];
  [viewCopy addSubview:contentView2];

  contentView3 = [(PKDrawingPaletteView *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  contentViewBottomConstraint = self->_contentViewBottomConstraint;
  self->_contentViewBottomConstraint = v11;

  v26 = MEMORY[0x1E696ACD8];
  contentView4 = [(PKDrawingPaletteView *)self contentView];
  topAnchor = [contentView4 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v13 = self->_contentViewBottomConstraint;
  v31[0] = v27;
  v31[1] = v13;
  contentView5 = [(PKDrawingPaletteView *)self contentView];
  leftAnchor = [contentView5 leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v31[2] = v17;
  contentView6 = [(PKDrawingPaletteView *)self contentView];
  rightAnchor = [contentView6 rightAnchor];
  rightAnchor2 = [viewCopy rightAnchor];

  v21 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v31[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  [v26 activateConstraints:v22];

  heightAnchor = [(PKPaletteContentView *)self->_contentView heightAnchor];
  [(PKDrawingPaletteView *)self compactPaletteHeight];
  v24 = [heightAnchor constraintEqualToConstant:?];
  compactContentViewHeightConstraint = self->_compactContentViewHeightConstraint;
  self->_compactContentViewHeightConstraint = v24;
}

- (id)borderColorForTraitCollection:(id)collection
{
  collectionCopy = collection;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  if (!PKIsVisionDevice())
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
    }

    else
    {
      window = [(PKDrawingPaletteView *)self window];
      windowScene = [window windowScene];
      if (PKUseCompactSize(collectionCopy, windowScene))
      {

        goto LABEL_7;
      }

      userInterfaceStyle = [collectionCopy userInterfaceStyle];

      if (userInterfaceStyle != 2)
      {
        goto LABEL_8;
      }

      systemGray4Color = [MEMORY[0x1E69DC888] colorWithRed:0.172549024 green:0.172549024 blue:0.180392161 alpha:1.0];
    }

    window = clearColor;
    clearColor = systemGray4Color;
LABEL_7:
  }

LABEL_8:
  v9 = clearColor;

  return clearColor;
}

- (double)borderWidthForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = 0.0;
  if (!PKIsVisionDevice())
  {
    window = [(PKDrawingPaletteView *)self window];
    windowScene = [window windowScene];
    v8 = PKUseCompactSize(collectionCopy, windowScene);

    if (!v8)
    {
      v5 = 1.0;
      if (!UIAccessibilityDarkerSystemColorsEnabled())
      {
        if ([collectionCopy userInterfaceStyle] == 2)
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

- (void)setShadowVisible:(BOOL)visible
{
  v5.receiver = self;
  v5.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v5 setShadowVisible:visible];
  internalDelegate = [(PKPaletteView *)self internalDelegate];
  [internalDelegate paletteViewStateDidChange:self updatePaletteAppearance:1];
}

- (double)shadowOpacity
{
  shadowVisible = [(PKPaletteView *)self shadowVisible];
  result = 0.0;
  if (shadowVisible)
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
  shadowVisible = [(PKPaletteView *)self shadowVisible];
  result = 0.0;
  if (shadowVisible)
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

- (void)setWantsUndoRedoButtonsShadowInCompactSize:(BOOL)size
{
  if (self->_wantsUndoRedoButtonsShadowInCompactSize != size)
  {
    self->_wantsUndoRedoButtonsShadowInCompactSize = size;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];
  }
}

- (void)setWantsMulticolorSwatchShadowInCompactSize:(BOOL)size
{
  if (self->_wantsMulticolorSwatchShadowInCompactSize != size)
  {
    self->_wantsMulticolorSwatchShadowInCompactSize = size;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];
  }
}

- (void)setCloseButtonVisible:(BOOL)visible
{
  if (self->_closeButtonVisible != visible)
  {
    self->_closeButtonVisible = visible;
    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setColorMaximumLinearExposure:(double)exposure
{
  if (self->_colorMaximumLinearExposure != exposure)
  {
    self->_colorMaximumLinearExposure = exposure;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView setColorMaximumLinearExposure:exposure];

    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)_updateUIReloadTools:(BOOL)tools
{
  toolsCopy = tools;
  v85 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.pencilkit", "ToolPickerLayout");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v84 = toolsCopy;
    _os_log_debug_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEBUG, "PKDrawingPaletteView._updateUIReloadTools: %d", buf, 8u);
  }

  if (toolsCopy)
  {
    contentView = [(PKDrawingPaletteView *)self contentView];
    toolPickerView = [contentView toolPickerView];
    [toolPickerView reloadToolViewsWithDataSource:self];
  }

  v8 = MEMORY[0x1E696ACD8];
  contentViewBottomConstraint = [(PKDrawingPaletteView *)self contentViewBottomConstraint];
  v82[0] = contentViewBottomConstraint;
  compactContentViewHeightConstraint = [(PKDrawingPaletteView *)self compactContentViewHeightConstraint];
  v82[1] = compactContentViewHeightConstraint;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  [v8 deactivateConstraints:v11];

  _pk_useCompactLayout = [(UIView *)self _pk_useCompactLayout];
  v13 = MEMORY[0x1E696ACD8];
  if (_pk_useCompactLayout)
  {
    compactContentViewHeightConstraint2 = [(PKDrawingPaletteView *)self compactContentViewHeightConstraint];
    v81 = compactContentViewHeightConstraint2;
    v15 = &v81;
  }

  else
  {
    compactContentViewHeightConstraint2 = [(PKDrawingPaletteView *)self contentViewBottomConstraint];
    v80 = compactContentViewHeightConstraint2;
    v15 = &v80;
  }

  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:{1, v80, v81}];
  [v13 activateConstraints:v16];

  closeButtonVisible = [(PKDrawingPaletteView *)self closeButtonVisible];
  contentView2 = [(PKDrawingPaletteView *)self contentView];
  [contentView2 setCloseButtonVisible:closeButtonVisible];

  [(PKDrawingPaletteView *)self colorMaximumLinearExposure];
  v20 = v19;
  contentView3 = [(PKDrawingPaletteView *)self contentView];
  [contentView3 setColorMaximumLinearExposure:v20];

  contentView4 = [(PKDrawingPaletteView *)self contentView];
  undoRedoView = [contentView4 undoRedoView];
  [undoRedoView updateUI];

  colorUserInterfaceStyle = [(PKDrawingPaletteView *)self colorUserInterfaceStyle];
  contentView5 = [(PKDrawingPaletteView *)self contentView];
  colorPickerView = [contentView5 colorPickerView];
  [colorPickerView setColorUserInterfaceStyle:colorUserInterfaceStyle];

  colorUserInterfaceStyle2 = [(PKDrawingPaletteView *)self colorUserInterfaceStyle];
  contentView6 = [(PKDrawingPaletteView *)self contentView];
  toolPickerView2 = [contentView6 toolPickerView];
  [toolPickerView2 setColorUserInterfaceStyle:colorUserInterfaceStyle2];

  isAutoHideEnabled = [(PKPaletteView *)self isAutoHideEnabled];
  contentView7 = [(PKDrawingPaletteView *)self contentView];
  additionalOptionsView = [contentView7 additionalOptionsView];
  [additionalOptionsView setAutoHideOn:isAutoHideEnabled];

  _shouldShowFingerDrawsOption = [(PKDrawingPaletteView *)self _shouldShowFingerDrawsOption];
  contentView8 = [(PKDrawingPaletteView *)self contentView];
  additionalOptionsView2 = [contentView8 additionalOptionsView];
  [additionalOptionsView2 setShouldShowFingerDrawsOption:_shouldShowFingerDrawsOption];

  shouldAlwaysShowAutoRefineControls = [(PKDrawingPaletteView *)self shouldAlwaysShowAutoRefineControls];
  contentView9 = [(PKDrawingPaletteView *)self contentView];
  additionalOptionsView3 = [contentView9 additionalOptionsView];
  [additionalOptionsView3 setShouldAlwaysShowAutoRefineControls:shouldAlwaysShowAutoRefineControls];

  colorUserInterfaceStyle3 = [(PKDrawingPaletteView *)self colorUserInterfaceStyle];
  toolPreview = [(PKPaletteView *)self toolPreview];
  [toolPreview setColorUserInterfaceStyle:colorUserInterfaceStyle3];

  tools = [(PKDrawingPaletteView *)self tools];
  v42 = [tools count];
  showsPlusButton = [(PKDrawingPaletteView *)self showsPlusButton];
  v44 = 5.0;
  v45 = 2.0;
  if (!showsPlusButton)
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
  containerView = [(PKPaletteView *)self containerView];
  [containerView setScalingFactor:v52];

  indexOfSelectedTool = self->_indexOfSelectedTool;
  if (indexOfSelectedTool != 0x7FFFFFFFFFFFFFFFLL)
  {
    contentView10 = [(PKDrawingPaletteView *)self contentView];
    toolPickerView3 = [contentView10 toolPickerView];
    [toolPickerView3 selectToolViewAtIndex:indexOfSelectedTool];

    _selectedToolViewInToolPicker = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
    tool = [_selectedToolViewInToolPicker tool];
    if ([tool isLassoTool])
    {
    }

    else
    {
      selectedTool = [(PKDrawingPaletteView *)self selectedTool];
      _isLassoTool = [selectedTool _isLassoTool];

      if (!_isLassoTool)
      {
        goto LABEL_28;
      }
    }

    _selectedToolViewInToolPicker2 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
    [_selectedToolViewInToolPicker2 setSupportsDisplayingSelectedColor:0];

LABEL_28:
    [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
    paletteViewHosting = [(PKPaletteView *)self paletteViewHosting];
    if (paletteViewHosting)
    {
      v63 = paletteViewHosting;
      paletteViewHosting2 = [(PKPaletteView *)self paletteViewHosting];
      isPaletteVisualStateMinimized = [paletteViewHosting2 isPaletteVisualStateMinimized];

      if (isPaletteVisualStateMinimized)
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
    floatingKeyboardController = [(PKDrawingPaletteView *)self floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)floatingKeyboardController dismissWithReason:?];
  }

  if (![(PKDrawingPaletteView *)self isAnnotationSupportEnabled]&& [(PKDrawingPaletteView *)self selectedAnnotationType])
  {
    [(PKDrawingPaletteView *)self setSelectedAnnotationType:0];
  }

  bottomLineDividerView = [(PKDrawingPaletteView *)self bottomLineDividerView];
  v71 = [bottomLineDividerView isDescendantOfView:self];

  if (_UISolariumEnabled())
  {
    LOBYTE(wantsBottomLineDividerVisibleInCompactSize) = 0;
  }

  else
  {
    wantsBottomLineDividerVisibleInCompactSize = [(PKDrawingPaletteView *)self wantsBottomLineDividerVisibleInCompactSize];
    if (wantsBottomLineDividerVisibleInCompactSize)
    {
      LOBYTE(wantsBottomLineDividerVisibleInCompactSize) = [(UIView *)self _pk_useCompactLayout];
    }
  }

  if (wantsBottomLineDividerVisibleInCompactSize || ((v71 ^ 1) & 1) != 0)
  {
    if (!(v71 & 1 | !wantsBottomLineDividerVisibleInCompactSize))
    {
      v74 = objc_alloc_init(MEMORY[0x1E69DD250]);
      bottomLineDividerView = self->_bottomLineDividerView;
      self->_bottomLineDividerView = v74;

      bottomLineDividerView2 = [(PKDrawingPaletteView *)self bottomLineDividerView];
      [(PKDrawingPaletteView *)self addSubview:bottomLineDividerView2];
    }
  }

  else
  {
    bottomLineDividerView3 = [(PKDrawingPaletteView *)self bottomLineDividerView];
    [bottomLineDividerView3 removeFromSuperview];

    [(PKDrawingPaletteView *)self setBottomLineDividerView:0];
  }

  if (toolsCopy)
  {
    contentView11 = [(PKDrawingPaletteView *)self contentView];
    [contentView11 paletteViewStateDidChange:self];

    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewStateDidChange:self];

    delegate = [(PKPaletteView *)self delegate];
    [delegate paletteViewContentSizeDidChange:self];
  }
}

- (BOOL)_canShowFingerDrawsOption
{
  traitCollection = [(PKDrawingPaletteView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] != 0;

  return v3;
}

- (BOOL)_shouldShowFingerDrawsOption
{
  _canShowFingerDrawsOption = [(PKDrawingPaletteView *)self _canShowFingerDrawsOption];
  if (_canShowFingerDrawsOption)
  {

    LOBYTE(_canShowFingerDrawsOption) = [(PKDrawingPaletteView *)self isFingerDrawsOptionEnabled];
  }

  return _canShowFingerDrawsOption;
}

- (void)_updateToolsContainerScrollingEnabled
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  isScrollingEnabled = [toolPickerView isScrollingEnabled];
  wantsScrollableTools = [(PKDrawingPaletteView *)self wantsScrollableTools];

  if (isScrollingEnabled != wantsScrollableTools)
  {
    contentView2 = [(PKDrawingPaletteView *)self contentView];
    [contentView2 paletteViewStateDidChange:self];
  }
}

- (BOOL)wantsScrollableTools
{
  tools = [(PKDrawingPaletteView *)self tools];
  v4 = [tools count];

  if (v4 < 8)
  {
    return 0;
  }

  windowScene = [(PKDrawingPaletteView *)self windowScene];
  v6 = PKIsSmallestQuickNoteWindowScene(windowScene);

  v7 = 7.0;
  if (v6)
  {
    v7 = 6.0;
  }

  return v7 < v4;
}

- (BOOL)isExtendedColorPickerVisible
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  colorPickerView = [contentView colorPickerView];
  _isExtendedColorPickerVisible = [colorPickerView _isExtendedColorPickerVisible];

  return _isExtendedColorPickerVisible;
}

- (void)_dismissEyeDropper
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  [contentView dismissEyeDropper];
}

- (CGSize)paletteSizeForEdge:(unint64_t)edge
{
  if (edge == 8 || edge == 2)
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
  showsPlusButton = [(PKDrawingPaletteView *)self showsPlusButton];
  v12 = 48.0;
  if (!showsPlusButton)
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

  isEllipsisButtonVisible = [(PKDrawingPaletteView *)self isEllipsisButtonVisible];
  v6 = v3 + v4;
  if (!isEllipsisButtonVisible)
  {
    v6 = v4;
  }

  return v6 + 26.0;
}

- (double)_toolsContainerWidth
{
  tools = [(PKDrawingPaletteView *)self tools];
  v4 = [tools count];

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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v10 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

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
    windowScene = [(PKDrawingPaletteView *)self windowScene];
    effectiveGeometry = [windowScene effectiveGeometry];
    coordinateSpace = [effectiveGeometry coordinateSpace];
    [coordinateSpace bounds];
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

- (CGRect)sourceRectForPopoverPresentationForSourceView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  superview = [viewCopy superview];

  [(PKDrawingPaletteView *)self frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  superview2 = [(PKDrawingPaletteView *)self superview];
  [superview convertRect:superview2 fromView:{v15, v17, v19, v21}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  palettePosition = [(PKPaletteView *)self palettePosition];
  if (palettePosition == 4)
  {
    v32 = v24;
  }

  else
  {
    v32 = v6;
  }

  if (palettePosition == 4)
  {
    v33 = v8;
  }

  else
  {
    v33 = v26;
  }

  if (palettePosition == 4)
  {
    v34 = v28;
  }

  else
  {
    v34 = v10;
  }

  if (palettePosition == 4)
  {
    v35 = v12;
  }

  else
  {
    v35 = v30;
  }

  if (palettePosition == 2)
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
  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  [toolPickerView updatePopoverUI];

  contentView2 = [(PKDrawingPaletteView *)self contentView];
  colorPickerView = [contentView2 colorPickerView];
  [colorPickerView updatePopoverUI];

  contentView3 = [(PKDrawingPaletteView *)self contentView];
  additionalOptionsView = [contentView3 additionalOptionsView];
  [additionalOptionsView updatePopoverUI];
}

- (void)setWantsClearBackgroundColorInCompactSize:(BOOL)size
{
  if (self->_wantsClearBackgroundColorInCompactSize != size)
  {
    self->_wantsClearBackgroundColorInCompactSize = size;
    [(PKDrawingPaletteView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v28 layoutSubviews];
  [(PKDrawingPaletteView *)self updateUndoRedo];
  _wantsClearBackgroundColor = [(PKDrawingPaletteView *)self _wantsClearBackgroundColor];
  v4 = [(PKDrawingPaletteView *)self _clippingViewBackgroundColor:_wantsClearBackgroundColor];
  clippingView = [(PKPaletteView *)self clippingView];
  [clippingView setBackgroundColor:v4];

  clippingView2 = [(PKPaletteView *)self clippingView];
  [clippingView2 bounds];
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

  backgroundMaterialView = [(PKPaletteView *)self backgroundMaterialView];
  [backgroundMaterialView setFrame:{x, y, width, height}];

  backgroundMaterialView2 = [(PKPaletteView *)self backgroundMaterialView];
  [backgroundMaterialView2 setHidden:_wantsClearBackgroundColor];

  [(PKDrawingPaletteView *)self compactPaletteHeight];
  v18 = v17;
  [(PKDrawingPaletteView *)self bounds];
  v19 = CGRectGetWidth(v31);
  bottomLineDividerView = [(PKDrawingPaletteView *)self bottomLineDividerView];
  [bottomLineDividerView setFrame:{0.0, v18, v19, 1.0}];

  if ([(UIView *)self _pk_useCompactLayout])
  {
    [MEMORY[0x1E69DC888] pk_separatorLineColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v21 = ;
  bottomLineDividerView2 = [(PKDrawingPaletteView *)self bottomLineDividerView];
  [bottomLineDividerView2 setBackgroundColor:v21];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v25 = [bundleIdentifier isEqualToString:@"com.apple.ScreenshotServicesService"];

  if (v25)
  {
    userInterfaceStyle = 2;
  }

  else
  {
    mainBundle = [(PKDrawingPaletteView *)self traitCollection];
    userInterfaceStyle = [mainBundle userInterfaceStyle];
  }

  bottomLineDividerView3 = [(PKDrawingPaletteView *)self bottomLineDividerView];
  [bottomLineDividerView3 setOverrideUserInterfaceStyle:userInterfaceStyle];

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
    LOBYTE(_pk_useCompactLayout) = 1;
  }

  else
  {
    _pk_useCompactLayout = [(UIView *)self _pk_useCompactLayout];
    if (_pk_useCompactLayout)
    {

      LOBYTE(_pk_useCompactLayout) = [(PKDrawingPaletteView *)self wantsClearBackgroundColorInCompactSize];
    }
  }

  return _pk_useCompactLayout;
}

- (id)_clippingViewBackgroundColor:(BOOL)color
{
  if (color)
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

- (void)setUseEqualSpacingLayoutInCompactSize:(BOOL)size
{
  if (self->_useEqualSpacingLayoutInCompactSize != size)
  {
    self->_useEqualSpacingLayoutInCompactSize = size;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];
  }
}

- (void)setAnnotationDelegate:(id)delegate
{
  obj = delegate;
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
  annotationDelegate = [(PKDrawingPaletteView *)self annotationDelegate];
  v3 = annotationDelegate != 0;

  return v3;
}

- (void)updateUndoRedo
{
  delegate = [(PKPaletteView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PKPaletteView *)self delegate];
    v12 = [delegate2 paletteViewUndoManager:self];
  }

  else
  {
    v12 = 0;
  }

  [(PKDrawingPaletteView *)self setUndoManager:v12];
  canUndo = [v12 canUndo];
  contentView = [(PKDrawingPaletteView *)self contentView];
  undoRedoView = [contentView undoRedoView];
  [undoRedoView setUndoEnabled:canUndo];

  canRedo = [v12 canRedo];
  contentView2 = [(PKDrawingPaletteView *)self contentView];
  undoRedoView2 = [contentView2 undoRedoView];
  [undoRedoView2 setRedoEnabled:canRedo];
}

- (NSArray)inputAssistantItems
{
  v28 = *MEMORY[0x1E69E9840];
  window = [(PKDrawingPaletteView *)self window];
  windowScene = [window windowScene];

  keyboardSceneDelegate = [(__CFString *)windowScene keyboardSceneDelegate];
  if (keyboardSceneDelegate)
  {
    isVisible = [(PKPaletteView *)self isVisible];
    isHandwritingToolSelected = [(PKDrawingPaletteView *)self isHandwritingToolSelected];
    shouldSuppressInputAssistantUpdates = [keyboardSceneDelegate shouldSuppressInputAssistantUpdates];
    buttonsForCurrentConfiguration = MEMORY[0x1E695E0F0];
    if (isHandwritingToolSelected && isVisible)
    {
      if ((_os_feature_enabled_impl() | shouldSuppressInputAssistantUpdates))
      {
        inputAssistantButtonProvider = [(PKDrawingPaletteView *)self inputAssistantButtonProvider];
        buttonsForCurrentConfiguration = [inputAssistantButtonProvider buttonsForCurrentConfiguration];
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

        buttonsForCurrentConfiguration = MEMORY[0x1E695E0F0];
      }
    }

    v11 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(buttonsForCurrentConfiguration, "count")}];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:isHandwritingToolSelected];
      v15 = [MEMORY[0x1E696AD98] numberWithBool:isVisible];
      v16 = [MEMORY[0x1E696AD98] numberWithBool:shouldSuppressInputAssistantUpdates];
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
      v21 = windowScene;
      v22 = 2048;
      v23 = 0;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_INFO, "No input assistant items. Either drawing palette is not in a scene (%p), or has not input responder controller (%p).", buf, 0x16u);
    }

    buttonsForCurrentConfiguration = MEMORY[0x1E695E0F0];
  }

  return buttonsForCurrentConfiguration;
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
  window = [(PKDrawingPaletteView *)self window];
  windowScene = [window windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

  if (objc_opt_respondsToSelector())
  {
    v6 = [keyboardSceneDelegate hasNullInputView] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  window2 = [(PKDrawingPaletteView *)self window];
  windowScene2 = [window2 windowScene];
  screen = [windowScene2 screen];
  _isEmbeddedScreen = [screen _isEmbeddedScreen];

  if (_isEmbeddedScreen)
  {
    firstResponderController = [(PKDrawingPaletteView *)self firstResponderController];
    firstResponder = [firstResponderController firstResponder];
    v13 = [firstResponder isEditableTextInput] & v6;
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

- (void)setUndoManager:(id)manager
{
  managerCopy = manager;
  undoManager = self->_undoManager;
  v8 = managerCopy;
  if (undoManager != managerCopy)
  {
    if (undoManager)
    {
      [(PKDrawingPaletteView *)self _releaseUndoManager];
    }

    objc_storeStrong(&self->_undoManager, manager);
    if (self->_undoManager)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__changeWasUndone_ name:*MEMORY[0x1E696AA30] object:self->_undoManager];
      [defaultCenter addObserver:self selector:sel__changeWasRedone_ name:*MEMORY[0x1E696AA28] object:self->_undoManager];
      [defaultCenter addObserver:self selector:sel__changeWasDone_ name:*MEMORY[0x1E696AA18] object:self->_undoManager];
    }
  }
}

- (void)_releaseUndoManager
{
  if (self->_undoManager)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA30] object:self->_undoManager];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA28] object:self->_undoManager];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA18] object:self->_undoManager];
    undoManager = self->_undoManager;
    self->_undoManager = 0;
  }
}

- (PKPaletteButton)_plusButton
{
  traitCollection = [(PKDrawingPaletteView *)self traitCollection];
  window = [(PKDrawingPaletteView *)self window];
  windowScene = [window windowScene];
  v6 = PKUseCompactSize(traitCollection, windowScene);
  contentView = [(PKDrawingPaletteView *)self contentView];
  v8 = contentView;
  if (v6)
  {
    [contentView toolAndColorPickerContainerView];
  }

  else
  {
    [contentView additionalOptionsView];
  }
  v9 = ;
  plusButton = [v9 plusButton];

  return plusButton;
}

- (void)_setPlusButton:(id)button
{
  buttonCopy = button;
  contentView = [(PKDrawingPaletteView *)self contentView];
  additionalOptionsView = [contentView additionalOptionsView];
  [additionalOptionsView setPlusButton:buttonCopy];

  contentView2 = [(PKDrawingPaletteView *)self contentView];
  toolAndColorPickerContainerView = [contentView2 toolAndColorPickerContainerView];
  [toolAndColorPickerContainerView setPlusButton:buttonCopy];
}

- (void)setShowsPlusButton:(BOOL)button
{
  if (self->_showsPlusButton != button)
  {
    self->_showsPlusButton = button;
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewStateDidChange:self];

    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];

    delegate = [(PKPaletteView *)self delegate];
    [delegate paletteViewContentSizeDidChange:self];

    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setPlusButtonViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_plusButtonViewController != controllerCopy)
  {
    v7 = controllerCopy;
    objc_storeStrong(&self->_plusButtonViewController, controller);
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];

    controllerCopy = v7;
  }
}

- (void)setShowsTextButton:(BOOL)button
{
  if (self->_showsTextButton != button)
  {
    self->_showsTextButton = button;
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewStateDidChange:self];

    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];

    delegate = [(PKPaletteView *)self delegate];
    [delegate paletteViewContentSizeDidChange:self];

    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setShowsShapeButton:(BOOL)button
{
  if (self->_showsShapeButton != button)
  {
    self->_showsShapeButton = button;
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewStateDidChange:self];

    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];

    delegate = [(PKPaletteView *)self delegate];
    [delegate paletteViewContentSizeDidChange:self];

    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setWantsUndoRedoButtonsVisibleInCompactSize:(BOOL)size
{
  if (self->_wantsUndoRedoButtonsVisibleInCompactSize != size)
  {
    self->_wantsUndoRedoButtonsVisibleInCompactSize = size;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];
  }
}

- (void)setWantsEllipsisButtonVisibleInCompactSize:(BOOL)size
{
  if (self->_wantsEllipsisButtonVisibleInCompactSize != size)
  {
    self->_wantsEllipsisButtonVisibleInCompactSize = size;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];
  }
}

- (void)setWantsBottomLineDividerVisibleInCompactSize:(BOOL)size
{
  if (self->_wantsBottomLineDividerVisibleInCompactSize != size)
  {
    self->_wantsBottomLineDividerVisibleInCompactSize = size;
    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (BOOL)isEllipsisButtonVisible
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  isEllipsisButtonVisible = [contentView isEllipsisButtonVisible];

  return isEllipsisButtonVisible;
}

- (BOOL)isPalettePresentingPopover
{
  v27.receiver = self;
  v27.super_class = PKDrawingPaletteView;
  if ([(PKPaletteView *)&v27 isPalettePresentingPopover])
  {
    return 1;
  }

  palettePopoverPresentingController = [(PKPaletteView *)self palettePopoverPresentingController];
  presentedViewController = [palettePopoverPresentingController presentedViewController];

  if (presentedViewController && ([MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()], v6 = objc_claimAutoreleasedReturnValue(), v7 = MEMORY[0x1E696AAE8], -[PKDrawingPaletteView annotationDelegate](self, "annotationDelegate"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bundleForClass:", objc_opt_class()), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v6, v6 == v9) || (objc_msgSend(presentedViewController, "popoverPresentationController"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "sourceView"), v11 = objc_claimAutoreleasedReturnValue(), -[PKDrawingPaletteView contextualEditingView](self, "contextualEditingView"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isDescendantOfView:", v12), v12, v11, v10, (v13 & 1) != 0) || (objc_msgSend(presentedViewController, "popoverPresentationController"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "sourceItem"), v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v17 = objc_opt_isKindOfClass(), v16, v15, (v17 & 1) != 0) && (objc_msgSend(presentedViewController, "popoverPresentationController"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "sourceItem"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isDescendantOfView:", self), v19, v18, (v20 & 1) != 0))
  {
    v3 = 1;
  }

  else
  {
    popoverPresentationController = [presentedViewController popoverPresentationController];
    sourceItem = [popoverPresentationController sourceItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      popoverPresentationController2 = [presentedViewController popoverPresentationController];
      sourceItem2 = [popoverPresentationController2 sourceItem];
      view = [sourceItem2 view];
      v3 = [view isDescendantOfView:self];
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

  _plusButton = [(PKDrawingPaletteView *)self _plusButton];
  hasContextMenuVisible = [_plusButton hasContextMenuVisible];

  return hasContextMenuVisible;
}

- (void)dismissContextMenu
{
  _plusButton = [(PKDrawingPaletteView *)self _plusButton];
  [_plusButton dismissContextMenu];
}

- (void)_setSelectedToolColor:(id)color ignoreColorOpacity:(BOOL)opacity isContinuousColorSelection:(BOOL)selection
{
  selectionCopy = selection;
  colorCopy = color;
  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  selectedToolView = [toolPickerView selectedToolView];

  if ([selectedToolView supportsDisplayingSelectedColor])
  {
    tool = [selectedToolView tool];
    inkingTool = [tool inkingTool];

    if (inkingTool)
    {
      v13 = [inkingTool ink];

      if (v13)
      {
        v14 = [inkingTool ink];
        color = [v14 color];
        [color alphaComponent];
        v17 = v16;

        if (opacity)
        {
          v18 = [colorCopy colorWithAlphaComponent:v17];
        }

        else
        {
          v18 = colorCopy;
        }

        v19 = v18;
        [inkingTool setInkColor:v18];
        v20 = [(NSArray *)self->_tools objectAtIndexedSubscript:self->_indexOfSelectedTool];
        v21 = [PKToolFromPaletteTool toolByApplyingPropertiesFromPaletteTool:inkingTool toTool:v20];

        [(PKDrawingPaletteView *)self _replaceToolAtIndex:self->_indexOfSelectedTool withTool:v21 notifyDelegate:!selectionCopy];
      }
    }
  }
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  if (self->_colorUserInterfaceStyle != style)
  {
    self->_colorUserInterfaceStyle = style;
    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setFingerDrawsOptionEnabled:(BOOL)enabled
{
  if (self->_fingerDrawsOptionEnabled != enabled)
  {
    self->_fingerDrawsOptionEnabled = enabled;
    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setShouldAlwaysShowAutoRefineControls:(BOOL)controls
{
  if (self->_shouldAlwaysShowAutoRefineControls != controls)
  {
    self->_shouldAlwaysShowAutoRefineControls = controls;
    [(PKDrawingPaletteView *)self _updateUI];
  }
}

- (void)setEditingStrokeSelection:(BOOL)selection
{
  if (self->_editingStrokeSelection != selection)
  {
    self->_editingStrokeSelection = selection;
    [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
  }
}

- (void)setEditingTextSelection:(BOOL)selection
{
  if (self->_editingTextSelection != selection)
  {
    self->_editingTextSelection = selection;
    isEditingTextSelection = [(PKDrawingPaletteView *)self isEditingTextSelection];

    [(PKDrawingPaletteView *)self setContextEditingMode:isEditingTextSelection];
  }
}

- (void)setEditingExternalElementsSelection:(BOOL)selection
{
  if (self->_editingExternalElementsSelection != selection)
  {
    self->_editingExternalElementsSelection = selection;
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

- (void)setShowsLassoToolEditingView:(BOOL)view
{
  if (self->_showsLassoToolEditingView != view)
  {
    self->_showsLassoToolEditingView = view;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];
  }
}

- (void)setLassoToolEditingViewIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contentView = self->_lassoToolEditingViewIdentifier;
  v6 = identifierCopy;
  v11 = v6;
  if (contentView == v6)
  {

LABEL_9:
    v8 = v11;
    goto LABEL_10;
  }

  if (!v6 || !contentView)
  {

    v8 = v11;
    goto LABEL_8;
  }

  v7 = [(NSString *)contentView isEqualToString:v6];

  v8 = v11;
  if (!v7)
  {
LABEL_8:
    v9 = [(NSString *)v8 copy];
    lassoToolEditingViewIdentifier = self->_lassoToolEditingViewIdentifier;
    self->_lassoToolEditingViewIdentifier = v9;

    contentView = [(PKDrawingPaletteView *)self contentView];
    [(NSString *)contentView setLassoToolEditingViewIdentifier:self->_lassoToolEditingViewIdentifier];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setColorSwatchesVisible:(BOOL)visible
{
  if (self->_colorSwatchesVisible != visible)
  {
    self->_colorSwatchesVisible = visible;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];
  }
}

- (void)setPrefersLargeContextualEditingUI:(BOOL)i
{
  if (self->_prefersLargeContextualEditingUI != i)
  {
    self->_prefersLargeContextualEditingUI = i;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];
  }
}

- (void)setSelectedAnnotationType:(int64_t)type
{
  if (self->_selectedAnnotationType == type)
  {
    return;
  }

  v10 = v3;
  v9 = 0;
  self->_selectedAnnotationType = type;
  if (type > 10)
  {
    if (type == 11)
    {
      v9 = 3;
      goto LABEL_10;
    }

    if (type != 12)
    {
      goto LABEL_8;
    }
  }

  else if (type)
  {
    if (type == 10)
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
  contextEditingMode = [(PKDrawingPaletteView *)self contextEditingMode];
  if ((contextEditingMode - 1) < 3)
  {
    annotationDelegate = [(PKDrawingPaletteView *)self annotationDelegate];
    v5 = [annotationDelegate paletteViewSelectedAnnotationColor:self];
LABEL_3:
    v25 = v5;
LABEL_4:

    goto LABEL_17;
  }

  if (contextEditingMode == 4)
  {
    delegate = [(PKPaletteView *)self delegate];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      annotationDelegate = [(PKPaletteView *)self delegate];
      v5 = [annotationDelegate paletteViewCurrentSelectionColor:self];
      goto LABEL_3;
    }
  }

  else if (!contextEditingMode)
  {
    isEditingStrokeSelection = [(PKDrawingPaletteView *)self isEditingStrokeSelection];
    _selectedToolViewInToolPicker = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
    annotationDelegate = _selectedToolViewInToolPicker;
    if (isEditingStrokeSelection)
    {
      tool = [_selectedToolViewInToolPicker tool];
      if (![tool isLassoTool])
      {
        v25 = 0;
LABEL_27:

        goto LABEL_4;
      }

      _selectedToolViewInToolPicker2 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
      if (![_selectedToolViewInToolPicker2 supportsDisplayingSelectedColor])
      {
        v25 = 0;
        goto LABEL_26;
      }

      _selectedToolViewInToolPicker3 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
      tool2 = [_selectedToolViewInToolPicker3 tool];
      inkingTool = [tool2 inkingTool];
      v13 = [inkingTool ink];
      v25 = [v13 colorForUIAllowHDR:{-[PKDrawingPaletteView allowHDR](self, "allowHDR")}];

LABEL_15:
LABEL_26:

      goto LABEL_27;
    }

    supportsDisplayingSelectedColor = [_selectedToolViewInToolPicker supportsDisplayingSelectedColor];

    if (supportsDisplayingSelectedColor)
    {
      annotationDelegate = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
      tool = [annotationDelegate tool];
      _selectedToolViewInToolPicker2 = [tool inkingTool];
      _selectedToolViewInToolPicker3 = [_selectedToolViewInToolPicker2 ink];
      v25 = [_selectedToolViewInToolPicker3 colorForUIAllowHDR:{-[PKDrawingPaletteView allowHDR](self, "allowHDR")}];
      goto LABEL_15;
    }
  }

  v25 = 0;
LABEL_17:
  contentView = [(PKDrawingPaletteView *)self contentView];
  colorPickerView = [contentView colorPickerView];
  [colorPickerView setSelectedColor:v25];

  _selectedToolViewInToolPicker4 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  configuration = [_selectedToolViewInToolPicker4 configuration];
  v21 = configuration;
  if (configuration)
  {
    if (*(configuration + 18) == 1)
    {
      v22 = *(configuration + 19);
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

  contentView2 = [(PKDrawingPaletteView *)self contentView];
  colorPickerView2 = [contentView2 colorPickerView];
  [colorPickerView2 setSupportsAlpha:v22 & 1];
}

- (id)_selectedToolViewInToolPicker
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  selectedToolView = [toolPickerView selectedToolView];

  return selectedToolView;
}

- (BOOL)_isPaletteContentViewHidden
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  isHidden = [toolPickerView isHidden];

  return isHidden;
}

- (void)_updateToolPreviewPositionForEdge:(unint64_t)edge
{
  v29[2] = *MEMORY[0x1E69E9840];
  _selectedToolViewInToolPicker = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  if (_selectedToolViewInToolPicker && [(PKPaletteView *)self isToolPreviewInstalled])
  {
    v6 = MEMORY[0x1E696ACD8];
    toolPreviewCenterXConstraint = [(PKPaletteView *)self toolPreviewCenterXConstraint];
    v29[0] = toolPreviewCenterXConstraint;
    toolPreviewCenterYConstraint = [(PKPaletteView *)self toolPreviewCenterYConstraint];
    v29[1] = toolPreviewCenterYConstraint;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [v6 deactivateConstraints:v9];

    if (edge == 8 || edge == 2)
    {
      toolPreview = [(PKPaletteView *)self toolPreview];
      centerXAnchor = [toolPreview centerXAnchor];
      containerView = [(PKPaletteView *)self containerView];
      centerXAnchor2 = [containerView centerXAnchor];
      v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [(PKPaletteView *)self setToolPreviewCenterXConstraint:v14];

      toolPreview2 = [(PKPaletteView *)self toolPreview];
      centerYAnchor = [toolPreview2 centerYAnchor];
      centerYAnchor2 = [_selectedToolViewInToolPicker centerYAnchor];
      v17CenterYAnchor = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      [(PKPaletteView *)self setToolPreviewCenterYConstraint:v17CenterYAnchor];
    }

    else
    {
      toolPreview3 = [(PKPaletteView *)self toolPreview];
      centerXAnchor3 = [toolPreview3 centerXAnchor];
      centerXAnchor4 = [_selectedToolViewInToolPicker centerXAnchor];
      v22 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      [(PKPaletteView *)self setToolPreviewCenterXConstraint:v22];

      toolPreview2 = [(PKPaletteView *)self toolPreview];
      centerYAnchor = [toolPreview2 centerYAnchor];
      centerYAnchor2 = [(PKPaletteView *)self containerView];
      v17CenterYAnchor = [centerYAnchor2 centerYAnchor];
      v23 = [centerYAnchor constraintEqualToAnchor:v17CenterYAnchor];
      [(PKPaletteView *)self setToolPreviewCenterYConstraint:v23];
    }

    v24 = MEMORY[0x1E696ACD8];
    toolPreviewCenterXConstraint2 = [(PKPaletteView *)self toolPreviewCenterXConstraint];
    v28[0] = toolPreviewCenterXConstraint2;
    toolPreviewCenterYConstraint2 = [(PKPaletteView *)self toolPreviewCenterYConstraint];
    v28[1] = toolPreviewCenterYConstraint2;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    [v24 activateConstraints:v27];
  }
}

- (void)_updateToolPreviewContentsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _selectedToolViewInToolPicker = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  tool = [_selectedToolViewInToolPicker tool];

  toolPreview = [(PKPaletteView *)self toolPreview];
  [toolPreview showPreviewForTool:tool animated:animatedCopy];

  toolPreview2 = [(PKPaletteView *)self toolPreview];
  [toolPreview2 setEdgeLocation:4];
}

- (void)undoRedoViewDidTapUndo:(id)undo
{
  undoManager = [(PKDrawingPaletteView *)self undoManager];
  [undoManager undo];

  [(PKDrawingPaletteView *)self setNeedsLayout];

  +[PKTextInputUtilities markAnalyticsForUndo];
}

- (void)undoRedoViewDidTapRedo:(id)redo
{
  undoManager = [(PKDrawingPaletteView *)self undoManager];
  [undoManager redo];

  [(PKDrawingPaletteView *)self setNeedsLayout];

  +[PKTextInputUtilities markAnalyticsForRedo];
}

- (UIWindowScene)windowScene
{
  window = [(PKDrawingPaletteView *)self window];
  windowScene = [window windowScene];

  return windowScene;
}

- (void)windowFirstResponderController:(id)controller didChangeFirstResponder:(id)responder
{
  controllerCopy = controller;
  responderCopy = responder;
  _responderWindow = [responderCopy _responderWindow];
  windowScene = [_responderWindow windowScene];
  window = [(PKDrawingPaletteView *)self window];
  windowScene2 = [window windowScene];

  if (windowScene != windowScene2)
  {
    goto LABEL_9;
  }

  firstResponder = [controllerCopy firstResponder];
  isNotesHandwritingResponder = [firstResponder isNotesHandwritingResponder];

  if (isNotesHandwritingResponder)
  {
    [(PKDrawingPaletteView *)self _updateHandwritingAssistantItemsFromResponder:responderCopy];
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChangeEnableKeyboardButtons:self];

    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewStateDidChangeEnableKeyboardButtons:self];
  }

  else
  {
    selectedTool = [(PKDrawingPaletteView *)self selectedTool];
    v16 = [selectedTool ink];
    _isHandwritingInk = [v16 _isHandwritingInk];

    if (_isHandwritingInk)
    {
      goto LABEL_7;
    }

    internalDelegate = [(PKDrawingPaletteView *)self floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)internalDelegate dismissWithReason:?];
  }

LABEL_7:
  delegate = [(PKPaletteView *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate2 = [(PKPaletteView *)self delegate];
    [delegate2 paletteViewFirstResponderDidUpdate:self];
  }

LABEL_9:
}

- (PKTextInputWindowFirstResponder)windowFirstResponder
{
  firstResponderController = [(PKDrawingPaletteView *)self firstResponderController];
  firstResponder = [firstResponderController firstResponder];

  return firstResponder;
}

- (void)floatingKeyboardControllerWillShow:(id)show
{
  firstResponderController = [(PKDrawingPaletteView *)self firstResponderController];
  [firstResponderController setPaletteFloatingMode:1];
}

- (void)floatingKeyboardControllerWillHide:(id)hide
{
  firstResponderController = [(PKDrawingPaletteView *)self firstResponderController];
  [firstResponderController setPaletteFloatingMode:0];
}

- (void)floatingKeyboardController:(id)controller didChangeKeyboardType:(int64_t)type
{
  v5 = [(PKDrawingPaletteView *)self contentView:controller];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChangeFloatingKeyboardType:self];
  }
}

- (BOOL)toolPicker:(id)picker canSelectTool:(id)tool fromTap:(BOOL)tap
{
  tapCopy = tap;
  toolCopy = tool;
  tool = [toolCopy tool];
  isRulerTool = [tool isRulerTool];

  if (isRulerTool)
  {
    v10 = 0;
  }

  else
  {
    _hostingWindow = [(PKDrawingPaletteView *)self _hostingWindow];
    if (tapCopy)
    {
      tool2 = [toolCopy tool];
      v10 = 1;
      if ([tool2 isGenerationTool] && _hostingWindow)
      {
        v13 = +[PKGenerationModelAvailabilityController sharedInstance];
        v14 = [v13 presentGreymatterAvailabilityAlertControllerInWindow:_hostingWindow];

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

- (void)toolPicker:(id)picker didSelectTool:(id)tool atIndex:(unint64_t)index
{
  v7 = [(PKDrawingPaletteView *)self contentView:picker];
  colorPickerView = [v7 colorPickerView];
  [colorPickerView reloadColorsForCurrentColorPickerMode];

  [(PKDrawingPaletteView *)self _selectToolAtIndex:index updateUI:1 notifyDelegate:1];
}

- (void)toolPickerDidToggleRulerTool:(id)tool
{
  delegate = [(PKPaletteView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PKPaletteView *)self delegate];
    [delegate2 paletteViewDidToggleRuler:self];
  }
}

- (void)toolPickerViewDidChangeTraitCollectionSizeClass:(id)class
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

- (double)toolPickerView:(id)view widthForToolAtIndex:(int64_t)index isCompactSize:(BOOL)size
{
  sizeCopy = size;
  viewCopy = view;
  contentView = [(PKDrawingPaletteView *)self contentView];
  [contentView toolPickerView:viewCopy widthForToolAtIndex:index isCompactSize:sizeCopy];
  v11 = v10;

  return v11;
}

- (CGRect)toolPickerViewSourceRectForPopoverPresentation:(id)presentation fromCorner:(unint64_t)corner
{
  [(PKDrawingPaletteView *)self bounds:presentation];

  return CGRectInset(*&v4, 0.0, -5.0);
}

- (void)colorPickerDidChangeSelectedColor:(id)color isFromExtendedColorPicker:(BOOL)picker isContinuousColorSelection:(BOOL)selection
{
  selectionCopy = selection;
  pickerCopy = picker;
  selectedColor = [color selectedColor];
  if (selectedColor)
  {
    v9 = selectedColor;
    [(PKDrawingPaletteView *)self _setSelectedColor:selectedColor isFromExtendedColorPicker:pickerCopy isContinuousColorSelection:selectionCopy];
    selectedColor = v9;
  }
}

- (void)_setSelectedColor:(id)color isFromExtendedColorPicker:(BOOL)picker isContinuousColorSelection:(BOOL)selection
{
  selectionCopy = selection;
  pickerCopy = picker;
  colorCopy = color;
  delegate = [(PKPaletteView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(PKPaletteView *)self delegate];
    v10 = [delegate2 paletteView:self shouldChangeSelectedToolColor:colorCopy];

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
    [(PKDrawingPaletteView *)self _setSelectedToolColor:colorCopy ignoreColorOpacity:!pickerCopy isContinuousColorSelection:selectionCopy];
  }

  selectedTool = [(PKDrawingPaletteView *)self selectedTool];
  _isLassoTool = [selectedTool _isLassoTool];

  if (_isLassoTool)
  {
    editingStrokeSelection = self->_editingStrokeSelection;
    _selectedToolViewInToolPicker = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
    [_selectedToolViewInToolPicker setSupportsDisplayingSelectedColor:editingStrokeSelection];

    [(PKDrawingPaletteView *)self _setSelectedToolColor:colorCopy ignoreColorOpacity:!pickerCopy isContinuousColorSelection:selectionCopy];
  }

  v11 = 0;
LABEL_10:
  _selectedToolViewInToolPicker2 = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  tool = [_selectedToolViewInToolPicker2 tool];
  if (([tool isLassoTool] & 1) != 0 || -[PKDrawingPaletteView isEditingStrokeSelection](self, "isEditingStrokeSelection"))
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

  delegate3 = [(PKPaletteView *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate4 = [(PKPaletteView *)self delegate];
    [delegate4 paletteView:self didChangeColor:colorCopy];
  }

LABEL_16:
  [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
  [(PKDrawingPaletteView *)self _updateToolPreviewContentsAnimated:0];
}

- (BOOL)colorPickerShouldDisplayColorSelection:(id)selection
{
  _selectedToolViewInToolPicker = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  supportsDisplayingSelectedColor = [_selectedToolViewInToolPicker supportsDisplayingSelectedColor];

  return supportsDisplayingSelectedColor;
}

- (void)_reloadImageForToolItem:(id)item
{
  itemCopy = item;
  v4 = [(NSArray *)self->_tools count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [(NSArray *)self->_tools objectAtIndexedSubscript:v6];
      _toolPickerItemIdentifier = [v7 _toolPickerItemIdentifier];
      identifier = [itemCopy identifier];
      v10 = [_toolPickerItemIdentifier isEqualToString:identifier];

      if (v10)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_7;
      }
    }

    contentView = [(PKDrawingPaletteView *)self contentView];
    toolPickerView = [contentView toolPickerView];
    toolViews = [toolPickerView toolViews];
    v14 = [toolViews objectAtIndexedSubscript:v6];
    [v14 _setToolImageNeedsReload];
  }

LABEL_7:
  toolPreview = [(PKPaletteView *)self toolPreview];
  itemIdentifier = [toolPreview itemIdentifier];
  identifier2 = [itemCopy identifier];
  v18 = [itemIdentifier isEqualToString:identifier2];

  if (v18)
  {
    toolPreview2 = [(PKPaletteView *)self toolPreview];
    [toolPreview2 setToolImageNeedsReload];
  }
}

- (void)hostView:(id)view willDockPaletteToPosition:(int64_t)position prepareForExpansion:(BOOL)expansion
{
  v8.receiver = self;
  v8.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v8 hostView:view willDockPaletteToPosition:position prepareForExpansion:expansion];
  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  [toolPickerView updateClippingViewEdgesVisibility];
}

- (void)hostView:(id)view didDockPaletteToPosition:(int64_t)position
{
  v5.receiver = self;
  v5.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v5 hostView:view didDockPaletteToPosition:position];
  [(PKPaletteView *)self _saveOptions];
}

- (void)_willDockPaletteToEdge:(unint64_t)edge prepareForExpansion:(BOOL)expansion isPaletteChangingOrientation:(BOOL)orientation
{
  orientationCopy = orientation;
  expansionCopy = expansion;
  v12.receiver = self;
  v12.super_class = PKDrawingPaletteView;
  [PKPaletteView _willDockPaletteToEdge:sel__willDockPaletteToEdge_prepareForExpansion_isPaletteChangingOrientation_ prepareForExpansion:? isPaletteChangingOrientation:?];
  contentView = [(PKDrawingPaletteView *)self contentView];
  [contentView setEdgeLocation:edge];

  contentView2 = [(PKDrawingPaletteView *)self contentView];
  [contentView2 setCornerLocation:-1];

  [(PKDrawingPaletteView *)self setNeedsLayout];
  [(PKDrawingPaletteView *)self layoutIfNeeded];
  if (expansionCopy)
  {
    if (orientationCopy)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __96__PKDrawingPaletteView__willDockPaletteToEdge_prepareForExpansion_isPaletteChangingOrientation___block_invoke;
      v11[3] = &unk_1E82D7170;
      v11[4] = self;
      v11[5] = edge;
      [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v11];
    }

    else
    {
      [(PKDrawingPaletteView *)self _centerPaletteContainerSubviewToCurrentlySelectedToolForEdge:edge needsContainerViewLayout:0];
      [(PKDrawingPaletteView *)self _updateToolPreviewPositionForEdge:edge];
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

- (void)_willDockPaletteToCorner:(unint64_t)corner
{
  v8.receiver = self;
  v8.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v8 _willDockPaletteToCorner:?];
  contentView = [(PKDrawingPaletteView *)self contentView];
  [contentView dismissPalettePopoverWithCompletion:0];

  [(PKDrawingPaletteView *)self _updateToolPreviewPositionForEdge:[(PKPaletteView *)self lastPaletteEdgePositionWhileDragging]];
  [(PKDrawingPaletteView *)self _updateToolPreviewContentsAnimated:0];
  contentView2 = [(PKDrawingPaletteView *)self contentView];
  [contentView2 setCornerLocation:corner];

  contentView3 = [(PKDrawingPaletteView *)self contentView];
  [contentView3 setEdgeLocation:15];
}

- (void)_centerPaletteContainerSubviewToCurrentlySelectedToolForEdge:(unint64_t)edge needsContainerViewLayout:(BOOL)layout
{
  layoutCopy = layout;
  _selectedToolViewInToolPicker = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  if (_selectedToolViewInToolPicker && layoutCopy)
  {
    containerView = [(PKPaletteView *)self containerView];
    [containerView layoutIfNeeded];
  }

  else if (!_selectedToolViewInToolPicker)
  {
    goto LABEL_10;
  }

  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  [toolPickerView scrollSelectedToolViewToVisibleAnimated:0];

  containerView2 = [(PKPaletteView *)self containerView];
  [_selectedToolViewInToolPicker center];
  v12 = v11;
  v14 = v13;
  superview = [_selectedToolViewInToolPicker superview];
  [containerView2 convertPoint:superview fromView:{v12, v14}];
  v17 = v16;
  v19 = v18;

  [(PKDrawingPaletteView *)self paletteSizeForEdge:edge];
  if (edge == 8 || edge == 2)
  {
    v22 = v21 * 0.5 - v19;
    paletteContainerCenterYConstraint = [(PKPaletteView *)self paletteContainerCenterYConstraint];
    [paletteContainerCenterYConstraint setConstant:v22];

    paletteContainerCenterXConstraint = [(PKPaletteView *)self paletteContainerCenterXConstraint];
  }

  else
  {
    v25 = v20 * 0.5 - v17;
    paletteContainerCenterXConstraint2 = [(PKPaletteView *)self paletteContainerCenterXConstraint];
    [paletteContainerCenterXConstraint2 setConstant:v25];

    paletteContainerCenterXConstraint = [(PKPaletteView *)self paletteContainerCenterYConstraint];
  }

  v27 = paletteContainerCenterXConstraint;
  [paletteContainerCenterXConstraint setConstant:0.0];

LABEL_10:
}

- (void)toolPreviewDidChangeToolColor:(id)color isContinuousColorSelection:(BOOL)selection
{
  selectionCopy = selection;
  toolColor = [color toolColor];
  if (toolColor)
  {
    v7 = toolColor;
    [(PKDrawingPaletteView *)self _setSelectedToolColor:toolColor ignoreColorOpacity:0 isContinuousColorSelection:selectionCopy];
    [(PKDrawingPaletteView *)self updateColorPickerSelectedColor];
    toolColor = v7;
  }
}

- (void)_didTapPlusButton:(id)button
{
  buttonCopy = button;
  plusButtonViewController = [(PKDrawingPaletteView *)self plusButtonViewController];

  if (plusButtonViewController)
  {
    plusButtonViewController2 = [(PKDrawingPaletteView *)self plusButtonViewController];
    [(PKDrawingPaletteView *)self _presentViewController:plusButtonViewController2 asPopoverFromView:buttonCopy];
  }

  else
  {
    plusButtonViewController2 = [(PKDrawingPaletteView *)self annotationDelegate];
    [plusButtonViewController2 paletteViewDidSelectPlusButton:self];
  }
}

- (void)_didTapTextButton:(id)button
{
  buttonCopy = button;
  textButtonViewController = [(PKDrawingPaletteView *)self textButtonViewController];
  [(PKDrawingPaletteView *)self _presentViewController:textButtonViewController asPopoverFromView:buttonCopy];
}

- (void)_didTapShapeButton:(id)button
{
  buttonCopy = button;
  shapeButtonViewController = [(PKDrawingPaletteView *)self shapeButtonViewController];
  [(PKDrawingPaletteView *)self _presentViewController:shapeButtonViewController asPopoverFromView:buttonCopy];
}

- (void)_presentViewController:(id)controller asPopoverFromItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  if (!itemCopy || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = [itemCopy valueForKey:@"view"];
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
    v11 = itemCopy;
    [(PKDrawingPaletteView *)self _presentViewController:controllerCopy configurationBlock:v10];
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
  [(PKDrawingPaletteView *)self _presentViewController:controllerCopy configurationBlock:v12];

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

- (void)_presentViewController:(void *)controller configurationBlock:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  controllerCopy = controller;
  if (self)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    palettePopoverPresentingController = [self palettePopoverPresentingController];
    if (!palettePopoverPresentingController)
    {
      goto LABEL_7;
    }

    v8 = palettePopoverPresentingController;
    v9 = v5;
    if ([v9 isBeingPresented])
    {

      goto LABEL_7;
    }

    isBeingDismissed = [v9 isBeingDismissed];

    if (isBeingDismissed)
    {
LABEL_7:
      palettePopoverPresentingController2 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(palettePopoverPresentingController2, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v5;
        _os_log_impl(&dword_1C7CCA000, palettePopoverPresentingController2, OS_LOG_TYPE_DEFAULT, "Can't present view controller: %@", &v24, 0xCu);
      }

      goto LABEL_9;
    }

    [v9 setModalPresentationStyle:7];
    popoverPresentationController = [v9 popoverPresentationController];
    controllerCopy[2](controllerCopy, popoverPresentationController);

    popoverPresentationController2 = [v9 popoverPresentationController];
    [popoverPresentationController2 setDelegate:self];

    traitCollection = [self traitCollection];
    window = [self window];
    windowScene = [window windowScene];
    if (PKUseCompactSize(traitCollection, windowScene))
    {
      v17 = 2;
    }

    else
    {
      v18 = [self palettePosition] - 1;
      if (v18 > 7)
      {
        v17 = 15;
      }

      else
      {
        v17 = qword_1C801F580[v18];
      }
    }

    popoverPresentationController3 = [v9 popoverPresentationController];
    [popoverPresentationController3 setPermittedArrowDirections:v17];

    popoverPresentationController4 = [v9 popoverPresentationController];
    [popoverPresentationController4 _setShouldDisableInteractionDuringTransitions:0];

    palettePopoverPassthroughViews = [self palettePopoverPassthroughViews];
    popoverPresentationController5 = [v9 popoverPresentationController];
    [popoverPresentationController5 setPassthroughViews:palettePopoverPassthroughViews];

    popoverPresentationController6 = [v9 popoverPresentationController];
    [popoverPresentationController6 _setIgnoresKeyboardNotifications:1];

    [self updatePalettePopover:v9];
    if ([self shouldPalettePresentPopover] && (objc_msgSend(self, "isPalettePresentingPopover") & 1) == 0)
    {
      [self setPresentedPopoverViewController:v9];
      palettePopoverPresentingController2 = [self palettePopoverPresentingController];
      [palettePopoverPresentingController2 presentViewController:v9 animated:1 completion:0];
LABEL_9:
    }
  }
}

- (void)_presentViewController:(id)controller asPopoverFromView:(id)view
{
  viewCopy = view;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PKDrawingPaletteView__presentViewController_asPopoverFromView___block_invoke;
  v8[3] = &unk_1E82DC9C0;
  v9 = viewCopy;
  selfCopy = self;
  v7 = viewCopy;
  [(PKDrawingPaletteView *)self _presentViewController:controller configurationBlock:v8];
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

- (void)additionalOptionsViewDidPressTapToRadarButton:(id)button
{
  tapToRadarCommand = [(PKDrawingPaletteView *)self tapToRadarCommand];
  [tapToRadarCommand execute];
}

- (id)keyboardSelectionMenuForAdditionalOptionsView:(id)view
{
  floatingKeyboardController = [(PKDrawingPaletteView *)self floatingKeyboardController];
  keyboardSelectionMenu = [(PKPaletteFloatingKeyboardController *)floatingKeyboardController keyboardSelectionMenu];

  return keyboardSelectionMenu;
}

- (void)_presentOrDismissFloatingKeyboard
{
  floatingKeyboardController = [(PKDrawingPaletteView *)self floatingKeyboardController];
  [(PKPaletteFloatingKeyboardController *)floatingKeyboardController presentOrDismissIfPresented];
}

- (id)keyboardSelectionMenuForContentView:(id)view
{
  floatingKeyboardController = [(PKDrawingPaletteView *)self floatingKeyboardController];
  keyboardSelectionMenu = [(PKPaletteFloatingKeyboardController *)floatingKeyboardController keyboardSelectionMenu];

  return keyboardSelectionMenu;
}

- (void)contentViewDidResize:(id)resize
{
  internalDelegate = [(PKPaletteView *)self internalDelegate];
  [internalDelegate paletteViewStateDidChange:self];

  delegate = [(PKPaletteView *)self delegate];
  [delegate paletteViewContentSizeDidChange:self];
}

- (void)contentViewDidSelectCloseButton:(id)button
{
  delegate = [(PKPaletteView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PKPaletteView *)self delegate];
    [delegate2 paletteViewDidTapCloseButton:self];
  }
}

- (void)_performPencilInteraction:(id)interaction preferredAction:(int64_t)action
{
  windowScene = [(PKDrawingPaletteView *)self windowScene];

  if (windowScene)
  {
    windowScene2 = [(PKDrawingPaletteView *)self windowScene];
    v8 = [PKPencilSqueezeInteraction _existingInteractionForWindowScene:windowScene2];
    _paletteViewVisible = [v8 _paletteViewVisible];

    if (_paletteViewVisible)
    {
      internalDelegate = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(internalDelegate, OS_LOG_TYPE_DEFAULT))
      {
        v57 = 0;
        v11 = "Ignore pencil interaction";
        v12 = &v57;
LABEL_13:
        _os_log_impl(&dword_1C7CCA000, internalDelegate, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
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
    internalDelegate = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(internalDelegate, OS_LOG_TYPE_DEFAULT))
    {
      *v55 = 0;
      v11 = "Can't handle pencil interaction.";
      v12 = v55;
      goto LABEL_13;
    }

LABEL_54:

    return;
  }

  hoverDelegate = [(PKPaletteView *)self hoverDelegate];
  [hoverDelegate paletteViewPencilDidTap:self];

  if ([(PKPaletteView *)self isVisible]&& ([(PKPaletteView *)self palettePosition]- 1) <= 3)
  {
    hoverDelegate = [(PKPaletteView *)self paletteViewHosting];
    tooltipPresentationHandle = [hoverDelegate tooltipPresentationHandle];
    v16 = 1;
  }

  else
  {
    v16 = 0;
    tooltipPresentationHandle = 0;
  }

  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  [toolPickerView setTooltipPresentationHandle:tooltipPresentationHandle];

  if (v16)
  {
  }

  if (action > 2)
  {
    if (action == 3)
    {
      [(PKDrawingPaletteView *)self _performPencilPreferredActionShowColorPalette];
    }

    else
    {
      if (action != 4)
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

  if (action == 1)
  {
    [(PKDrawingPaletteView *)self _performPencilPreferredActionSwitchEraser];
    goto LABEL_28;
  }

  if (action != 2)
  {
    goto LABEL_24;
  }

  [(PKDrawingPaletteView *)self _performPencilPreferredActionSwitchPrevious];
LABEL_28:
  paletteViewHosting = [(PKPaletteView *)self paletteViewHosting];
  hostingView = [paletteViewHosting hostingView];

  selectedToolView = [(PKDrawingPaletteView *)self selectedToolView];
  toolName = [selectedToolView toolName];

  hoverDelegate2 = [(PKPaletteView *)self hoverDelegate];
  [hoverDelegate2 paletteViewPencilDidTap:self];

  _paletteViewHoverView = [(PKPaletteView *)self _paletteViewHoverView];
  if (_paletteViewHoverView)
  {
    v26 = hostingView == 0;
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
    v32 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(_paletteViewHoverView, hostingView, v30, v31, *MEMORY[0x1E695F060], v29);
    v34 = v33;
    paletteViewHosting2 = [(PKPaletteView *)self paletteViewHosting];
    tooltipPresentationHandle2 = [paletteViewHosting2 tooltipPresentationHandle];
    traitCollection = [(PKDrawingPaletteView *)self traitCollection];
    [tooltipPresentationHandle2 showWithText:toolName fromView:hostingView rect:4 atEdge:traitCollection offset:v32 traitCollection:{v34, v28, v29, 28.0}];
  }

  hoverDelegate3 = [(PKPaletteView *)self hoverDelegate];
  [hoverDelegate3 paletteViewHoverDidSwitchToolsViaPencilInteraction:self];

  if ((v27 & 1) == 0 && hostingView && [(PKPaletteView *)self isVisible]&& ([(PKPaletteView *)self palettePosition]- 5) <= 3)
  {
    v39 = [(PKPaletteView *)self palettePosition]- 1;
    palettePosition = [(PKPaletteView *)self palettePosition];
    if (v39 > 3)
    {
      if ((palettePosition - 5) >= 2)
      {
        [(PKPaletteView *)self palettePosition];
        v41 = 4;
      }

      else
      {
        v41 = 1;
      }
    }

    else if ((palettePosition - 1) >= 4)
    {
      v41 = 0;
    }

    else
    {
      v41 = qword_1C801F5C0[palettePosition - 1];
    }

    paletteViewHosting3 = [(PKPaletteView *)self paletteViewHosting];
    tooltipPresentationHandle3 = [paletteViewHosting3 tooltipPresentationHandle];
    [(PKDrawingPaletteView *)self bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    traitCollection2 = [(PKDrawingPaletteView *)self traitCollection];
    [tooltipPresentationHandle3 showWithText:toolName fromView:self rect:v41 atEdge:traitCollection2 offset:v46 traitCollection:{v48, v50, v52, 10.0}];
  }

  v42 = 1;
LABEL_51:
  if (![(PKPaletteView *)self isVisible]&& (v42 & [(PKDrawingPaletteView *)self isPencilInteractionEnabledWhenNotVisible]) == 1)
  {
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewShowFeedbackForToolChange:self];
    goto LABEL_54;
  }
}

- (void)pencilInteractionDidTap:(id)tap
{
  tapCopy = tap;
  v4 = +[PKStatisticsManager sharedStatisticsManager];
  [MEMORY[0x1E69DCD58] preferredTapAction];
  [PKStatisticsManager recordPencilAction:v4 doubleTap:?];

  delegate = [(PKPaletteView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(PKPaletteView *)self delegate];
    [delegate2 paletteView:self didReceivePencilInteractionDidTap:tapCopy];
  }

  -[PKDrawingPaletteView _performPencilInteraction:preferredAction:](self, "_performPencilInteraction:preferredAction:", tapCopy, [MEMORY[0x1E69DCD58] preferredTapAction]);
}

- (void)_pencilInteraction:(id)interaction didReceiveSqueeze:(id)squeeze
{
  interactionCopy = interaction;
  squeezeCopy = squeeze;
  if (_os_feature_enabled_impl() && ![squeezeCopy _phase])
  {
    v7 = +[PKStatisticsManager sharedStatisticsManager];
    [MEMORY[0x1E69DCD58] preferredSqueezeAction];
    [PKStatisticsManager recordPencilAction:v7 doubleTap:?];

    -[PKDrawingPaletteView _performPencilInteraction:preferredAction:](self, "_performPencilInteraction:preferredAction:", interactionCopy, [MEMORY[0x1E69DCD58] preferredSqueezeAction]);
  }
}

- (void)_performPencilPreferredActionSwitchEraser
{
  _canHandlePencilInteraction = [(PKDrawingPaletteView *)self _canHandlePencilInteraction];
  contentView = os_log_create("com.apple.pencilkit", "PKPalette");
  v5 = os_log_type_enabled(contentView, OS_LOG_TYPE_DEFAULT);
  if (_canHandlePencilInteraction)
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_1C7CCA000, contentView, OS_LOG_TYPE_DEFAULT, "Switch to or from eraser tool", v8, 2u);
    }

    [(PKDrawingPaletteView *)self dismissContextMenu];
    [(PKDrawingPaletteView *)self dismissPalettePopoverWithCompletion:0];
    v6 = ([(PKPaletteView *)self palettePosition]- 9) < 0xFFFFFFFFFFFFFFFCLL;
    contentView = [(PKDrawingPaletteView *)self contentView];
    toolPickerView = [contentView toolPickerView];
    [toolPickerView toggleSelectedToolAndEraserAnimated:v6];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, contentView, OS_LOG_TYPE_DEFAULT, "Can't handle pencil interaction.", buf, 2u);
  }
}

- (void)_performPencilPreferredActionSwitchPrevious
{
  _canHandlePencilInteraction = [(PKDrawingPaletteView *)self _canHandlePencilInteraction];
  contentView = os_log_create("com.apple.pencilkit", "PKPalette");
  v5 = os_log_type_enabled(contentView, OS_LOG_TYPE_DEFAULT);
  if (_canHandlePencilInteraction)
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_1C7CCA000, contentView, OS_LOG_TYPE_DEFAULT, "Switch to previous tool", v8, 2u);
    }

    [(PKDrawingPaletteView *)self dismissContextMenu];
    [(PKDrawingPaletteView *)self dismissPalettePopoverWithCompletion:0];
    v6 = ([(PKPaletteView *)self palettePosition]- 9) < 0xFFFFFFFFFFFFFFFCLL;
    contentView = [(PKDrawingPaletteView *)self contentView];
    toolPickerView = [contentView toolPickerView];
    [toolPickerView toggleSelectedToolAndLastSelectedToolAnimated:v6];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, contentView, OS_LOG_TYPE_DEFAULT, "Can't handle pencil interaction.", buf, 2u);
  }
}

- (void)_performPencilPreferredActionShowColorPalette
{
  _canHandlePencilInteraction = [(PKDrawingPaletteView *)self _canHandlePencilInteraction];
  contentView = os_log_create("com.apple.pencilkit", "PKPalette");
  v5 = os_log_type_enabled(contentView, OS_LOG_TYPE_DEFAULT);
  if (_canHandlePencilInteraction)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, contentView, OS_LOG_TYPE_DEFAULT, "Show color palette", buf, 2u);
    }

    [(PKDrawingPaletteView *)self dismissContextMenu];
    if (([(PKPaletteView *)self palettePosition]- 5) <= 3)
    {
      toolPreview = [(PKPaletteView *)self toolPreview];
      [toolPreview toggleColorSelectionPopover];

      return;
    }

    contentView = [(PKDrawingPaletteView *)self contentView];
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
    [contentView _dismissPalettePopoverUsingConfirmationBlock:v8 completion:v7];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, contentView, OS_LOG_TYPE_DEFAULT, "Can't handle pencil interaction.", buf, 2u);
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
  _canHandlePencilInteraction = [(PKDrawingPaletteView *)self _canHandlePencilInteraction];
  contentView = os_log_create("com.apple.pencilkit", "PKPalette");
  v5 = os_log_type_enabled(contentView, OS_LOG_TYPE_DEFAULT);
  if (_canHandlePencilInteraction)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, contentView, OS_LOG_TYPE_DEFAULT, "Show ink attributes", buf, 2u);
    }

    [(PKDrawingPaletteView *)self dismissContextMenu];
    contentView = [(PKDrawingPaletteView *)self contentView];
    colorPickerView = [contentView colorPickerView];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PKDrawingPaletteView__performPencilPreferredActionShowInkAttributes__block_invoke;
    v7[3] = &unk_1E82D7148;
    v7[4] = self;
    [colorPickerView dismissPalettePopoverWithCompletion:v7];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1C7CCA000, contentView, OS_LOG_TYPE_DEFAULT, "Can't handle pencil interaction.", buf, 2u);
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
  selfCopy = self;
  if ([(PKPaletteView *)self isVisible])
  {
    paletteViewHosting = [(PKPaletteView *)selfCopy paletteViewHosting];
    LODWORD(selfCopy) = [paletteViewHosting isPaletteDragging] ^ 1;
  }

  else
  {
    if (![(PKDrawingPaletteView *)selfCopy isPencilInteractionEnabledWhenNotVisible]|| ([(PKPaletteView *)selfCopy delegate], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) == 0))
    {
      LOBYTE(selfCopy) = 0;
      return selfCopy;
    }

    paletteViewHosting = [(PKPaletteView *)selfCopy delegate];
    LOBYTE(selfCopy) = [paletteViewHosting shouldHandlePencilInteractionWhenNotVisible:selfCopy];
  }

  return selfCopy;
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

- (void)configureForDockedAtEdge:(unint64_t)edge
{
  v6.receiver = self;
  v6.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v6 configureForDockedAtEdge:edge];
  paletteContainerCenterXConstraint = [(PKPaletteView *)self paletteContainerCenterXConstraint];
  [paletteContainerCenterXConstraint setConstant:0.0];

  paletteContainerCenterYConstraint = [(PKPaletteView *)self paletteContainerCenterYConstraint];
  [paletteContainerCenterYConstraint setConstant:0.0];
}

- (void)willStartAppearanceAnimation:(BOOL)animation
{
  v14.receiver = self;
  v14.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v14 willStartAppearanceAnimation:animation];
  [(PKDrawingPaletteView *)self _updateKeyboardSceneDelegateInputAssistantSupressionState];
  contentView = [(PKDrawingPaletteView *)self contentView];
  [contentView paletteViewStateDidChangeIsVisible:self];

  if (([(PKPaletteView *)self palettePosition]- 5) <= 3)
  {
    [(PKDrawingPaletteView *)self configureForDockedAtCorner];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    contentView2 = [(PKDrawingPaletteView *)self contentView];
    layer = [contentView2 layer];
    [layer setShouldRasterize:1];
  }

  contentView3 = [(PKDrawingPaletteView *)self contentView];
  layer2 = [contentView3 layer];
  [layer2 setPreloadsCache:1];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v11 = v10;
  contentView4 = [(PKDrawingPaletteView *)self contentView];
  layer3 = [contentView4 layer];
  [layer3 setRasterizationScale:v11];
}

- (void)didEndAppearanceAnimation
{
  v9.receiver = self;
  v9.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v9 didEndAppearanceAnimation];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    contentView = [(PKDrawingPaletteView *)self contentView];
    layer = [contentView layer];
    [layer setShouldRasterize:0];
  }

  contentView2 = [(PKDrawingPaletteView *)self contentView];
  layer2 = [contentView2 layer];
  [layer2 setPreloadsCache:0];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PKDrawingPaletteView_didEndAppearanceAnimation__block_invoke;
  block[3] = &unk_1E82D7148;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  if (![(PKPaletteView *)self isVisible])
  {
    floatingKeyboardController = [(PKDrawingPaletteView *)self floatingKeyboardController];
    [(PKPaletteFloatingKeyboardController *)floatingKeyboardController dismissWithReason:?];

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
    opacityEditingView = [(PKDrawingPaletteView *)self opacityEditingView];

    if (!opacityEditingView)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      opacityEditingView = self->_opacityEditingView;
      self->_opacityEditingView = v4;

      opacityEditingView2 = [(PKDrawingPaletteView *)self opacityEditingView];
      [opacityEditingView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      opacityEditingView3 = [(PKDrawingPaletteView *)self opacityEditingView];
      [(PKDrawingPaletteView *)self addSubview:opacityEditingView3];

      opacityEditingView4 = [(PKDrawingPaletteView *)self opacityEditingView];
      [opacityEditingView4 setAlpha:0.0];

      v19 = MEMORY[0x1E696ACD8];
      opacityEditingView5 = [(PKDrawingPaletteView *)self opacityEditingView];
      bottomAnchor = [opacityEditingView5 bottomAnchor];
      containerView = [(PKPaletteView *)self containerView];
      bottomAnchor2 = [containerView bottomAnchor];
      v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v36[0] = v27;
      opacityEditingView6 = [(PKDrawingPaletteView *)self opacityEditingView];
      leftAnchor = [opacityEditingView6 leftAnchor];
      containerView2 = [(PKPaletteView *)self containerView];
      leftAnchor2 = [containerView2 leftAnchor];
      v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v36[1] = v22;
      opacityEditingView7 = [(PKDrawingPaletteView *)self opacityEditingView];
      rightAnchor = [opacityEditingView7 rightAnchor];
      containerView3 = [(PKPaletteView *)self containerView];
      rightAnchor2 = [containerView3 rightAnchor];
      v11 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v36[2] = v11;
      opacityEditingView8 = [(PKDrawingPaletteView *)self opacityEditingView];
      topAnchor = [opacityEditingView8 topAnchor];
      containerView4 = [(PKPaletteView *)self containerView];
      topAnchor2 = [containerView4 topAnchor];
      v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = PKDrawingPaletteView;
  [(PKPaletteView *)&v10 traitCollectionDidChange:changeCopy];
  horizontalSizeClass = [changeCopy horizontalSizeClass];
  traitCollection = [(PKDrawingPaletteView *)self traitCollection];
  if (horizontalSizeClass == [traitCollection horizontalSizeClass])
  {
    verticalSizeClass = [changeCopy verticalSizeClass];
    traitCollection2 = [(PKDrawingPaletteView *)self traitCollection];
    verticalSizeClass2 = [traitCollection2 verticalSizeClass];

    if (verticalSizeClass == verticalSizeClass2)
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

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PKDrawingPaletteView_dismissPalettePopoverWithCompletion___block_invoke;
  v7[3] = &unk_1E82D7AE8;
  v7[4] = self;
  v8 = completionCopy;
  v6.receiver = self;
  v6.super_class = PKDrawingPaletteView;
  v5 = completionCopy;
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
  contentView = [(PKDrawingPaletteView *)self contentView];
  [contentView plusButtonFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  contentView2 = [(PKDrawingPaletteView *)self contentView];
  [(PKDrawingPaletteView *)self convertRect:contentView2 fromView:v5, v7, v9, v11];
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

- (void)setContextEditingMode:(int64_t)mode
{
  if (self->_contextEditingMode != mode)
  {
    self->_contextEditingMode = mode;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView setContextEditingMode:self->_contextEditingMode];
  }
}

- (UIView)contextualEditingView
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  contextualEditingView = [contentView contextualEditingView];

  return contextualEditingView;
}

- (UIView)lassoToolEditingView
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  lassoToolEditingView = [contentView lassoToolEditingView];

  return lassoToolEditingView;
}

- (BOOL)_hasToolWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tools = self->_tools;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PKDrawingPaletteView__hasToolWithIdentifier___block_invoke;
  v8[3] = &unk_1E82D7058;
  v9 = identifierCopy;
  v6 = identifierCopy;
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
  selectedTool = [(PKDrawingPaletteView *)self selectedTool];
  v3 = [selectedTool ink];
  _isHandwritingInk = [v3 _isHandwritingInk];

  return _isHandwritingInk;
}

- (void)handwritingEducationPaneSettingsDidChange
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  [contentView paletteViewStateDidChange:self];
}

- (BOOL)canShowResetHandwritingEducationPane
{
  v2 = +[PKHandwritingEducationPaneSettings sharedInstance];
  canShowResetPaneInPalette = [(PKHandwritingEducationPaneSettings *)v2 canShowResetPaneInPalette];

  return canShowResetPaneInPalette;
}

- (void)_updateKeyboardSceneDelegateInputAssistantSupressionState
{
  if ([(PKDrawingPaletteView *)self isHandwritingToolSelected])
  {
    isVisible = [(PKPaletteView *)self isVisible];
  }

  else
  {
    isVisible = 0;
  }

  window = [(PKDrawingPaletteView *)self window];
  windowScene = [window windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
  [keyboardSceneDelegate setShouldSuppressInputAssistantUpdates:isVisible];
}

- (void)updateHandwritingAssistantItems
{
  _currentFirstResponder = [(PKDrawingPaletteView *)self _currentFirstResponder];
  [(PKDrawingPaletteView *)self _updateHandwritingAssistantItemsFromResponder:_currentFirstResponder];
}

- (void)_updateHandwritingAssistantItemsFromResponder:(id)responder
{
  v35 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  inputAssistantButtonProvider = [(PKDrawingPaletteView *)self inputAssistantButtonProvider];
  inputAssistantItem = [inputAssistantButtonProvider inputAssistantItem];
  inputAssistantItem2 = [responderCopy inputAssistantItem];

  v32 = inputAssistantItem;
  inputAssistantButtonProvider2 = [(PKDrawingPaletteView *)self inputAssistantButtonProvider];
  inputAssistantItem3 = [inputAssistantButtonProvider2 inputAssistantItem];
  leadingBarButtonGroups = [inputAssistantItem3 leadingBarButtonGroups];
  inputAssistantItem4 = [responderCopy inputAssistantItem];
  leadingBarButtonGroups2 = [inputAssistantItem4 leadingBarButtonGroups];
  v12 = leadingBarButtonGroups;
  v13 = leadingBarButtonGroups2;
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

  inputAssistantButtonProvider3 = [(PKDrawingPaletteView *)self inputAssistantButtonProvider];
  inputAssistantItem5 = [inputAssistantButtonProvider3 inputAssistantItem];
  trailingBarButtonGroups = [inputAssistantItem5 trailingBarButtonGroups];
  inputAssistantItem6 = [responderCopy inputAssistantItem];
  trailingBarButtonGroups2 = [inputAssistantItem6 trailingBarButtonGroups];
  v19 = trailingBarButtonGroups;
  v20 = trailingBarButtonGroups2;
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
  inputAssistantItem7 = [responderCopy inputAssistantItem];
  inputAssistantButtonProvider4 = [(PKDrawingPaletteView *)self inputAssistantButtonProvider];
  [inputAssistantButtonProvider4 setInputAssistantItem:inputAssistantItem7];

  if (v32 != inputAssistantItem2 || v15)
  {
    v24 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      _pkDebugStringRepresentation = [responderCopy _pkDebugStringRepresentation];
      *buf = 138412290;
      v34 = _pkDebugStringRepresentation;
      _os_log_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_DEFAULT, "Input assistant items did change from responder: %@", buf, 0xCu);
    }

    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChangeInputAssistantItems:self];

    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewStateDidChangeInputAssistantItems:self];
  }
}

- (id)_currentFirstResponder
{
  delegate = [(PKPaletteView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PKPaletteView *)self delegate];
    v6 = [delegate2 paletteViewCurrentFirstResponder:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setTools:(id)tools resetSelectedTool:(BOOL)tool updateUI:(BOOL)i notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  iCopy = i;
  toolCopy = tool;
  toolsCopy = tools;
  if (([(NSArray *)self->_tools isEqual:?]& 1) == 0)
  {
    v10 = [toolsCopy copy];
    tools = self->_tools;
    self->_tools = v10;

    if (toolCopy)
    {
      self->_indexOfSelectedTool = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (iCopy)
    {
      [(PKDrawingPaletteView *)self _updateUIReloadTools:1];
    }
  }

  if (delegateCopy)
  {
    v12 = self->_toolsWhenLastNotifyingDelegate;
    v13 = toolsCopy;
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

      delegate = [(PKPaletteView *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        delegate2 = [(PKPaletteView *)self delegate];
        [delegate2 paletteViewToolsDidChange:self];
      }
    }
  }

LABEL_15:
}

- (void)_replaceToolAtIndex:(unint64_t)index withTool:(id)tool notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v16 = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  if ([(PKDrawingPaletteView *)self _canReplaceToolAtIndex:index withTool:toolCopy])
  {
    v9 = [(NSArray *)self->_tools mutableCopy];
    [v9 replaceObjectAtIndex:index withObject:toolCopy];
    v10 = [v9 copy];
    [(PKDrawingPaletteView *)self _setTools:v10 resetSelectedTool:0 updateUI:0 notifyDelegate:delegateCopy];
  }

  else
  {
    v11 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      indexCopy = index;
      v14 = 2112;
      v15 = toolCopy;
      _os_log_impl(&dword_1C7CCA000, v11, OS_LOG_TYPE_DEFAULT, "Can't replace tool at index: %lu with tool: %@", &v12, 0x16u);
    }
  }
}

- (void)_selectToolAtIndex:(unint64_t)index updateUI:(BOOL)i notifyDelegate:(BOOL)delegate
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_indexOfSelectedTool != index)
  {
    delegateCopy = delegate;
    iCopy = i;
    if ([(PKDrawingPaletteView *)self _canSelectToolAtIndex:?])
    {
      self->_indexOfSelectedTool = index;
      if (iCopy)
      {
        [(PKDrawingPaletteView *)self _updateUI];
        contentView = [(PKDrawingPaletteView *)self contentView];
        [contentView paletteViewStateDidChangeSelectedTool:self];
      }

      if (delegateCopy)
      {
        delegate = [(PKPaletteView *)self delegate];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          v14 = [(NSArray *)self->_tools objectAtIndex:self->_indexOfSelectedTool];
          delegate2 = [(PKPaletteView *)self delegate];
          [delegate2 paletteView:self didSelectTool:v14 atIndex:self->_indexOfSelectedTool];
        }
      }
    }

    else
    {
      v13 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        indexCopy = index;
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
  selectedTool = [(PKDrawingPaletteView *)self selectedTool];

  if (selectedTool)
  {
    _selectedToolViewInToolPicker = [(PKDrawingPaletteView *)self _selectedToolViewInToolPicker];
  }

  else
  {
    _selectedToolViewInToolPicker = 0;
  }

  return _selectedToolViewInToolPicker;
}

- (void)setInterItemToolsSpacingInCompactSize:(double)size shouldNotify:(BOOL)notify
{
  if (vabdd_f64(self->_interItemToolsSpacingInCompactSize, size) >= 0.00999999978)
  {
    self->_interItemToolsSpacingInCompactSize = size;
    if (notify)
    {
      delegate = [(PKPaletteView *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        delegate2 = [(PKPaletteView *)self delegate];
        [delegate2 paletteViewDidChangeInterItemToolsSpacingInCompactSize:self];
      }
    }

    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];
  }
}

- (void)setInterItemUndoRedoButtonsSpacingInCompactSize:(double)size
{
  if (vabdd_f64(self->_interItemUndoRedoButtonsSpacingInCompactSize, size) >= 0.00999999978)
  {
    self->_interItemUndoRedoButtonsSpacingInCompactSize = size;
    contentView = [(PKDrawingPaletteView *)self contentView];
    [contentView paletteViewStateDidChange:self];
  }
}

- (id)toolPickerView:(id)view viewForToolAtIndex:(int64_t)index
{
  v5 = [(NSArray *)self->_tools objectAtIndex:index];
  v6 = [(PKPaletteToolViewFactory *)self->_toolViewFactory makePaletteToolViewForTool:v5];
  [v6 addTarget:self action:sel__toolViewStateDidChange_ forControlEvents:4096];
  [v6 addTarget:self action:sel__toolViewStateDidLiveUpdate_ forControlEvents:4];

  return v6;
}

- (void)_toolViewStateDidChange:(id)change
{
  changeCopy = change;
  selectedToolView = [(PKDrawingPaletteView *)self selectedToolView];

  if (selectedToolView == changeCopy)
  {
    tool = [changeCopy tool];
    v8 = [(NSArray *)self->_tools objectAtIndexedSubscript:[(PKDrawingPaletteView *)self indexOfSelectedTool]];
    v9 = [PKToolFromPaletteTool toolByApplyingPropertiesFromPaletteTool:tool toTool:v8];

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

- (void)_toolViewStateDidLiveUpdate:(id)update
{
  updateCopy = update;
  selectedToolView = [(PKDrawingPaletteView *)self selectedToolView];

  if (selectedToolView == updateCopy)
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

- (unint64_t)_indexOfToolPassingTest:(id)test
{
  testCopy = test;
  tools = self->_tools;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__PKDrawingPaletteView__indexOfToolPassingTest___block_invoke;
  v9[3] = &unk_1E82D6FE8;
  v10 = testCopy;
  v6 = testCopy;
  v7 = [(NSArray *)tools indexOfObjectPassingTest:v9];

  return v7;
}

- (id)_paletteToolViewAtIndex:(unint64_t)index
{
  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  toolViews = [toolPickerView toolViews];
  v7 = [toolViews objectAtIndex:index];

  return v7;
}

- (void)_scrollToolViewAtIndex:(unint64_t)index toVisibleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  contentView = [(PKDrawingPaletteView *)self contentView];
  toolPickerView = [contentView toolPickerView];
  [toolPickerView scrollToolViewAtIndex:index toVisibleAnimated:animatedCopy];
}

- (void)showImageWandTipWithController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy tipStatusIsInvalid])
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

  if ([controllerCopy tipStatusIsPending])
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

  if (([controllerCopy tipStatusIsAvailable] & 1) == 0)
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

  paletteViewHosting = [(PKPaletteView *)self paletteViewHosting];
  isPaletteDragging = [paletteViewHosting isPaletteDragging];

  if (isPaletteDragging)
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

  _indexOfGenerationTool = [(PKDrawingPaletteView *)self _indexOfGenerationTool];
  if (_indexOfGenerationTool == 0x7FFFFFFFFFFFFFFFLL)
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

  v10 = _indexOfGenerationTool;
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
  v15 = controllerCopy;
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