@interface PKPaletteToolPreview
- (CGRect)_popoverPresentingSourceRect;
- (NSString)itemIdentifier;
- (PKPalettePopoverPresenting)delegate;
- (PKPaletteToolPreview)initWithFrame:(CGRect)frame;
- (UIColor)toolColor;
- (id)_popoverPresentingSourceView;
- (void)_animateToolViewToVisible:(BOOL)visible completion:(id)completion;
- (void)_replaceCurrentToolWithTool:(id)tool;
- (void)_showColorSelectionPopover;
- (void)_updateLayoutGuideConstraints;
- (void)_updateToolViewInkingToolAttributesFromTool:(id)tool;
- (void)_updateUI;
- (void)colorPickerControllerDidChangeSelectedColor:(id)color isContinuousColorSelection:(BOOL)selection;
- (void)dismissPalettePopoverWithCompletion:(id)completion;
- (void)flashAlternatePreviewView:(id)view;
- (void)setAllowHDR:(BOOL)r;
- (void)setColorUserInterfaceStyle:(int64_t)style;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setLocaleIdentifier:(id)identifier;
- (void)setScalingFactor:(double)factor;
- (void)setToolImageNeedsReload;
- (void)showPreviewForTool:(id)tool animated:(BOOL)animated;
- (void)toggleColorSelectionPopover;
- (void)updateConstraints;
@end

@implementation PKPaletteToolPreview

- (PKPaletteToolPreview)initWithFrame:(CGRect)frame
{
  v27[4] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PKPaletteToolPreview;
  v3 = [(PKPaletteToolPreview *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scalingFactor = 1.0;
    v5 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    layoutGuide = v4->_layoutGuide;
    v4->_layoutGuide = v5;

    [(PKPaletteToolPreview *)v4 addLayoutGuide:v4->_layoutGuide];
    topAnchor = [(UILayoutGuide *)v4->_layoutGuide topAnchor];
    topAnchor2 = [(PKPaletteToolPreview *)v4 topAnchor];
    v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
    layoutGuideTopConstraint = v4->_layoutGuideTopConstraint;
    v4->_layoutGuideTopConstraint = v9;

    widthAnchor = [(UILayoutGuide *)v4->_layoutGuide widthAnchor];
    widthAnchor2 = [(PKPaletteToolPreview *)v4 widthAnchor];
    v13 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    layoutGuideWidthConstraint = v4->_layoutGuideWidthConstraint;
    v4->_layoutGuideWidthConstraint = v13;

    heightAnchor = [(UILayoutGuide *)v4->_layoutGuide heightAnchor];
    heightAnchor2 = [(PKPaletteToolPreview *)v4 heightAnchor];
    v17 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    layoutGuideHeightConstraint = v4->_layoutGuideHeightConstraint;
    v4->_layoutGuideHeightConstraint = v17;

    centerXAnchor = [(UILayoutGuide *)v4->_layoutGuide centerXAnchor];
    centerXAnchor2 = [(PKPaletteToolPreview *)v4 centerXAnchor];
    v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    layoutGuideCenterXConstraint = v4->_layoutGuideCenterXConstraint;
    v4->_layoutGuideCenterXConstraint = v21;

    v23 = MEMORY[0x1E696ACD8];
    v27[0] = v4->_layoutGuideTopConstraint;
    v27[1] = v4->_layoutGuideWidthConstraint;
    v27[2] = v4->_layoutGuideHeightConstraint;
    v27[3] = v4->_layoutGuideCenterXConstraint;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [v23 activateConstraints:v24];

    v4->_toolViewVisible = 1;
    [(PKPaletteToolPreview *)v4 _updateLayoutGuideConstraints];
    [(PKPaletteToolPreview *)v4 _updateUI];
  }

  return v4;
}

- (void)_updateUI
{
  edgeLocation = [(PKPaletteToolPreview *)self edgeLocation];
  toolView = [(PKPaletteToolPreview *)self toolView];
  [toolView setEdgeLocation:edgeLocation];

  toolView2 = [(PKPaletteToolPreview *)self toolView];
  [toolView2 setAllowHDR:1];

  colorUserInterfaceStyle = [(PKPaletteToolPreview *)self colorUserInterfaceStyle];
  toolView3 = [(PKPaletteToolPreview *)self toolView];
  [toolView3 setColorUserInterfaceStyle:colorUserInterfaceStyle];

  [(PKPaletteToolPreview *)self scalingFactor];
  v9 = v8;
  toolView4 = [(PKPaletteToolPreview *)self toolView];
  [toolView4 setScalingFactor:v9];

  colorUserInterfaceStyle2 = [(PKPaletteToolPreview *)self colorUserInterfaceStyle];
  colorPickerController = [(PKPaletteToolPreview *)self colorPickerController];
  colorPicker = [colorPickerController colorPicker];
  [colorPicker setColorUserInterfaceStyle:colorUserInterfaceStyle2];
}

- (void)setColorUserInterfaceStyle:(int64_t)style
{
  if (self->_colorUserInterfaceStyle != style)
  {
    self->_colorUserInterfaceStyle = style;
    [(PKPaletteToolPreview *)self _updateUI];
  }
}

- (void)setLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  toolView = [(PKPaletteToolPreview *)self toolView];
  tool = [toolView tool];
  handwritingTool = [tool handwritingTool];
  [handwritingTool setLocaleIdentifier:identifierCopy];
}

- (NSString)itemIdentifier
{
  toolView = [(PKPaletteToolPreview *)self toolView];
  itemIdentifier = [toolView itemIdentifier];

  return itemIdentifier;
}

- (void)showPreviewForTool:(id)tool animated:(BOOL)animated
{
  animatedCopy = animated;
  toolCopy = tool;
  toolView = [(PKPaletteToolPreview *)self toolView];
  tool = [toolView tool];
  if (tool)
  {
    toolView2 = [(PKPaletteToolPreview *)self toolView];
    tool2 = [toolView2 tool];
    itemIdentifier = [tool2 itemIdentifier];
    itemIdentifier2 = [toolCopy itemIdentifier];
    v13 = [itemIdentifier isEqualToString:itemIdentifier2];
  }

  else
  {
    v13 = 0;
  }

  if ((v13 & 1) != 0 || !animatedCopy)
  {
    toolView3 = [(PKPaletteToolPreview *)self toolView];
    tool3 = [toolView3 tool];
    v17 = PKPaletteToolEqualTools(tool3, toolCopy);

    if ((v17 & 1) != 0 || animatedCopy)
    {
      [(PKPaletteToolPreview *)self _updateToolViewInkingToolAttributesFromTool:toolCopy];
      handwritingTool = [toolCopy handwritingTool];
      localeIdentifier = [handwritingTool localeIdentifier];

      [(PKPaletteToolPreview *)self setLocaleIdentifier:localeIdentifier];
      goto LABEL_12;
    }

    v18 = MEMORY[0x1E69DD250];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __52__PKPaletteToolPreview_showPreviewForTool_animated___block_invoke_2;
    v21[3] = &unk_1E82D6E70;
    v21[4] = self;
    v22 = toolCopy;
    [v18 performWithoutAnimation:v21];
    v14 = v22;
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52__PKPaletteToolPreview_showPreviewForTool_animated___block_invoke;
    v23[3] = &unk_1E82D6E70;
    v23[4] = self;
    v24 = toolCopy;
    [(PKPaletteToolPreview *)self _animateToolViewToVisible:0 completion:v23];
    v14 = v24;
  }

LABEL_12:
}

uint64_t __52__PKPaletteToolPreview_showPreviewForTool_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _replaceCurrentToolWithTool:*(a1 + 40)];
  [*(a1 + 32) _updateToolViewInkingToolAttributesFromTool:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _animateToolViewToVisible:1 completion:0];
}

uint64_t __52__PKPaletteToolPreview_showPreviewForTool_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _replaceCurrentToolWithTool:*(a1 + 40)];
  [*(a1 + 32) _updateToolViewInkingToolAttributesFromTool:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setToolImageNeedsReload
{
  toolView = [(PKPaletteToolPreview *)self toolView];
  [toolView _setToolImageNeedsReload];
}

- (void)setAllowHDR:(BOOL)r
{
  rCopy = r;
  self->_allowHDR = r;
  toolView = [(PKPaletteToolPreview *)self toolView];
  [toolView setAllowHDR:rCopy];
}

- (void)flashAlternatePreviewView:(id)view
{
  v20[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (viewCopy)
  {
    [(PKPaletteToolPreview *)self addSubview:viewCopy];
    v5 = MEMORY[0x1E696ACD8];
    centerXAnchor = [viewCopy centerXAnchor];
    centerXAnchor2 = [(PKPaletteToolPreview *)self centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v20[0] = v8;
    centerYAnchor = [viewCopy centerYAnchor];
    centerYAnchor2 = [(PKPaletteToolPreview *)self centerYAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v20[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    [v5 activateConstraints:v12];

    toolView = [(PKPaletteToolPreview *)self toolView];
    [toolView setAlpha:0.0];

    [(PKPaletteToolPreview *)self layoutIfNeeded];
    v14 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__PKPaletteToolPreview_flashAlternatePreviewView___block_invoke;
    v17[3] = &unk_1E82D6E70;
    v18 = viewCopy;
    selfCopy = self;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__PKPaletteToolPreview_flashAlternatePreviewView___block_invoke_2;
    v15[3] = &unk_1E82D8F30;
    v16 = v18;
    [v14 animateWithDuration:0 delay:v17 options:v15 animations:0.4 completion:2.0];
  }
}

void __50__PKPaletteToolPreview_flashAlternatePreviewView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = [*(a1 + 40) toolView];
  [v2 setAlpha:1.0];
}

- (void)_animateToolViewToVisible:(BOOL)visible completion:(id)completion
{
  visibleCopy = visible;
  completionCopy = completion;
  if ([(PKPaletteToolPreview *)self isToolViewVisible]!= visibleCopy)
  {
    [(PKPaletteToolPreview *)self layoutIfNeeded];
    v7 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PKPaletteToolPreview__animateToolViewToVisible_completion___block_invoke;
    v10[3] = &unk_1E82D90B8;
    v10[4] = self;
    v11 = visibleCopy;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__PKPaletteToolPreview__animateToolViewToVisible_completion___block_invoke_2;
    v8[3] = &unk_1E82D77F0;
    v8[4] = self;
    v9 = completionCopy;
    [v7 animateWithDuration:0 delay:v10 usingSpringWithDamping:v8 initialSpringVelocity:0.325 options:0.0 animations:0.65 completion:0.0];
  }
}

uint64_t __61__PKPaletteToolPreview__animateToolViewToVisible_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setToolViewVisible:*(a1 + 40)];
  [*(a1 + 32) _updateLayoutGuideConstraints];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __61__PKPaletteToolPreview__animateToolViewToVisible_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateLayoutGuideConstraints];
  [*(a1 + 32) layoutIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_updateLayoutGuideConstraints
{
  v3 = 0.0;
  if (![(PKPaletteToolPreview *)self isToolViewVisible])
  {
    [(PKPaletteToolPreview *)self bounds];
    Height = CGRectGetHeight(v8);
    [(PKPaletteToolPreview *)self _toolViewTopSpacing];
    v3 = Height - v5;
  }

  layoutGuideTopConstraint = [(PKPaletteToolPreview *)self layoutGuideTopConstraint];
  [layoutGuideTopConstraint setConstant:v3];
}

- (void)_replaceCurrentToolWithTool:(id)tool
{
  v33[3] = *MEMORY[0x1E69E9840];
  toolCopy = tool;
  toolView = [(PKPaletteToolPreview *)self toolView];
  [toolView removeFromSuperview];

  toolIdentifier = [toolCopy toolIdentifier];
  itemIdentifier = [toolCopy itemIdentifier];
  toolVariant = [toolCopy toolVariant];
  configuration = [toolCopy configuration];

  v10 = [PKPaletteToolView toolViewWithToolIdentifier:toolIdentifier itemIdentifier:itemIdentifier variant:toolVariant configuration:configuration];
  [(PKPaletteToolPreview *)self setToolView:v10];

  toolView2 = [(PKPaletteToolPreview *)self toolView];
  [toolView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  toolView3 = [(PKPaletteToolPreview *)self toolView];
  [toolView3 setSelected:1];

  allowHDR = [(PKPaletteToolPreview *)self allowHDR];
  toolView4 = [(PKPaletteToolPreview *)self toolView];
  [toolView4 setAllowHDR:allowHDR];

  toolView5 = [(PKPaletteToolPreview *)self toolView];
  [(PKPaletteToolPreview *)self addSubview:toolView5];

  toolView6 = [(PKPaletteToolPreview *)self toolView];
  topAnchor = [toolView6 topAnchor];
  layoutGuide = [(PKPaletteToolPreview *)self layoutGuide];
  topAnchor2 = [layoutGuide topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:19.0];
  [(PKPaletteToolPreview *)self setToolViewTopAnchor:v20];

  toolView7 = [(PKPaletteToolPreview *)self toolView];
  heightAnchor = [toolView7 heightAnchor];
  v23 = [heightAnchor constraintEqualToConstant:103.0];
  [(PKPaletteToolPreview *)self setToolViewHeightAnchor:v23];

  v24 = MEMORY[0x1E696ACD8];
  toolViewTopAnchor = [(PKPaletteToolPreview *)self toolViewTopAnchor];
  toolViewHeightAnchor = [(PKPaletteToolPreview *)self toolViewHeightAnchor];
  v33[1] = toolViewHeightAnchor;
  toolView8 = [(PKPaletteToolPreview *)self toolView];
  centerXAnchor = [toolView8 centerXAnchor];
  layoutGuide2 = [(PKPaletteToolPreview *)self layoutGuide];
  centerXAnchor2 = [layoutGuide2 centerXAnchor];
  v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v33[2] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  [v24 activateConstraints:v32];

  [(PKPaletteToolPreview *)self _updateUI];
}

- (void)_updateToolViewInkingToolAttributesFromTool:(id)tool
{
  toolCopy = tool;
  toolView = [(PKPaletteToolPreview *)self toolView];
  tool = [toolView tool];
  if ([tool isInkingTool])
  {
    isInkingTool = [toolCopy isInkingTool];

    if (!isInkingTool)
    {
      goto LABEL_5;
    }

    inkingTool = [toolCopy inkingTool];
    toolView = [inkingTool ink];

    toolView2 = [(PKPaletteToolPreview *)self toolView];
    tool2 = [toolView2 tool];
    inkingTool2 = [tool2 inkingTool];
    v11 = [toolView colorForUIAllowHDR:1];
    [inkingTool2 setInkColor:v11];

    toolView3 = [(PKPaletteToolPreview *)self toolView];
    tool3 = [toolView3 tool];
    inkingTool3 = [tool3 inkingTool];
    [toolView weight];
    [inkingTool3 setInkWeight:?];

    tool = [(PKPaletteToolPreview *)self toolView];
    v5Tool = [tool tool];
    inkingTool4 = [v5Tool inkingTool];
    [toolView _azimuth];
    [inkingTool4 setInkAzimuth:?];
  }

LABEL_5:
}

- (void)updateConstraints
{
  [(PKPaletteToolPreview *)self _toolViewTopSpacing];
  v4 = v3;
  toolViewTopAnchor = [(PKPaletteToolPreview *)self toolViewTopAnchor];
  [toolViewTopAnchor setConstant:v4];

  [(PKPaletteToolPreview *)self scalingFactor];
  v7 = v6 * 103.0;
  toolViewHeightAnchor = [(PKPaletteToolPreview *)self toolViewHeightAnchor];
  [toolViewHeightAnchor setConstant:v7];

  v9.receiver = self;
  v9.super_class = PKPaletteToolPreview;
  [(PKPaletteToolPreview *)&v9 updateConstraints];
}

- (UIColor)toolColor
{
  toolView = [(PKPaletteToolPreview *)self toolView];
  tool = [toolView tool];
  isInkingTool = [tool isInkingTool];

  if (isInkingTool)
  {
    toolView2 = [(PKPaletteToolPreview *)self toolView];
    tool2 = [toolView2 tool];
    inkingTool = [tool2 inkingTool];
    v9 = [inkingTool ink];
    color = [v9 color];
  }

  else
  {
    color = 0;
  }

  return color;
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKPaletteToolPreview *)self _updateUI];

    [(PKPaletteToolPreview *)self setNeedsUpdateConstraints];
  }
}

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    [(PKPaletteToolPreview *)self _updateUI];
  }
}

- (void)toggleColorSelectionPopover
{
  toolView = [(PKPaletteToolPreview *)self toolView];
  tool = [toolView tool];
  isHandwritingTool = [tool isHandwritingTool];

  if (isHandwritingTool)
  {
    v6 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_INFO, "Can't present color picker popover when the handwriting tool is currently selected.", v9, 2u);
    }
  }

  else
  {
    delegate = [(PKPaletteToolPreview *)self delegate];
    isPalettePresentingPopover = [delegate isPalettePresentingPopover];

    if (isPalettePresentingPopover)
    {

      [(PKPaletteToolPreview *)self dismissPalettePopoverWithCompletion:0];
    }

    else
    {

      [(PKPaletteToolPreview *)self _showColorSelectionPopover];
    }
  }
}

- (void)_showColorSelectionPopover
{
  v81[1] = *MEMORY[0x1E69E9840];
  delegate = [(PKPaletteToolPreview *)self delegate];
  palettePopoverPresentingController = [delegate palettePopoverPresentingController];

  if (palettePopoverPresentingController)
  {
    _popoverPresentingSourceView = [(PKPaletteToolPreview *)self _popoverPresentingSourceView];
    if (_popoverPresentingSourceView)
    {
      colorPickerController = [(PKPaletteToolPreview *)self colorPickerController];

      if (!colorPickerController)
      {
        v7 = +[PKPaletteColorPickerControllerFactory makeColorPickerController];
        [(PKPaletteToolPreview *)self setColorPickerController:v7];
      }

      colorUserInterfaceStyle = [(PKPaletteToolPreview *)self colorUserInterfaceStyle];
      colorPickerController2 = [(PKPaletteToolPreview *)self colorPickerController];
      colorPicker = [colorPickerController2 colorPicker];
      [colorPicker setColorUserInterfaceStyle:colorUserInterfaceStyle];

      toolView = [(PKPaletteToolPreview *)self toolView];
      configuration = [toolView configuration];
      v13 = configuration;
      if (configuration)
      {
        if (*(configuration + 18) == 1)
        {
          v14 = *(configuration + 19);
        }

        else
        {
          v14 = 1;
        }
      }

      else
      {
        v14 = 0;
      }

      colorPickerController3 = [(PKPaletteToolPreview *)self colorPickerController];
      colorPicker2 = [colorPickerController3 colorPicker];
      [colorPicker2 setSupportsAlpha:v14 & 1];

      toolColor = [(PKPaletteToolPreview *)self toolColor];
      colorPickerController4 = [(PKPaletteToolPreview *)self colorPickerController];
      colorPicker3 = [colorPickerController4 colorPicker];
      [colorPicker3 setSelectedColor:toolColor];

      colorPickerController5 = [(PKPaletteToolPreview *)self colorPickerController];
      [colorPickerController5 setDelegate:self];

      colorPickerController6 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController = [colorPickerController6 viewController];
      [viewController setModalPresentationStyle:7];

      colorPickerController7 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController2 = [colorPickerController7 viewController];
      popoverPresentationController = [viewController2 popoverPresentationController];
      [popoverPresentationController setDelegate:self];

      delegate2 = [(PKPaletteToolPreview *)self delegate];
      palettePopoverPermittedArrowDirections = [delegate2 palettePopoverPermittedArrowDirections];
      colorPickerController8 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController3 = [colorPickerController8 viewController];
      popoverPresentationController2 = [viewController3 popoverPresentationController];
      [popoverPresentationController2 setPermittedArrowDirections:palettePopoverPermittedArrowDirections];

      colorPickerController9 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController4 = [colorPickerController9 viewController];
      popoverPresentationController3 = [viewController4 popoverPresentationController];
      [popoverPresentationController3 _setShouldDisableInteractionDuringTransitions:0];

      [(PKPaletteToolPreview *)self _popoverPresentingSourceRect];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      colorPickerController10 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController5 = [colorPickerController10 viewController];
      popoverPresentationController4 = [viewController5 popoverPresentationController];
      [popoverPresentationController4 setSourceRect:{v36, v38, v40, v42}];

      colorPickerController11 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController6 = [colorPickerController11 viewController];
      popoverPresentationController5 = [viewController6 popoverPresentationController];
      [popoverPresentationController5 setSourceView:_popoverPresentingSourceView];

      view = [palettePopoverPresentingController view];
      v81[0] = view;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
      colorPickerController12 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController7 = [colorPickerController12 viewController];
      popoverPresentationController6 = [viewController7 popoverPresentationController];
      [popoverPresentationController6 setPassthroughViews:v50];

      colorPickerController13 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController8 = [colorPickerController13 viewController];
      popoverPresentationController7 = [viewController8 popoverPresentationController];
      [popoverPresentationController7 _setIgnoresKeyboardNotifications:1];

      delegate3 = [(PKPaletteToolPreview *)self delegate];
      [delegate3 palettePopoverLayoutMargins];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      colorPickerController14 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController9 = [colorPickerController14 viewController];
      popoverPresentationController8 = [viewController9 popoverPresentationController];
      [popoverPresentationController8 setPopoverLayoutMargins:{v59, v61, v63, v65}];

      colorPickerController15 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController10 = [colorPickerController15 viewController];
      traitCollection = [(PKPaletteToolPreview *)self traitCollection];
      [viewController10 setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

      colorPickerController16 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController11 = [colorPickerController16 viewController];
      parentViewController = [viewController11 parentViewController];
      traitCollection2 = [(PKPaletteToolPreview *)self traitCollection];
      colorPickerController17 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController12 = [colorPickerController17 viewController];
      [parentViewController setOverrideTraitCollection:traitCollection2 forChildViewController:viewController12];

      colorPickerController18 = [(PKPaletteToolPreview *)self colorPickerController];
      viewController13 = [colorPickerController18 viewController];
      [palettePopoverPresentingController presentViewController:viewController13 animated:1 completion:0];

      v15 = +[PKStatisticsManager sharedStatisticsManager];
      [(PKStatisticsManager *)v15 recordColorPanelInvoked:?];
    }

    else
    {
      v15 = os_log_create("com.apple.pencilkit", "PKPalette");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *v80 = 0;
        _os_log_fault_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_FAULT, "sourceView shouldn't be nil when presenting a popover", v80, 2u);
      }
    }
  }
}

- (CGRect)_popoverPresentingSourceRect
{
  [(PKPaletteToolPreview *)self bounds];
  v22 = CGRectInset(v21, -5.0, -5.0);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  delegate = [(PKPaletteToolPreview *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_5:

    goto LABEL_6;
  }

  delegate2 = [(PKPaletteToolPreview *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate = [(PKPaletteToolPreview *)self delegate];
    if ([delegate wantsCustomPalettePopoverPresentationSource])
    {
      delegate3 = [(PKPaletteToolPreview *)self delegate];
      colorPickerController = [(PKPaletteToolPreview *)self colorPickerController];
      viewController = [colorPickerController viewController];
      [delegate3 palettePopoverSourceRectToPresentViewController:viewController];
      x = v13;
      y = v14;
      width = v15;
      height = v16;
    }

    goto LABEL_5;
  }

LABEL_6:
  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)_popoverPresentingSourceView
{
  selfCopy = self;
  delegate = [(PKPaletteToolPreview *)selfCopy delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  delegate2 = [(PKPaletteToolPreview *)selfCopy delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate3 = [(PKPaletteToolPreview *)selfCopy delegate];
    wantsCustomPalettePopoverPresentationSource = [delegate3 wantsCustomPalettePopoverPresentationSource];

    if (wantsCustomPalettePopoverPresentationSource)
    {
      delegate4 = [(PKPaletteToolPreview *)selfCopy delegate];
      delegate = [delegate4 palettePopoverSourceView];

      if (delegate)
      {
        delegate = delegate;

        selfCopy = delegate;
      }

      goto LABEL_6;
    }
  }

LABEL_7:

  return selfCopy;
}

- (void)colorPickerControllerDidChangeSelectedColor:(id)color isContinuousColorSelection:(BOOL)selection
{
  selectionCopy = selection;
  colorPicker = [color colorPicker];
  selectedColor = [colorPicker selectedColor];

  toolView = [(PKPaletteToolPreview *)self toolView];
  tool = [toolView tool];
  isInkingTool = [tool isInkingTool];

  if (isInkingTool)
  {
    toolView2 = [(PKPaletteToolPreview *)self toolView];
    tool2 = [toolView2 tool];
    inkingTool = [tool2 inkingTool];
    [inkingTool setInkColor:selectedColor];
  }

  delegate = [(PKPaletteToolPreview *)self delegate];
  [delegate toolPreviewDidChangeToolColor:self isContinuousColorSelection:selectionCopy];
}

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  colorPickerController = [(PKPaletteToolPreview *)self colorPickerController];
  viewController = [colorPickerController viewController];

  if (viewController)
  {
    colorPickerController2 = [(PKPaletteToolPreview *)self colorPickerController];
    viewController2 = [colorPickerController2 viewController];
    [viewController2 dismissViewControllerAnimated:1 completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (PKPalettePopoverPresenting)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end